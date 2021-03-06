PGDMP     1    6                y         	   interview    9.6.21    9.6.21 !    j           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            k           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            l           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            m           1262    24576 	   interview    DATABASE     ?   CREATE DATABASE interview WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE interview;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            n           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            o           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    47783    answers    TABLE     ?   CREATE TABLE public.answers (
    answer_id integer NOT NULL,
    question_id integer NOT NULL,
    company_id integer NOT NULL,
    answer_text text
);
    DROP TABLE public.answers;
       public         postgres    false    3            ?            1259    47781    answers_answer_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.answers_answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.answers_answer_id_seq;
       public       postgres    false    190    3            p           0    0    answers_answer_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.answers_answer_id_seq OWNED BY public.answers.answer_id;
            public       postgres    false    189            ?            1259    47767 	   companies    TABLE     p   CREATE TABLE public.companies (
    company_id integer NOT NULL,
    company_name character varying NOT NULL
);
    DROP TABLE public.companies;
       public         postgres    false    3            ?            1259    47770    companies_company_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.companies_company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.companies_company_id_seq;
       public       postgres    false    187    3            q           0    0    companies_company_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.companies_company_id_seq OWNED BY public.companies.company_id;
            public       postgres    false    188            ?            1259    24579 	   questions    TABLE     ?   CREATE TABLE public.questions (
    question_id integer NOT NULL,
    question_name character varying(100),
    question_enunciated text
);
    DROP TABLE public.questions;
       public         postgres    false    3            ?            1259    24577 -   interview_questions_interview_question_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.interview_questions_interview_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.interview_questions_interview_question_id_seq;
       public       postgres    false    3    186            r           0    0 -   interview_questions_interview_question_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.interview_questions_interview_question_id_seq OWNED BY public.questions.question_id;
            public       postgres    false    185            ?           2604    47786    answers answer_id    DEFAULT     v   ALTER TABLE ONLY public.answers ALTER COLUMN answer_id SET DEFAULT nextval('public.answers_answer_id_seq'::regclass);
 @   ALTER TABLE public.answers ALTER COLUMN answer_id DROP DEFAULT;
       public       postgres    false    190    189    190            ?           2604    47772    companies company_id    DEFAULT     |   ALTER TABLE ONLY public.companies ALTER COLUMN company_id SET DEFAULT nextval('public.companies_company_id_seq'::regclass);
 C   ALTER TABLE public.companies ALTER COLUMN company_id DROP DEFAULT;
       public       postgres    false    188    187            ?           2604    24582    questions question_id    DEFAULT     ?   ALTER TABLE ONLY public.questions ALTER COLUMN question_id SET DEFAULT nextval('public.interview_questions_interview_question_id_seq'::regclass);
 D   ALTER TABLE public.questions ALTER COLUMN question_id DROP DEFAULT;
       public       postgres    false    185    186    186            g          0    47783    answers 
   TABLE DATA               R   COPY public.answers (answer_id, question_id, company_id, answer_text) FROM stdin;
    public       postgres    false    190   ?"       s           0    0    answers_answer_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.answers_answer_id_seq', 116, true);
            public       postgres    false    189            d          0    47767 	   companies 
   TABLE DATA               =   COPY public.companies (company_id, company_name) FROM stdin;
    public       postgres    false    187   ?F       t           0    0    companies_company_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.companies_company_id_seq', 2, true);
            public       postgres    false    188            u           0    0 -   interview_questions_interview_question_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.interview_questions_interview_question_id_seq', 116, true);
            public       postgres    false    185            c          0    24579 	   questions 
   TABLE DATA               T   COPY public.questions (question_id, question_name, question_enunciated) FROM stdin;
    public       postgres    false    186   ?F       ?           2606    47791    answers answers_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (answer_id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public         postgres    false    190    190            ?           2606    47780    companies companies_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (company_id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public         postgres    false    187    187            ?           2606    24587 "   questions interview_questions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT interview_questions_pkey PRIMARY KEY (question_id);
 L   ALTER TABLE ONLY public.questions DROP CONSTRAINT interview_questions_pkey;
       public         postgres    false    186    186            ?           1259    47803    fki_fk_answer_company    INDEX     O   CREATE INDEX fki_fk_answer_company ON public.answers USING btree (company_id);
 )   DROP INDEX public.fki_fk_answer_company;
       public         postgres    false    190            ?           1259    47797    fki_fk_answer_question    INDEX     Q   CREATE INDEX fki_fk_answer_question ON public.answers USING btree (question_id);
 *   DROP INDEX public.fki_fk_answer_question;
       public         postgres    false    190            ?           2606    47798    answers fk_answer_company    FK CONSTRAINT     ?   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fk_answer_company FOREIGN KEY (company_id) REFERENCES public.companies(company_id) NOT VALID;
 C   ALTER TABLE ONLY public.answers DROP CONSTRAINT fk_answer_company;
       public       postgres    false    190    187    2022            ?           2606    47792    answers fk_answer_question    FK CONSTRAINT     ?   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fk_answer_question FOREIGN KEY (question_id) REFERENCES public.questions(question_id) NOT VALID;
 D   ALTER TABLE ONLY public.answers DROP CONSTRAINT fk_answer_question;
       public       postgres    false    190    2020    186            g      x??\ےǑ}n|E?????3????AJ?4a?V??pl?_
@hN??n???='3???Ҵ??OI3@_???r?dV]f?????.wy????:w?l????݋k|??Ͼ????_?u^??޵mQW??yW?/u????6??>???ү6>v???˭+??^???λ]?[?r[??y??Cٵ?ڵ]>f??/????Ew??oʶ?9???iE??@v/צ?^?k?+?c??O?1߹n;?\e???????xvF?	t[???9??9?????-?C??9??_?y<??qcQ???n}?O8??7|&o?????e?ۻꨟ?'??^?2/?[a??p|?8?E?[?r?????????m`??75XtS?uU??Z??;?+?a????uv??Kwh=GCa<????s,????8?ba??m]??,?x\{N??蝯???????????(??mwX?+NhX{j^???[>aU1y>?Y?op?A??U?˲??j)?֥(??w?cu?o??O?oi?S??,?{???ku?E?E?0U?uկ?žtx????&wٝ^?Pa7?[8f?J~?8??<+??붐%?e?"?0?E)oZ?UWT,???????q?U3^???|ed?c6???i??Z?E??o?Z?`9`T??????X͡?,d??Dxa??۪XB????e???????T????œ?Y?????˺?6o???s?Ս????t??`????!{???)?[????i?>}??Ǻ??h؟????}n??j?V?:?J??U??o ????B??A?.??&?px??????? ??Z6uu????M?n ?PCY??8?<.s???p?[8?uo"˲?@f???g?;>x?[,?R?]??m???s?/?z???}tQ-KhϪ7?;?7?*??0k,?????cM?U??Ѿ?=?m?x^`?u]tɠ??~?r?=?<?_?UxYY@*zxкn????%Ĉ??`???qY?R.??˫?M?????4?ݰ??)?q?7??U?^????????u?-???5M88???]	??:?;??`??x?;???uƟ??x?G??;?????J?a4??U???:????+o?=????Jm??7?{S k???ЬD?|?<?Elh?E??5?Bg???[???_?mb?{H<`:?
Wru?????????Q?r?`%???!l?*?ڨ?Y#?????????a`??<?/??ǎ)?$k?R}??N?????l??*?qn]??>??{?Y?a??[q???@p???l,?v?7~??1'???~?? ?????_?????i?ǂL??? EC????`y??NK^V@?? ?/޴C??(ox]/%(?U?8Uȹ??A?A\Qp?f?J+)????C??7???UO????????%?bM=8??H????/ԓ?C=?Z?<?(???????d??]ݰY??@?????@?18?շ???(1???nV???_?}??#<?1??bog????|??	??Q?q?ő*G???a?=??Rcb9P+A?ʻč?xx??.Q???הfif]???|?4?LHO????hR??{???h?5???W?????H??a?ܧZ-?^!?@z?tž?_[?
?|?._/!XtSc?E;?$z??k?06L???}A????CYh'?????$ ???????Gvu=?-?h|???b???/??? \<??ī?˸NeA?nsru???0???0???ʖ?(?????R??U)?^??`. ?<???i??&?f??*ԕ??TfS?
?Ƴ?a?<?Bb? nhp?Ԓ???R?H"???M?d?5?,"2?h??P??Nj?K?-?R?Ӱ?!?\??5?????Q? ?H-hj6#?1ꑢ?-|???1?G8Z?/ Ln??'??݅?@??R׵wG??f'?????4???ݔ?#????ᤰ4?l?M;??L??v1?(9e??T}XVЬ??????)?H?F8ټv?@|??@?z?*?!??Qu?1S?5|ZCR ??? ??O???!?[???x?F-d#7?
?+?<??K?}?o@4`^?n9??$???f???7y)V???M?߻?<,??<??sعi?(Z?@h???/r??u?}2R`q(?U*?Wm??!^3f?ճ?:?l??6?O6 ???P?L?V??튥d8???-hFo=Ý$??;??(????Y??%??l?<?? ?1)5???FԄ?9??A?4?>@?K	? w?CM"??3<^<J?[?z??7Bv??>?O?(???#?]E??^#!???w??׆t?????@0??-r󧶣k̅K?g??֖??k???S ??p( 忛\!?=0?|ˑX??y[??1/??&?D?;S|?pR@ư?Z???P??.??M?%??ɋ????"?3???oG?????ʈ??˟?Sw?뢛n???O?+??[?{)l??F0q?&y?/?9??寠)?y???K&?h?/?x??Ys????? ??ȋ??'?u????ݾ?}?Cu?q;N\?𲮟z?a@??[???t"?V????ǝ?oEC??˺?Irc6??n???i3s??J<IBf 2?Gꕅ7??0????mɈ??,TϏ??G??>?~?9,N?ĂF(?H??+(??{V^|??E?X>??Z"??????Y???uY??F?? ???3?|;QlK?DWN2??W?8?T????;??;&y?#??I/??Q)(?.?t??]?.jUd?????.?Ӳ?B????<܀?{d,{"ɫ.A???h1'}??j	rx????3l?XR??????c??W??Tۢ???L??jl?f;??E????Z?????W~tm???(Z?.???~=a?I??]-^?x?\\?_?(?Ӑ???;?????????3*e???|;/??c???0??H+?iI?U?Ԣf?????!?+p9?)?\S???X))B?qE?}?-??:???Vot?{?,?'?y6?]????Tu?.??????c2????????-?~y?⺮z??as-??Uk	.ĪHj?$???E???RW??*k*nŪ?d???q?,d4?$?H?a`??2U Qu?_]?g???Tgw?N??/ш??INhP?$R??2o?*?7n?)?c?My??? ?DK??H?r~??o?p?T???/~1?ɟ??_=VVБ??????w?3??q???#Go?@;̖??1ֻlN????a )-j?X?@-?}T?GIᨲ8?h8=????s~??????S????*?..u??	?k??.&֎H?k<`U???;???70?$tz?!??9???:?@??UwGs<qD?!O?`??T?+?z?,?(?#?m??sI???lr}??9?:?T?[?>Eb"&??V?jy1Z?n0??Z?_-???ڈ?F???K?ب9Tb?/?Zp??f??/?kB??~?/?L???1?T?R?????~??ǈ??7<J??+	ھqR??^J*?)??0??^ԫ?E\3??6N?Z??YF?m+?с???-?????j?S	??^?6?e"?%?^L?`?^Q??@???!h?8??????+?fR??m?/B7?)???*?}?O?a?%??)??/?6+?!?r?pF4??k?q????h??;?]!D??.??????H??3?3xnH:l%3?Z????.R?/?w????[??{@??yv??P??]?7?????6?F?X-?L?k?V?z??KZm?	? 8}??1%?x陊?a?}?`7>sp?mv???Um?m???@??Sa??Ae??V?ջ'?????5)xkr}?]??(z?7ih??oj?4+?~?UkJ˛?Z?)?"?/K??K??ƹ???F???`?O?)?4U&q>?tn.??	?#?--z?G,?J???Q[?L??i?Q?y?0??2?̳-LH?1*?Zf? ??ѣ=??<*=!??????|?zvM?Ţ?WE[?,???E=J(???[?(|~"j???Ic????????Ъ>???8??Y????e?E??_??ԗ?M?W8]???u?^?A'??m~???P?WH??{?n???7V??(f????f???q&?? ?Ԕ????R????;(?F?P:??	??є$%6    {?#auRC>[????\??.m?0yd?,Tk??G"\???{?y)??y.ѷw???"???'j???B?I?????1?H? ??Q?7B3Mǹ?????]??Uvsc??l??[u??r?3f??O?{K??ҏ?a?H???|?I??~?Rf??qd???[Kێ?0ᱦ?Q?ʋɚ?c?/ڶc???`[~??x????x@O??ĜD4?1????x???.??:l(??J۴s?+?:?k?6?гC????Ν}!?V???MÊϳ???V;??ֈdu婰s??IC?z~?B???8*:	fJ?ӝ7??4)z????H#)<?[????U????|??????S	?,????*<??/?g???ͳ?x??	??q?Bς?1|?tJT:? ???B
? /_???N????0??aV??A?.T֧?N??f:l?l?f??
d????|?
ٻ&\}??Ǟy??*??_s̒ڴQ??K?xw?-a?/P?݂??h?_ ?2?????q|m^-
e?/?`?v[?c?'E???g?D???"(˛W<+??: ?>??~????-&m>?X??a??T?R???TI?	h{q]???\6?B????v.?KA??#?r?6g)<R?%7~4?1?]?a(?'??-??m??#?A?1`L??V8B?&?MHI?媈?g??????8?j???R.>?:?||?u??ZA??Ã?A?[?jޒ	???`??	o?vE3?n???烐??*O??O/?(t?+c?l?I0???g6?U?????p??N?NW^c&?l???????Q????n?w?[4C1g??z2u????aP?????s???&6?)?)????D??1???T???!?˧?????5?2? ?xӒv???c߯b?z?em?&???????)??f?????KZLc??F?6??I???-$??Hp?֮?J??a:?????/K ???B???İ?????hK& ?????zk˨6?r~??
?1Ɍ?Qn?N?{??]}?????y, P| ??F??8}?Ǯ8pvI*-.Ϯp??5???o?6????|#??Xɕ?????
̨+G?={Qz??]ZqI?D?)?{-??\?O???.r#ֻ:?}??n?1%??
?{???o?N??w?J?Sm?c??H/??I?1?>T?Xv0???ĿU?;??,?7?????"????rs?$????a??Q????h?}HW"?v???O
??J?@???R->}	????;!?????PE?)??(	sJ???k?$??d?tQi??6?,,?F?PJ??<I[???4??G???T?ťp&h??g????5?@?l?Qe=?v??ɶU?\????>@?v_4}k??u*??}????;??=??e?ٿԃ?L???u.t??n??n?O
??Mv??H[Y???[E'????v?	?9??j????#?jwl?Կ????E??+0??C[??FJ?Ŏ?U??V?G?;4?`?w???=?ÆuCǄ?????7??(C?gUˏ?7??N??\XS??'Jo??h?t!???:??kv,z??6??Qi??ZYV??Bi??ep??5???vk)eu?E?ǤV?*?d+@???'??igYFl???8ܑ?p??*?G㱴?ꍽpƣTIY?a	?F?Â???1??f??????*?cidה ?=?$??YBe?{c??r?>?~U?g??#>?(!???^rҤ?;(??.F?F<<??f??#rWb˷?j]}K?}O?ކ??l??ړ? H[??e???a>|2?y?=??????˫??l??#|}?ps?ϼ??p?R?__]\\~?W]eWa?[?G?M?ФL?SI?H؋?????ݓ'wqhh_5?J?ߗ
9??? U/?9r??U??ò9???Z?e?????3‭?6?????5?G?Ż????9?F6?,??L}fˬ)? K3?@XH?(?PJ?"?Ճ??@f?"u?~S?(Tjgq????6?x?????OJ??j??uZ??0?????L?6?.?a||?^?5???????6{x?_????u??t??w?????^?ԞV?i?پiq?ʵͩ^?v??t??r???? ?û?]k?g?????_5??`?"???Q??@?H???~Mt???>?C?{??F?o?9 f?|??ʌ}J_h=L??#??J??m?Ph???{Y?,?qɖ$Vz??Y?0??C??#??\??h돮`*e_La? ?l???&?2s?B*?/
????$???	?Т?X??3؝i;	FǉIFS`?s??6?+3?_??9h(qr? ???h?wi?L?J???!??㨅??6f??Z??q??l?l?(yq?n?#L?"?<?؝?T7ɶ??`{NT"???????C\??G?F?ei?8m??r/nbӹ:???{?@G????I?????y??jqDƣ`"^Y?6?͋?)?0A쾼`?????#!dv???鶠ݮ3a??`:?g*l{?W?????????ʦL}Q?ҽ????j?#?ۇ7???Ê???'`S???S?g<???????*?pi?@/???g????????7?J???n???5???PW?4?${?]??i"-?L???zbi??}> pg/R?Be??j??Ui??&?ǆ^3???\?m?;$>1?????|kr"L????F???-?|?`r?!.s??in??Gg3?yBJ^/|???r?Ze??G?????k??6x(#GW??$?,?f???n?ρ1?F\ۋ?>??j1??
zk????????*??M#?U????????)w?l%)$?fIt?!?/?x?&ô????M????9???&cp ?#?:?ܣ¡?r??il??=?gh,?4Y?	%?ʧ{R\?
??O?%??8?m??????1?P??6??&?7?-??G?kF?(ȭ?i~?@?C
B????4zA?N&?g???ۣX??:&?s?b
?M#??Uv??Yc??Y?X?ܾK&??(??$?K?a?Q??i??t???j?a???Ka(iz? Ȼ5aYt?Nt@?uY,k??h?&????j??iW? ??;%??i?^%?gu?fA?Ƙs?0?2 ??>?????$????bb???J?^N?A??b?g??s??U??|??Re??⺝@Ҥy?ѷ????? i?n??q??U?O?)?ɞ??O??O ????y? !?V$?"?0???O:F???????????t#n???<??QA_=鴧qz?؄?#?aп???wI
ϧ
????@?B??'?>?j}?j??3?8?:?nI???`?	???gH?ֆ??5?B7)?O?????{?wг???ǀ?;U]?ZmHX??j????c?m?q?;?=?'??????K??
;?????f.??M?????٥zɉ ?.?????R J0???Ɍ?s??l??ŵ?v??K9a?i-<D???ۙg??μ??	s??:?K?<??3?M?cF~`?h?}????]???vR??$?G?J???̿z ɿq(ҙ??E?і?x"?z1J??z??;????>?՟iu???oV<;?0?$?s0?&?v,??P?W<?d??#JVp?D??r??????[HX??"?D??u??	??9hT???!???F?pN VX?????ˀ?Z?B?},?$q"??ۃU?=|???ɕ?v<?1?>?4F?MM0C?
?y????4_?I???K?ёU??\}d???ܐC|5Q?j?t]??߉??w؅2b?ٱ????/la? 2R?1???&핒n??*??????z_??DhFK?d1H?m <?aS???\&Kǯy?????:??LB?i?Y?????NyT?ɕ/?+?S??1p߮??f??t??C)?}d?ZO氯?t@$X?J???s#?n??!????	????i???Ѳ{G<O?????`?E??/B???-,?}/c4?x??r::9m????i?3wZZ}53??J?????E?gL?> O?Y??ⰙZ??-F??6p[,??Na3/?9????଻???섭???z???{f=MA?c@$[?<?\?d?w??IP??xA??P?N5?!p=B??[DQE??sdԐ??X?? ?  ???J?0K??6?aBz??6??!??!zߑZ$?Z(3᳧??Q?!??x"k????u?????8!o픐?3??ڎ2??W?m-?Ե?~~ҙ??q????^?^?U? 43??`?ٲ?5????????ֲ?5?at?q??L???7=L????q??l6>"??'!0j?_:?m??DO?*??X?7????xx??={q????v?????!?L+?????(?Ił6?????B??S???q>?}qpDOR?{'??4U?J?[W?x?1?H??H ??/MU??2??????qdC??,???Bo$?????R?Ge???????	i6(???w??D??????LG?/?R?D??NBǍZny??Tm"???ɏ?`?g?k????m?b???,O??L=???X%a???^A]??mVD8H?q?fa%C;aW.?$??
?<???\Yt?x??????Sdj=?.k H?ml?:n`?ٺ?<?\?K???????i-.5)}̱??R?}d??r??Fi]@? l?v?ҍ'g?K?k???X?v?1>?????o?j?σ?`vי?+<????K???q??? z??uӟ??7a
-?ą狻?;1-??E??1?($??3??g?ر?wx?\bܯ???P??a?]?#(????y8<?????M?)???*??T??ג???,x??^7??2?Zc??9??rYaeTf?w??F,J?>??}?9T?9<4l?:=??1}N<??<ls???d?o?8od????zZ??K?Q??'5:7ᇷ?|@?p?I??k???a:럧?^??CtyrdK??o??DH+?9u?1??@o??tGX??T?M??Z?Q????]Ø?Ch/o?S??/?6*".˃?w?v$?Ż5????6??2???Lă??P?????i?????~{(?b?p?Q???'???1???(??f??? ?E?      d   )   x?3?t???2??ř?%?\Ɯ!???E??\1z\\\ ??	?      c   i  x??Y͒?6>?O???*?x??:?&{??u⊽?M?^ a???#??????'ٯEJ??7{?GD?	???_7?w?gUj?-??Y???Ԗ{U_????Xq?ۤ?ѭx???:/???H?M?????Znz+Sݲ<????j?/?rc?TQ?*??_+{?jm?????]??p??????dz+???~o?????A?/?Yޙ?G?/m?*???[???M?ŏP?
???2???M\_%??xo??i?:[?t?MUҦ???*\?iV?t?!?????d??? ????mSd??e?>^Iz?#??AU??=?%??xg}-U??f?x???????,????^?l????f?N??z???????x.?eZ???????N?;?5)NZ?G??????Q?F????ﭫM???ZX?U??|Zˍl?????Tr???r?C?yֺLr?30???Qv??^?ڷ
????x#??F??_?????Φ?{??

}??t~???a??vS??^h?/???̶ΑY????h??? 87?%???QD?D<8?/m?!<?'V?u!~?ʳ??$??????BS?$Y????[?$?	ߣlȮtao?9?? b???U~??*?w?????9xˣ?)K;?s:K??b?L?b,?Z?>q???ֺ?x???1?n??S?l???*?ʕ?)??&??Kq???n[??F??G?yRX??X?tu&$???????I?Cj?P?qZ ?<??????a*?[??????)ݷm???????OdO??W?v?W{????w??!???eڧά[̾?LO^??45?!?u?2]??5D?9?g?? fg q?C??{???kA<?{DQ'????N??8???????@ ?u ??&???*?????9ȹc?I1g?;??U(?~???S\݊O??.??IcL?=#$?	J??*Y????|Y?і?|??u?5?>6{??u??$DI??zVɝ?2?Z??b?.b?UX????u}?҆?`?dO<݉OZ?⾒-?bf?Q?CI??????????:?߇?3????@?hnXy?_??2????'?G????hﾘ??(^M?V|???|`??Vf6X??u??T}Q?u?U?1???9?BP??z?:??zn-??7?Xj?R?HI?Rs???n5??6??Gn??.ᝰ?????t{F~%/h????z?2c?{2*???????WM???H?;.??d???ü!?+8D?B?5T?	A8ܠX.??D????Dܢ???<d???Rz?Ok????n$^s?#??ƩA??@???g????q?9?|?31?Y??Ev?TU?%???e?^??Z>?? ~?o?ǈB???????+Iƥ?????$xS?Bu?m??<2??\X??R/??S?Tb??r?Ld??
?	Qԓ2/9?rr??ZV?????Q?2L?,F?M?Uۀ?m?%?????L?Sb???x??? ?Ts?!??_oX??9x???ASE!&sE 0???q7??D??2??}?"z??Q?yw??l??BG???*Ts????ck?h??AEn? A{ΰ?	s}?}pR?"Hx??.P=??)????х???M?жD?r?F^Ⱦl[?!:??ꀇ?y%:?E?
???*Co??/???Jp}?1???ݱ??̛u?;%????P?`>?>b?R?k???؁??S???t????%hQ??=T??`|?Ay??7?!???G?j?????*?Ln?G???P?rSױM??@ ??!\???V?(P??????J???????s?<߯<?3R?A????w?3)??4?^G?L^?Y??}??]@?dL??@؃?aZ??`??K?ט`!Ӈ5c}]
??????????6?p?????RD??b???7_j???9?6@|??a!ey="܎A_?9?Լ?7Zx??y?k?;j?? ??O9??x?B?v???2?4>?0???;??u;?????A?SP]???%1 Gd?p#?/?<??Ui??[??};??i?C?!??1??:?U??[?????`2??{?egÏSE??^?E?X??7?|*?ۆ?s?T_iBe?????O$???3?&3S??YU??7gQ??b?v?ă??Z!???w) ????>??)3???s?>C=???%??=Ӄ:J???i??oTC)(?:?3?8?\?W??嵿????d??B|???(uhӖt??ڏyH?{U?0????T)?I???[?h?4?#G?)?B!:`?O???ͷ?ě?a?=	????P?l9ָ?=z?ZX<ߗ???P?D??Q^Ru????*<UU???????????!Ap???}RюS:?L?g:F?
?n?!hC?f?@?P???C?\??S;n?Ն?&?M.???tA???C"?8=^,axu?0?YJB?.?Dh??????v?Ɵ%?+????rrDܚ(+EDe]?G???4?F?P4??%6??#???P???|ɉx?s`?Sy??6?(??9M,??)???5?!?q˘??1?j??????@?1????w?tK?!Gw+?E?9???p????b?_???:??prᔤW????R???͐???6t?W?6.?c?? p\???E_????(6?LQHԀ??d?_g ??M?nJЛ???9?L??b?^?%wS"h??R??jS???脻yܴ"??Ş?d????ݕI???t$K?"???-Eq?S?Q7;????Vbt{K#w0??I/.???:??&->
Ҿ?x_?ʿ?Y?'r?H=?m?S;?t?????????4??`??<?F(z?I?C?{xM??l??,P??8)?	cj?SЎiV?Cs?4??~j?ק?????H`2??')??q?N?i???&?K?K??h?????e?R?f0]?A?\?5?h?IMp?????pa?.??tVP)[%??I???PV?     