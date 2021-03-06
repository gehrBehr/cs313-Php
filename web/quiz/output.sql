--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2 (Ubuntu 10.2-1.pgdg14.04+1)
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: choices; Type: TABLE; Schema: public; Owner: enotmlbmyokuni
--

CREATE TABLE choices (
    id integer NOT NULL,
    question_number integer NOT NULL,
    is_correct boolean DEFAULT false,
    answer_text text NOT NULL
);


ALTER TABLE choices OWNER TO enotmlbmyokuni;

--
-- Name: choices_id_seq; Type: SEQUENCE; Schema: public; Owner: enotmlbmyokuni
--

CREATE SEQUENCE choices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE choices_id_seq OWNER TO enotmlbmyokuni;

--
-- Name: choices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: enotmlbmyokuni
--

ALTER SEQUENCE choices_id_seq OWNED BY choices.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: enotmlbmyokuni
--

CREATE TABLE questions (
    id integer NOT NULL,
    question_number integer NOT NULL,
    points_per integer NOT NULL,
    question_text text NOT NULL
);


ALTER TABLE questions OWNER TO enotmlbmyokuni;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: enotmlbmyokuni
--

CREATE SEQUENCE questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE questions_id_seq OWNER TO enotmlbmyokuni;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: enotmlbmyokuni
--

ALTER SEQUENCE questions_id_seq OWNED BY questions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: enotmlbmyokuni
--

CREATE TABLE users (
    id integer NOT NULL,
    username character varying(100) NOT NULL,
    pass character varying(250) NOT NULL,
    score integer
);


ALTER TABLE users OWNER TO enotmlbmyokuni;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: enotmlbmyokuni
--

CREATE SEQUENCE users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO enotmlbmyokuni;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: enotmlbmyokuni
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: choices id; Type: DEFAULT; Schema: public; Owner: enotmlbmyokuni
--

ALTER TABLE ONLY choices ALTER COLUMN id SET DEFAULT nextval('choices_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: enotmlbmyokuni
--

ALTER TABLE ONLY questions ALTER COLUMN id SET DEFAULT nextval('questions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: enotmlbmyokuni
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: choices; Type: TABLE DATA; Schema: public; Owner: enotmlbmyokuni
--

COPY choices (id, question_number, is_correct, answer_text) FROM stdin;
1	1	f	12 meters
2	1	t	18 meters
3	2	t	It cannot be answered.
4	2	f	wind
5	2	f	walrus
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: enotmlbmyokuni
--

COPY questions (id, question_number, points_per, question_text) FROM stdin;
1	1	1	How much wood could a wood chuck chuck if a wood chuck could chuck wood?
2	2	1	What is the sound of a one handed clap?
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: enotmlbmyokuni
--

COPY users (id, username, pass, score) FROM stdin;
1	juan	$2y$10$v9qG.rsM2aCEe3ob1NOcr.RCPwQDOaiiYxfGAHBdMN565f3DmPX/e	0
\.


--
-- Name: choices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: enotmlbmyokuni
--

SELECT pg_catalog.setval('choices_id_seq', 5, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: enotmlbmyokuni
--

SELECT pg_catalog.setval('questions_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: enotmlbmyokuni
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Name: choices choices_pkey; Type: CONSTRAINT; Schema: public; Owner: enotmlbmyokuni
--

ALTER TABLE ONLY choices
    ADD CONSTRAINT choices_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: enotmlbmyokuni
--

ALTER TABLE ONLY questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: questions questions_question_number_key; Type: CONSTRAINT; Schema: public; Owner: enotmlbmyokuni
--

ALTER TABLE ONLY questions
    ADD CONSTRAINT questions_question_number_key UNIQUE (question_number);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: enotmlbmyokuni
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: enotmlbmyokuni
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: choices choices_question_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: enotmlbmyokuni
--

ALTER TABLE ONLY choices
    ADD CONSTRAINT choices_question_number_fkey FOREIGN KEY (question_number) REFERENCES questions(question_number) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: enotmlbmyokuni
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO enotmlbmyokuni;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO enotmlbmyokuni;


--
-- PostgreSQL database dump complete
--

