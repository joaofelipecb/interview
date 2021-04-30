PGDMP     $                    y            alphasights    9.6.21    9.6.21     N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public       postgres    false    186   �       U           0    0 -   interview_questions_interview_question_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.interview_questions_interview_question_id_seq', 103, true);
            public       postgres    false    185            �           2606    24587 ,   interview_questions interview_questions_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.interview_questions
    ADD CONSTRAINT interview_questions_pkey PRIMARY KEY (interview_question_id);
 V   ALTER TABLE ONLY public.interview_questions DROP CONSTRAINT interview_questions_pkey;
       public         postgres    false    186    186            K      x��}ݒ�F��5��؈���t�Z��t�$Kf�k���s"�I�A�F��\�C��F��<��/3� [�̙�݈���,���2�����e�'�1}uo���w٭��|gs��mQW�M������w��4�̛���Gչ>�+z~��m����k��4}����v������>�w����|pU��w��bXOs����4�~�鱺��v���n7��嘎�ol����Ъ�U[��27��ڼ��mN�����ͫ>�9������R>1��}W�Z��ߚ~���߶�f�M�}���1���tD���ki���{o�v����3+לa����av��>i@�}g3��"���{:[
�����:~#m��i�rv-�Dv4�8�ޚ�o;�W���J�e�Ҏ�u��CE��Q7������Ms�+����lIK��;&���ԃ�nZS���\�@*���6��S���[��l{��j��^6��pB�����VD�8;}C<sO�������ƂJ��Õ���ၧ�t���Yu��UWk&>����iJ���]\d�>|�&ߵ�u.�sC�q���az�~/�󢉥�մt�^6������*���tms�-�rSh.�\[T����;+/��u�]���Ϣ�,h�'�q}��8�t�|[��T5��Lwg�p@����z7���P�R/۵��gW
�Z&񽳋�f�ێ_���ҹ|�l�FV{���L�+��#$�d�$6l����~�	�غbv���r|��D��q�� 2ҝ�M�3���'���7����N���{o�[�$B��E�{������;�YD���m�]����-_����*);�\,��_\�����y�ֵ��(�N8�ͷ�텞�6��-�͞\d?o�f�����U���|��w'���m���L!�"M�V�:[���Lf:�%�+M�o]�[A�t[љ����uN"v�3����/ŌmwG�n:/�W`8◹^c�kG�'w�$:m��ئ�������*xcCwo�M��>���
�V����y������3��nX�O�°��U��˲�����YE�ʁL"!�\�V��@��5�c'��%i+Z#�˸���T]���WF�Ă"O�eO�ޑȇ�QZ8˚��3�\��tǗ���nG���t�tW
"S���t	�q��ڵ�C:�V0텆6���S���x���E�|t�Dh:"C��0�c+��\Ɵ��9��eC�i�E�<���i�7�!%�?�	�D]�S��Q,�fe����SR�F���\�S���}0u���9ֺ��@(��d��-C<G��б�o큡I�ٟ�
@�H󞹼\O��|ɘ�}G����tQi���9��������VI��ܓ8�m�2͝�]<!�;��׎?W�|0�K{j�u�JQ�|,Yl�j5��-w�����~HVޱ�x~25Q�<x|0e�;�gp���Q�\Kw2K'L^@ͱø���̮�O�@78'��$Y�\^����b��H�6��< $�����[[��l�Bܝ�ݭ��.S�CM�� ؾb���t~���,����jm�Jw��^p�Ȁ����'�&�7���:�)h��ϲȕ>2EK���`A&�Z����/��y"�pW���	&���lw$$���5i��lmD���@h)���A��}=���(��%ȡ ��_C�p""�˰F�������ޯ��N�e� ��)^�0�Q��n�;e"����֧��O�D��Ƶ�-��!�D��:�ۆ�,���(�7�k����;g;ad%�c~"+��K��]^do!�`[������k��54^��&��s�~(�����+�m[c�<Z���P�tצ��5�列�� S�>R�V�
�����tw�oH��I
WD٨GW�o�L���x*%Њ�Eۂ����Z�N�?E�qvy	�l�7ғŖ�����
!��=�5��St�ٔ�]>�>�}��bV��V�o�=�e�X�/{t"�!���֮�c���˖�Fa>),r�-�[�%���Ņvli�8��Vq�;ǃ�D��UUL��E�i��P ���A=X���d&~���Vb�.���
RN
؏$��:�wX���a=��4i~է����6O��Z�]3{�2�e�A��!����^�O{bD��a�2ziUT{4,�z"tAF�s!�a^<���uK��e.ٴ-d�)h�8N�(x��������%^���z�m��]=�޳��Ox��G.i�$��s<H��q�- �"'f�͑��)��D���������cS��u������Pc��+1�u?�r�5��p��{�	2��i�R.������X ��32�ݙ��5>t>�<B������W`Bd:�ufCp�������C�^!z~���H�o;�:�C`�
��#=�!�_�;��n�9�qĴ��iH�p�/��,�0� F_�N�K�{G䚇O	
��bF������8�y�)�N�
�g�Xtu�l�%���݅m�e�&�Pۍ�(F�Bi�2��=����*H8�aw�RH9b�,�{�1�+��/���ٳ���&�n�����6B����#U	#3e�u�a�R[̉����o�k=����5�_���q&/�x���W��Õ���[E���IP��
��Zߴ�����ol4�V�k{y��pg�B6������ٳ��MG��Ag;�s sO	a+"�W�z��3p�]ͺɃ������n9&cBB�Frk�&#lS&��F�G�S������ى75� ,]�`�7o�,@����n�@ڬ K��>@/w��y�'�C��1�J�)�������ٳ�l�cy������ _�b�x�GE�9���=�\�6L��~��x��D~���ӏ]a+�b��0�fF��c�B@�Ϯ^f?T���|&�	1E0l�_�jV?�`���S�S�s
��_Q����7#�H���8���e���{[l�
��#�}�z�{�+X��|��?�ZK6���L��K>���p���,�-��>�d-��E��v^�+�Ϳzr~~�5BIg.(R@%>���D��YI�����ɒ�]���X+  ����9��' �I�g$
X/5G<��ɱqz�%���;u#Jfj�Ƌ�q�?�g)��У:-0��x_����f*U��N���IDd������W���P�.*�Ĵ�|�������#DB@�t�����+�F���6�ۡ�[=�5,L�89�aiv^D�a�2��!k�7���E�n�����oC�G8�B����;�H��lߑ
\̞�$˅]��5�/�����  ��B~� ����Dg+;9ԓ`=�����Ga�Aq�:W�}.؏�|�og+	�B:��v�F7%�y�O�¯�#\�WŇ��\�{�%���'�W�N�𤿄�
���+������T���OT=��]��~���`vӰ$�Ip0�I|":d��蠶���L��5�B���$�G�nQk8p6u��E�M�� �|���9	0ђ/�}�9�"�b�>��a�b��I�'�{$��Q���u��w7�l�PQN����Z(��L���,��� m�e����F�T�.nt�0l�������^���*�ŷ�'�â����2x��w���#T�Ű�s�]�)�n(��;���`Ciz�2B�Dܲ��I�v#���{Ӂ��b|:t��Jx�(|OC��Hr���9G���wJ6�韍ݴ=��95x��`^�X�K:��-�y5^M�E��R��窩v�;�����'�V�=��ʌ����&����=��p�X���=�ʌd#����3$˗i�3Z��Ox�@w+�6R/e�����G�s�kI24�Y���׈.Am��ӲrE�ۤS"�����g��G�ih�6[Bvғ��ԏ��З�	Y �3��䞔|.�6�s��ځ����БO��iLخ��vb�8�-�,���0��Q�J�$)��,򷉍�Ћ��+l�@�\/���x1����#M�چ��5<\jU��DNa#�)����ӹXE�ɳ-}    ٕ���i�q"��L��>�Q=6*@4�!��"[�t*�s�挒 >�=��rIm%�ȸS�
�@��gW�/��s��"G���i���!\D��w�g�ئ�(ٕ�]U��=������3vLG1ܒ炙4��w�I�^g�G)r��*��n_�a�Y��<B�Q��@�5��#!��nm� {x#^#׆%yL����spZ��.�f7��X�3 q�	&��m������(�D����'*Kr����׬D�M%�|�`W�[���K�Gebƥ��1#v�Sm8{�w�m	]��>FD,��:g)���K ��N=�lM�$ Y�����9&$�P���_��t��{���9���%lI�f��ߣ$��!�-�G��[N{W��'�1��G�W�tj�ᤵu�P�=�bߛ�&�*�Zx��2 ���
l6D����:?��$�E�������d�1{���c�_��X�'U�A˯�L�B��].S/'�Ȑ��x���.�!��j��]f1�$�w'a�$�be�������iE��t��	���#!��V+a��%�U��� ��Lǯ8G,�-����_�L)�ً��5�:4t_ufda'�P�G����D�%��>"��_�l���G[@��0	w�ED���kN�b)&��ѵD��'|נ���yr�8 ��4S/(uB�j�ы�2.���m��!����_��cgaé��;�Ox8�:��ea���c�	��y6-;t�H	�� 2��8#�]��rw9��#i�p�΃%MRIB�:6���R�з;����=���q[����� ;�ە�{ZݐB�u=�R �����he�rݷ�Ru�p�>���MފsO�f?��?��6�8��O��"'�GH���)�<��(p��b�4hE ���<�̑��"�H%U�w�u�t4��t`-����+o���~�Ă���B�	V��R�?^Dr�Y�	�t��{�:ǥ49\	���@yBjD���'$aߪ�$�ǝ� ��g7�&�7�l�E@@���^�� �vU!����M�7�<%�/�!�#>%9<=�Q��+6S��d|�j-�"Tx�vj�u�����'�%]����������kMಪd ��$)��J�y	�v��4{���u[zF��Os;�C�J3J��D�zH�`�ț9���:vp�~;���]>�|:�$�����NC,�B����mȒQH�F+�`�d����ot��*��:  q2�����Q@n�������b�:�B��]�WI�K �����.�y���}d��$6�l���h{1>�[�3���7������s.p&���L :r�x�*��s�Qq@�*4H�����૷�^�L��+C�݆��_��_u��T��V���춨lO�K@�)�>��c�)ڒ�%}Y�g`^��J��S�S'}t*Gyf��)s[���lGċl�I��zֿ�dc�� ݃�i�B�#�cGaZ�v3^��!��5P�/�;�{���g��<��m+��)P4noK�l��I�a�N�m��XD|eInq�� 	H&a�gˡ��ꐯƲ��b�O
m\�j��B�B���������	"j�3%Υ�o���g'�B�����D$�� (���"_@��4��e�T�<;W��N�7n��V~�:�ɢ��I��wI¬;�ő'S��|��F�J����{�KS35�������ff[�Ibp�jVh�#Ec\	�u�I�n�"�t@���G���2m��+j���_g\�7׸Rp��3ϥ	HZ��#2qlLk�t�{�|�4V��Q��he�����f\u�d�C��_ � ��|G򦒋�h�(�m�:AYI����ZA�[�
TQYo� ��	!�� &��5�]�o��]�{�1��n�
i���Ko�U�J� g���-�8�AA��3��\4�1p�|VE���ڳ����$�|�_~��������K'�I�~P�|�n��B"�ޖ-Y?�H>_�cp]�' i��dJn��iV���n��<���7Y�,�	k$S�+�utU�2�ԉ�Vb{�M�֤�!8Y:`(��âP��n��'qj��k��|ZL�i8iW$��%�B�.ZX�GLH�%��<wL���6 N��)~h�*�_v~��B�O�	 �/�D>�B�{}#�N�2��5�A
�`lcQ�C�${Jˤ��zf��Ԉ���Hx�w� %8ҨO3��>\_��:c��	܉#���m\��")
q�`ɂ�s����v}�[�1a ��o<�9�}� ����[jU�k�t�iI̕��Źdw	9/��~뼥����H��Q�<��,����A��c�l�H�9x���PF8&E<.*%��,�?��5��a�%�ȪV�N��fRp0~u���ӳ������4���@B�D�8�y:�S���9S�L	��b�������s�e)�dpW5��mb#�����CDl�bp�"�����M�E0}+K���E�+�8�"i��_�����Ne0�_]��E|~�6j�7:���]60DGJ<-|m�Vxʝ \�O��R���P"����Bo�]s�A�����c�'k<�r;�\��9�>G��������/�B�Qފa}:A��`͕�hu��=*M"��L!2E:IˉuȚ��H��1Q@:,����j�4B8�q�D#�F��ad>փR��(ŉT�u�.����#�U!�*�ަ���
��%#�[��X������o���W�m:��BM�X��#K��>ݤ���|Ӕ�(��+�Ч���ɫ�������w����l�$R�I�|�i��ԧ���O�uxH�X�\p"zv4�\S!`�jX5����0���w-A�9��`��h�9�x��l�$d�|/���{��-k ٍ�Fr@�j|�F���r�YZ�����aw��G�X�^"[��-k�W;1Z���/E�@�.6:{׶�ڎ]����)\��5���p��QѢ;ԗq���m�6��q���Zu��Vs,P^$�E70�#��:HI�0�%�zD��9C��;��[:S2�}�N����,�X�IObq*�9j�r��#�5/ku�N;4��aS3HW�H$o*�C��*��u���:
O� �%�d�?g�j}�>�N`ӲLhG���h�1WY-�b���8V�޺��8�5�(�wy����j��%<rR�Nt�Q	G���|�$��|�黓E�[�bƭV'�4`��Y���n\�@jTR��Վ�ZW���4U���J饄o^W��k?h(�OT�Lc	�95L}�=M�=��I����7����6{@fI��ķ�����Hu(cp�ҍ<ޜs��2�`,�@#�`Xr�Z䀍32���(���IK���π�����Iֵ��P���� EЖ(quIJ����EH�"�*lms.- �eՔ�gkI�y����Vn`�l�ECH��Z����'@&�{P�>��;�1�K����T9v ��� �2'�DL��{��vyP�I�A�ѯ���7���{H�)bQ�2z�x��a�,X|��8�:�H:�U}Zً& �S%��ēD�n����k�M�/�W�0Z��� ��j�žB�����4��(&FQ���2�Vz�<m�B�?��<� C�غ��-�b��o�ģ@�7�T��Zv���'�yN7O�M�	B �ꬬ�>��a9�F��2Zc�\K ��`$��8���$�ǄB��n���K��+n��b4n1÷kT���c����.���`��y�+�:�kI��"Q'��^ 8Psk�豇GN���:�m��L��rMl!�	Be�Z�V󘑭��Ut�|:b���Ĭ�}��f�6��&���iHذ�& ؞�q�W�;���.�I����4!
���QMMsJ&,�4��a���Ogf�`�c��T��夠��[��K2�ũ��8~)e	���N�9��:5��I��)���3)����fd7�OW@fO�������by��k�h�,A��-�HL$�;Y$�����͆^�Lr�DeW.�^i��e�*����0癖��Jr���}��G�ၝ6aUY!u�R"m�TK��Y�p7�b�I�"*�P.��H�� g  �������b��$Z=��9��4c嶶�;�h��R������>9Qv�\ei)�i2�ԜQ)zX�W����UB�Wz��$�YX�S#�_N����K�Ei�{0�4�.�bcj�.��A�zC���6$ kgvu3֒
���6'!XZ;>�F�8�?ԡⸯ��I���Iq�j�)M��eL��IVZEH��i��b�q�`>�p'2)&��P�<|�����+�mh�}�%�|;�v1��OJ�'e~��d5��Q���ɜ�T��(�/��ޘ��,��өҒ5��WW�'<���|XH��̒&E�&ˣ�=�_I�L����"��~�!$4~�~,�p�%Jd����&���7��;����z�a��6�e�!!}I�m��2Ԉ ���$��B�p��P)�`� �x�ө�-%G�����X���Xq�w�:�´�s|M��|���><����Z�Z�q0��<����T�j���Y�j&�i]�U�W��T����:(]v!����G�ꐍ��Q��<Y�$�5U�Rr���G��ǎ:>T ��h��O�Q��\+� Y�H��NC�4�E\��3�-��d��=�o{�A��"��sMC8�1���Fnm[�'�\|!|��G]�f���yï���Dn�A8�<y;)Z��+E���I��/4U="��Ql�.���]\K���uq�:�Ǻ�GG�OD%�/� ?+,T������9�����{o��G_�	����>Hr�:��&̉�8Nv�=RB�L����pH"���|�}�;I�E�W\�˱L�ذ�D�1�䨎-�f�e!�%}4�M"Y>l�BF9~?���8���	��d��0��8�uq\�Mf�⮹�K{��[�r&���C�7Z���i��|B��� b��ʖ�6h�D�$x���y�dՙI;2t�k����V������c@�h��s�����9����z�Q�	�u�!�O��3&�Zu�)W�!@�������3qN�E�j���E�`z��ଧ����Pő�����[��16���i��o����i���0�ָdD�<'��d��?B����$����,mݨ�۪�g�Q�=$N�p����qfU��8A\�&L�R�>�j�^�amQ�ѾϞe�4Ë4�ۢ8�7����Wܝx�����B4V�_��7�4��͙�<k��G����1�'���ܷ�t�b_��|��/����O��puB��oI؆r��2> �zr�nR�I�Ϊ�Q&��E��ܷ�ߒ�d4�SlB�X�1IJ\���F&b7f�bq"{��t�L�)�U������O��6O>ŘpU�q�^�s�Qy��M��� �-��������޼���<�@<w�Ghn�1�9&�
��+�C �,�P�~[խk�d�J����_^9�㚐פAO:҅�2׾�KI��&_��'dm4���w\=�s�I���St���V����h#��R:SA���K(Ƈ�+q��lPR�Y�6�!�mf�_��褏o��.V���C?�ώ�|+^� !I�lWh�&m��A��Ү��	Z(�-�I�.�v}F�<�x�HB���XͲ�q.d�ɉJ�8�\��Z�2���u�O:
`��
,G-� ���z:�BW��w�:It���(���q��Z�^�G�D�v��M{���P
�B&m��W綢�ĒCE��]�r��);5��	sԘ#��Ub9O�Y7����1o��W؊�=�I��M��'$�Ф=3�{���dm��=��D��@N���;Ij��m��&b��*�y�E,Wa3^^�m�=���\JuM��\�{Է��V8�Β�"����:�Q 4J��N���6����T�H$�t}�yA�'7B�H�*��a'�I��C��ۭd�*18�٘���'ٛJ�NO�]Go�Ow�)�$�"�.�Vg�JKH�q�O��Ԓ�p��Z)\��v�-5|̸�#��|�����(�{�1:��7PX�]��<�q	�`�ɽ�cZ��n�� ����GU+C:�O��ś.c�d�P�{̏ĕong9�*98~���T\T�wu���/��[0-wmC wR�����fx�|
2W���J��ϕ톳A{����Q��Fg�E_�^�g����T�V���jG����{��o��-�G�j_��l��C��X���S�:���_�.��v����[�$ѧ8��SZ�k�'�p[�:�\"�^���� ���CR�.��lgw�?�jꎞ�܁pO��:�7�c�M��V#^V������Q�Y���C����ܷ���8��j�4��2�}o`�o���-4Co7 ���]�)[5�ER&6��9��a���N���`�֒q��}�Z�I<J������K11o	���BޑK��BW���}������2�y��+�<~�Ż�5%�e�B�*(mW��o���"�ZH�T���FeV{�@&��}G�;��j�_zbfEUL�.�q�p�r�8��|<jp����EnȽ���ڼ|�G!Womm=�C��z��$�q��������+�)e�c����DP��EE��#ť��5Z{�5�O$���Zv0�`�3�K������ow�1Ln�{���	<�qf��!�cx����-Ԭ��_L��#��^]�ceY;�����JJ�c��/hftR��JfZe�~'r%�e�KT<�UqGw�n�決�v�X��Zth���@�G�I���c�
�_`�`�w�M��CY�$���lFM>�,�bH��\��.F�ޯ��C������h��QaM��������#j�0�Q��si �;Z(���=�2;m	AF-�?ّ����� z��N8"dSs_~����������)�b�t��FHi�/�T�=żI��l_��oW�������/��l�_ާ4     