PGDMP         0                z            mishi_database    15.1    15.1 .   ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16398    mishi_database    DATABASE     ?   CREATE DATABASE mishi_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE mishi_database;
                postgres    false            ?            1259    16400    articulo    TABLE     ?  CREATE TABLE public.articulo (
    codigoarticulo integer NOT NULL,
    nombrearticulo character varying(80) NOT NULL,
    descripcion character varying(250),
    idproveedores integer NOT NULL,
    iva numeric(5,2),
    idsublinea integer NOT NULL,
    cantidad integer NOT NULL,
    lote character varying(50),
    costo numeric(12,2) NOT NULL,
    precioventa numeric(12,2),
    utilidad numeric(12,2),
    estado character varying(30) NOT NULL,
    trial020 character(1)
);
    DROP TABLE public.articulo;
       public         heap    postgres    false            ?           0    0    TABLE articulo    COMMENT     -   COMMENT ON TABLE public.articulo IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.codigoarticulo    COMMENT     =   COMMENT ON COLUMN public.articulo.codigoarticulo IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.nombrearticulo    COMMENT     =   COMMENT ON COLUMN public.articulo.nombrearticulo IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.descripcion    COMMENT     :   COMMENT ON COLUMN public.articulo.descripcion IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.idproveedores    COMMENT     <   COMMENT ON COLUMN public.articulo.idproveedores IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.iva    COMMENT     2   COMMENT ON COLUMN public.articulo.iva IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.idsublinea    COMMENT     9   COMMENT ON COLUMN public.articulo.idsublinea IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.cantidad    COMMENT     7   COMMENT ON COLUMN public.articulo.cantidad IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.lote    COMMENT     3   COMMENT ON COLUMN public.articulo.lote IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.costo    COMMENT     4   COMMENT ON COLUMN public.articulo.costo IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.precioventa    COMMENT     :   COMMENT ON COLUMN public.articulo.precioventa IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.utilidad    COMMENT     7   COMMENT ON COLUMN public.articulo.utilidad IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.estado    COMMENT     5   COMMENT ON COLUMN public.articulo.estado IS 'TRIAL';
          public          postgres    false    215            ?           0    0    COLUMN articulo.trial020    COMMENT     7   COMMENT ON COLUMN public.articulo.trial020 IS 'TRIAL';
          public          postgres    false    215            ?            1259    16399    articulo_codigoarticulo_seq    SEQUENCE     ?   CREATE SEQUENCE public.articulo_codigoarticulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.articulo_codigoarticulo_seq;
       public          postgres    false    215            ?           0    0    articulo_codigoarticulo_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.articulo_codigoarticulo_seq OWNED BY public.articulo.codigoarticulo;
          public          postgres    false    214            ?            1259    16409    caja    TABLE     ?   CREATE TABLE public.caja (
    codigocaja integer NOT NULL,
    ubicacion character varying(80) NOT NULL,
    descripcion character varying(80),
    trial024 character(1)
);
    DROP TABLE public.caja;
       public         heap    postgres    false            ?           0    0 
   TABLE caja    COMMENT     )   COMMENT ON TABLE public.caja IS 'TRIAL';
          public          postgres    false    217            ?           0    0    COLUMN caja.codigocaja    COMMENT     5   COMMENT ON COLUMN public.caja.codigocaja IS 'TRIAL';
          public          postgres    false    217            ?           0    0    COLUMN caja.ubicacion    COMMENT     4   COMMENT ON COLUMN public.caja.ubicacion IS 'TRIAL';
          public          postgres    false    217            ?           0    0    COLUMN caja.descripcion    COMMENT     6   COMMENT ON COLUMN public.caja.descripcion IS 'TRIAL';
          public          postgres    false    217            ?           0    0    COLUMN caja.trial024    COMMENT     3   COMMENT ON COLUMN public.caja.trial024 IS 'TRIAL';
          public          postgres    false    217            ?            1259    16408    caja_codigocaja_seq    SEQUENCE     ?   CREATE SEQUENCE public.caja_codigocaja_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.caja_codigocaja_seq;
       public          postgres    false    217            ?           0    0    caja_codigocaja_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.caja_codigocaja_seq OWNED BY public.caja.codigocaja;
          public          postgres    false    216            ?            1259    16416    cargos    TABLE     ?   CREATE TABLE public.cargos (
    idcargo integer NOT NULL,
    nombre character varying(40) NOT NULL,
    descripcion character varying(80),
    trial027 character(1)
);
    DROP TABLE public.cargos;
       public         heap    postgres    false            ?           0    0    TABLE cargos    COMMENT     +   COMMENT ON TABLE public.cargos IS 'TRIAL';
          public          postgres    false    219            ?           0    0    COLUMN cargos.idcargo    COMMENT     4   COMMENT ON COLUMN public.cargos.idcargo IS 'TRIAL';
          public          postgres    false    219            ?           0    0    COLUMN cargos.nombre    COMMENT     3   COMMENT ON COLUMN public.cargos.nombre IS 'TRIAL';
          public          postgres    false    219            ?           0    0    COLUMN cargos.descripcion    COMMENT     8   COMMENT ON COLUMN public.cargos.descripcion IS 'TRIAL';
          public          postgres    false    219            ?           0    0    COLUMN cargos.trial027    COMMENT     5   COMMENT ON COLUMN public.cargos.trial027 IS 'TRIAL';
          public          postgres    false    219            ?            1259    16415    cargos_idcargo_seq    SEQUENCE     ?   CREATE SEQUENCE public.cargos_idcargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cargos_idcargo_seq;
       public          postgres    false    219            ?           0    0    cargos_idcargo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cargos_idcargo_seq OWNED BY public.cargos.idcargo;
          public          postgres    false    218            ?            1259    16423    ciudad    TABLE     ?   CREATE TABLE public.ciudad (
    codigociudad integer NOT NULL,
    nombre character varying(40) NOT NULL,
    departamento character varying(50),
    trial027 character(1)
);
    DROP TABLE public.ciudad;
       public         heap    postgres    false            ?           0    0    TABLE ciudad    COMMENT     +   COMMENT ON TABLE public.ciudad IS 'TRIAL';
          public          postgres    false    221            ?           0    0    COLUMN ciudad.codigociudad    COMMENT     9   COMMENT ON COLUMN public.ciudad.codigociudad IS 'TRIAL';
          public          postgres    false    221            ?           0    0    COLUMN ciudad.nombre    COMMENT     3   COMMENT ON COLUMN public.ciudad.nombre IS 'TRIAL';
          public          postgres    false    221            ?           0    0    COLUMN ciudad.departamento    COMMENT     9   COMMENT ON COLUMN public.ciudad.departamento IS 'TRIAL';
          public          postgres    false    221            ?           0    0    COLUMN ciudad.trial027    COMMENT     5   COMMENT ON COLUMN public.ciudad.trial027 IS 'TRIAL';
          public          postgres    false    221            ?            1259    16422    ciudad_codigociudad_seq    SEQUENCE     ?   CREATE SEQUENCE public.ciudad_codigociudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ciudad_codigociudad_seq;
       public          postgres    false    221            ?           0    0    ciudad_codigociudad_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.ciudad_codigociudad_seq OWNED BY public.ciudad.codigociudad;
          public          postgres    false    220            ?            1259    16430    cliente    TABLE       CREATE TABLE public.cliente (
    codigocliente integer NOT NULL,
    idtipoidentidad integer NOT NULL,
    numerodocumento character varying(20) NOT NULL,
    nombre character varying(60) NOT NULL,
    apellido character varying(60) NOT NULL,
    genero character(1),
    fechanacimiento date,
    direccion character varying(60) NOT NULL,
    telefono character varying(12),
    email character varying(150),
    codigociudad integer NOT NULL,
    estado character varying(30) NOT NULL,
    trial030 character(1)
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            ?           0    0    TABLE cliente    COMMENT     ,   COMMENT ON TABLE public.cliente IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.codigocliente    COMMENT     ;   COMMENT ON COLUMN public.cliente.codigocliente IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.idtipoidentidad    COMMENT     =   COMMENT ON COLUMN public.cliente.idtipoidentidad IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.numerodocumento    COMMENT     =   COMMENT ON COLUMN public.cliente.numerodocumento IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.nombre    COMMENT     4   COMMENT ON COLUMN public.cliente.nombre IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.apellido    COMMENT     6   COMMENT ON COLUMN public.cliente.apellido IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.genero    COMMENT     4   COMMENT ON COLUMN public.cliente.genero IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.fechanacimiento    COMMENT     =   COMMENT ON COLUMN public.cliente.fechanacimiento IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.direccion    COMMENT     7   COMMENT ON COLUMN public.cliente.direccion IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.telefono    COMMENT     6   COMMENT ON COLUMN public.cliente.telefono IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.email    COMMENT     3   COMMENT ON COLUMN public.cliente.email IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.codigociudad    COMMENT     :   COMMENT ON COLUMN public.cliente.codigociudad IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.estado    COMMENT     4   COMMENT ON COLUMN public.cliente.estado IS 'TRIAL';
          public          postgres    false    223            ?           0    0    COLUMN cliente.trial030    COMMENT     6   COMMENT ON COLUMN public.cliente.trial030 IS 'TRIAL';
          public          postgres    false    223            ?            1259    16429    cliente_codigocliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.cliente_codigocliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.cliente_codigocliente_seq;
       public          postgres    false    223            ?           0    0    cliente_codigocliente_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.cliente_codigocliente_seq OWNED BY public.cliente.codigocliente;
          public          postgres    false    222            ?            1259    16438    detalleventa    TABLE     ?   CREATE TABLE public.detalleventa (
    numerodocumento integer NOT NULL,
    codigoarticulo integer NOT NULL,
    cantidad integer NOT NULL,
    iva numeric(12,2),
    total numeric(12,2) NOT NULL,
    trial030 character(1)
);
     DROP TABLE public.detalleventa;
       public         heap    postgres    false            ?           0    0    TABLE detalleventa    COMMENT     1   COMMENT ON TABLE public.detalleventa IS 'TRIAL';
          public          postgres    false    224            ?           0    0 #   COLUMN detalleventa.numerodocumento    COMMENT     B   COMMENT ON COLUMN public.detalleventa.numerodocumento IS 'TRIAL';
          public          postgres    false    224            ?           0    0 "   COLUMN detalleventa.codigoarticulo    COMMENT     A   COMMENT ON COLUMN public.detalleventa.codigoarticulo IS 'TRIAL';
          public          postgres    false    224            ?           0    0    COLUMN detalleventa.cantidad    COMMENT     ;   COMMENT ON COLUMN public.detalleventa.cantidad IS 'TRIAL';
          public          postgres    false    224            ?           0    0    COLUMN detalleventa.iva    COMMENT     6   COMMENT ON COLUMN public.detalleventa.iva IS 'TRIAL';
          public          postgres    false    224            ?           0    0    COLUMN detalleventa.total    COMMENT     8   COMMENT ON COLUMN public.detalleventa.total IS 'TRIAL';
          public          postgres    false    224                        0    0    COLUMN detalleventa.trial030    COMMENT     ;   COMMENT ON COLUMN public.detalleventa.trial030 IS 'TRIAL';
          public          postgres    false    224            ?            1259    16445    factura    TABLE     G  CREATE TABLE public.factura (
    numerodocumento integer NOT NULL,
    codigodocumento integer NOT NULL,
    fecha date NOT NULL,
    hora time without time zone,
    codigocaja integer NOT NULL,
    codigocliente integer NOT NULL,
    idresolucionfactura integer,
    idusuario integer NOT NULL,
    trial033 character(1)
);
    DROP TABLE public.factura;
       public         heap    postgres    false                       0    0    TABLE factura    COMMENT     ,   COMMENT ON TABLE public.factura IS 'TRIAL';
          public          postgres    false    225                       0    0    COLUMN factura.numerodocumento    COMMENT     =   COMMENT ON COLUMN public.factura.numerodocumento IS 'TRIAL';
          public          postgres    false    225                       0    0    COLUMN factura.codigodocumento    COMMENT     =   COMMENT ON COLUMN public.factura.codigodocumento IS 'TRIAL';
          public          postgres    false    225                       0    0    COLUMN factura.fecha    COMMENT     3   COMMENT ON COLUMN public.factura.fecha IS 'TRIAL';
          public          postgres    false    225                       0    0    COLUMN factura.hora    COMMENT     2   COMMENT ON COLUMN public.factura.hora IS 'TRIAL';
          public          postgres    false    225                       0    0    COLUMN factura.codigocaja    COMMENT     8   COMMENT ON COLUMN public.factura.codigocaja IS 'TRIAL';
          public          postgres    false    225                       0    0    COLUMN factura.codigocliente    COMMENT     ;   COMMENT ON COLUMN public.factura.codigocliente IS 'TRIAL';
          public          postgres    false    225                       0    0 "   COLUMN factura.idresolucionfactura    COMMENT     A   COMMENT ON COLUMN public.factura.idresolucionfactura IS 'TRIAL';
          public          postgres    false    225            	           0    0    COLUMN factura.idusuario    COMMENT     7   COMMENT ON COLUMN public.factura.idusuario IS 'TRIAL';
          public          postgres    false    225            
           0    0    COLUMN factura.trial033    COMMENT     6   COMMENT ON COLUMN public.factura.trial033 IS 'TRIAL';
          public          postgres    false    225            ?            1259    16456    horariolaboral    TABLE     ?   CREATE TABLE public.horariolaboral (
    idhorario integer NOT NULL,
    horainicio time without time zone NOT NULL,
    horafin time without time zone NOT NULL,
    horadesc character varying(80),
    trial037 character(1)
);
 "   DROP TABLE public.horariolaboral;
       public         heap    postgres    false                       0    0    TABLE horariolaboral    COMMENT     3   COMMENT ON TABLE public.horariolaboral IS 'TRIAL';
          public          postgres    false    227                       0    0    COLUMN horariolaboral.idhorario    COMMENT     >   COMMENT ON COLUMN public.horariolaboral.idhorario IS 'TRIAL';
          public          postgres    false    227                       0    0     COLUMN horariolaboral.horainicio    COMMENT     ?   COMMENT ON COLUMN public.horariolaboral.horainicio IS 'TRIAL';
          public          postgres    false    227                       0    0    COLUMN horariolaboral.horafin    COMMENT     <   COMMENT ON COLUMN public.horariolaboral.horafin IS 'TRIAL';
          public          postgres    false    227                       0    0    COLUMN horariolaboral.horadesc    COMMENT     =   COMMENT ON COLUMN public.horariolaboral.horadesc IS 'TRIAL';
          public          postgres    false    227                       0    0    COLUMN horariolaboral.trial037    COMMENT     =   COMMENT ON COLUMN public.horariolaboral.trial037 IS 'TRIAL';
          public          postgres    false    227            ?            1259    16455    horariolaboral_idhorario_seq    SEQUENCE     ?   CREATE SEQUENCE public.horariolaboral_idhorario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.horariolaboral_idhorario_seq;
       public          postgres    false    227                       0    0    horariolaboral_idhorario_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.horariolaboral_idhorario_seq OWNED BY public.horariolaboral.idhorario;
          public          postgres    false    226            ?            1259    16463    lineaproducto    TABLE     ?   CREATE TABLE public.lineaproducto (
    idlinea integer NOT NULL,
    lineadescripcion character varying(80) NOT NULL,
    trial037 character(1)
);
 !   DROP TABLE public.lineaproducto;
       public         heap    postgres    false                       0    0    TABLE lineaproducto    COMMENT     2   COMMENT ON TABLE public.lineaproducto IS 'TRIAL';
          public          postgres    false    229                       0    0    COLUMN lineaproducto.idlinea    COMMENT     ;   COMMENT ON COLUMN public.lineaproducto.idlinea IS 'TRIAL';
          public          postgres    false    229                       0    0 %   COLUMN lineaproducto.lineadescripcion    COMMENT     D   COMMENT ON COLUMN public.lineaproducto.lineadescripcion IS 'TRIAL';
          public          postgres    false    229                       0    0    COLUMN lineaproducto.trial037    COMMENT     <   COMMENT ON COLUMN public.lineaproducto.trial037 IS 'TRIAL';
          public          postgres    false    229            ?            1259    16462    lineaproducto_idlinea_seq    SEQUENCE     ?   CREATE SEQUENCE public.lineaproducto_idlinea_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.lineaproducto_idlinea_seq;
       public          postgres    false    229                       0    0    lineaproducto_idlinea_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.lineaproducto_idlinea_seq OWNED BY public.lineaproducto.idlinea;
          public          postgres    false    228            ?            1259    16470    proveedores    TABLE     ?  CREATE TABLE public.proveedores (
    idproveedores integer NOT NULL,
    numeroidentidad character varying(20) NOT NULL,
    nombre character varying(80) NOT NULL,
    codigociudad integer NOT NULL,
    direccion character varying(80) NOT NULL,
    telefono character varying(12),
    email character varying(40),
    estado character varying(30) NOT NULL,
    trial037 character(1)
);
    DROP TABLE public.proveedores;
       public         heap    postgres    false                       0    0    TABLE proveedores    COMMENT     0   COMMENT ON TABLE public.proveedores IS 'TRIAL';
          public          postgres    false    231                       0    0     COLUMN proveedores.idproveedores    COMMENT     ?   COMMENT ON COLUMN public.proveedores.idproveedores IS 'TRIAL';
          public          postgres    false    231                       0    0 "   COLUMN proveedores.numeroidentidad    COMMENT     A   COMMENT ON COLUMN public.proveedores.numeroidentidad IS 'TRIAL';
          public          postgres    false    231                       0    0    COLUMN proveedores.nombre    COMMENT     8   COMMENT ON COLUMN public.proveedores.nombre IS 'TRIAL';
          public          postgres    false    231                       0    0    COLUMN proveedores.codigociudad    COMMENT     >   COMMENT ON COLUMN public.proveedores.codigociudad IS 'TRIAL';
          public          postgres    false    231                       0    0    COLUMN proveedores.direccion    COMMENT     ;   COMMENT ON COLUMN public.proveedores.direccion IS 'TRIAL';
          public          postgres    false    231                       0    0    COLUMN proveedores.telefono    COMMENT     :   COMMENT ON COLUMN public.proveedores.telefono IS 'TRIAL';
          public          postgres    false    231                       0    0    COLUMN proveedores.email    COMMENT     7   COMMENT ON COLUMN public.proveedores.email IS 'TRIAL';
          public          postgres    false    231                       0    0    COLUMN proveedores.estado    COMMENT     8   COMMENT ON COLUMN public.proveedores.estado IS 'TRIAL';
          public          postgres    false    231                        0    0    COLUMN proveedores.trial037    COMMENT     :   COMMENT ON COLUMN public.proveedores.trial037 IS 'TRIAL';
          public          postgres    false    231            ?            1259    16469    proveedores_idproveedores_seq    SEQUENCE     ?   CREATE SEQUENCE public.proveedores_idproveedores_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.proveedores_idproveedores_seq;
       public          postgres    false    231            !           0    0    proveedores_idproveedores_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.proveedores_idproveedores_seq OWNED BY public.proveedores.idproveedores;
          public          postgres    false    230            ?            1259    16478    reportes    TABLE     ?   CREATE TABLE public.reportes (
    idreporte integer NOT NULL,
    fecha date NOT NULL,
    idusuario integer NOT NULL,
    moduloreportado character varying(80) NOT NULL,
    descripcion character varying(90),
    trial040 character(1)
);
    DROP TABLE public.reportes;
       public         heap    postgres    false            "           0    0    TABLE reportes    COMMENT     -   COMMENT ON TABLE public.reportes IS 'TRIAL';
          public          postgres    false    233            #           0    0    COLUMN reportes.idreporte    COMMENT     8   COMMENT ON COLUMN public.reportes.idreporte IS 'TRIAL';
          public          postgres    false    233            $           0    0    COLUMN reportes.fecha    COMMENT     4   COMMENT ON COLUMN public.reportes.fecha IS 'TRIAL';
          public          postgres    false    233            %           0    0    COLUMN reportes.idusuario    COMMENT     8   COMMENT ON COLUMN public.reportes.idusuario IS 'TRIAL';
          public          postgres    false    233            &           0    0    COLUMN reportes.moduloreportado    COMMENT     >   COMMENT ON COLUMN public.reportes.moduloreportado IS 'TRIAL';
          public          postgres    false    233            '           0    0    COLUMN reportes.descripcion    COMMENT     :   COMMENT ON COLUMN public.reportes.descripcion IS 'TRIAL';
          public          postgres    false    233            (           0    0    COLUMN reportes.trial040    COMMENT     7   COMMENT ON COLUMN public.reportes.trial040 IS 'TRIAL';
          public          postgres    false    233            ?            1259    16477    reportes_idreporte_seq    SEQUENCE     ?   CREATE SEQUENCE public.reportes_idreporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.reportes_idreporte_seq;
       public          postgres    false    233            )           0    0    reportes_idreporte_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.reportes_idreporte_seq OWNED BY public.reportes.idreporte;
          public          postgres    false    232            ?            1259    16486    resolucionfactura    TABLE     ?   CREATE TABLE public.resolucionfactura (
    idresolucionfactura integer NOT NULL,
    nroresolucionfactura integer NOT NULL,
    fecha date NOT NULL,
    fechainicio date NOT NULL,
    fechafin date NOT NULL,
    trial040 character(1)
);
 %   DROP TABLE public.resolucionfactura;
       public         heap    postgres    false            *           0    0    TABLE resolucionfactura    COMMENT     6   COMMENT ON TABLE public.resolucionfactura IS 'TRIAL';
          public          postgres    false    235            +           0    0 ,   COLUMN resolucionfactura.idresolucionfactura    COMMENT     K   COMMENT ON COLUMN public.resolucionfactura.idresolucionfactura IS 'TRIAL';
          public          postgres    false    235            ,           0    0 -   COLUMN resolucionfactura.nroresolucionfactura    COMMENT     L   COMMENT ON COLUMN public.resolucionfactura.nroresolucionfactura IS 'TRIAL';
          public          postgres    false    235            -           0    0    COLUMN resolucionfactura.fecha    COMMENT     =   COMMENT ON COLUMN public.resolucionfactura.fecha IS 'TRIAL';
          public          postgres    false    235            .           0    0 $   COLUMN resolucionfactura.fechainicio    COMMENT     C   COMMENT ON COLUMN public.resolucionfactura.fechainicio IS 'TRIAL';
          public          postgres    false    235            /           0    0 !   COLUMN resolucionfactura.fechafin    COMMENT     @   COMMENT ON COLUMN public.resolucionfactura.fechafin IS 'TRIAL';
          public          postgres    false    235            0           0    0 !   COLUMN resolucionfactura.trial040    COMMENT     @   COMMENT ON COLUMN public.resolucionfactura.trial040 IS 'TRIAL';
          public          postgres    false    235            ?            1259    16485 )   resolucionfactura_idresolucionfactura_seq    SEQUENCE     ?   CREATE SEQUENCE public.resolucionfactura_idresolucionfactura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.resolucionfactura_idresolucionfactura_seq;
       public          postgres    false    235            1           0    0 )   resolucionfactura_idresolucionfactura_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.resolucionfactura_idresolucionfactura_seq OWNED BY public.resolucionfactura.idresolucionfactura;
          public          postgres    false    234            ?            1259    16493    rol    TABLE     ?   CREATE TABLE public.rol (
    idrol integer NOT NULL,
    nombre character varying(40) NOT NULL,
    descripcion character varying(80),
    trial043 character(1)
);
    DROP TABLE public.rol;
       public         heap    postgres    false            2           0    0 	   TABLE rol    COMMENT     (   COMMENT ON TABLE public.rol IS 'TRIAL';
          public          postgres    false    237            3           0    0    COLUMN rol.idrol    COMMENT     /   COMMENT ON COLUMN public.rol.idrol IS 'TRIAL';
          public          postgres    false    237            4           0    0    COLUMN rol.nombre    COMMENT     0   COMMENT ON COLUMN public.rol.nombre IS 'TRIAL';
          public          postgres    false    237            5           0    0    COLUMN rol.descripcion    COMMENT     5   COMMENT ON COLUMN public.rol.descripcion IS 'TRIAL';
          public          postgres    false    237            6           0    0    COLUMN rol.trial043    COMMENT     2   COMMENT ON COLUMN public.rol.trial043 IS 'TRIAL';
          public          postgres    false    237            ?            1259    16492    rol_idrol_seq    SEQUENCE     ?   CREATE SEQUENCE public.rol_idrol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rol_idrol_seq;
       public          postgres    false    237            7           0    0    rol_idrol_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rol_idrol_seq OWNED BY public.rol.idrol;
          public          postgres    false    236            ?            1259    16500    sublineaproducto    TABLE     ?   CREATE TABLE public.sublineaproducto (
    idsublinea integer NOT NULL,
    sublineadescripcion character varying(80) NOT NULL,
    idlinea integer NOT NULL,
    trial043 character(1)
);
 $   DROP TABLE public.sublineaproducto;
       public         heap    postgres    false            8           0    0    TABLE sublineaproducto    COMMENT     5   COMMENT ON TABLE public.sublineaproducto IS 'TRIAL';
          public          postgres    false    239            9           0    0 "   COLUMN sublineaproducto.idsublinea    COMMENT     A   COMMENT ON COLUMN public.sublineaproducto.idsublinea IS 'TRIAL';
          public          postgres    false    239            :           0    0 +   COLUMN sublineaproducto.sublineadescripcion    COMMENT     J   COMMENT ON COLUMN public.sublineaproducto.sublineadescripcion IS 'TRIAL';
          public          postgres    false    239            ;           0    0    COLUMN sublineaproducto.idlinea    COMMENT     >   COMMENT ON COLUMN public.sublineaproducto.idlinea IS 'TRIAL';
          public          postgres    false    239            <           0    0     COLUMN sublineaproducto.trial043    COMMENT     ?   COMMENT ON COLUMN public.sublineaproducto.trial043 IS 'TRIAL';
          public          postgres    false    239            ?            1259    16499    sublineaproducto_idsublinea_seq    SEQUENCE     ?   CREATE SEQUENCE public.sublineaproducto_idsublinea_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.sublineaproducto_idsublinea_seq;
       public          postgres    false    239            =           0    0    sublineaproducto_idsublinea_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.sublineaproducto_idsublinea_seq OWNED BY public.sublineaproducto.idsublinea;
          public          postgres    false    238            ?            1259    16508    tipodocumento    TABLE     ?   CREATE TABLE public.tipodocumento (
    codigodocumento integer NOT NULL,
    descripcion character varying(35) NOT NULL,
    trial046 character(1)
);
 !   DROP TABLE public.tipodocumento;
       public         heap    postgres    false            >           0    0    TABLE tipodocumento    COMMENT     2   COMMENT ON TABLE public.tipodocumento IS 'TRIAL';
          public          postgres    false    241            ?           0    0 $   COLUMN tipodocumento.codigodocumento    COMMENT     C   COMMENT ON COLUMN public.tipodocumento.codigodocumento IS 'TRIAL';
          public          postgres    false    241            @           0    0     COLUMN tipodocumento.descripcion    COMMENT     ?   COMMENT ON COLUMN public.tipodocumento.descripcion IS 'TRIAL';
          public          postgres    false    241            A           0    0    COLUMN tipodocumento.trial046    COMMENT     <   COMMENT ON COLUMN public.tipodocumento.trial046 IS 'TRIAL';
          public          postgres    false    241            ?            1259    16507 !   tipodocumento_codigodocumento_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipodocumento_codigodocumento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tipodocumento_codigodocumento_seq;
       public          postgres    false    241            B           0    0 !   tipodocumento_codigodocumento_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.tipodocumento_codigodocumento_seq OWNED BY public.tipodocumento.codigodocumento;
          public          postgres    false    240            ?            1259    16515    tipoidentidad    TABLE     ?   CREATE TABLE public.tipoidentidad (
    idtipoidentidad integer NOT NULL,
    nombretipoidentidad character varying(10) NOT NULL,
    trial046 character(1)
);
 !   DROP TABLE public.tipoidentidad;
       public         heap    postgres    false            C           0    0    TABLE tipoidentidad    COMMENT     2   COMMENT ON TABLE public.tipoidentidad IS 'TRIAL';
          public          postgres    false    243            D           0    0 $   COLUMN tipoidentidad.idtipoidentidad    COMMENT     C   COMMENT ON COLUMN public.tipoidentidad.idtipoidentidad IS 'TRIAL';
          public          postgres    false    243            E           0    0 (   COLUMN tipoidentidad.nombretipoidentidad    COMMENT     G   COMMENT ON COLUMN public.tipoidentidad.nombretipoidentidad IS 'TRIAL';
          public          postgres    false    243            F           0    0    COLUMN tipoidentidad.trial046    COMMENT     <   COMMENT ON COLUMN public.tipoidentidad.trial046 IS 'TRIAL';
          public          postgres    false    243            ?            1259    16514 !   tipoidentidad_idtipoidentidad_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipoidentidad_idtipoidentidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tipoidentidad_idtipoidentidad_seq;
       public          postgres    false    243            G           0    0 !   tipoidentidad_idtipoidentidad_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.tipoidentidad_idtipoidentidad_seq OWNED BY public.tipoidentidad.idtipoidentidad;
          public          postgres    false    242            ?            1259    16522 	   turnocaja    TABLE     -  CREATE TABLE public.turnocaja (
    idturnocaja integer NOT NULL,
    idusuario integer NOT NULL,
    codcaja integer NOT NULL,
    fecha date NOT NULL,
    horainicial time without time zone,
    horafinal time without time zone,
    observaciones character varying(90),
    trial046 character(1)
);
    DROP TABLE public.turnocaja;
       public         heap    postgres    false            H           0    0    TABLE turnocaja    COMMENT     .   COMMENT ON TABLE public.turnocaja IS 'TRIAL';
          public          postgres    false    245            I           0    0    COLUMN turnocaja.idturnocaja    COMMENT     ;   COMMENT ON COLUMN public.turnocaja.idturnocaja IS 'TRIAL';
          public          postgres    false    245            J           0    0    COLUMN turnocaja.idusuario    COMMENT     9   COMMENT ON COLUMN public.turnocaja.idusuario IS 'TRIAL';
          public          postgres    false    245            K           0    0    COLUMN turnocaja.codcaja    COMMENT     7   COMMENT ON COLUMN public.turnocaja.codcaja IS 'TRIAL';
          public          postgres    false    245            L           0    0    COLUMN turnocaja.fecha    COMMENT     5   COMMENT ON COLUMN public.turnocaja.fecha IS 'TRIAL';
          public          postgres    false    245            M           0    0    COLUMN turnocaja.horainicial    COMMENT     ;   COMMENT ON COLUMN public.turnocaja.horainicial IS 'TRIAL';
          public          postgres    false    245            N           0    0    COLUMN turnocaja.horafinal    COMMENT     9   COMMENT ON COLUMN public.turnocaja.horafinal IS 'TRIAL';
          public          postgres    false    245            O           0    0    COLUMN turnocaja.observaciones    COMMENT     =   COMMENT ON COLUMN public.turnocaja.observaciones IS 'TRIAL';
          public          postgres    false    245            P           0    0    COLUMN turnocaja.trial046    COMMENT     8   COMMENT ON COLUMN public.turnocaja.trial046 IS 'TRIAL';
          public          postgres    false    245            ?            1259    16521    turnocaja_idturnocaja_seq    SEQUENCE     ?   CREATE SEQUENCE public.turnocaja_idturnocaja_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.turnocaja_idturnocaja_seq;
       public          postgres    false    245            Q           0    0    turnocaja_idturnocaja_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.turnocaja_idturnocaja_seq OWNED BY public.turnocaja.idturnocaja;
          public          postgres    false    244            ?            1259    16531    usuario    TABLE     ?  CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    primernombre character varying(30) NOT NULL,
    segundonombre character varying(30),
    primerapellido character varying(30) NOT NULL,
    segundoapellido character varying(30),
    login character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    sexo character(1) NOT NULL,
    idtipoidentidad integer NOT NULL,
    numeroidentidad character varying(30) NOT NULL,
    fechanac date,
    idcargo integer NOT NULL,
    direccion character varying(60),
    telefono character varying(12),
    idrol integer NOT NULL,
    idhorario integer NOT NULL,
    estado character varying(30) NOT NULL,
    trial050 character(1)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            R           0    0    TABLE usuario    COMMENT     ,   COMMENT ON TABLE public.usuario IS 'TRIAL';
          public          postgres    false    247            S           0    0    COLUMN usuario.idusuario    COMMENT     7   COMMENT ON COLUMN public.usuario.idusuario IS 'TRIAL';
          public          postgres    false    247            T           0    0    COLUMN usuario.primernombre    COMMENT     :   COMMENT ON COLUMN public.usuario.primernombre IS 'TRIAL';
          public          postgres    false    247            U           0    0    COLUMN usuario.segundonombre    COMMENT     ;   COMMENT ON COLUMN public.usuario.segundonombre IS 'TRIAL';
          public          postgres    false    247            V           0    0    COLUMN usuario.primerapellido    COMMENT     <   COMMENT ON COLUMN public.usuario.primerapellido IS 'TRIAL';
          public          postgres    false    247            W           0    0    COLUMN usuario.segundoapellido    COMMENT     =   COMMENT ON COLUMN public.usuario.segundoapellido IS 'TRIAL';
          public          postgres    false    247            X           0    0    COLUMN usuario.login    COMMENT     3   COMMENT ON COLUMN public.usuario.login IS 'TRIAL';
          public          postgres    false    247            Y           0    0    COLUMN usuario.password    COMMENT     6   COMMENT ON COLUMN public.usuario.password IS 'TRIAL';
          public          postgres    false    247            Z           0    0    COLUMN usuario.sexo    COMMENT     2   COMMENT ON COLUMN public.usuario.sexo IS 'TRIAL';
          public          postgres    false    247            [           0    0    COLUMN usuario.idtipoidentidad    COMMENT     =   COMMENT ON COLUMN public.usuario.idtipoidentidad IS 'TRIAL';
          public          postgres    false    247            \           0    0    COLUMN usuario.numeroidentidad    COMMENT     =   COMMENT ON COLUMN public.usuario.numeroidentidad IS 'TRIAL';
          public          postgres    false    247            ]           0    0    COLUMN usuario.fechanac    COMMENT     6   COMMENT ON COLUMN public.usuario.fechanac IS 'TRIAL';
          public          postgres    false    247            ^           0    0    COLUMN usuario.idcargo    COMMENT     5   COMMENT ON COLUMN public.usuario.idcargo IS 'TRIAL';
          public          postgres    false    247            _           0    0    COLUMN usuario.direccion    COMMENT     7   COMMENT ON COLUMN public.usuario.direccion IS 'TRIAL';
          public          postgres    false    247            `           0    0    COLUMN usuario.telefono    COMMENT     6   COMMENT ON COLUMN public.usuario.telefono IS 'TRIAL';
          public          postgres    false    247            a           0    0    COLUMN usuario.idrol    COMMENT     3   COMMENT ON COLUMN public.usuario.idrol IS 'TRIAL';
          public          postgres    false    247            b           0    0    COLUMN usuario.idhorario    COMMENT     7   COMMENT ON COLUMN public.usuario.idhorario IS 'TRIAL';
          public          postgres    false    247            c           0    0    COLUMN usuario.estado    COMMENT     4   COMMENT ON COLUMN public.usuario.estado IS 'TRIAL';
          public          postgres    false    247            d           0    0    COLUMN usuario.trial050    COMMENT     6   COMMENT ON COLUMN public.usuario.trial050 IS 'TRIAL';
          public          postgres    false    247            ?            1259    16530    usuario_idusuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public          postgres    false    247            e           0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;
          public          postgres    false    246            ?           2604    16403    articulo codigoarticulo    DEFAULT     ?   ALTER TABLE ONLY public.articulo ALTER COLUMN codigoarticulo SET DEFAULT nextval('public.articulo_codigoarticulo_seq'::regclass);
 F   ALTER TABLE public.articulo ALTER COLUMN codigoarticulo DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    16412    caja codigocaja    DEFAULT     r   ALTER TABLE ONLY public.caja ALTER COLUMN codigocaja SET DEFAULT nextval('public.caja_codigocaja_seq'::regclass);
 >   ALTER TABLE public.caja ALTER COLUMN codigocaja DROP DEFAULT;
       public          postgres    false    217    216    217            ?           2604    16419    cargos idcargo    DEFAULT     p   ALTER TABLE ONLY public.cargos ALTER COLUMN idcargo SET DEFAULT nextval('public.cargos_idcargo_seq'::regclass);
 =   ALTER TABLE public.cargos ALTER COLUMN idcargo DROP DEFAULT;
       public          postgres    false    219    218    219            ?           2604    16426    ciudad codigociudad    DEFAULT     z   ALTER TABLE ONLY public.ciudad ALTER COLUMN codigociudad SET DEFAULT nextval('public.ciudad_codigociudad_seq'::regclass);
 B   ALTER TABLE public.ciudad ALTER COLUMN codigociudad DROP DEFAULT;
       public          postgres    false    221    220    221            ?           2604    16433    cliente codigocliente    DEFAULT     ~   ALTER TABLE ONLY public.cliente ALTER COLUMN codigocliente SET DEFAULT nextval('public.cliente_codigocliente_seq'::regclass);
 D   ALTER TABLE public.cliente ALTER COLUMN codigocliente DROP DEFAULT;
       public          postgres    false    222    223    223            ?           2604    16459    horariolaboral idhorario    DEFAULT     ?   ALTER TABLE ONLY public.horariolaboral ALTER COLUMN idhorario SET DEFAULT nextval('public.horariolaboral_idhorario_seq'::regclass);
 G   ALTER TABLE public.horariolaboral ALTER COLUMN idhorario DROP DEFAULT;
       public          postgres    false    227    226    227            ?           2604    16466    lineaproducto idlinea    DEFAULT     ~   ALTER TABLE ONLY public.lineaproducto ALTER COLUMN idlinea SET DEFAULT nextval('public.lineaproducto_idlinea_seq'::regclass);
 D   ALTER TABLE public.lineaproducto ALTER COLUMN idlinea DROP DEFAULT;
       public          postgres    false    228    229    229            ?           2604    16473    proveedores idproveedores    DEFAULT     ?   ALTER TABLE ONLY public.proveedores ALTER COLUMN idproveedores SET DEFAULT nextval('public.proveedores_idproveedores_seq'::regclass);
 H   ALTER TABLE public.proveedores ALTER COLUMN idproveedores DROP DEFAULT;
       public          postgres    false    230    231    231            ?           2604    16481    reportes idreporte    DEFAULT     x   ALTER TABLE ONLY public.reportes ALTER COLUMN idreporte SET DEFAULT nextval('public.reportes_idreporte_seq'::regclass);
 A   ALTER TABLE public.reportes ALTER COLUMN idreporte DROP DEFAULT;
       public          postgres    false    232    233    233            ?           2604    16489 %   resolucionfactura idresolucionfactura    DEFAULT     ?   ALTER TABLE ONLY public.resolucionfactura ALTER COLUMN idresolucionfactura SET DEFAULT nextval('public.resolucionfactura_idresolucionfactura_seq'::regclass);
 T   ALTER TABLE public.resolucionfactura ALTER COLUMN idresolucionfactura DROP DEFAULT;
       public          postgres    false    235    234    235            ?           2604    16496 	   rol idrol    DEFAULT     f   ALTER TABLE ONLY public.rol ALTER COLUMN idrol SET DEFAULT nextval('public.rol_idrol_seq'::regclass);
 8   ALTER TABLE public.rol ALTER COLUMN idrol DROP DEFAULT;
       public          postgres    false    237    236    237            ?           2604    16503    sublineaproducto idsublinea    DEFAULT     ?   ALTER TABLE ONLY public.sublineaproducto ALTER COLUMN idsublinea SET DEFAULT nextval('public.sublineaproducto_idsublinea_seq'::regclass);
 J   ALTER TABLE public.sublineaproducto ALTER COLUMN idsublinea DROP DEFAULT;
       public          postgres    false    239    238    239            ?           2604    16511    tipodocumento codigodocumento    DEFAULT     ?   ALTER TABLE ONLY public.tipodocumento ALTER COLUMN codigodocumento SET DEFAULT nextval('public.tipodocumento_codigodocumento_seq'::regclass);
 L   ALTER TABLE public.tipodocumento ALTER COLUMN codigodocumento DROP DEFAULT;
       public          postgres    false    241    240    241            ?           2604    16518    tipoidentidad idtipoidentidad    DEFAULT     ?   ALTER TABLE ONLY public.tipoidentidad ALTER COLUMN idtipoidentidad SET DEFAULT nextval('public.tipoidentidad_idtipoidentidad_seq'::regclass);
 L   ALTER TABLE public.tipoidentidad ALTER COLUMN idtipoidentidad DROP DEFAULT;
       public          postgres    false    243    242    243            ?           2604    16525    turnocaja idturnocaja    DEFAULT     ~   ALTER TABLE ONLY public.turnocaja ALTER COLUMN idturnocaja SET DEFAULT nextval('public.turnocaja_idturnocaja_seq'::regclass);
 D   ALTER TABLE public.turnocaja ALTER COLUMN idturnocaja DROP DEFAULT;
       public          postgres    false    244    245    245            ?           2604    16534    usuario idusuario    DEFAULT     v   ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);
 @   ALTER TABLE public.usuario ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    247    246    247            ?          0    16400    articulo 
   TABLE DATA           ?   COPY public.articulo (codigoarticulo, nombrearticulo, descripcion, idproveedores, iva, idsublinea, cantidad, lote, costo, precioventa, utilidad, estado, trial020) FROM stdin;
    public          postgres    false    215   ?=      ?          0    16409    caja 
   TABLE DATA           L   COPY public.caja (codigocaja, ubicacion, descripcion, trial024) FROM stdin;
    public          postgres    false    217   H?      ?          0    16416    cargos 
   TABLE DATA           H   COPY public.cargos (idcargo, nombre, descripcion, trial027) FROM stdin;
    public          postgres    false    219   ??      ?          0    16423    ciudad 
   TABLE DATA           N   COPY public.ciudad (codigociudad, nombre, departamento, trial027) FROM stdin;
    public          postgres    false    221   @      ?          0    16430    cliente 
   TABLE DATA           ?   COPY public.cliente (codigocliente, idtipoidentidad, numerodocumento, nombre, apellido, genero, fechanacimiento, direccion, telefono, email, codigociudad, estado, trial030) FROM stdin;
    public          postgres    false    223   ?@      ?          0    16438    detalleventa 
   TABLE DATA           g   COPY public.detalleventa (numerodocumento, codigoarticulo, cantidad, iva, total, trial030) FROM stdin;
    public          postgres    false    224   QB      ?          0    16445    factura 
   TABLE DATA           ?   COPY public.factura (numerodocumento, codigodocumento, fecha, hora, codigocaja, codigocliente, idresolucionfactura, idusuario, trial033) FROM stdin;
    public          postgres    false    225   ?B      ?          0    16456    horariolaboral 
   TABLE DATA           \   COPY public.horariolaboral (idhorario, horainicio, horafin, horadesc, trial037) FROM stdin;
    public          postgres    false    227   [C      ?          0    16463    lineaproducto 
   TABLE DATA           L   COPY public.lineaproducto (idlinea, lineadescripcion, trial037) FROM stdin;
    public          postgres    false    229   ?C      ?          0    16470    proveedores 
   TABLE DATA           ?   COPY public.proveedores (idproveedores, numeroidentidad, nombre, codigociudad, direccion, telefono, email, estado, trial037) FROM stdin;
    public          postgres    false    231   HD      ?          0    16478    reportes 
   TABLE DATA           g   COPY public.reportes (idreporte, fecha, idusuario, moduloreportado, descripcion, trial040) FROM stdin;
    public          postgres    false    233   ]E      ?          0    16486    resolucionfactura 
   TABLE DATA           ~   COPY public.resolucionfactura (idresolucionfactura, nroresolucionfactura, fecha, fechainicio, fechafin, trial040) FROM stdin;
    public          postgres    false    235   zE      ?          0    16493    rol 
   TABLE DATA           C   COPY public.rol (idrol, nombre, descripcion, trial043) FROM stdin;
    public          postgres    false    237   ?E      ?          0    16500    sublineaproducto 
   TABLE DATA           ^   COPY public.sublineaproducto (idsublinea, sublineadescripcion, idlinea, trial043) FROM stdin;
    public          postgres    false    239   ?E      ?          0    16508    tipodocumento 
   TABLE DATA           O   COPY public.tipodocumento (codigodocumento, descripcion, trial046) FROM stdin;
    public          postgres    false    241   G      ?          0    16515    tipoidentidad 
   TABLE DATA           W   COPY public.tipoidentidad (idtipoidentidad, nombretipoidentidad, trial046) FROM stdin;
    public          postgres    false    243   QG      ?          0    16522 	   turnocaja 
   TABLE DATA           |   COPY public.turnocaja (idturnocaja, idusuario, codcaja, fecha, horainicial, horafinal, observaciones, trial046) FROM stdin;
    public          postgres    false    245   ?G      ?          0    16531    usuario 
   TABLE DATA           ?   COPY public.usuario (idusuario, primernombre, segundonombre, primerapellido, segundoapellido, login, password, sexo, idtipoidentidad, numeroidentidad, fechanac, idcargo, direccion, telefono, idrol, idhorario, estado, trial050) FROM stdin;
    public          postgres    false    247   ?H      f           0    0    articulo_codigoarticulo_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.articulo_codigoarticulo_seq', 11, true);
          public          postgres    false    214            g           0    0    caja_codigocaja_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.caja_codigocaja_seq', 333, true);
          public          postgres    false    216            h           0    0    cargos_idcargo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cargos_idcargo_seq', 2, true);
          public          postgres    false    218            i           0    0    ciudad_codigociudad_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.ciudad_codigociudad_seq', 10, true);
          public          postgres    false    220            j           0    0    cliente_codigocliente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.cliente_codigocliente_seq', 6, true);
          public          postgres    false    222            k           0    0    horariolaboral_idhorario_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.horariolaboral_idhorario_seq', 4, true);
          public          postgres    false    226            l           0    0    lineaproducto_idlinea_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.lineaproducto_idlinea_seq', 9, true);
          public          postgres    false    228            m           0    0    proveedores_idproveedores_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.proveedores_idproveedores_seq', 5, true);
          public          postgres    false    230            n           0    0    reportes_idreporte_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.reportes_idreporte_seq', 1, false);
          public          postgres    false    232            o           0    0 )   resolucionfactura_idresolucionfactura_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.resolucionfactura_idresolucionfactura_seq', 1, true);
          public          postgres    false    234            p           0    0    rol_idrol_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rol_idrol_seq', 2, true);
          public          postgres    false    236            q           0    0    sublineaproducto_idsublinea_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.sublineaproducto_idsublinea_seq', 25, true);
          public          postgres    false    238            r           0    0 !   tipodocumento_codigodocumento_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.tipodocumento_codigodocumento_seq', 2, true);
          public          postgres    false    240            s           0    0 !   tipoidentidad_idtipoidentidad_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.tipoidentidad_idtipoidentidad_seq', 4, true);
          public          postgres    false    242            t           0    0    turnocaja_idturnocaja_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.turnocaja_idturnocaja_seq', 15, true);
          public          postgres    false    244            u           0    0    usuario_idusuario_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 4, true);
          public          postgres    false    246            ?           2606    16405    articulo pk_articulo 
   CONSTRAINT     ^   ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT pk_articulo PRIMARY KEY (codigoarticulo);
 >   ALTER TABLE ONLY public.articulo DROP CONSTRAINT pk_articulo;
       public            postgres    false    215            ?           2606    16414    caja pk_caja 
   CONSTRAINT     R   ALTER TABLE ONLY public.caja
    ADD CONSTRAINT pk_caja PRIMARY KEY (codigocaja);
 6   ALTER TABLE ONLY public.caja DROP CONSTRAINT pk_caja;
       public            postgres    false    217            ?           2606    16421    cargos pk_cargos 
   CONSTRAINT     S   ALTER TABLE ONLY public.cargos
    ADD CONSTRAINT pk_cargos PRIMARY KEY (idcargo);
 :   ALTER TABLE ONLY public.cargos DROP CONSTRAINT pk_cargos;
       public            postgres    false    219            ?           2606    16428    ciudad pk_ciudad 
   CONSTRAINT     X   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT pk_ciudad PRIMARY KEY (codigociudad);
 :   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT pk_ciudad;
       public            postgres    false    221            ?           2606    16435    cliente pk_cliente 
   CONSTRAINT     [   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (codigocliente);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT pk_cliente;
       public            postgres    false    223            ?           2606    16442    detalleventa pk_detalleventa 
   CONSTRAINT     w   ALTER TABLE ONLY public.detalleventa
    ADD CONSTRAINT pk_detalleventa PRIMARY KEY (numerodocumento, codigoarticulo);
 F   ALTER TABLE ONLY public.detalleventa DROP CONSTRAINT pk_detalleventa;
       public            postgres    false    224    224            ?           2606    16449    factura pk_factura 
   CONSTRAINT     ]   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT pk_factura PRIMARY KEY (numerodocumento);
 <   ALTER TABLE ONLY public.factura DROP CONSTRAINT pk_factura;
       public            postgres    false    225            ?           2606    16461     horariolaboral pk_horariolaboral 
   CONSTRAINT     e   ALTER TABLE ONLY public.horariolaboral
    ADD CONSTRAINT pk_horariolaboral PRIMARY KEY (idhorario);
 J   ALTER TABLE ONLY public.horariolaboral DROP CONSTRAINT pk_horariolaboral;
       public            postgres    false    227            ?           2606    16468    lineaproducto pk_lineaproducto 
   CONSTRAINT     a   ALTER TABLE ONLY public.lineaproducto
    ADD CONSTRAINT pk_lineaproducto PRIMARY KEY (idlinea);
 H   ALTER TABLE ONLY public.lineaproducto DROP CONSTRAINT pk_lineaproducto;
       public            postgres    false    229            ?           2606    16475    proveedores pk_proveedores 
   CONSTRAINT     c   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT pk_proveedores PRIMARY KEY (idproveedores);
 D   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT pk_proveedores;
       public            postgres    false    231            ?           2606    16483    reportes pk_reportes 
   CONSTRAINT     Y   ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT pk_reportes PRIMARY KEY (idreporte);
 >   ALTER TABLE ONLY public.reportes DROP CONSTRAINT pk_reportes;
       public            postgres    false    233            ?           2606    16491 &   resolucionfactura pk_resolucionfactura 
   CONSTRAINT     u   ALTER TABLE ONLY public.resolucionfactura
    ADD CONSTRAINT pk_resolucionfactura PRIMARY KEY (idresolucionfactura);
 P   ALTER TABLE ONLY public.resolucionfactura DROP CONSTRAINT pk_resolucionfactura;
       public            postgres    false    235            ?           2606    16498 
   rol pk_rol 
   CONSTRAINT     K   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT pk_rol PRIMARY KEY (idrol);
 4   ALTER TABLE ONLY public.rol DROP CONSTRAINT pk_rol;
       public            postgres    false    237            ?           2606    16505 $   sublineaproducto pk_sublineaproducto 
   CONSTRAINT     j   ALTER TABLE ONLY public.sublineaproducto
    ADD CONSTRAINT pk_sublineaproducto PRIMARY KEY (idsublinea);
 N   ALTER TABLE ONLY public.sublineaproducto DROP CONSTRAINT pk_sublineaproducto;
       public            postgres    false    239            ?           2606    16513    tipodocumento pk_tipodocumento 
   CONSTRAINT     i   ALTER TABLE ONLY public.tipodocumento
    ADD CONSTRAINT pk_tipodocumento PRIMARY KEY (codigodocumento);
 H   ALTER TABLE ONLY public.tipodocumento DROP CONSTRAINT pk_tipodocumento;
       public            postgres    false    241            ?           2606    16520    tipoidentidad pk_tipoidentidad 
   CONSTRAINT     i   ALTER TABLE ONLY public.tipoidentidad
    ADD CONSTRAINT pk_tipoidentidad PRIMARY KEY (idtipoidentidad);
 H   ALTER TABLE ONLY public.tipoidentidad DROP CONSTRAINT pk_tipoidentidad;
       public            postgres    false    243            ?           2606    16527    turnocaja pk_turnocaja 
   CONSTRAINT     ]   ALTER TABLE ONLY public.turnocaja
    ADD CONSTRAINT pk_turnocaja PRIMARY KEY (idturnocaja);
 @   ALTER TABLE ONLY public.turnocaja DROP CONSTRAINT pk_turnocaja;
       public            postgres    false    245            ?           2606    16536    usuario pk_usuario 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (idusuario);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT pk_usuario;
       public            postgres    false    247            ?           1259    16406    fk_articulo_proveedores1_idx    INDEX     Z   CREATE INDEX fk_articulo_proveedores1_idx ON public.articulo USING btree (idproveedores);
 0   DROP INDEX public.fk_articulo_proveedores1_idx;
       public            postgres    false    215            ?           1259    16407 !   fk_articulo_sublineaproducto1_idx    INDEX     \   CREATE INDEX fk_articulo_sublineaproducto1_idx ON public.articulo USING btree (idsublinea);
 5   DROP INDEX public.fk_articulo_sublineaproducto1_idx;
       public            postgres    false    215            ?           1259    16437    fk_cliente_ciudad1_idx    INDEX     R   CREATE INDEX fk_cliente_ciudad1_idx ON public.cliente USING btree (codigociudad);
 *   DROP INDEX public.fk_cliente_ciudad1_idx;
       public            postgres    false    223            ?           1259    16436    fk_cliente_tipoidentidad1_idx    INDEX     \   CREATE INDEX fk_cliente_tipoidentidad1_idx ON public.cliente USING btree (idtipoidentidad);
 1   DROP INDEX public.fk_cliente_tipoidentidad1_idx;
       public            postgres    false    223            ?           1259    16528    fk_controlcaja_caja1_idx    INDEX     Q   CREATE INDEX fk_controlcaja_caja1_idx ON public.turnocaja USING btree (codcaja);
 ,   DROP INDEX public.fk_controlcaja_caja1_idx;
       public            postgres    false    245            ?           1259    16529    fk_controlcaja_usuario1_idx    INDEX     V   CREATE INDEX fk_controlcaja_usuario1_idx ON public.turnocaja USING btree (idusuario);
 /   DROP INDEX public.fk_controlcaja_usuario1_idx;
       public            postgres    false    245            ?           1259    16444    fk_detalleventa_articulo1_idx    INDEX     `   CREATE INDEX fk_detalleventa_articulo1_idx ON public.detalleventa USING btree (codigoarticulo);
 1   DROP INDEX public.fk_detalleventa_articulo1_idx;
       public            postgres    false    224            ?           1259    16443    fk_detalleventa_factura1_idx    INDEX     `   CREATE INDEX fk_detalleventa_factura1_idx ON public.detalleventa USING btree (numerodocumento);
 0   DROP INDEX public.fk_detalleventa_factura1_idx;
       public            postgres    false    224            ?           1259    16538    fk_empleados_cargos1_idx    INDEX     O   CREATE INDEX fk_empleados_cargos1_idx ON public.usuario USING btree (idcargo);
 ,   DROP INDEX public.fk_empleados_cargos1_idx;
       public            postgres    false    247            ?           1259    16537    fk_empleados_tipoidentidad1_idx    INDEX     ^   CREATE INDEX fk_empleados_tipoidentidad1_idx ON public.usuario USING btree (idtipoidentidad);
 3   DROP INDEX public.fk_empleados_tipoidentidad1_idx;
       public            postgres    false    247            ?           1259    16451    fk_factura_caja1_idx    INDEX     N   CREATE INDEX fk_factura_caja1_idx ON public.factura USING btree (codigocaja);
 (   DROP INDEX public.fk_factura_caja1_idx;
       public            postgres    false    225            ?           1259    16452    fk_factura_cliente1_idx    INDEX     T   CREATE INDEX fk_factura_cliente1_idx ON public.factura USING btree (codigocliente);
 +   DROP INDEX public.fk_factura_cliente1_idx;
       public            postgres    false    225            ?           1259    16454    fk_factura_empleados1_idx    INDEX     R   CREATE INDEX fk_factura_empleados1_idx ON public.factura USING btree (idusuario);
 -   DROP INDEX public.fk_factura_empleados1_idx;
       public            postgres    false    225            ?           1259    16453 !   fk_factura_resolucionfactura1_idx    INDEX     d   CREATE INDEX fk_factura_resolucionfactura1_idx ON public.factura USING btree (idresolucionfactura);
 5   DROP INDEX public.fk_factura_resolucionfactura1_idx;
       public            postgres    false    225            ?           1259    16450    fk_factura_tipodocumento1_idx    INDEX     \   CREATE INDEX fk_factura_tipodocumento1_idx ON public.factura USING btree (codigodocumento);
 1   DROP INDEX public.fk_factura_tipodocumento1_idx;
       public            postgres    false    225            ?           1259    16476    fk_proveedores_ciudad_idx    INDEX     Y   CREATE INDEX fk_proveedores_ciudad_idx ON public.proveedores USING btree (codigociudad);
 -   DROP INDEX public.fk_proveedores_ciudad_idx;
       public            postgres    false    231            ?           1259    16484    fk_reportes_empleados1_idx    INDEX     T   CREATE INDEX fk_reportes_empleados1_idx ON public.reportes USING btree (idusuario);
 .   DROP INDEX public.fk_reportes_empleados1_idx;
       public            postgres    false    233            ?           1259    16506 &   fk_sublineaproducto_lineaproducto1_idx    INDEX     f   CREATE INDEX fk_sublineaproducto_lineaproducto1_idx ON public.sublineaproducto USING btree (idlinea);
 :   DROP INDEX public.fk_sublineaproducto_lineaproducto1_idx;
       public            postgres    false    239            ?           1259    16540    fk_usuario_horariolaboral1_idx    INDEX     W   CREATE INDEX fk_usuario_horariolaboral1_idx ON public.usuario USING btree (idhorario);
 2   DROP INDEX public.fk_usuario_horariolaboral1_idx;
       public            postgres    false    247            ?           1259    16539    fk_usuario_rol1_idx    INDEX     H   CREATE INDEX fk_usuario_rol1_idx ON public.usuario USING btree (idrol);
 '   DROP INDEX public.fk_usuario_rol1_idx;
       public            postgres    false    247                        2606    16541 !   articulo fk_articulo_proveedores1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT fk_articulo_proveedores1 FOREIGN KEY (idproveedores) REFERENCES public.proveedores(idproveedores) ON UPDATE RESTRICT ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.articulo DROP CONSTRAINT fk_articulo_proveedores1;
       public          postgres    false    3303    231    215                       2606    16546 &   articulo fk_articulo_sublineaproducto1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT fk_articulo_sublineaproducto1 FOREIGN KEY (idsublinea) REFERENCES public.sublineaproducto(idsublinea);
 P   ALTER TABLE ONLY public.articulo DROP CONSTRAINT fk_articulo_sublineaproducto1;
       public          postgres    false    239    3313    215                       2606    16551    cliente fk_cliente_ciudad1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cliente_ciudad1 FOREIGN KEY (codigociudad) REFERENCES public.ciudad(codigociudad);
 D   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_cliente_ciudad1;
       public          postgres    false    223    221    3281                       2606    16556 !   cliente fk_cliente_tipoidentidad1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cliente_tipoidentidad1 FOREIGN KEY (idtipoidentidad) REFERENCES public.tipoidentidad(idtipoidentidad);
 K   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_cliente_tipoidentidad1;
       public          postgres    false    223    3317    243                       2606    16611    turnocaja fk_controlcaja_caja1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.turnocaja
    ADD CONSTRAINT fk_controlcaja_caja1 FOREIGN KEY (codcaja) REFERENCES public.caja(codigocaja);
 H   ALTER TABLE ONLY public.turnocaja DROP CONSTRAINT fk_controlcaja_caja1;
       public          postgres    false    3277    217    245                       2606    16616 !   turnocaja fk_controlcaja_usuario1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.turnocaja
    ADD CONSTRAINT fk_controlcaja_usuario1 FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 K   ALTER TABLE ONLY public.turnocaja DROP CONSTRAINT fk_controlcaja_usuario1;
       public          postgres    false    245    3327    247                       2606    16561 &   detalleventa fk_detalleventa_articulo1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detalleventa
    ADD CONSTRAINT fk_detalleventa_articulo1 FOREIGN KEY (codigoarticulo) REFERENCES public.articulo(codigoarticulo);
 P   ALTER TABLE ONLY public.detalleventa DROP CONSTRAINT fk_detalleventa_articulo1;
       public          postgres    false    3275    215    224                       2606    16566 %   detalleventa fk_detalleventa_factura1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detalleventa
    ADD CONSTRAINT fk_detalleventa_factura1 FOREIGN KEY (numerodocumento) REFERENCES public.factura(numerodocumento);
 O   ALTER TABLE ONLY public.detalleventa DROP CONSTRAINT fk_detalleventa_factura1;
       public          postgres    false    3296    225    224                       2606    16621    usuario fk_empleados_cargos1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_empleados_cargos1 FOREIGN KEY (idcargo) REFERENCES public.cargos(idcargo);
 F   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_empleados_cargos1;
       public          postgres    false    247    219    3279                       2606    16626 #   usuario fk_empleados_tipoidentidad1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_empleados_tipoidentidad1 FOREIGN KEY (idtipoidentidad) REFERENCES public.tipoidentidad(idtipoidentidad);
 M   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_empleados_tipoidentidad1;
       public          postgres    false    243    3317    247                       2606    16571    factura fk_factura_caja1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT fk_factura_caja1 FOREIGN KEY (codigocaja) REFERENCES public.caja(codigocaja);
 B   ALTER TABLE ONLY public.factura DROP CONSTRAINT fk_factura_caja1;
       public          postgres    false    225    217    3277                       2606    16576    factura fk_factura_cliente1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT fk_factura_cliente1 FOREIGN KEY (codigocliente) REFERENCES public.cliente(codigocliente);
 E   ALTER TABLE ONLY public.factura DROP CONSTRAINT fk_factura_cliente1;
       public          postgres    false    223    225    3285                       2606    16581    factura fk_factura_empleados1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT fk_factura_empleados1 FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 G   ALTER TABLE ONLY public.factura DROP CONSTRAINT fk_factura_empleados1;
       public          postgres    false    247    225    3327            	           2606    16586 %   factura fk_factura_resolucionfactura1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT fk_factura_resolucionfactura1 FOREIGN KEY (idresolucionfactura) REFERENCES public.resolucionfactura(idresolucionfactura);
 O   ALTER TABLE ONLY public.factura DROP CONSTRAINT fk_factura_resolucionfactura1;
       public          postgres    false    3308    225    235            
           2606    16591 !   factura fk_factura_tipodocumento1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT fk_factura_tipodocumento1 FOREIGN KEY (codigodocumento) REFERENCES public.tipodocumento(codigodocumento);
 K   ALTER TABLE ONLY public.factura DROP CONSTRAINT fk_factura_tipodocumento1;
       public          postgres    false    3315    241    225                       2606    16596 !   proveedores fk_proveedores_ciudad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT fk_proveedores_ciudad FOREIGN KEY (codigociudad) REFERENCES public.ciudad(codigociudad);
 K   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT fk_proveedores_ciudad;
       public          postgres    false    3281    221    231                       2606    16601    reportes fk_reportes_empleados1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT fk_reportes_empleados1 FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 I   ALTER TABLE ONLY public.reportes DROP CONSTRAINT fk_reportes_empleados1;
       public          postgres    false    247    233    3327                       2606    16606 3   sublineaproducto fk_sublineaproducto_lineaproducto1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sublineaproducto
    ADD CONSTRAINT fk_sublineaproducto_lineaproducto1 FOREIGN KEY (idlinea) REFERENCES public.lineaproducto(idlinea);
 ]   ALTER TABLE ONLY public.sublineaproducto DROP CONSTRAINT fk_sublineaproducto_lineaproducto1;
       public          postgres    false    229    239    3300                       2606    16631 "   usuario fk_usuario_horariolaboral1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_horariolaboral1 FOREIGN KEY (idhorario) REFERENCES public.horariolaboral(idhorario);
 L   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_usuario_horariolaboral1;
       public          postgres    false    247    227    3298                       2606    16636    usuario fk_usuario_rol1    FK CONSTRAINT     u   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_rol1 FOREIGN KEY (idrol) REFERENCES public.rol(idrol);
 A   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_usuario_rol1;
       public          postgres    false    3310    247    237            ?   ?  x?mRKn?0]?O1??wi+^?q?"5?M7S?)P?KIE?[??XGm$n??pF??3?zk~z?xo???L?q?2Y?5??V?P? 2b??Zj??M;?_??t2/?`uUjO;?}z?7?i???<?????c??٪?e?#J|?????5H???D[\??P'k?f??w?DG?[
?{{???Lk<ۓe?V????U?FX'?Y?4???wt?/?h??׀Ns?x??'??Ji????0R??I[?@??k??~???\??:q?O??Ƹ?p?F?n?qc?J	2㕩$t?%0y?R'ދv=-?0kR	???:?	&??????/-??K?1??c????S?;??Z?1?Ÿ????/??8?9&S??>_???)????y??#6w????n??y?o?????⃘????X.?>8? ?]?Vם?7      ?   E   x?344?t?+)JLIT(??K?,H??tN?JT0??222?%m?666FH???e?A????1z\\\ ???      ?   n   x?U?A
?0??+??@?????^?%??k????ׁ^rv??????06'Q?n?Lſ|?Ճ:\?2&??d?T?i???iݻ??p\?Å?^??6???s?}^.Z      ?   ?   x??;NAD??S?	˟pf?E?GD$?mkd???n??n?zU??3M?N3?????D?W??R1o^?yf????,????Ijj78J???+?V??SVE&}!^??^$??ab?sS3bl?PO??>?D?"?`??x?Ar??cLg?`???]?i??7
???8rmO?????0?E?Jl      ?   _  x?e?KN?0?דSX?:?ǯ8???vCY?.٘4TF?y??V???1qS!i??|???A@@TJi#$???m??>&? ??Ĝ*???	??ޅ?	??+?ԉ?ƅYױ???z?????8?J???|?6}?!?7_)?ڜS?k	??J?????9??v?n#?"?ZcQ???}??}ׄ%??9b..J?)R?JHE
?:_?4_?ͧF?/?ܢ?Mۼ?p?#?c??]??r?8? ?M?&+
???*}??l5z+??J[H??.8O>v??L?????{RT@ڐ?i??zj?l?$?R!?f?^???w\N?s???ݨ? +V2i@jA???U???<??,?????      ?   ?   x?=?K!D?p?N??x?s?s4??Ƥ>y??:	?= M;?YhP#??Qq4k#!???ɥ[Li4?U?ѬG?E5??-v6U?,??l?4s)*v?W{^?ůk6kԝ?g??+ƨ?W7?-ȯ?W'??n?=??F+?      ?   e   x?M???0?3??*v???=v?9JP?b??A#\B?G???r+w??4??[?:w?o9+#eݬ?m?C?????wSQ$???g?yNU}???      ?   M   x?3?40?20 "NC3(ñ ????(?3?ˈ??&m?)m?ihhe52?2?3S??R??&???P-FFP\2F??? ?{?      ?   ?   x?3?t-N.?,)-J??2?-??I-VHIU?O?L???s$???+?r򓳋??&???ɩ??E??h?M?FB?*|S?A:?8??32???b?9?ř@?ə?7?%-9}Js???2AF??qqq D1]      ?     x?]??j?0?????KmKnvK?.????2??MM?Hl??x?=?^lNR
??_?$B?jO&M?˴x?O ??m-*????{P?Ih	??9_5???	???? 9??J8?h[??l???d݄??c??!k????M?7?Tq?n9b/????2??ge$侘L_?%?ehf???S??3??>?o?{??eI??1i?$D??x????eR)b?????=^??ӌ????cY????CrI?????M???????wEQ???y?      ?      x?????? ? ?      ?   0   x?3?4400444?420??50?542?uLt?L#(3?+F??? ??l      ?   *   x?3?tL????,.)JL?/???2?t?-?IrA?=... ??
v      ?     x?U?MN?0?דS? 5?m?4?nZ??BBb3r??+׶???3??
v~??όs?X??G ?CV????T	{?{?gP?A??c??U?V.?x#?>^??%?ʌ?S??~f????qOB?U???װ?????????2??)\Rޡ#?p-?????? ?h?gLn	(q@???"?8`H?,k???Ч??W???&???;	"??Jk?TGs	{
??i??qT?fs;????&?ul??6?b/V?t????Q?oQLNuo?Q?t?Kt?ݴ???,?~???      ?   &   x?3?tKL.)-J??2?t?/ɬJL???rc???? ? ?      ?   3   x?3?tNM)?I??2?H,N,?/*I??9C?<??Ng=W ???? (?
?      ?   ?   x?m?=N?0?k?\ h~<v2???r???Y:??s0?<Vr?d}?3y?-?ZL?Vi??E$mO?3D??????????z-/??Z??W1?Kj??:)Ί???*?@8[4J?!X	V? +??????zJ'????!lY+)?l???l??F@????J????`?G3m??[?ݡ????j
???wnC??]??N\ӹ[??T}?(????N=?G?6????;???o68>P?=?"????qY?/???@      ?     x?U??j?0 г???=,[N?ci?.?v?q??pmp????]?P0??e?1?9&8ŚC?
?\R*?Z?4?d?oX??DV#??{/????~)EAV??????y??؟o?w??N7?z?C??Xr??~\??y^;??2?zh??
?AЋ???F ?#;螞]?RC>G??Ԙ???xG?Y#n???Ӑ?!??K??^????}?????K?1?B?V?_?m{n?6???y???? ;ᄵ`,?x?|?t]??n?     