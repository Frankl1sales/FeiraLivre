PGDMP                          {         	   cursojava    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    16671 	   cursojava    DATABASE     �   CREATE DATABASE cursojava WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE cursojava;
                postgres    false            �            1259    16688    alimento    TABLE     �   CREATE TABLE public.alimento (
    id_alimento integer NOT NULL,
    alinome character varying(35) NOT NULL,
    valor_unidade numeric(5,2) NOT NULL
);
    DROP TABLE public.alimento;
       public         heap    postgres    false            �            1259    16698    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    pnome character varying(15) NOT NULL,
    snome character varying(15)
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16693    feirante    TABLE     �   CREATE TABLE public.feirante (
    id_feirante integer NOT NULL,
    pnome character varying(15) NOT NULL,
    snome character varying(15)
);
    DROP TABLE public.feirante;
       public         heap    postgres    false            �            1259    16673    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    senha character varying NOT NULL,
    usuario character varying NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16672    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    215            #           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    214            �            1259    16703    venda    TABLE     �   CREATE TABLE public.venda (
    id_venda integer NOT NULL,
    total numeric(10,2),
    data_venda date,
    id_feirante_venda integer,
    id_cliente_venda integer
);
    DROP TABLE public.venda;
       public         heap    postgres    false            �            1259    16718    venda_alimento    TABLE     �   CREATE TABLE public.venda_alimento (
    id_alimento integer NOT NULL,
    id_venda integer NOT NULL,
    quantidade numeric(10,2) NOT NULL
);
 "   DROP TABLE public.venda_alimento;
       public         heap    postgres    false            y           2604    16676 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    16688    alimento 
   TABLE DATA           G   COPY public.alimento (id_alimento, alinome, valor_unidade) FROM stdin;
    public          postgres    false    216   U                 0    16698    cliente 
   TABLE DATA           ;   COPY public.cliente (id_cliente, pnome, snome) FROM stdin;
    public          postgres    false    218   5                 0    16693    feirante 
   TABLE DATA           =   COPY public.feirante (id_feirante, pnome, snome) FROM stdin;
    public          postgres    false    217   �                 0    16673    usuario 
   TABLE DATA           5   COPY public.usuario (id, senha, usuario) FROM stdin;
    public          postgres    false    215   �                 0    16703    venda 
   TABLE DATA           a   COPY public.venda (id_venda, total, data_venda, id_feirante_venda, id_cliente_venda) FROM stdin;
    public          postgres    false    219   �                  0    16718    venda_alimento 
   TABLE DATA           K   COPY public.venda_alimento (id_alimento, id_venda, quantidade) FROM stdin;
    public          postgres    false    220   �        $           0    0    usuario_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuario_id_seq', 10, true);
          public          postgres    false    214            }           2606    16692    alimento alimento_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.alimento
    ADD CONSTRAINT alimento_pkey PRIMARY KEY (id_alimento);
 @   ALTER TABLE ONLY public.alimento DROP CONSTRAINT alimento_pkey;
       public            postgres    false    216            �           2606    16702    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    218                       2606    16697    feirante feirante_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.feirante
    ADD CONSTRAINT feirante_pkey PRIMARY KEY (id_feirante);
 @   ALTER TABLE ONLY public.feirante DROP CONSTRAINT feirante_pkey;
       public            postgres    false    217            {           2606    16680    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    215            �           2606    16722 "   venda_alimento venda_alimento_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.venda_alimento
    ADD CONSTRAINT venda_alimento_pkey PRIMARY KEY (id_alimento, id_venda);
 L   ALTER TABLE ONLY public.venda_alimento DROP CONSTRAINT venda_alimento_pkey;
       public            postgres    false    220    220            �           2606    16707    venda venda_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id_venda);
 :   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_pkey;
       public            postgres    false    219            �           2606    16713    venda venda_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_id_cliente_fkey FOREIGN KEY (id_cliente_venda) REFERENCES public.cliente(id_cliente) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_id_cliente_fkey;
       public          postgres    false    219    218    3201            �           2606    16708    venda venda_id_feirante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_id_feirante_fkey FOREIGN KEY (id_feirante_venda) REFERENCES public.feirante(id_feirante) ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_id_feirante_fkey;
       public          postgres    false    217    3199    219               �   x�5�Mn�@��oN�D���e(bUH,�1a�F��AQ�Â��b�$������g�jO5=�0�T�9=��zJP]�mp0AM{3�	�o�2�H��ae5'��c>v<Yؘ��1�0Cu5��4YbÉm�g�#T��^ԲTZci�<���I�c�|��u�����g����ރ�;��F9����f�4,���t�m+'|�L��α�1�_�R�ܣI�         Y   x�3�t�K��/�J�2�HM)��N�+�/�2��M,�L�LITp�/.I�2�t�LM��*J�,J�2��*��L�w��M�LI����� ��         E   x�3�t+J�K�,N��LIT��)K�2����,�L��/*IMO�2��M,��K�LIU ɤf%r��qqq �CQ         �   x�U�;
1F����&�In`cei!ȕ�!�����7&Sx��((m,^Y�V�F�g��9���?-�瀳Ԙh�3����m\c˱�C`'E�c�ñ}ލ��J�*���fܻ�Gɕ�e�k��DD_�*�         L   x�e̱� C�Z�Ζm�d�9BhT��}Ǫn��Y6OAa�bg Ϸo�k?.��|v��s�	����+@         U   x�5�� !�7��X��_�E3�vFLLr̩� ΅�3Y@r��L�������ɝ^Ou���j�=�Ϩ�)�T������     