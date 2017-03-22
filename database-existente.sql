--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.13
-- Dumped by pg_dump version 9.3.13
-- Started on 2017-03-22 02:20:58 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1992 (class 1262 OID 139260)
-- Dependencies: 1991
-- Name: database_existente; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE database_existente IS 'Sequelize + Postgres';


--
-- TOC entry 1 (class 3079 OID 11791)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1995 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 139264)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE produto (
    id integer NOT NULL,
    descricao character varying(30),
    barra character varying(14),
    id_setor integer
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 139275)
-- Name: produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_id_seq OWNER TO postgres;

--
-- TOC entry 1996 (class 0 OID 0)
-- Dependencies: 174
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE produto_id_seq OWNED BY produto.id;


--
-- TOC entry 171 (class 1259 OID 139261)
-- Name: setor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE setor (
    id integer NOT NULL,
    descricao character varying(30)
);


ALTER TABLE public.setor OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 139267)
-- Name: setor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE setor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.setor_id_seq OWNER TO postgres;

--
-- TOC entry 1997 (class 0 OID 0)
-- Dependencies: 173
-- Name: setor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE setor_id_seq OWNED BY setor.id;


--
-- TOC entry 1870 (class 2604 OID 139277)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produto ALTER COLUMN id SET DEFAULT nextval('produto_id_seq'::regclass);


--
-- TOC entry 1869 (class 2604 OID 139269)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY setor ALTER COLUMN id SET DEFAULT nextval('setor_id_seq'::regclass);


--
-- TOC entry 1984 (class 0 OID 139264)
-- Dependencies: 172
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produto (id, descricao, barra, id_setor) FROM stdin;
\.


--
-- TOC entry 1998 (class 0 OID 0)
-- Dependencies: 174
-- Name: produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produto_id_seq', 1, false);


--
-- TOC entry 1983 (class 0 OID 139261)
-- Dependencies: 171
-- Data for Name: setor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY setor (id, descricao) FROM stdin;
\.


--
-- TOC entry 1999 (class 0 OID 0)
-- Dependencies: 173
-- Name: setor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('setor_id_seq', 1, false);


--
-- TOC entry 1874 (class 2606 OID 139282)
-- Name: id_produto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT id_produto PRIMARY KEY (id);


--
-- TOC entry 1872 (class 2606 OID 139274)
-- Name: id_setor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY setor
    ADD CONSTRAINT id_setor PRIMARY KEY (id);


--
-- TOC entry 1875 (class 2606 OID 139283)
-- Name: id_setor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT id_setor FOREIGN KEY (id_setor) REFERENCES setor(id);


--
-- TOC entry 1994 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-03-22 02:21:00 BRT

--
-- PostgreSQL database dump complete
--

