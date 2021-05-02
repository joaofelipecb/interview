PGDMP     	    :                y            alphasights    9.6.21    9.6.21     N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public       postgres    false    186   �       U           0    0 -   interview_questions_interview_question_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.interview_questions_interview_question_id_seq', 110, true);
            public       postgres    false    185            �           2606    24587 ,   interview_questions interview_questions_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.interview_questions
    ADD CONSTRAINT interview_questions_pkey PRIMARY KEY (interview_question_id);
 V   ALTER TABLE ONLY public.interview_questions DROP CONSTRAINT interview_questions_pkey;
       public         postgres    false    186    186            K      x��}ɒG��:�+bG�b2�j��ACZ�%���eV� BHZ�o�����9�^�� )J��WmVVLD�{�p�s'���ۢϋ:�>o��g�7�|���f��ǯr�����},6۾��^w�˻f�\���e��m~�6��i�¯r�h�}~W7�ү6>�w���˭����������f�-�S�w��P�%��}���o���+��b��ﺼjV��׮�s�۵�}������%�r]�nZ�l������'ٷn�7m'�[6u��m��}���Ax���Z�ݮ<ʰ.z��y����vy��qX��޷Ǽ�vM������жY�˟�ͻ�?�8E]7��/�ZF�E�sl����L>��<�q?��-�Nc�>ބ���|%�c$N��������/Z��������r��5`2󋧗��1��2?�K��>aVy�uLn�ݙ6�/?��RQ�E�$>��5�
|p�c�#�XLo��˅T\�F�A�wy�]�)�l_�z��_��;ݼ�b��l/�uǮ���z��{l�o����v�������Pu�r��x�v_��cߺ�o��[Lh_����wXi����Y�S[�"|�ͯ{R��7�[ޡs����f�C����w=w2��.���+���}�u���gO��wع_A�\�rB���ց���=x�v�3h�%���.�g�È[7_�����w�j�$��:�&����d�&�)1H$(�=ٿ������q@�������v�ƳU�t5��HG"��W�ٷ��â	�n�A������63�}Tar�L�{�����#��p��[n���ʕ^��o�@��-א��j�w�/�X^r�Ȑ�$�v%��;�|� U6B�˦���]ï��˒��Ks���\��*�:
�p�=U���"���!��U�P�	4{�4�I؋���j:���l�Kבrܶ�/=���/ӎ� �����F�z�Ϣ��\6%���s8G�!��r�ؿ߂���?`�~!�n�*i��Z_4��ĉAI�\�"�C���~h0�;�m9L�#�H)T��C��6�b�(��7c/Sy��_:Jg$[���吼n��͹^���*���]I!�z�㛜�A�W���w��֭p4�,�e�MT���?/kP�N��滑"��,��c"�T�|�����e������8�#3��Eu�~�:��}$�v�\�d������?�1�ITU��h-~���������D�z�S�1�m���GՄ%^e�Z���=��\�I࠼*sMտ#q�]��CַA �@�l����� JT�[���au3��mr�6{�8�9�U��qI:ԧ�u8'��䚂�𢌴*��b	��+݀m ^M���(w�Ϥp��ڗX���O(�OT�q�,���!�jC�[��=���5p�D��hT�t8d���Q�/)���y-.s2����X�ڕ�0�y�
j��å�ע���~�+���LA���D���n��EF��6���Q��^G�ijP��o�Q0}[4;��Wq���u tl=@	�M��ʗ�ܻ:֮*��8�o<?��i�Fw���e����/�B�8	���� �����d�g�P��P��a�Nbm���o;�`;�Y���j��4��$�eA`&舃M����V� Ɖ�<�����QG| m�v�oW������\{��hZؚg8�e�_a��"��'V��zh�$�*����"x�P�$�k*�.^���H�a�B+W_�Ȁ@�����p�	G���A��E�;b�Nk#�H��+�i՞t���T4����qx��b�o)�c`��W���\}����� ��&�V���C%�ܕTc,BԶ�uy��{q��	�,f�M��Ԉ���l�M7��x��y�T��%�����Q��愰�fd��\�
F�p��{�s	�qY'Vf��O@O���X��i`�h��!����ذ"�<kI���r8�k1O��Hɟ�/7��t�޺��/����#,�}�fa�"%aj��e���ao����*�'�}]����W�V�1�w��U&� �ڭ�n0���h¦�Ss��7�[���t�X������z/��QU�����~�b�e6m��o1�=�Ma���� �
��	��ME_�pJ�N{Ş�d/h��~o��\56D4����샨<��⯵̊JU��̧=� �/�:9o!I�tԢ~1���4#���5�N�e)ď$�b
m?LԩP~�#1�!����eƎ�2:�-�����w���d�����n����< ���v3��8	Y!4�i��?���U����z�M%M�X<��Ţi�g���=�D����B�Uу�3m(x�S"r -���E�M��A�_80l]��J�_E��Tz���j�+��M�P��%Z����G��SL���l�]2Bj��M8~S�Fwg��)�4�`�����68n�,�VY���x�\�:A�G6�?���hvS�*�F��:�e�_��v=��]�삘Pp���j���K��x�z�]-�BLdу�?"�\݈G����2{�ي ���<?��w�S���"N��G�`���"L��xeۏ���혲�����a�q������M"W�Yy��7�А�
�����X� ��!W�T�i5�����ڙ�b�N�����Q6��seY�w�t]�:a஢SZ�g�k}�%H�$��T���5�q��O4�
�������e#k�h��
�+��,��U:��cT��C��������l� ��~f���̟�:���W�7����Њ�h _>�~手��&��c���;�k|y�����6x�-�SK�ZK�b+r�4:"�t�����S)ꆩ%#H�B)�n�	�p��p�8�]�Ϫ�GR����Vo�ݔNp�0�k�%i���X���u��Y�S�I]����'��������#Q*�Zb�N�����$�bٱ��MRH1�5D@G��aG��!,s��Lm~�2���s��z��'/�{52g�/�Fļz���Mk���A�92�D�`��&[V��8���x�]%jF���]_��|{F�4k�싕���u�kx@}H�81��@u��� ��َ�Ћ�z��[���1Y��>w��⮫��0��N	(EwM'7"�[��;
p5�S�M���^�@� S$v
� T�
*E�[B��`��Y����c��!6J-��_j�S�Y�xJ)c�ϗ/������^�b*����YY9X�[h���4�\��#B��=퉵Y�@f��ܟW��"$0��E�}���\�ޣ�+v~m�# �'�Ge�Td{��٩��j"էV�1�A� �t��A�����8�Y bIH��b��Q�;:�y���\��% "ݫ*�a���|�n��o�/���u�A��W'C����m��eh�~�%Q���,vw�)���]8�z�����ZmuC_�>��
���&���X��'ᤑ_��*��<J&sJ�_�%����ʰf��|0�ǻxq��C�������|�]ɺ�;��3>�������Ž(�sB�}TB=��%=�48Jv^��e4{�*Hn�����Z��_�z�]��q��]�g�MՖ�*�r��-i�$Js���=F����^�<�$Ě
"�E��fG������q��@��'���q����p���� ������Ib.m,�آEuN�R�Z!�Ǫi��M�d�id͐Lٛb���,�`��t0,A���ҒMl��D���ث���)�yޙ(4��_��`�ZP�X��)�p%�Q"��@t1��5��шN�4�"�][�uK�01F��]��L�@�$'�|Q�n<�8PS����tg�ݵ0�p��S�D�/��D�*��� ��K����4��3�92�#a���"�R5��� �/ �9 �/��#a�/Ҍ������?�u������x���,�~�Y꽳4(F� H �/�B�}pʰ�&B�z��%��w��]y�gӌz�4]    o�-���Ǘ��_|sDl
��*o�	���e��E��?}���+l�e�V�)N P��,��&���^�{�<���Dz�EŖ���^4֩/�R�P6Ґ1q�)y�.�P�-��bR��3�qt-�+�Px�������o�4QN����ք��(v�q#,�{C�-}S� �Ȯ��rH��IP8��%�I��q�O�a�$�exѯlC`�}U���Ė�\��?���ŝz��R7���D�vM�R ��d�!�����g�Qt/�$ �Oa�A����bS5�O��#M�,JJ�O"��d4�I�	�J��6<��i �{�mv���а�z��l��@��fil1��t�n]�^ u'B��@�m �cI����$��G�/�� `�mW)�,��9Z9��!`S�BjyzHĊ;�ak3�tC�Z�#���qH~�X�Ib����(N��LL��$Ma�ڍE��yI��#X�"k<��p"���S�}��2���q�#�
�� ��7��?�,�T�J�k�1�C>ۺ��A&�k��=�2��ܻV7'>�066�BT�,�ɷ���g�\wӗ�zxHA���%v[J��`�9�rǤ&�ڢKR ��p���O�*��,�o�l�W/a��`I P"�b +��$Q*����WԤ-�!�K""��Th#��@�p�%_��[%�5�:5F!��B��<�}!"��T�W��xx���;�R�)%�C2��T�	>��N�C:{\�x:�;,yYr�A����[q��I��E
�ɴ����O�UdA�ְ>tO�%iB���QR 5Ě"�ϯ��֎�Aql0jP��k��i��2�Y�&j�Mq�	V�N� Ļ�H0Yݺf������dt��>O�B�N@U*�e�]��HjD������G�j�W��M>sW,����J��M����IBC� ��7���yL<S�:��������F���I�z�q��ݼD�l��{�.x|����:�������7��L��Fլ��3���L͉�9�GZ!�(�_�Y�(�e)&���[e6��!��
5M֍Wp)��Du#c¢P����GMS�;!����ͫ�$<	��� �ߝ�e���SF�9��4�ͨa�&
�z"�CPŎ/�3��'�SP�I��པD���'B4/BB���rV�O�GT��P��y�_\�Z}d�3:I�8��7�;5bm ����M ���5��ARŢ�=��~�j`��	�\�I�hsڀ������F(K�e 4����O�i(/C�Ѧu;@�N#'Pv���'LMz%6���3��!��$st<�e�βY����-@��T�h�[�R*?W͗���F�L��=��i6�����Sf�P�JE�$|J�J�^��}�#x�8�<�q>�>~hY�}���8�;�;��!�jP��������wn�|��x����.V�M�5�+�cX;ڡ��}��f�
U������]H�3����)�����M�� 0�h��B���w?|��zoI6�JL��ѧiɩ�:��@��tx$Q�hb��ԩ�Q�ږ?�A���7����:z6�˒x��vV� ��4����%]y�Oe��g���,�&�X\���K3�P���Qk/��
��ZR	Bmd�qW2[�c{�3>W�e�e�bi~�^i3�	���/�k�R�j����,#l��?����G�kI�{�s�@#����}Ӻߋ2M�q�����.}��w� 	�a��-��e�Bؓ��8��:�G�OR[�
GX��懧������'����ȐB&�����e�"ŨfƖ��L ��|?#�5����k�R�I��f�\N[\��щi� ���U�`]R��s��-*��ʭ0ZW�� �Z������)#'��F�r�%3
Ӝ����u4��&!2�Hc���|��X���P���L�УW�F=$l�Qse�(���_�igb�p���6�Rb�Lg<1$oN,�T�jY����?2���e�8��ٻBҎ�Fw�����g:�Q��U��/L!���."vB����\�_E���L��?��{�a�󉏆ق�.���,	['�RI|��Og4�uMx���rd�)�-�4�_^}w6��g9�x�<��7�,�׎"3��~܈����+��I�Jd��$�}P����SjaF�o�X=���MF#?��\>y�]�o���K*�'�ZhEd��0T\����g��;�BI��]\=�BR�d���M�>U����y	V����lXTl���(�����a�y��Im�<�R����/��7Ų� E�-�S'�yA��܋b)jv���4�<�Wq*�B}#%"��+P�xQ�0���,+��4��&� "��l��ų��u��R��ҝ�l��F�c�wR������"���k�&�sC�tZV�^Ԣ�K���J�7�bZr$�r��C��CD�ߤ�5�0gz��Pk���~��Uj�.�5��T�[��>�^;�^��m�pZ�w�x�<%���R7$�E�+��cPI=��z�pV����QOO��8��+����R�d	����3IL.����P)���^Ю��	Lkh�?�a��u����k�J�62��N�5�3�k��)+Z�.+�;��`��QZ��BD'�����ڦ�Ai����%tՌ���gűB�e�JH����t�c�^_2���5�sy��X�IN����Or��t*�,&ęS!��N/%)� ��%�v�����V_���r`nc��l�� *Z�B�Jl�`<��Bx&2ؕC����kNې��k�1>��1����g����ݺc�[���(�[G�8`PiH%2�E8&�vK@a�7����ܲ|ӈ����Ig�1�R*6h|�¿Y��P��ޯ������i��Y�0p|G©'��y��rP�ݹ�ݴ�mz>C�Vř�e�iW�����}=fMR�֔�Zﱳ�xv-1�a�\#LтȲ,-ЪO�jy�lJ-��b,9��� ��{=�:���Z����)A��ňϒ\>�Z��1n4��iF��K�xVs��E�����V]c��҅�'^��oŒ���Bэ�\����o�cZ \� X9U��Yp��zX,E�i�Ke:_�6��H�X�m�\��H�y[DĈU'~��J�� ������X��$TA�I{הD��&�T�8��Q-m0J�vhw��X���u��P����Q��p�!)bY�w�jT��v`.FpJ�4��\05�a�l|���}ëf�.����g�N���0�8��_�S2&�(.Gɋ�:�bm�E���.J[��Mm��n�$�rI&I�)�]�����+ͮr+̕r�ř���0�ҙ���w���sG� �WE�!4��DlC�;��|����4��)�����h˗t!�YH���Y�v�u��)ܯkv}�<{#�İ��w[�0h3J����;��n��ݰ�\���8ya�h�ۿ7f��`�1�<����qGI�se�9�V��@�a<ӫƄ�o�&��X[��#cS�V�"ϩ�G�*�o��yD�
ǂ>������%�\��ٿQ��Jі�I���H�L���R���?[r��������� [Z�cK\�g���*؝5����pFBZ�h)z�:^�t�&�x��y�<ܴ�f�'���>6^Z�$��X˘|ؾ��Қ����7�{�XX���d��{%��e�� �|��y�p~��&��V
ӄ��Ͻc8I4Bz�`�T�UXS�$�/t�!�W�^�+��by�M��6)V�s��?�us����%�Z��v��Ʌ!��*�cف�U�]|���,�r��1�������\g9t���4W�+��e�Rl�Q8��JK�5y9���I���/�\`T#Zt��S։�PC!�~�r�PZ_\bKk������P]�?�*�����+'	l���;#������d_�nU�ǂ�jx��.AN��=8�tw�N�|b~q����2(�3�(���3����"k�d"��e�k�pH"5��䓁\����H⌚}�t���ِ{�2�*�r&�87�1�$�7^�hޢ�]y9*��7�Y���3�7Gk8�z�d�� �  Mr����,5e
;����n'V,�qY�g��i�Jڢ����j�g���@��4e�Et����X��sM?�E�r�D���Z 3��b�Z���n:� a��]��&w�iՕ]�#7����k�[2
f]rj�M0�0��Hǭ�'ē�|l�ldTQlra�k;�k!��r�����{y�4{W�݋V�ج'Vȍ�Mn���-����[h-��tS7��;����E^�B���1����nͽ(nစ�a'�T�y��5 "���円̶�e��4��;lo���F�Ņ�,(Q �1m�V�H���E���M%Pq%��n�W�-���gTń n-�<i��e��հ�p��%��#�|Slt�x����V~���0�6�r�՝��咰�$I�@ݭ�b)|4r|��-6\	*���i*3�3mR�-�A�>c�����T6Żܓ�̤���ќ$֠x��voC���$j|k�� �>������=��M%zݜ�����&��&�Bdz�8Ȯ=��`6�D�/e&{R�V��)p꠲4�x��g~��a��#,�.�JQ;�3��Z��"�s(n?�"�A캛Րx�凙�9�q՚F�4��P��nW��/^=��4�ݙ�V�����֑�G��x�b��1T�g������L�+�����q���c���[���38Rv�/� �N���oA�!�F6�tĔ��E��l.�c����F�'����(,�JK�/:&�>y��/�'�..c/��RC�d���M��LȑO_̯�������	�X�Ē���d~�m?mc��ŁZ�(틚ᚖ�N�gn� ��h-���u��T�ƿ���.I2�:q��Ү+P��q�pm��M��䵈x��~�6?���	3p{������΅�ZZ�8��b�C�n���Y�q[t���^�P,�;���.����*Dւ�M�ŭ�ɣUՈ����޸U(���lĖh%Z�2�Y����Lڥ����M�T��%�0u�nl�$.{��^]�����D��er��_80�ĂqVB��ܪ+mDΝ!��wS@lr�r�Ij���^��@�u%qӆ҈�����r5㖺ߡm̵k�]2;Z��J�F�s��g7�b�l�@p:�ǩe������2�}HI?����AL"���7�:�	��u�ee+�M{�7������+/�b>�M ��jZK�o�^���x�"p�i S����X�~�����6�*oJg���λ��%�V34���Mr�a�gjʹI�s���I���bA�boג�^e?֋�i݄����F[M���ŀ���h�*��}­��7Ç��	O`W�g�2��B����nzS�#:=����I��G:ɮ' r����.&����t͚�ĕ6��ϖ�O�H��ꅃy�`��I	
?�[�kUz?�A��U�'��]���Y}���V��h́j^��h>&svI�ːs�Sݿ��H<k     