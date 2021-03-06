import os
import psycopg2
import random
import sys

_this_path = os.path.split(__file__)[0]
if _this_path not in sys.path:
    sys.path.insert(0,_this_path)

os.chdir(_this_path)

import config

def application(environ, start_response):
    if environ['PATH_INFO'] == '/questions':
        start_response('200 OK', [('Content-Type', 'text/html')])
        buffer = ''
        con = psycopg2.connect(host=config.host, database=config.database, user=config.user, password=config.password)
        sql = '''select q.*, coalesce(a1.answer_text, a2.answer_text)
from questions as q
left join answers as a1
on q.question_id = a1.question_id
and a1.company_id = (select company_id from companies where company_name = 'Tesorio')
left join answers as a2
on q.question_id = a2.question_id
and a2.company_id = (select company_id from companies where company_name = 'All')
where coalesce(a1.company_id, a2.company_id) is not null
order by q.question_id;'''
        cur = con.cursor()
        cur.execute(sql)
        buffer = buffer + '<html>'
        buffer = buffer + '<head>'
        buffer = buffer + '<meta name="viewport" content="width=device-width, initial-scale=1.0">'
        buffer = buffer + '<link rel="stylesheet" href="p17data/TableList.css">'
        buffer = buffer + '</head>'
        buffer = buffer + '<body>'
        buffer = buffer + '<table>'
        buffer = buffer + '<tr>'
        buffer = buffer + '<th>id</th>'
        buffer = buffer + '<th>name</th>'
        buffer = buffer + '<th>question</th>'
        buffer = buffer + '<th>answer</th>'
        buffer = buffer + '</tr>'
        recset = cur.fetchall()
        for rec in recset:
            buffer = buffer + '<tr>'
            buffer = buffer + '<td>' + str(rec[0]) + '</td>'
            buffer = buffer + '<td>' + str(rec[1]) + '</td>'
            buffer = buffer + '<td>' + str(rec[2]) + '</td>'
            buffer = buffer + '<td>' + str(rec[3]) + '</td>'
            buffer = buffer + '</tr>'
        buffer = buffer + '</table>'
        buffer = buffer + '</body>'
        buffer = buffer + '</html>'
        return [str(buffer).encode('ascii','ignore')]
    elif environ['PATH_INFO'] == '/question/random':
        con = psycopg2.connect(host=config.host, database=config.database, user=config.user, password=config.password)
        sql = 'select question_id from questions'
        cur = con.cursor()
        cur.execute(sql)
        recset = cur.fetchall()
        randomChoice = random.choice(recset)[0]
        start_response('302 Found', [('Location', str(randomChoice))])
        return ['1'.encode('ascii','ignore')]
    elif environ['PATH_INFO'][:10] == '/question/':
        start_response('200 OK', [('Content-Type', 'text/html')])
        buffer = ''
        id = int(environ['PATH_INFO'][10:])
        con = psycopg2.connect(host=config.host, database=config.database, user=config.user, password=config.password)
        sql = '''select q.*, coalesce(a1.answer_text, a2.answer_text)
from questions as q
left join answers as a1
on q.question_id = a1.question_id
and a1.company_id = (select company_id from companies where company_name = 'Tesorio')
left join answers as a2
on q.question_id = a2.question_id
and a2.company_id = (select company_id from companies where company_name = 'All')
where coalesce(a1.company_id, a2.company_id) is not null
and q.question_id = %(question_id)s
;'''
        cur = con.cursor()
        cur.execute(sql,{'question_id':id})
        buffer = buffer + '<html>'
        buffer = buffer + '<head>'
        buffer = buffer + '<meta name="viewport" content="width=device-width, initial-scale=1.0">'
        buffer = buffer + '<link rel="stylesheet" href="../p17data/ItemStyle.css">'
        buffer = buffer + '</head>'
        buffer = buffer + '<body>'
        buffer = buffer + '<a href="random">random</a>'
        buffer = buffer + '<dl>'
        recset = cur.fetchall()
        for rec in recset:
            buffer = buffer + '<dt>id</dt><dd>' + str(rec[0]) + '</dd>'
            buffer = buffer + '<dt>name</dt><dd>' + str(rec[1]) + '</dd>'
            buffer = buffer + '<dt>question</dt><dd>' + str(rec[2]) + '</dd>'
            buffer = buffer + '<dt>answer <a href="#" onclick="document.getElementById(\'answer\').style.display = \'block\'">show</a></dt><dd id="answer" style="display:none;">' + str(rec[3]) + '</dd>'
        buffer = buffer + '</dl>'
        buffer = buffer + '</body>'
        buffer = buffer + '</html>'
        return [str(buffer).encode('ascii','ignore')]
    elif environ['PATH_INFO'] == '/p17data/TableList.css':
        start_response('200 OK', [('Content-Type', 'text/html')])
        buffer = open('p17data/TableList.css','r').read()
        return [str(buffer).encode('ascii','ignore')]
    elif environ['PATH_INFO'] == '/p17data/ItemStyle.css':
        start_response('200 OK', [('Content-Type', 'text/html')])
        buffer = open('p17data/ItemStyle.css','r').read()
        return [str(buffer).encode('ascii','ignore')]
    else:
        start_response('200 OK', [('Content-Type', 'text/html')])
        buffer = str(environ['PATH_INFO'])
        return [str(buffer).encode('ascii','ignore')]

