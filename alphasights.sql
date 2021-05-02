PGDMP         	                y            alphasights    9.6.21    9.6.21     N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public       postgres    false    186   �       U           0    0 -   interview_questions_interview_question_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.interview_questions_interview_question_id_seq', 109, true);
            public       postgres    false    185            �           2606    24587 ,   interview_questions interview_questions_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.interview_questions
    ADD CONSTRAINT interview_questions_pkey PRIMARY KEY (interview_question_id);
 V   ALTER TABLE ONLY public.interview_questions DROP CONSTRAINT interview_questions_pkey;
       public         postgres    false    186    186            K      x��}ɒ�H����Ii��T(j�!��JU�$�W]f�qN ��`2W��{�%}ν���TV=�U������Ç;�;y^�Ⱦ���j�a��}�c���6?��|9}��!]o��S�Z�M���]޷�a�:�������w�~�����*_�n����i��/W>�w�����a`���s>x��g�-�S5w�w_�5��C���w���R���U��>ߴ���뇜�]{_�>_u��_�ϗm'}�v�u�a~q�$��C�����mz�첿��g�����X�o��n�� 7Y���A�9Ya���Z��`�}wȫͶ���a�۶�tc���м����S5M{md$Y�<���}]��3�޳���]��p���&��x��#q���.��o�o���Xo]-=��7����Lf~��2�+ƳS��~i�g�*�x�ww����OsC��h�E�$>�ض�
|p�c�#�XLo��˅T\W�#r��ƻ��c���f�/U�B�zǯ�X�n^�XK��M!��g���Fg���=��7P��c;^fsXx�n��P�y��<���j�i���W��-&��N��;����,��U����T��M�;tn|�C��hr���~�N�o\s���v�O�U}￹x�,|���Dȕ+'�_A�H��݁�o�<�vW�����q�:���q�ś�߽~���Y���+7�%N'۴9�L�A"�@Y���M����4���=Zw`}��=7�kW����5<F#}-�d3���̾�<V����ā��|��`0��GLn�Is�y�î<�o|�'���bݶ5W��Ғ� �aMZU]��l����P������"Cz쓼���G�l�hT�
�m{>���_��5����5�U�U�2��z��wD �aCV��l����H����a/���t9����I{9n[����e��$=`�bwڈT��Y� B��E[c1+��<��q����[P ���5(��V�K�e�n6����U��I��!<�E� r9d_U����3���Ѫ��:r����@�ؐt�`E-��j}3��1���tA��H0X��V��ۜ��,p��+�e��B�ڣ�=������pi|���o�
'@����B\F�Fe�]����U��OA`��(r/ˢ:?$"�A�ΗA��/�_f�[��͂�Au�b�ҽ؜��N�uɢ���7���qc����?�1�IT���h�~�G1�i�ea�AN����6�U�x����[�3�O��.�<���AyU暪G������� ��@���@��xW���qu3��mr�#6{�8�9�U�7�r��thN;�S�
pN$-�C	�5�+�E���˪��ȕ��6���Ie��[�gR8v����X�����CU.Gܴ��<�7DY�(�A`e���s���Z[H��FeK�#P@�nyAi,��7��2'SX O��6��&<�^�CE�x�v�F�V[�A�6f

<d� �����/
�0�4�!��2ύ�z�NS�
`U}C.��X��)軪��)L����U��c�J��A��-���q�����	8~��i�4��w�H�6��@d]#[��}���I<�� ��&($��8���R��R�t�e�yr0��m����g]�6��{��5%i����#v��7`���1N� ����oÌ:�#h�u��-� ��qݝ�iak�ᔋzWb��"��'V��zh�$�*����"x�P�$�k*�>^���H�q�B+=W��Ȁ@�����p�G���A��E�;b�Ng#�H��+�i���߫h��ݺ��V�Ť	�R6=����oT��T�ڮ	:A~�M��@���Jl�+�$�X���F������Փ'`��T�QԶ�RR+ւ^x��V�V�ų��SED�<��G�&��B��m��r��60r�E�c��6�e�X��@?=7�c���I�U��J� ��
$bÊ��%m�;��ᨮ�<�%V��d���{�zW���,����� =DJ0��(�Ű�`o���Uu��ծ�~��?(u�=D�s�	/��v�΍&�3]VM��pj���3;>�A*V�`0௪ىi@;BTU���|��ߩ�zY�M;��[�u�aS�&D���6?A��~�isES�7"�ҹ�^��7�_+Z!��;e;WU�}q�<�(*O��*��k)��R��1�iOς!�������H:jQ�]@r��S֚_�ǲ��GUqm?LԫP~�#1�!����eƎ�2:�-�v�������d���1�n�^�m��IF���/�����Ҵ��rl�l����z�E%M�X<��Ţ횋g���w�D�@�x�_����?�6<�)9��VE�u�z@�5`�[�`��W�,;�^@l%���J�dն�.�@�y�s�ȷ�x���M��KFH-ڡmǯa������4��f}L}}߻����m��w�*KWu�_�+\/���F����f7�Ȩrndo�_F�U]n����6�	�ϯ��;���w����-�D=X��#2�5�xD�	..��a����O���3/�}W�8M9��q��?#hx��K��a��+{�~4&mǔE�7Go�c��+� 6E՝�m�J7M���ăBC* �P�FS`)��\e��L7G�\5�X;�_���n�i�?i�[7I�U��=�V�HX�e�H��,���y٪ku��:HEg
v�J�#'4�	�Ɋ��������e@��P���{�	^�* �n�!���V�K�&���_�j����03���O� �ګ���ashO���go�Պ")�@�l�4~�5| F�B����)�-���
�C�^��b�w
|[�o�tL>X`���r�Y����\��Q��I��	�n�oS�w�u>�(��^D�/��]: �m�^'�iQ9Q˘*��RE�C	�)uL�
:[@��ӪSE�S�����V�I/��|F����Ǒ�R�&f��86��W-��;vTJ��
g����lп"(ٸ���GED��6^�6�x�]OL�sv���Up��`a�f�%��j��W1��릢��� N�U'F��dмJ��(8����<XxK�7��oW�R[$��p���褓f�}�
2i֠�r����t.Pa�F��T�#&�#5�ǅ�?����aj֮jΝ m���j�G�/�b�yJ)�]��M����^�#w�8鷅z��[��� s�A��K(ؙQP��n|Z�l�o��v��2�m�R��I��ďJ1 }�2���w�Z��F��=K�.{kr��Q��&�����1�=�6��l�8�C/z�� '����"��!RZ	*���pն¯�{X�$��#�as�y��|Tide;49�i�*L�د0����G�q\�� Ē����ڣ?5�t���{��H��#��)�)'b�56����ѿ��()z�U�l"p(�~�?U����r�*Kb���Yd%ήj���:���T�����bjYu�zR���\��'�'Z4v�@<	6M�>�FW��4�Q2a�S�{,�$L�}�8CL��1/�ŋk�.r�E�G�����H�� �����\�^���v磸Չ�Jz��zԭ��k��i����5E4��fH�q﫦��6<��kn~��Ev��γ�w��M7T[�#�I[S����i�brj0#��{II��k*�T��-1���{� �G?�;��$ttk=�j$�&��A@��}�ބ6�Fۆ�=#��9UJ���䞪�2�S����f�Ț�����O,��M�Q�^��A�,w4#5�6��:�.������~���?:���,S�@'�8R�� V�I�b҇��S�%��ss��b����4��j�r4Ѕ�R#ov8O��}JH|�ǋ4�`�:�[���a[-%6-1h�^scW_j����,���5�(#���WT����9J�[𩺅��ևyv�j�A/�毛�=�������obr�Ma2���h�U>a������O�\~3���~�^�T��.L͏	�"�G3H�    ��Ź�M�����jS�c��Vb�!;)�f95>ŷ�>�	8�a1�e� �(_� �ۮl�uK���f��(֒V�ө3f�^M��F�j��)dd>���?���|�*1ڊ�,"I"�{��,�ܙQ�aa�����vUM�,̼�)�H�'L˩�V��<�D7F�5%O t�n%���D]����'�d
�gi(*�o����J=�}�P�-h)c�[q�����"��F(��*[T��_�3e���曕����<��C�!�)��8���q���}I���٬'�R&\pj�^�n�'��C�k��XĔk:� :�ԚJ�)�xq�i,R���76�]�+�Tț��j�(�H%�An� ��\�ǘ���=���D�s�:��$��/��؜*�Iϲ���\"}�*a{��S�ٙ��l�ה ���sp�90��U�d��-�r2�I#����ݮX}��}��'��Dm'B+�=R�zԐ��`��|E��1��ā�͜51�BFj>FG,Ww�T�i�cd8� �/���W"�x�S�>��~�ڙR���8$��zǸ�p�S��7����J�`�ԕ~��x�$qJ���I�=�B&����w`1��|�`�ٗ�	!��ɘӈ\2��?_���$�tq ��΁߇4���	��p�V�%�2���ϥ�@E�ȶ{T?����[2���b����S�5�	�JE���=�1�n	,�(�������gd�h����!v��'cn��{�nM��+�h�8�p5�%�0������ϱL3��<@g��-��5�!BW�`���7zT�m0�{L��n�\(N}���m���M&633��jV�do��C�}G�ȐNgy�<qM~�ԇB\�6���$�|�*�4Y?E\�O�ܫՍLL�J��O����H߶���2�bk~�����qm�@��Y�	�$Qכ̲L'��.���yW�4�F/�_�g��M⃧�8�*��{-y'ɷO�h^�����L?�6P��K�+j~q�Bh�����â7�����$�Y͇�JN�*7��@7����U:H�4$x\��TLr0!���]�m7 ���͆愺�)K�e 4������4����пW��	��3�	Sӆ^�?��Za���V��)�	�\�ȣh�3��C���
��P�tI�g�~]��l��R���vU����/�=e�%��H~��5�j;ۼ�c=�ۆ��S��3�w���0-�m�ܑw�wT=��Tƒ�@����� ���7l���x����G.V�ͪ4�+�c(4ڡWƾR��m+�*,k0�E�����MX���Ex*B0��g�Χsv��h&�|X��Hku	Y�xa	�qZ�T(������g��Z�#&�	���JnY	�Z$(+H\�>3����9���}��M��@'���J��=��~��uX�1�R����y��F>�0 �K,�PYY:mp"��6i�W\��P�AL��6#`�+����/K&��[N�$r��.����v�T6�|zƉ�:��a��%~Z����#�����X�+�K��c�`�qW3}��Y_��=W�l�e�bK`�� � �$_�7�%d*�����2�4�����?|ɝd~�\e�� 42�p�o:�{U�y�"�����ϲ��`�<L�X]Y�/v�L��
����R�$���I�DŨfԄ�U�Oe�`�#��`��$&���,�xGi�!�OL&רۺ�ܭ}��]���P�T�QLs��Ӡ*���$mY=�WO�k�C�Q�O����&��`~�	�
N0�b���f��/d�~��~u�� � �&{7��jɶ��#Gɹa�x�r"��Ju�PIJ�j��e�Jb���!�vF����%�Ӝ����u4���(�(������|��n���R�*�����r�x�" �&�F��)f�n�_�`��8FR��T17��7n�(���T�k����~80���e�6��g�*� Z݉N���3�(NX�qJ_~e������ܔ��_����&�3������c�s������{��ª�>�� ������&������^�L����������&��,��g������P���I�F��O��^?�6:����Z��7o�{����<c$|%��Z���;+�Uow��A��H���i��O�fW�["���"�#)�5OD�V�#�U������z�!X(	���gW��|!�1�˗L���$��+�b��#���쵸4ˣj�1�3?-�RGh5�%��v�f�k��G��鳏j~�>�8��)+�C�^�C|�]�"�%i
L��̪�xj|[�Q�����e+�ʭۘ�1�Ⱦǖ�!�,�kHv�J:A����-�wLz�xZ���w�C�o%K8��?���B�+��o	��I�����6��g�/��4Z��6'V'������'��ob1w$��K!�r�W�9V��1�;(um�*c�8����pP�6�J��\Ȯu��e�W�)�ZzV���dY��gO'n��KB���f�7� f\�g���|�?�3�IN�H��k(�c7d�v�����/՝��
���X]"[/HSE�X�BObd�7x1��؋��dL۝	c�#T�S�sWc�b�����3��0'�ϩn����Fl(E�½�� �P���S��U!U����w�\���l�2�{e��K+&��t� .G2���h��ugmqP:vw�x��O�8m�cxt���8���H�"��_�z;l��ӧZ�cƨ^�a\sJ�UQ^Y��(��r}!/�y�V�m	�i���j�%����g6hz���Xj�sx -X/�H%��k���D�X�7����t�,���HP�i�+�c��[k:��+�'U��K���x�����bq�y�k��������Kstj=�"�!�}��b��q�۔�dT��3�U�)ˉri1�Ҳ渀Lb R�e��!hG�>�Әp��+�A]�_�l�2{�O9�c��!��`�Z
E��Y%��]�`�B��0�u�������W�8ϒ���T�2�8�dl���:����O�PV��~ZTiIx�����M�s3y`~�����_w�zk߀/RP�52UjWUKI1��M��D������ziؐ"Y���-v��Ɣok��%�?��L:���K˯�)G��2G����ҋ��Ģ�9]}e���vjL�6�ɜ���<��K-il�+���*��R�m'���!�&W;���Ar%�� pô�H�B=�~h�;�����6ԣ�6���!�[%U®�﹟�9�g�s�5!�^����ϳ7r�	�|�f䁆����w��c�劻ڏ;�7��,�f�T�j���3͓�:�$Y���s@��$�:�BQ���E��� �o�b��V�1v�6�ܬXB�S?.�/d�^�����~8yu��ۉj؄Ħٿ�P@Ǫǎ��I� Kf�1�����!Z�6ȅHV,6�w2��i�3�bG��|��"�ҋ؂���jHj��$���&�Cy��U����*�+��q��m��`*��{ݜ�*ܴ��6L���w>�g�V�@L�څ �R��Y w�� �Rk��Ib�S��8�X_%����\ߖ^6)�S��|U��ɞ�U�l��u���n�v�����fe��Kli�7>]۟`Ⲗ8��W٧5'(u�t�%rY��ڳfNΎ%��N�H,7�~e�kt	rb�&��s���tj���'���Q!��Ɉ�d�_h=���X�h�P��l�\eC2��%�
���#��j�/�=��3s��Y<�Fer�h�9o���X�h�<͵�8�L�L/s�L��3�nD���z-_�ɜM����,�h
"�ۄ+BMT�/����3�u�K�+�>�zzN��/�]��{����vt���Xzd
�/5�h�'J}~��$k>���׬a[������4Q9a���뎮FӚ�;D.n�<V>��m$��zHn����E?������cR�Q����FFd/��� ����,'�q 
o),g�ǋ�ٻʮ��b�v9�B����0�>�6��B �  �5��:-Ft�?i�Q�En�k�Ĳ�o�[�щo5`�i��P���I��n������y��_���L,�l��?o��7�Ff�c6�(1�L��`"���ܙ��ڍ@�R���b�[r��?�*f%�[/,8i�k9��ո�p#�%��#�|S�t�x����_c�& ���c�W��	+Z�{K
�tNbuE�,�>�8�R�oR�a]����z�.)k��B�1"lW���'>�
�$�q�g�ߌh΀kP<��++h��2��o���^獭{z��z7Q�!dq|����%����]3n�
��L/��m���;҇j��a�'0a�z���6��/�<��݊���`������r�v7�x�j	q�̮V�(^�E��%�9�1q�Dˏ3�1�5���-�h�����_�z��iۻ3ŉr냵���4��Z�{�*�3����6�@���������1a��I�����u뎔���R�(�Ϧ��ᷠ��MÃN�"b���j��	�����������U˜-
K�	������g=�V�A/�KҴ�D�@� @oIn"��5��	���$W��}0h���\�'�>�8�-�i�R�*�{��M���������Λ�B��{螱� i	�G���IB}L�w��Z��c	�r�(5��`@q�8sr`),biܭ��C��V�-�$/���bn9�5�l��}���*��7�עP�tii��44a"Q'�X�i4#S��c.d�iA��pZ��}x�Bpo'=1��U�$T�(����hl��T"��_ B��4҄�ͦ�Sy��qe(�<R�b�t�9*���չx��\���d#��7b��x����W�?�#�p"�fQ��}��`-�y��xAY�X�JP9r����z����W�M����˥�9�c{Ifg�7\�<&��M�?l{;^���L[�~��1�:��dv�L<���$�$�n\�,�v�t�N��������
�ه�����-@ʄNG���/�l�;�G��zRv;�!�F�B�_��D|���.�N�KIL�Yw+��޸������^�>:��f�:�[�\vP=���oS�8����=oB�J��3�o�;�T�s��'^{��N[H|R6�`[�uM�{���,Z���G�*�V[7	׸����	e�"V�)��<�	[ߎNʲ�x�b^�s�\+!u$����,1K�k�]b#@c���R���?���`�     