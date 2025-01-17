PGDMP     ,    2                {         
   barbershop    15.1    15.1 '    #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    16879 
   barbershop    DATABASE        CREATE DATABASE barbershop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';
    DROP DATABASE barbershop;
                postgres    false            �            1259    16906    appointment    TABLE     �   CREATE TABLE public.appointment (
    id integer NOT NULL,
    customer_id integer,
    barber_id integer,
    service_id integer,
    appointmentdate character varying(70),
    appointmenttime character varying(70)
);
    DROP TABLE public.appointment;
       public         heap    postgres    false            �            1259    16905    appointment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.appointment_id_seq;
       public          postgres    false    221            '           0    0    appointment_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.appointment_id_seq OWNED BY public.appointment.id;
          public          postgres    false    220            �            1259    16881    barber    TABLE     �   CREATE TABLE public.barber (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone_number character varying(20) NOT NULL
);
    DROP TABLE public.barber;
       public         heap    postgres    false            �            1259    16880    barber_id_seq    SEQUENCE     �   CREATE SEQUENCE public.barber_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.barber_id_seq;
       public          postgres    false    215            (           0    0    barber_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.barber_id_seq OWNED BY public.barber.id;
          public          postgres    false    214            �            1259    16939    barber_working_time    TABLE     }   CREATE TABLE public.barber_working_time (
    barber_id integer NOT NULL,
    working_time character varying(70) NOT NULL
);
 '   DROP TABLE public.barber_working_time;
       public         heap    postgres    false            �            1259    16897    customer    TABLE     �   CREATE TABLE public.customer (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone_number character varying(20) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16896    customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public          postgres    false    219            )           0    0    customer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;
          public          postgres    false    218            �            1259    16890    service    TABLE     �   CREATE TABLE public.service (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL
);
    DROP TABLE public.service;
       public         heap    postgres    false            �            1259    16889    service_id_seq    SEQUENCE     �   CREATE SEQUENCE public.service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.service_id_seq;
       public          postgres    false    217            *           0    0    service_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.service_id_seq OWNED BY public.service.id;
          public          postgres    false    216            {           2604    16909    appointment id    DEFAULT     p   ALTER TABLE ONLY public.appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_id_seq'::regclass);
 =   ALTER TABLE public.appointment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            x           2604    16884 	   barber id    DEFAULT     f   ALTER TABLE ONLY public.barber ALTER COLUMN id SET DEFAULT nextval('public.barber_id_seq'::regclass);
 8   ALTER TABLE public.barber ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            z           2604    16900    customer id    DEFAULT     j   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            y           2604    16893 
   service id    DEFAULT     h   ALTER TABLE ONLY public.service ALTER COLUMN id SET DEFAULT nextval('public.service_id_seq'::regclass);
 9   ALTER TABLE public.service ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                      0    16906    appointment 
   TABLE DATA           o   COPY public.appointment (id, customer_id, barber_id, service_id, appointmentdate, appointmenttime) FROM stdin;
    public          postgres    false    221   �+                 0    16881    barber 
   TABLE DATA           ?   COPY public.barber (id, name, email, phone_number) FROM stdin;
    public          postgres    false    215   �+                  0    16939    barber_working_time 
   TABLE DATA           F   COPY public.barber_working_time (barber_id, working_time) FROM stdin;
    public          postgres    false    222   ^,                 0    16897    customer 
   TABLE DATA           A   COPY public.customer (id, name, email, phone_number) FROM stdin;
    public          postgres    false    219   �,                 0    16890    service 
   TABLE DATA           2   COPY public.service (id, name, price) FROM stdin;
    public          postgres    false    217   !-       +           0    0    appointment_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.appointment_id_seq', 4, true);
          public          postgres    false    220            ,           0    0    barber_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.barber_id_seq', 2, true);
          public          postgres    false    214            -           0    0    customer_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.customer_id_seq', 5, true);
          public          postgres    false    218            .           0    0    service_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.service_id_seq', 3, true);
          public          postgres    false    216            �           2606    16911    appointment appointment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.appointment DROP CONSTRAINT appointment_pkey;
       public            postgres    false    221            }           2606    16888    barber barber_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.barber
    ADD CONSTRAINT barber_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.barber DROP CONSTRAINT barber_pkey;
       public            postgres    false    215            �           2606    16943 -   barber_working_time barberr_working_time_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.barber_working_time
    ADD CONSTRAINT barberr_working_time_pkey PRIMARY KEY (barber_id);
 W   ALTER TABLE ONLY public.barber_working_time DROP CONSTRAINT barberr_working_time_pkey;
       public            postgres    false    222            �           2606    16904    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    219                       2606    16895    service service_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public            postgres    false    217            �           2606    16917 &   appointment appointment_barber_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_barber_id_fkey FOREIGN KEY (barber_id) REFERENCES public.barber(id);
 P   ALTER TABLE ONLY public.appointment DROP CONSTRAINT appointment_barber_id_fkey;
       public          postgres    false    215    3197    221            �           2606    16912 (   appointment appointment_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public.appointment DROP CONSTRAINT appointment_customer_id_fkey;
       public          postgres    false    221    219    3201            �           2606    16922 '   appointment appointment_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.service(id);
 Q   ALTER TABLE ONLY public.appointment DROP CONSTRAINT appointment_service_id_fkey;
       public          postgres    false    221    217    3199            �           2606    16944 7   barber_working_time barberr_working_time_barber_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.barber_working_time
    ADD CONSTRAINT barberr_working_time_barber_id_fkey FOREIGN KEY (barber_id) REFERENCES public.barber(id);
 a   ALTER TABLE ONLY public.barber_working_time DROP CONSTRAINT barberr_working_time_barber_id_fkey;
       public          postgres    false    222    3197    215               (   x�3�4�4�4�42�50�5202���/���K����� _�m         q   x�3�����Sp�O��2�R�SR+srR���s9�LMMu��M��8��R!j�\jM��-��9}3�2��K+S�8s���<0�!=713����������Ԕ+F��� ��)�          *   x�3���/���K�2�tL+I-�����2�t-K���qqq ��
�         y   x�3�t��LNU��,��L���Al�Ԋ�܂�T���\NmCSSS]C �2�t�OR����+���L�O�˂���0.SN�ļ���R���l�!=713����������؀+F��� ��,j         8   x�3��H�,J.-�42�30�2��H,K�44�9�R�RB�2s9�
b���� x�     