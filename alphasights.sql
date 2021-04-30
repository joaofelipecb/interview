PGDMP     &    6                y            alphasights    9.6.21    9.6.21     N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            Q           1262    24576    alphasights    DATABASE     �   CREATE DATABASE alphasights WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE alphasights;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            R           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            S           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24579    interview_questions    TABLE     �   CREATE TABLE public.interview_questions (
    interview_question_id integer NOT NULL,
    interview_question_name character varying(100),
    interview_question_enunciated text,
    interview_question_answer text
);
 '   DROP TABLE public.interview_questions;
       public         postgres    false    3            �            1259    24577 -   interview_questions_interview_question_id_seq    SEQUENCE     �   CREATE SEQUENCE public.interview_questions_interview_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.interview_questions_interview_question_id_seq;
       public       postgres    false    186    3            T           0    0 -   interview_questions_interview_question_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.interview_questions_interview_question_id_seq OWNED BY public.interview_questions.interview_question_id;
            public       postgres    false    185            �           2604    24582 )   interview_questions interview_question_id    DEFAULT     �   ALTER TABLE ONLY public.interview_questions ALTER COLUMN interview_question_id SET DEFAULT nextval('public.interview_questions_interview_question_id_seq'::regclass);
 X   ALTER TABLE public.interview_questions ALTER COLUMN interview_question_id DROP DEFAULT;
       public       postgres    false    185    186    186            K          0    24579    interview_questions 
   TABLE DATA               �   COPY public.interview_questions (interview_question_id, interview_question_name, interview_question_enunciated, interview_question_answer) FROM stdin;
    public       postgres    false    186   �       U           0    0 -   interview_questions_interview_question_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.interview_questions_interview_question_id_seq', 104, true);
            public       postgres    false    185            �           2606    24587 ,   interview_questions interview_questions_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.interview_questions
    ADD CONSTRAINT interview_questions_pkey PRIMARY KEY (interview_question_id);
 V   ALTER TABLE ONLY public.interview_questions DROP CONSTRAINT interview_questions_pkey;
       public         postgres    false    186    186            K      x��|ے�F��5�)p')�K��j�C��k����D�M(�p� �Ms������'����*H�,���Wᰚ@U�y�2�._f�!��|X��kk�������._N_�n���۵�\��C���s���rػ�祿�u��]�_�����ʗ�[��!�k�}�˕��]��y�v��~��6�,��w���F?|ph�]S��\S�<��j|�盶�u�t���ݶk����c��������O�n��9�/.�f\1�]/�+ڦG�.��}���Ax���F���>Ȱ.z��y����y��uX���w���l������m�L7�?�
��j8�8UӴ�n��FF�E�sl����L>��=�q?���
�1~o��G��J���1����k���f�:�������z�/�k�d��.��b<;e~��v�}����1�qwg���47���6�[tK�C�m���g�:>�u���ؽ\H�u�8"j���:�H�hf�R5+��w�J�%���Ù�T+���|���otֻ��c�~�=��U�7�����O�Q��~����6���~u��aB�z���J�a�Of�/]������H%��֮�C���?t�n�&�ͽ��d��5w}��]�K���]������`�;��o B�\9!�
b`�@J\�<������l�p����a�5��/�~���{L�-Ȳ<�^�	/q28٦�9eJ	�rG�o���f8�al<�Ѻ�����]��l���1��hA$����e���xXm&��z���ex�M�om0�A&ͽ�i�����ş�>�u��\��KK�;�@�5hUu�2�)g|�wC���6 7���O�n[����W�Pe+�Z�����[~\_�d�_��֠�T�W	��Ph�3��"��Ul�Yun�j�#�f��e�{�/�����ζ(\Oj��1p�:_x4/�/ӎ� �����F�z�Ϣ��,��Y���9����̀߂9P�?�A�����j_BH,�v��ѷ����]O�Ġ$�.J��!���F�w��ŌV��БT��*Ć��H+j�/�P{蛩���x��/�3��D���rH^����\/g��x��X�.�������M���=�kH���}�V8g�2�6*�����5�b'�}��D�{Y��!�*t�J}~��2��REo�8�#3������(uz��H�}���>�s��0���A�Du�i���_�h!fFl����D�y�S�1�u���GՄ%^e�;���=��,Ͽ�ᠼ*sMտ#q�]��C�wA �@�l�����A��xW���qu3��mr��m��q�sXLW�����[ҡ9�O-+�s"i1J@�)�^1^���j��
h�Ȁ\�
l�jZ�TFɸ~&�c@/�]��������B��7��-�QV+�}XY���l �������Q���� O7����4���hq��),���r�mwqy�M4c����
G͹5�)6�p���vx�ֽV�ξk��f��}^�����h,���`GV�[��R��u%�����Ìr���Bߖ~���9�qݝ��kzyYPԻ��c�L8��Ԅ���o�6:��Љv��rƕo�(�tx6Xw��2ND�˞�o�,e@XM����U/T�N�vm䨿�;��|��¸��a�����ʮb�n�a|�L�o�/�1�~��j�W߁p�A�5����>�y���w%��fS�c���)����S脺������N)��kA/<XU�~������j;Z;<3����V�9X�Q\�%y��6p��Ϝ2���&7�瓊&�El�t,�>4S�j4��2A,ӊ����wg�$��ᨮ�-9�h�sV���Mw���]QT2���v7���9�(�b�A#���2]쪺L�	#�T����4r�=t9�s��	�|�v��؈rW��F����?����V�3Z'ailC`��2�mzn���z�jۓ����wL+����X�����`��t t�k�W�#���=�l7�$���Ю���k�����@�1�����t��/��$��<eR
�_�o�*��e�cp-A���־������DB��v�΍Β3�W��0��ƹ��7�[��t�-�j��`�U�N�z��:?x���ȝ�)&�����8ljЉ�P�d����a�~�tE��7�2ҹӳ��7�_+�+��;�b�U�Tt��Ջ�(G��f௥̊�W���=1�5�o�zą"(D�P���	�D7����RΌ��o=I����_`G�WU��M1�� �j����1et�[��޻;�=��(��6G�d���&�a%���v3�_8	Y!�s�Ԏ��?��[�����",��Í],ڮ�x�:�y7pKD,�18��V�~�ӞiC�LE�3>Z��E?M�0�`����u�+q���e�ڋ�[	�ӊ*Y�-��+�Bѱs�|ۏ��~a��5z�d������u�A���>K�Ki�����;�mp��Y~'��tUw��%���b�����*�S������-���zt���v9�s��n��P!����<���뼠\�gZ�\-n��$״��P?_\fo�:;�Σ�?}>�ϼ����Д� ����}pp����b�{0Q)�?]�Þ�A��2S5�qa��7�fl�!�$r��N��`�	�B�* ��P�FS`)�._e��L7G�\5�X;�_���n���}޸n���T�D�d���ˈ]+��m}^�
�QR�����h�^%�\�eVJV�<�`�V����W�y&|�n�tSQ�V��,��xw��/|Ѫ�
r�zk�/���n��"�0E�6�V�^��m�ZQ$�M�f��H_i���'�bK� ;����3θS��������38k�Q*��De��4\24�{N`�6��#n��h�����~ݕ���-�n�:������b�)U�?���Q�Ԯ ,r�_���V�*G�?�[e�4d9�x��|F����Ǒ�R�&�Yq>l�$l^��x쨔HX2�b�ܣe�����;,�~TD��m�ej�W���a;�]�jG/�,C�Ϻ]m�V�U�k�ź�h+R�	��ĕӝ�W�>�jG~��߃��� �!6���J��z��/�e�;��N�uh��*Ȥ}X��fP,��`.PCf�Fٚy��G�Gj�?����p6jW5�N�^T�u�Y���+|� P
q�trb��msG	��� ���4N�m����-������U��(�P�3��l��&�_�l����v��2�m�d��D��P@��R{����;�ZٛF���=K"4{kr��Q��&�8��c�P{bm�/���;�h��4z�� <����"��!RZ	*���pն¯�{��i�YF"���{��|Tide&vhr���hT
3�b���9�q5�KB�k���
������H��G´S�+'b�6����տ�-:QR��U�l�D�P��q�TI�oF(c#���,�v��g-+� ��B��m��ڜ �b�P˪��V�G��#�@����Nm =�$,5��pW��4�Q2a�S
X>����}�8CL�I�{�xy�qH���G��o��.�d]�7W��K�6~�	 O[�$�(ԣL5_��;R��r��)V�!�}��j����/�e�����UN��g�g�n"��Vx�I[S���h�i�crjp���R�$�$BI�5D*�؏��6��L9���D���I�6>�j$�&�eL@��}:C�?M�	�m��=c�:UJ���䞪�2���M|h�xd���e�N�'y�&�Q�^��A�,wt#5�6��:�.��_�$��S�Gx�J�j��$ %�`5��� bx�KNL%��E��e�8�@#��ؐHSH(�I�*G]h+u�q������WL	�$�x�&%�O_G�e�88��R���V����ܘ��՗�h���e*1e����jU��֚� G�!q>UX��m}�g�I	��Y��Y�?⫏/__�|�8l
��6�F[�3�Y.�~�?~������    u�s�'z��RM6B��IE[�� q���7��7�&�[�զ��<��DCS��r�|
��>��q�aq�e� x�/�f`�ۮl�uK���n��(1�%[,� ��S0f�^M��F�j��)��0�g9"��|�*�܊H-I"�{��,F�{�d�����yUM�"̼�)����O��S�Z���(�_��=1��v+y0����-��>I;S�{�c�G��/�9P�	L:@-XfhAOK�
 � �b����ණla�yf�gB�6�5x�7+K$9I��#fC�S�3�����!�~��%��泞�U�p��I�{������	/��#6���)2�t���D|,Ro*i������L#�b�����H\��B�$'�P�D�.@*!ar�|�l�>�$D���qM�ν��?IQ,���@�Iϳ_|�O��D�LU���%�24��#��_S��;���[f���V}�[V�<���'�z�S���:t����W0�GO��'j;Z1��IPCF'�~q��VK�pZH =5X4���Hj2R�1:bY��&�ɐv=�'�#���0���x���B��A����\;SJ<6�d��S�8͓���NG�R%�G0`+u%��&H\<{����*�"ɴG(d>~	؁�,:� ��;�/IBVHS$�N#r� "�|�+B4F���ŁY��~�P�'d2,���,!��l�Pz� �(
"�J�Qq>3·voiG2:h�1��gϠ�hN@U����3����nE�fnN��������7k��o�ɘ۪�^(���yB%M����1id��xF !��s,Sǜ�?o�3OJ�	�ݚ���g0���w"����S�� �e�)6n��7��$�if�RT�
K��*=�x�D��;�0�d�kJ��$��� ��Sf�4�P�d���
8�r�NT72qA ,*e�>I��[L������?�`[���`	����v+��r���R�1I��&�|�	�����a�ƕE=��e���L �$>xj�cR%���^K6P��!�!�%v9+ӏ�T����E���Yv��#n�?���(�B� �����n`����<6Uc21B
W/e�G&�cHh���q�w���ljuJb*;Վ*� &f����ԕ]hvI�q����D�`B��f�{܀��6:)
bSB�JF�<�ۏ����X�̗U�p(z�O�8$��w蕠.�z�(	(�2BL)M��5�L��<#C·`��S���ok�6�T.�okjIa3�B�ж��OQ��������R�#��RWѫGn��4	7\��8�f_h�����[z1���r3Z���X2�ʌ��_��?ⱍ:�H������o
G�C��ѻ]�2��R�m[�$&�e(�yx���*���&�A��"<њ8g�Χsv
��m4�Q>��]t�M�^X�w\��^ʬ�<oes�P��%�1�LpwEs�J��k�ˬ`q!�Ѐpy�^~��M��d`�5��F+���?����A�U).bHg�T�Tϟ���%�/��,�/@A��MG�ؒ'l��������AlEDH�,�=\oo5���f��G�'I��d��'}�h��� �wr񧵒ߨ��)���)��
��%�X1츫��u�A����^����t�Pi��Y|�y��/#|����/vr�U�������"����!��,=�F��N�m��U�iγ�߿�:~�}t���4�5m6K����bz&�Xq40|���>I}�fR�8Q1�5�4��@,�#����^�L���y������1(��k�!wks�F`���*1�ï��_�pT�7�LR�/�zF�̶�*|�;��4��C�&�Z��4+�F0�*4�J�/���c^���&{7�Qpɬ�p��䤝U�*'�T �JR�`��W.�Wi��	�3
�VZ E��<�/���sm�D���N�-����h(�J�Z0�9���eh�E PM���]̍�N���D?q���6�_1��ao�8fg���8�
71������W�'x���$�xhu':y:���X�@�Zc����|���f/!�&��?��bAVf$`��q�<0?B՘�	
V�l�3��䡠�Z��hB��*1 ���$[j�$�X���l�,�&Ћ���1��2
#2�:� ���i#�,�a��i�IAZ�uI|󮺇��I�g����v8�&U��J�C��h2) sZ���*{�/�n�"ϳ�At�$%(�A�+�������:ں����Y��� ��i�����0���ٲ���ʮ�?R�6�?��>E�������[ja�����dL�`´fV��%�S_�2��J��&���Ze�����1E�=���g�!�}*9�lnΪ�4�1�)�i%'0��>��K�p\L7~&����:h����p�K��Dy�t�_<�0~i�!�!Y����F����޾a��0#0H�k�j����t�c^vPJ�U�Ƞ��$r4�AqT�T;(-htq ����d�,1R�:fV���dY���[�-e^���t�(F$k�L��R������E_A���;�Lq�U����wc�P����83�z͢�6>؞L:����=�w�к:��+U(�"�b'Pj����[��4ՖP��mi�)g����l�_-���'5k�8��Pqx�<'-䘟�3����YL23%e�^/�
�jQ�!���_%5�'�p�Ƃ%�����z��U���%��_<ŉϳ��N�e��*P2��v�1� �SsW��r
�I����aN\�S� VRL���P��Ep*B�ڥ�$ԣ��W�t`��.z��?�y��fJ���UΗ�L|O�$��b��H�i?�񃭠0���ny�3���M�mx��5�g_��W_��W������L��2�]�q	OFUa���$˵���o�9Xi�%4����SK ���)g6hzſY�/�x -[�$I%��k����D�X!9�V�+�~��TP����/�c��[k:���=�� `���w�3�p�+��x�B�"�\���xi��Y�/��~H,��\�����mJ�c2��@�Wzn��r�\Z����9F ���)��Jz%	�cHig2�E�TѰT2oJ�Ƚև����1K���E����b�V	&tׄ!ؿ�"Lv}������g��gI��^9v*m��[2< ���)n.�_�(>��ܫ<
t8y�&���?b��B���.d��5|)O�����c&��I�*S*4����tĂC�W�XB*��(��q%G�]"�/�I]���i��Fԍ�n�����:wtU�"o��Z�ž�#C�F�m�֭P����)�7y����҅�RA��U��ݷ�
��;���'(���=���b����B+G�d�8A.ca"�f�E�;r�hxk�t
��*�=(�$P�$dI��]
�`[^�sW��CK*F���0���{��I�ٺlAf)F����Ck.ܽ�ԅ`#����H��0bҌ�[�l�*�5�~nLDS��)&W\��N��+�p�ĥ餦G躽��;���K�±�k�25�MR�B���R^�~�K2Wŷ�\=N���X>L���q����X5��o�ӺG���x��n|L+�څ`�R�0��*w֘͹�b��Z��,�LR_��L%c�$�{/FXi[J��l�`�oN2Z�ٓ��Iy]���OY'��
A��E�h�}Ԭ,�t�-m���k�hYKL�������n"�G�^���k������cGyდ!.p,H�~eˋ
t	rbd�P:��I:5���U�a},d��3�����+���Lk�n2{���5�6�[Z`Z2�@.0R�5���~�0����٘��2Xl��$w�F�x����@���upR���`�
M#�3��D���z�_���M���d�Iޕ�A�KDT;T���&BfV�9W!M���p�*x��؇�|R�%BK���'���Xu_k���b�
�x{�I^}�EN�l�&���Ɂc�ibU��fv�;�fM�j�v�.d�X���b����s��H/t� �ً����#�I�q��Q�Ȓ;�B� �  RK��]]N��8����3}���}e��Y�W����E��8��H���ͧ^h���R�zD�B�aC�U�c��1�ʮb��nE�5@����Tq^'yX��&��+�*��S��B��$�Q����[0\������Q ‘6Rv"��?LE���Fr@K�-^��ױ>.���Q3�ĭW�����j\h�����}	��V�i�5N���/�1�6���c�V��-{��%D:'q78�˺*��&�Q���`㭌k�5�O�/���W*�9��vmjx|R��N" G}��������Jޫ��'u�[�(���uO�J��e2:Ǘ<�=^b?33>�F�V�@ ���b��<M���#}��R&{R"V��)������ub�S��[��^#L|�U�DnԎ���Ra|n��2j7
n�����0�:&��h�q�?��|Zߥ���Ts���&���fo���L����`��ć��8^���C�{FC�b���ϔ0�������}�#&̑1Iq��ݿQ��H��N��b�ljh~�U��i��)n/�JHf��TrA7�N̝]?q1�
�Z�̿���	������#��q����%MI����-�"��_]�p������L�>��w� ��L�z�F���"X���X��o�ϕV��\|S���gȢHOHᙳWf$)�1�^ E!+!4�c��r�(5��`�qm9��a),bI���/..�d���     