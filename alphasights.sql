PGDMP     .                    y            alphasights    9.6.21    9.6.21     N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public       postgres    false    186   �       U           0    0 -   interview_questions_interview_question_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.interview_questions_interview_question_id_seq', 105, true);
            public       postgres    false    185            �           2606    24587 ,   interview_questions interview_questions_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.interview_questions
    ADD CONSTRAINT interview_questions_pkey PRIMARY KEY (interview_question_id);
 V   ALTER TABLE ONLY public.interview_questions DROP CONSTRAINT interview_questions_pkey;
       public         postgres    false    186    186            K      x��}ɒ�H����Ii�f*
�	ӐCX�*e���Ym���D00��U�F����wν���TV��U������Ç;�;y]�Ⱦ���j�a��}�c���6?��|9}��!]o��S�Z�M���]޷�a�:�������w�~�����*_�n����i��/W>�w�����a`���s>x��g�-�S5w�w_�5��C���w���R���U��>ߴ���뇜�]{_�>_u��_�ϗm'}�v�u�a~q�$��C�����mz�첿��g�����X�o��n�� 7Y���A�9Ya���Z��`�}wȫͶ���a�۶�tc���м����S5M{md$Y�<���}]��3�޳���]��p���&��x��#q���.��o�o���Xo]-=��7����Lf~��2�3ƳS��~i�g�*�x�ww����OsC��h�E�$>�ض�
|p�c�#�XLo��˅T\W�#r��ƻ��c���f�/U�B�zǯ�X�n^�XK��M!��g���Fg���=��7P��c;^fqXx�n��P�y��<���j�i���W��-&��N��;����,��U����T��M�;tn|�C��hr���~�N�o\s���v�O�U}￹x�,|���Dȕ+'�_A�H��݁�o�<�vW�����q�:���q�ś�߽~���Y���+7�%N'۴9�L�A"�@Y���M����4���=Zw`}��=7�kW����5<F#}-�d3���̾�<V����ā��|��`0��GLn�Is�y�î<�o|�'���bݶ5W��Ғ� �aMZU]��l����P������"Cz쓼���G�l�hT�
�m{>���_��5����5�U�U�2��z��wD �aCV��l����H����a/���t9����I{9n[����e��$=`�bwڈT��Y� B��E[c1+��<��q����[P ���5(��V�K�e�n6����U��I��!<�E� r9d_U����3���Ѫ��:r����@�ؐt�`E-��j}3��1���tA��H0X��V��ۜ��,p��+�e��B�ڣ�=������pi|���o�
'@����B\F�Fe�]����U��OA`��(r/ˢ:?$"�A�ΗA��/�_f�[��͂�Au�b�ҽ؜��N�uɢ���7���qc����?�1�IT���h���b0b�>�� �΃��9��m$?�&,�*{ׁ�8g���q]fy�%����5U���	v�kY� ��6"�'�(Q�y;���f<���0Gl��q�s ���/~��)�Мvħ���HŻ�k
�W��2RY-�U��+]�m ^M���(��Ϥp��e���\ۡ(݇�\��imy o��ZQ��ʪ���`�����ʖG��<�<��X>p�o��eN��@0��m��'Lx��F���9�p�v������".
m�x��F�=�w[�_@ailC`e���ĝ�����\��� S�wU�S�*q�X@�����8>��u[�{�C�6Uѓ�p����Pi���0�mtw�ȺF��?��)d��0x) ��MPH�q���l��!�h��`�a��`ہϺ�9l���J�kJҾ-*3AG�h�o�zK	b�����߆u�GЖ�
}[�:��s�;?D���<�)���l�E O�2���&=H�5Tt'E�T��I��T�}:�R%��㤅Vz��!0��P+a_9��E�L���w�
؝�F>���!W�6;���W�(��u���I��lz����ߨ&>p���]t����{�b��pWRI��Q�� ���'܋�'O�8u�0��m;��V���`U��9�ċgϳ��,�,y$>��zM4'��4#��%�"�m`�
���:hm��&�2S5�~znL�MO� �FS�|HĆ��YK�w���Q]�	x�=&J��~��^����u��(*��'X�����z��`��Q�a	0��0+`���2�'�]S���~P��{��;��*^�E�ʝM g��������Q��-fv|:�T�j�`�_U�Ӏv����^q�g�S1���v�ٷ��æ0M�T	�m~�jt��抦�oD8�s��b�o�?W�B`�w�v��"���y�QT�LT��RfE���c�Ӟ�C��u=:o!I�tԢ~1���4#���5�N�e)ď$���~:��W���Gb�BX���ˌ1et�[��޻;2��eT��6GKc�����< ���v3ߟ8	Y!4�i��?�����������J�.:;�x��E�5�^e?�n� ���B�Uу�3m(x�S"r ��j����k� �/���v%Ư�Yv����JT5��Pɪm)]\���:���o���/4�F{���Z�C��_�ԧ���giJ)��>����w��΁�<��U���.�� W�^�큍���wI��RdT97��x׋/���.�ˉD�vĄ�������]�DŻ΋�j�b"������V<"�����N�������ľ+h���gt�8i�4<����`�0m�ӕ=l?���cʢƛ��W�1��Z ���N�6�\������o�A�! u�l�)���SC�2��p���N�L���/V�q�ʴ�4ʂ�����*��Ȟ~+Y$��2z��y]���lյ:DI$��3�^%��V�d���L��}��2 �a�B�
�=���o�N7��l�P�ѥ��p����/Z�EAn~��f��Nb����s��9��'��ϳ7�jE�h X6Q��c�> #}��M~��CXB�!E�HI1�;����@:&,0S�E9�,h�Ry.V�(�����F7݅���;z�:a�~/"��]�. �P�Դ���eL[O�"����:�v�- ����iթ"qԩGW�VY+D��]wG>�jy����V�L3�P�@�ͫ���;*%�`���HD�{D6�_�l�a���"�en/S�_�̮'��9����*8za�0X���v�A�������uS��V�o'Ԫ�Aw2h^%�`Yb�S,��Ӏb����D	�-|���wgt�I�;Z��kPw����G:��0|�l^��ܑ��B�tk�_�����s'@�)���G���`�R
q�trb�%����W�B����4N�m���� F"���\eP8��
vf�m�����&���])�~<�Tp"AR�3�RH_������V��C���eϒ��ޚ�r@k�v�I�f!�{�iO���2[x'΀�Ћ�"7@��I��#�H�j��V��Ex=*\���k�V>�>)�H|؜v/!UC�M�m@;b��J)�+̠p�CqW�, �$$`m����OM!��<�^,2�z�H�F
`ʉ�|�n��o�/��E'J��v�%����O��f�26�\�ʒ�}Y���Z.!�`�=���-.(��ZV�憞T}$1<�	t����)�O�M����U|5x�L攺�K�	Sa_?���&�g��w��Z���s����~��� �u5@o��3>���l����(nub��,�u����~y�#5;/wM�b��p����6����Z��_�z�]�����]�v�M���H�r��-i�$�s���LA�����^R@�$Ě
"�E��fG�c���'��O�~6	�Z��	��by�k��7�͟$ƄѶ!~�ȣ�|N�R�i!�����T�&6�Y<�f|�2{+����rx����u)��H���/�����z�E#��A�������:�I&��h7��dRヘ�����TrI���\F����i`C�G!MD&��t������Γ��c_���"M5؟�����`�VK�MKZa��ܘ��՗�>�n3�?bh<���}�U�7��5A��C�|�n!��a��`�˧��fB|��>�|u�⛘�aS���6�`�OXf���u���'���/����{�׼*�d�S�cB������*    �{Cq.}Sm"~���T�����b�NJ�YN�O�-�g�cXg�$��c4ʗF3���+�mݒ�%���Y)+J��䀅B3�t��W�F:5��ڷqJ�O&z��~/.�A�J���'�E�G��l3�1wf�iX���&�h�]U�G>3�Eu�hR�	�rj��.<�"эQcM� ݵ[�na$QW�naG�I2���Y���=�G��Rρz���Ԃ�CZ�X�V��"*�Hj�
n���g��B@٦���fe�!')�b~�`�i�&N�=nb�Gf_�`;k6�I��	��D�׮[�I��ǐ��;�&1�DƚN#�N��"���v��.^\f�`o���f�@�4�&9���%JvR	i�[f�g;��1&!��(�C�k�1��ܻN��'	!�766�
aҳ���)5�H��J�����Cfv&{{�5%Hz��\�e�lm�'ce˳��|��ǈho�C��V_�p-��7=QۉЊq�ԡ�5dt:�/._�t��� q���E3gM���������4G C��N"@G���0���x��T�O�����v��x<l>� E���1n<�<d?��M������#|+u%����/�>I���*uE�i������s�X̢3$tG�%iB�4�A2�4"�"�ϗ�"DAc$I,]=�s��!��qB&�"���f	��`��s��CQ<�����g�|h��L$���#�x�z�p�RQ��{�`�&�[K+��4�9i;3� ��+oh��o�ɘ۪�^�[GS��J0�8NG(\	2�}c<#8!��s,S�L�?Й�$F���nMr���3!���Us���S���ʂS� �mz��o|�I���̥���-ٛ��Pbߑ'2��Y��$O\��$��׸��;e6I� ��
5M�OW�(��Du#¢R�铤���ҷm=�z�L����_$<~*n\ۭ P��,���c���MfY�oe�I�<�+�zX��ݎ/�3q�&��SP�I��བ����'B4/BBJ�rV�e�܍��5��z!����gތaћ�o�v�u�ͬ�CL%��P�\y	��sf�*$E�<�WP�&9�_�E����6�����fCsB�͔��2��}���k�wE�QYun�߫��ʎ��iC�ğ�b��0}�G+�Ɣ�O�Y�Q��n���_YN���V�U���l���M6qp����m����_��ܞ2�T
`$?P�z��m�����m���)��I���;@�j�苶c��;�;���h*c�t sC`�~y�����6~�x<��?��#+v�fU�֕�1�Ѕ+c_)�ض�B����"{�U��&�A��"<!�@�3o��9;u��m4N>�JX����,h��� -}*�YE����3B�-����Tt%���}-�$.d���Z^Ĝ���>��&�A��|{��ʞ��?���:,�U)�\Hq�<�T#�Z��%{��,�68��k�4�+�\K�� �]�T����V���%���-'_9�|�����b�|*w>=�DW��°P�?�?�U�J�@CO\R����%CޱX0츫�>u��/G֞�a��t�%	0�| sQ�y��/ԛ�2�a
_��dT������>��N2��P���x �8�7��GU�y�"�����ϲ��`�<L�X]Y�/v�L��
����R�$���I�DŨfԄ�U�Oe�`�#��`��$&���,�xGi�!�OL&רۺ�ܭ}��]���P�T�QLs��Ӡ*���$mY=�WO�k�C�Q�O����&��`~�	�
N0�b���f��/d�~��~u�� � �&{7��jɶ��#Gɹa�x�r"��Ju�PIJ�j��e�Jb���!�vF����%�Ӝ����u4���(�(������|��n���R�*�����r�x�" �&�F��)f�n�_�`��8FR��T17��7n�(���T�k����~80���e�6��g�*� Z݉N���2�(NX�qJ_~e����YnJ�	�可�su����O�j���9�������=O�]aՃ[���C�������tFZ��S��{/G&I{�R��P����pg\y��@ϳ�~��RK(����$V#{留Xu�V��M
�J�Uᛷ�=P�GU�1��pL-L�檷;TԠ�d��CӴ��'O���-�J��Ԛ'"L+r��*F�w�y`��,���ų��u��☊B��K&�@������X����:{-.��Zj��O��Zs	����z�Y�Zd"�Q��c��c��ߥ�5N0g���P����~��uI��5�jD��ߖ�|T��7�As�ʟ�r�6&f��'�ﱥnH<����Ǡ�Nk���DK���2��kq���C�Ч�[��+���$a�P�Ŋ��C�[8�sR�%h�����Y��K�8�`�͉Չ��md��8��X�]	)�RH��b��npL��J]����D"Nbp!=#G�M��Ҫ9�k�m���D�o����` Y�.��Ӊ����m�Y{����:����h!��$�����b���R����� �����]��+���Ku'n�-��6V����T�2���Г���^C�'�"�D9,�vg����0���ش�v?��=7̉�s��b&�ĿJ��p��=@"����@픸}UHG�~����9�Ǣ�#� L�^Y���Ҋ�E%A)���ˑ�$~5��b�YA[����0g ���N���k�/ξ�1R�����������V�1������`U�W;:Jb�\_��f��Us[Bm���=E���lq�Y���n�O����H֋.RI#���~'Q+V�M/+8� ]?�>0%�:E�Ǌ�iF�֚��
�Iջ��R2�6^<p�n�X�}�����4E-��#����]�Zϱ�~H`_�Xk{��6%�1Uk��{Uzn��r�\Z���9. ����t�h�����4&\h��yiP���0A��^�CE��%�w��9��BbdV�$tׄ!ؿ��"Lvv3:pj���2�ĳ�DE/�:��;�-��(Ņ������S)�(��UZ^�nlw���L�ߠsG7z����]���7����t��E��U��RR��tS�-�c�`(�^6�H��/a�ݷ�1���;qI�Ol����n�#����{JF�Q�1��'�b��"�.�(bNW�EY�����ӲM�@2'��$�E:O��RK��Jo�ʭ�Tbۉ��u�x����<n'�~�\��; �0�+ң�DϥZ���b�������h���i��VIՅ�k%�{���d����pMH��c8����\w¢ ߯y�!,)��]~�Xm�����l"K��&U�Z-����L�$��9&Iև1G~�\P� Ƀ�����EԴ�cx�,��5@����U`�ݱ�)7+���ԏ�����������{3A�N^�d�v�6!�i���-б�c�q�>��fL}�~�1D��_�r!��M���q�}���;�ؑE�7_zǠ�H��"� c�����&	o!�I��P^�zd�䥊�
�u��-E�8�ʽ��^7�y�
7�o�ӪF��O�Y��U)��� �v! ��k�`��'F {/H�ԚEg�d���Tf"�0�WI���y!׷����B
���$_U�Ej�'�sU??e�h��ۺ�-B�"(�YY��[��O��'���%���U�i�	J�6�~G�\��ǫ������cI����)��_��]���I�����$�����*��� ,dTgr2�-��Zϧy6�2�4�<1�&�DِLi�lɫ� z�ňG���eϧw����p��Q��7}Λ$�5��7Osm7N*5��?���̮�ⶹ^�b2g���i2�D,���6�F�$.j:�Lr�3��䊪������g�!�^��4�]��x���KM?���R�o�:ɚ����5k��V�79p,(MTNjf7Ǻ��Ѵf�����B&���O.c�(��[$�%l�x�r5z?ŘwT�q��Q�˽m!ȩ����;'�	n��[
˙���i���+묘�]�.��#F��8�)L����c�� �  "C���N���OjyQ�,�3���ě��|t�[�k��"�*�b���[h�u�"p^o��k&$K2����(��M��Y�Ř$
D�;�F�!�Ⱦ*:w����v#Ф��`zl��X��ܽ𷨊�E	��N��Z��m5.4�Hj�n����T+�4�>&�y�Ø�	�����q�q�ޒB"��X]�6˺*��&ι����ƛ�iX�0�df���K�Ze<��g��U���I�O�;	r���#�3������
ګ��'Ax�[�(��yc�^k��M�u�Y_ᠷt�1Ǽ�x׌[��0�/ӋE2v[4E�������e��ILX����-����#���$!o����3�,!,�&��@���9��ZB�"��7�Wx�n�`�tL;����i���zKC<l���awI�/^=�޴�ݙ�D�����ĉCA��x��=���|�mk�?R�H~~�������0G�$�������uG��vz)P�g�I��[Pe��A�Q1�Bl5����wwv��߁W`֪e����Hgs����޳��F�ܠ��%i�H"m�|��$7���욅�����nf�+�待�|l`���p�yU���y�{�ʽ��&�Ti��x}�We�M\�b�=t�XD����y�B�$�>�Ћ�V�
-FбF9M��T0�8z�9������u��G}+�}��m�1���X���>�ns���kQ(�?��4Kh�0��f��4������g.d�iA��pZ�w�������9�1     