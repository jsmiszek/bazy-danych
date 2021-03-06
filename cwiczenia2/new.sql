PGDMP     1    )            	    x           s291515    13.0    13.0 O               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    s291515    DATABASE     c   CREATE DATABASE s291515 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Polish_Poland.1250';
    DROP DATABASE s291515;
                postgres    false                       0    0    DATABASE s291515    ACL     1   GRANT CONNECT ON DATABASE s291515 TO ksiegowosc;
                   postgres    false    3086                        2615    16395    firma    SCHEMA        CREATE SCHEMA firma;
    DROP SCHEMA firma;
                postgres    false                       0    0    SCHEMA firma    ACL     +   GRANT USAGE ON SCHEMA firma TO ksiegowosc;
                   postgres    false    7                        2615    16644    sklep    SCHEMA        CREATE SCHEMA sklep;
    DROP SCHEMA sklep;
                postgres    false            �            1259    16499    godziny    TABLE     �   CREATE TABLE firma.godziny (
    id_godziny integer NOT NULL,
    data date,
    liczba_godzin integer,
    id_pracownika integer NOT NULL,
    miesiac integer,
    numertygodnia integer
);
    DROP TABLE firma.godziny;
       firma         heap    postgres    false    7                       0    0    TABLE godziny    COMMENT     3   COMMENT ON TABLE firma.godziny IS 'To sa godziny';
          firma          postgres    false    205            �            1259    16497    godziny_id_godziny_seq    SEQUENCE     �   CREATE SEQUENCE firma.godziny_id_godziny_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE firma.godziny_id_godziny_seq;
       firma          postgres    false    205    7                       0    0    godziny_id_godziny_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE firma.godziny_id_godziny_seq OWNED BY firma.godziny.id_godziny;
          firma          postgres    false    204            �            1259    16505    pensja_stanowisko    TABLE     ~   CREATE TABLE firma.pensja_stanowisko (
    id_pensji integer NOT NULL,
    stanowisko character varying,
    kwota numeric
);
 $   DROP TABLE firma.pensja_stanowisko;
       firma         heap    postgres    false    7                       0    0    TABLE pensja_stanowisko    COMMENT     V   COMMENT ON TABLE firma.pensja_stanowisko IS 'To sa pensje w zalenosci od stanowiska';
          firma          postgres    false    207            �            1259    16503    pensja_stanowisko_id_pensji_seq    SEQUENCE     �   CREATE SEQUENCE firma.pensja_stanowisko_id_pensji_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE firma.pensja_stanowisko_id_pensji_seq;
       firma          postgres    false    7    207                       0    0    pensja_stanowisko_id_pensji_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE firma.pensja_stanowisko_id_pensji_seq OWNED BY firma.pensja_stanowisko.id_pensji;
          firma          postgres    false    206            �            1259    16490 
   pracownicy    TABLE     �   CREATE TABLE firma.pracownicy (
    id_pracownika integer NOT NULL,
    imie character varying,
    nazwisko character varying,
    adres character varying,
    telefon character varying
);
    DROP TABLE firma.pracownicy;
       firma         heap    postgres    false    7                       0    0    TABLE pracownicy    COMMENT     ?   COMMENT ON TABLE firma.pracownicy IS 'To sa pracownicy firmy';
          firma          postgres    false    203            �            1259    16488    pracownicy_id_pracownika_seq    SEQUENCE     �   CREATE SEQUENCE firma.pracownicy_id_pracownika_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE firma.pracownicy_id_pracownika_seq;
       firma          postgres    false    7    203                       0    0    pracownicy_id_pracownika_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE firma.pracownicy_id_pracownika_seq OWNED BY firma.pracownicy.id_pracownika;
          firma          postgres    false    202            �            1259    16514    premia    TABLE     o   CREATE TABLE firma.premia (
    id_premii integer NOT NULL,
    rodzaj character varying,
    kwota numeric
);
    DROP TABLE firma.premia;
       firma         heap    postgres    false    7                       0    0    TABLE premia    COMMENT     =   COMMENT ON TABLE firma.premia IS 'To sa premie i ich kwoty';
          firma          postgres    false    209            �            1259    16512    premia_id_premii_seq    SEQUENCE     �   CREATE SEQUENCE firma.premia_id_premii_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE firma.premia_id_premii_seq;
       firma          postgres    false    7    209                       0    0    premia_id_premii_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE firma.premia_id_premii_seq OWNED BY firma.premia.id_premii;
          firma          postgres    false    208            �            1259    16523    wynagrodzenie    TABLE     �   CREATE TABLE firma.wynagrodzenie (
    id_wynagrodzenia integer NOT NULL,
    data text,
    id_pracownika integer NOT NULL,
    id_godziny integer NOT NULL,
    id_pensji integer NOT NULL,
    id_premii integer
);
     DROP TABLE firma.wynagrodzenie;
       firma         heap    postgres    false    7                       0    0    TABLE wynagrodzenie    COMMENT     K   COMMENT ON TABLE firma.wynagrodzenie IS 'To sa wynagrodzenia pracownikow';
          firma          postgres    false    211            �            1259    16521 "   wynagrodzenie_id_wynagrodzenia_seq    SEQUENCE     �   CREATE SEQUENCE firma.wynagrodzenie_id_wynagrodzenia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE firma.wynagrodzenie_id_wynagrodzenia_seq;
       firma          postgres    false    7    211                       0    0 "   wynagrodzenie_id_wynagrodzenia_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE firma.wynagrodzenie_id_wynagrodzenia_seq OWNED BY firma.wynagrodzenie.id_wynagrodzenia;
          firma          postgres    false    210            �            1259    16647 
   producenci    TABLE     �   CREATE TABLE sklep.producenci (
    id_producenta integer NOT NULL,
    nazwa_producenta character varying NOT NULL,
    mail character varying NOT NULL,
    telefon character varying NOT NULL
);
    DROP TABLE sklep.producenci;
       sklep         heap    postgres    false    4            �            1259    16645    producenci_id_producenta_seq    SEQUENCE     �   CREATE SEQUENCE sklep.producenci_id_producenta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE sklep.producenci_id_producenta_seq;
       sklep          postgres    false    213    4                       0    0    producenci_id_producenta_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE sklep.producenci_id_producenta_seq OWNED BY sklep.producenci.id_producenta;
          sklep          postgres    false    212            �            1259    16658    produkty    TABLE     �   CREATE TABLE sklep.produkty (
    id_produktu integer NOT NULL,
    nazwa_produktu character varying NOT NULL,
    cena money NOT NULL,
    id_producenta integer NOT NULL
);
    DROP TABLE sklep.produkty;
       sklep         heap    postgres    false    4            �            1259    16656    produkty_id_produktu_seq    SEQUENCE     �   CREATE SEQUENCE sklep.produkty_id_produktu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE sklep.produkty_id_produktu_seq;
       sklep          postgres    false    4    215                       0    0    produkty_id_produktu_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE sklep.produkty_id_produktu_seq OWNED BY sklep.produkty.id_produktu;
          sklep          postgres    false    214            �            1259    16669 
   zamowienia    TABLE     �   CREATE TABLE sklep.zamowienia (
    id_zamowienia integer NOT NULL,
    id_produktu integer NOT NULL,
    data date NOT NULL,
    dostawca character varying NOT NULL,
    ilosc integer
);
    DROP TABLE sklep.zamowienia;
       sklep         heap    postgres    false    4            �            1259    16667    zamowienia_id_zamowienia_seq    SEQUENCE     �   CREATE SEQUENCE sklep.zamowienia_id_zamowienia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE sklep.zamowienia_id_zamowienia_seq;
       sklep          postgres    false    4    217                       0    0    zamowienia_id_zamowienia_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE sklep.zamowienia_id_zamowienia_seq OWNED BY sklep.zamowienia.id_zamowienia;
          sklep          postgres    false    216            V           2604    16502    godziny id_godziny    DEFAULT     v   ALTER TABLE ONLY firma.godziny ALTER COLUMN id_godziny SET DEFAULT nextval('firma.godziny_id_godziny_seq'::regclass);
 @   ALTER TABLE firma.godziny ALTER COLUMN id_godziny DROP DEFAULT;
       firma          postgres    false    205    204    205            W           2604    16508    pensja_stanowisko id_pensji    DEFAULT     �   ALTER TABLE ONLY firma.pensja_stanowisko ALTER COLUMN id_pensji SET DEFAULT nextval('firma.pensja_stanowisko_id_pensji_seq'::regclass);
 I   ALTER TABLE firma.pensja_stanowisko ALTER COLUMN id_pensji DROP DEFAULT;
       firma          postgres    false    206    207    207            U           2604    16493    pracownicy id_pracownika    DEFAULT     �   ALTER TABLE ONLY firma.pracownicy ALTER COLUMN id_pracownika SET DEFAULT nextval('firma.pracownicy_id_pracownika_seq'::regclass);
 F   ALTER TABLE firma.pracownicy ALTER COLUMN id_pracownika DROP DEFAULT;
       firma          postgres    false    202    203    203            X           2604    16517    premia id_premii    DEFAULT     r   ALTER TABLE ONLY firma.premia ALTER COLUMN id_premii SET DEFAULT nextval('firma.premia_id_premii_seq'::regclass);
 >   ALTER TABLE firma.premia ALTER COLUMN id_premii DROP DEFAULT;
       firma          postgres    false    208    209    209            Y           2604    16526    wynagrodzenie id_wynagrodzenia    DEFAULT     �   ALTER TABLE ONLY firma.wynagrodzenie ALTER COLUMN id_wynagrodzenia SET DEFAULT nextval('firma.wynagrodzenie_id_wynagrodzenia_seq'::regclass);
 L   ALTER TABLE firma.wynagrodzenie ALTER COLUMN id_wynagrodzenia DROP DEFAULT;
       firma          postgres    false    211    210    211            Z           2604    16650    producenci id_producenta    DEFAULT     �   ALTER TABLE ONLY sklep.producenci ALTER COLUMN id_producenta SET DEFAULT nextval('sklep.producenci_id_producenta_seq'::regclass);
 F   ALTER TABLE sklep.producenci ALTER COLUMN id_producenta DROP DEFAULT;
       sklep          postgres    false    213    212    213            [           2604    16661    produkty id_produktu    DEFAULT     z   ALTER TABLE ONLY sklep.produkty ALTER COLUMN id_produktu SET DEFAULT nextval('sklep.produkty_id_produktu_seq'::regclass);
 B   ALTER TABLE sklep.produkty ALTER COLUMN id_produktu DROP DEFAULT;
       sklep          postgres    false    214    215    215            \           2604    16672    zamowienia id_zamowienia    DEFAULT     �   ALTER TABLE ONLY sklep.zamowienia ALTER COLUMN id_zamowienia SET DEFAULT nextval('sklep.zamowienia_id_zamowienia_seq'::regclass);
 F   ALTER TABLE sklep.zamowienia ALTER COLUMN id_zamowienia DROP DEFAULT;
       sklep          postgres    false    216    217    217            �          0    16499    godziny 
   TABLE DATA           h   COPY firma.godziny (id_godziny, data, liczba_godzin, id_pracownika, miesiac, numertygodnia) FROM stdin;
    firma          postgres    false    205   xZ       �          0    16505    pensja_stanowisko 
   TABLE DATA           H   COPY firma.pensja_stanowisko (id_pensji, stanowisko, kwota) FROM stdin;
    firma          postgres    false    207   	[       �          0    16490 
   pracownicy 
   TABLE DATA           R   COPY firma.pracownicy (id_pracownika, imie, nazwisko, adres, telefon) FROM stdin;
    firma          postgres    false    203   �[                  0    16514    premia 
   TABLE DATA           9   COPY firma.premia (id_premii, rodzaj, kwota) FROM stdin;
    firma          postgres    false    209   �\                 0    16523    wynagrodzenie 
   TABLE DATA           o   COPY firma.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii) FROM stdin;
    firma          postgres    false    211   ]                 0    16647 
   producenci 
   TABLE DATA           S   COPY sklep.producenci (id_producenta, nazwa_producenta, mail, telefon) FROM stdin;
    sklep          postgres    false    213   �]                 0    16658    produkty 
   TABLE DATA           S   COPY sklep.produkty (id_produktu, nazwa_produktu, cena, id_producenta) FROM stdin;
    sklep          postgres    false    215   i^                 0    16669 
   zamowienia 
   TABLE DATA           V   COPY sklep.zamowienia (id_zamowienia, id_produktu, data, dostawca, ilosc) FROM stdin;
    sklep          postgres    false    217   _                  0    0    godziny_id_godziny_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('firma.godziny_id_godziny_seq', 10, true);
          firma          postgres    false    204                       0    0    pensja_stanowisko_id_pensji_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('firma.pensja_stanowisko_id_pensji_seq', 10, true);
          firma          postgres    false    206                        0    0    pracownicy_id_pracownika_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('firma.pracownicy_id_pracownika_seq', 1, false);
          firma          postgres    false    202            !           0    0    premia_id_premii_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('firma.premia_id_premii_seq', 10, true);
          firma          postgres    false    208            "           0    0 "   wynagrodzenie_id_wynagrodzenia_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('firma.wynagrodzenie_id_wynagrodzenia_seq', 10, true);
          firma          postgres    false    210            #           0    0    producenci_id_producenta_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('sklep.producenci_id_producenta_seq', 10, true);
          sklep          postgres    false    212            $           0    0    produkty_id_produktu_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('sklep.produkty_id_produktu_seq', 10, true);
          sklep          postgres    false    214            %           0    0    zamowienia_id_zamowienia_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('sklep.zamowienia_id_zamowienia_seq', 10, true);
          sklep          postgres    false    216            a           2606    16530    godziny godziny_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY firma.godziny
    ADD CONSTRAINT godziny_pkey PRIMARY KEY (id_godziny);
 =   ALTER TABLE ONLY firma.godziny DROP CONSTRAINT godziny_pkey;
       firma            postgres    false    205            d           2606    16532 (   pensja_stanowisko pensja_stanowisko_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY firma.pensja_stanowisko
    ADD CONSTRAINT pensja_stanowisko_pkey PRIMARY KEY (id_pensji);
 Q   ALTER TABLE ONLY firma.pensja_stanowisko DROP CONSTRAINT pensja_stanowisko_pkey;
       firma            postgres    false    207            ^           2606    16528    pracownicy pracownicy_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY firma.pracownicy
    ADD CONSTRAINT pracownicy_pkey PRIMARY KEY (id_pracownika);
 C   ALTER TABLE ONLY firma.pracownicy DROP CONSTRAINT pracownicy_pkey;
       firma            postgres    false    203            g           2606    16534    premia premia_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY firma.premia
    ADD CONSTRAINT premia_pkey PRIMARY KEY (id_premii);
 ;   ALTER TABLE ONLY firma.premia DROP CONSTRAINT premia_pkey;
       firma            postgres    false    209            i           2606    16536     wynagrodzenie wynagrodzenie_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY firma.wynagrodzenie
    ADD CONSTRAINT wynagrodzenie_pkey PRIMARY KEY (id_wynagrodzenia);
 I   ALTER TABLE ONLY firma.wynagrodzenie DROP CONSTRAINT wynagrodzenie_pkey;
       firma            postgres    false    211            k           2606    16655    producenci producenci_pk 
   CONSTRAINT     `   ALTER TABLE ONLY sklep.producenci
    ADD CONSTRAINT producenci_pk PRIMARY KEY (id_producenta);
 A   ALTER TABLE ONLY sklep.producenci DROP CONSTRAINT producenci_pk;
       sklep            postgres    false    213            m           2606    16666    produkty produkty_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY sklep.produkty
    ADD CONSTRAINT produkty_pk PRIMARY KEY (id_produktu);
 =   ALTER TABLE ONLY sklep.produkty DROP CONSTRAINT produkty_pk;
       sklep            postgres    false    215            o           2606    16677    zamowienia zamowienia_pk 
   CONSTRAINT     `   ALTER TABLE ONLY sklep.zamowienia
    ADD CONSTRAINT zamowienia_pk PRIMARY KEY (id_zamowienia);
 A   ALTER TABLE ONLY sklep.zamowienia DROP CONSTRAINT zamowienia_pk;
       sklep            postgres    false    217            _           1259    16564    godziny_liczba_godzin_index    INDEX     W   CREATE INDEX godziny_liczba_godzin_index ON firma.godziny USING btree (liczba_godzin);
 .   DROP INDEX firma.godziny_liczba_godzin_index;
       firma            postgres    false    205            b           1259    16562    pensja_stanowisko_kwota_index    INDEX     [   CREATE INDEX pensja_stanowisko_kwota_index ON firma.pensja_stanowisko USING btree (kwota);
 0   DROP INDEX firma.pensja_stanowisko_kwota_index;
       firma            postgres    false    207            e           1259    16563    premia_kwota_index    INDEX     E   CREATE INDEX premia_kwota_index ON firma.premia USING btree (kwota);
 %   DROP INDEX firma.premia_kwota_index;
       firma            postgres    false    209            p           2606    16566 "   godziny godziny_id_pracownika_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY firma.godziny
    ADD CONSTRAINT godziny_id_pracownika_fkey FOREIGN KEY (id_pracownika) REFERENCES firma.pracownicy(id_pracownika) ON DELETE RESTRICT;
 K   ALTER TABLE ONLY firma.godziny DROP CONSTRAINT godziny_id_pracownika_fkey;
       firma          postgres    false    205    2910    203            r           2606    16576 +   wynagrodzenie wynagrodzenie_id_godziny_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY firma.wynagrodzenie
    ADD CONSTRAINT wynagrodzenie_id_godziny_fkey FOREIGN KEY (id_godziny) REFERENCES firma.godziny(id_godziny) ON DELETE RESTRICT;
 T   ALTER TABLE ONLY firma.wynagrodzenie DROP CONSTRAINT wynagrodzenie_id_godziny_fkey;
       firma          postgres    false    205    2913    211            s           2606    16581 *   wynagrodzenie wynagrodzenie_id_pensji_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY firma.wynagrodzenie
    ADD CONSTRAINT wynagrodzenie_id_pensji_fkey FOREIGN KEY (id_pensji) REFERENCES firma.pensja_stanowisko(id_pensji) ON DELETE RESTRICT;
 S   ALTER TABLE ONLY firma.wynagrodzenie DROP CONSTRAINT wynagrodzenie_id_pensji_fkey;
       firma          postgres    false    211    2916    207            q           2606    16571 .   wynagrodzenie wynagrodzenie_id_pracownika_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY firma.wynagrodzenie
    ADD CONSTRAINT wynagrodzenie_id_pracownika_fkey FOREIGN KEY (id_pracownika) REFERENCES firma.pracownicy(id_pracownika) ON DELETE RESTRICT;
 W   ALTER TABLE ONLY firma.wynagrodzenie DROP CONSTRAINT wynagrodzenie_id_pracownika_fkey;
       firma          postgres    false    2910    211    203            t           2606    16586 *   wynagrodzenie wynagrodzenie_id_premii_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY firma.wynagrodzenie
    ADD CONSTRAINT wynagrodzenie_id_premii_fkey FOREIGN KEY (id_premii) REFERENCES firma.premia(id_premii) ON DELETE RESTRICT;
 S   ALTER TABLE ONLY firma.wynagrodzenie DROP CONSTRAINT wynagrodzenie_id_premii_fkey;
       firma          postgres    false    2919    209    211            u           2606    16678    produkty producenci_produkty    FK CONSTRAINT     �   ALTER TABLE ONLY sklep.produkty
    ADD CONSTRAINT producenci_produkty FOREIGN KEY (id_producenta) REFERENCES sklep.producenci(id_producenta);
 E   ALTER TABLE ONLY sklep.produkty DROP CONSTRAINT producenci_produkty;
       sklep          postgres    false    2923    213    215            v           2606    16683    zamowienia zamowienia_produkty    FK CONSTRAINT     �   ALTER TABLE ONLY sklep.zamowienia
    ADD CONSTRAINT zamowienia_produkty FOREIGN KEY (id_produktu) REFERENCES sklep.produkty(id_produktu);
 G   ALTER TABLE ONLY sklep.zamowienia DROP CONSTRAINT zamowienia_produkty;
       sklep          postgres    false    215    217    2925            �   �   x�E�KC!��e/6������4�5L����:tS�R8&�į����l˼�C�D���O��'�]�zwX&��%��Ղ1�z�ʺ~�����ܲ�n`�Ӽ��ׯo9�`����K�!| ��&      �   �   x��I�0��W���f	�/��̈ /��Q^ϱ�K�PN�����M֚�ȅ�K�,������}D��YZ?7�p�y�;�lsO$ʴ��W������M�*S�"Ӫ���P�\�KTjsN3gqʱ	��T¨��0����3�      �   �   x�E��j1E�����g���\,�4������,��GK���{�s&x�B�;fN3�%��<+m��B�-R�#{�G�;�3w��RRJc�0�j	��v���	��Yg�	�H_H8�V��8�%.+HsvJK?	�z���?pɑ���h�����p��[��&�&G?��BX��}Mc�ɽ�C'��c�Z��"����N�          �   x��K�0C��)8J��f�DU�TC��9=Cw��e7��2�k��mq�L�w��"�&>��Q)�5r��U��V�Y4��[V�o���\��(F�w��hL=d�x�N9�+�Ǧ%�A��F��ϫs��/�         ]   x�M���0Cѳ�K+ 	!�t�9Jn>|!=.v��=n�m8�s�b`\�P���T�X�s).dWL��-�7����y������7,~/�$� �         �   x�5��N�0E�w>��v���B,ٰqI�*'rT!�����9�|����O�>E������g�1FJ�#���mC����ۖ���e\~��ҋ�H�h��<���+K ���J)�xI�:⻐+�Rz��dp��y�*n��Moa9�X
��X�'���r�'�U��kei<�������f��Y�9/,pL1l8WqS��a���灈��l�         �   x�E�M�0���|�� ��?�.n�6H[l"#K��+q����\.C�d����$R��I
c�@o�"���Bn�&��O��C�#�<,>A���s��W2�"��v����f�!���h��o	���f�RK�=�]6�         �   x�m��
�0��ͿD&�>�]�@�/�&`�al�ߦ�Ņ0�{f�k`�Ĥ��l��0J^h���_�Z3����Y,�vdM���l�I3�(����
T�W�x�0&(�-Pjb�\�$(W0<.��Wȗ�z��d^�Q�v�֧v�_hwJ��-7     