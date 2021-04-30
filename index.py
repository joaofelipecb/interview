import os
import psycopg2
from sysconfig import get_paths
import sys

_this_path = os.path.split(__file__)[0]
if _this_path not in sys.path:
    sys.path.insert(0,_this_path)

os.chdir(_this_path)

import config

def application(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/html')])
    buffer = ''
    if environ['PATH_INFO'] == '/questions':
        con = psycopg2.connect(host=config.host, database=config.database, user=config.user, password=config.password)
        sql = 'select * from interview_questions order by interview_question_id'
        cur = con.cursor()
        cur.execute(sql)
        buffer = buffer + '<html>'
        buffer = buffer + '<head>'
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
    elif environ['PATH_INFO'] == '/p17data/TableList.css':
        buffer = open('p17data/TableList.css','r').read()
    else:
        buffer = str(environ['PATH_INFO'])
    return [str(buffer).encode('ascii','ignore')]

