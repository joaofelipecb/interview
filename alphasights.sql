PGDMP     ,    2                y            alphasights    9.6.21    9.6.21     N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public       postgres    false    186   �       U           0    0 -   interview_questions_interview_question_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.interview_questions_interview_question_id_seq', 101, true);
            public       postgres    false    185            �           2606    24587 ,   interview_questions interview_questions_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.interview_questions
    ADD CONSTRAINT interview_questions_pkey PRIMARY KEY (interview_question_id);
 V   ALTER TABLE ONLY public.interview_questions DROP CONSTRAINT interview_questions_pkey;
       public         postgres    false    186    186            K   �  x��Z͒7>�O����){��9MM�x��M⊳�lU.T7�f���4�G�-����O� �$�x*{��& � ���K���ܣ霯�ڷz�ۭ6�~(��|r����\�{߷�2��Ձ�q��7����կ߿�P+�wb#�r�~�e�+���w_�X��6���W�+�������uf����|N��շug[:������i-�qOI��_�,�2�Vv3Yf�<�����-�ς�,Vx_v�����vx㥺�{\�k�Q��?[r6J���+���^$�ɍt�_&%�w�>���-��|\n[��z��sx��s��Цi�=���j՘z/v/�W?~��^l}fCP���:S��
�e��u��ر}�+��j�+���'=�{\H�i���p���+��vfoe�\�8|��Z���k��;Y�ӮpY�GXW�\��!k�
���9c�����I� H�o�A'O�ʾ�X���{־���Uk�V�0����잒,��u�����"vɃ���)'ި�����*HH��������>	Q/�T�G�W!4ѽ�tҥ�s�^##�~���\iZq�Ս�
�?8'^g��Tj_,���nm���Z#vM�ٓ������(B
w�?��xS�����4Bxex�iRe�օ-��1|L'��P��Ut���m�eH����=���'ec��*��`�6�'���}��Z�qxܨ�p~S����e)G�V�oJ+a���8��n����������� q��n�f(�t��|M�c�E�t[ˏ��غE�e��I)_��&QM��������}ݵ{�o�X�}�����$+,M 架�F�S�ކ�4t�m���ZN`�~*��д�!���⧗�	�����{�&�]��M��j=	�׈�>t�y�Y�S�¸5yoFPK`Yz����ۙY9�%�O��z�c�e���uD�x�I�j~,{���r�i��X�}V��3����ۓ�D�Q�`�?g�IT����^���L�R�u	�B���꽼"mNM"~����3Fh��%����Nj�:��@��&܆dgb�ٝ�+��C�d��>"R'}�k�A��	��r��Y�n�Wn�SJ�C�_���s��i!�q�~��u��^�v �8�����$좇v%5V��e��ӂO�:�d&��˘|mZd+��T�o@�8������(Fx�̭Q��/��I*+|��[����ކ�u�������;����$=�#*���/������x�>�
�Pl D�go~J�^O+y�!�@�nݗZ
�p����t3���k����:����Y��A�zl�su��G3ω�5p>���PwR��5s����#�����5�	����&!z�	����ڝHOZ{^T�ު�Y[���Ag������^����ش��K$��%�)�!pZw�a��{���2#/�B^N���6�%�L8�I���=bmP��ޝ��k�������cD����?!#��2�����]	�)�C.L�Bn�N8�C>s����N:�Bx�m9��|�6�w�B���4#d��k=��jT΅�=7T�K��������1�j��̰����J	'�s�H�u�P�U=���R����QP_�єD9�S
o��p=�����jl�&�QW�kZ�8�i�	���Ko�D��VvF	]8p�[jm\֗�o���������8n���v���G�-©1Ls(C��\�|�==�ᖿ��rKv���)f����j��=J����GKr��z�rN%
�A/-�y��y��qi����� Q�ςo11L��ʈj1�s�����G����`��K�6� ��j!�=��v��+��E���x
��^�k��xr����:�jڑ��0S[�b���&;�Dd`6$n*�M� #��4���@`CQ!�	;(����aK��-8Rx_~9o��V���)�e{{ "c.����-\n����.cL���焱�c5��Db������`}�:�L���>und@��rM��N:�+�� c�I�,'����7GJ4'E#��"��2%��N��P�Ox�rs-�"���tQ��O��'�V�\��s���7��|���W���H�3�L٧���%j��d!������<�XL\8JGe����I�F?q&�o�d'@��R4-��-?�����h,���9�G�=15����_��O�^��"J�F���P<B�8��v��o����o[�*���>L��΅�0~��!�J�@��{Y��D����Z���Q]lײc9��O~&�nN��gy1�ך�� S|�� u�wh��
����P�zШ����?�F��`1����V�i%�=�����.]�M��I>�
��=�a�_ޤ�Ҧ���5�|�|�4��' 0����j"r��o�l����"���~�����M��Rޱp�L_�qx�3ǎG�F7U�R���.�}2��r���H/i��E��p���~2��/���T����9����3�x�nP8��a��C�[�
#qrw��B�p�rT�V�K��ܢ�d�Q@��=�ozt��rEߟ��0�c������Lm/?8��oV���E��� 5W�aH�Sa�i�$���Q��{W�;*�4���:��-�Q�5�fl�����D����y�t�ԫN5���u3m�^�o�W8����o=��oJf��lq+r����&���PW`�u']üъ�� �&��ZO�I���3���礄e�����֕e8d�R������P���!��WT��r7.�SM[㖙Me�����0e�TӔ�ԈoҒ���'��O��y���):�S�J�t���hi<$)z���aj���<,`����@Y�~^+��L� �ݸ�p؍��W�1$��zA�CoM?���%�A�p�� t��IJ|�CE���W�^��9�     