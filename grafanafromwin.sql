--
-- grafana_newQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _docs_tags; Type: TABLE; Schema: public; Owner: grafana_new
--

CREATE TABLE public._docs_tags (
    doc_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public._docs_tags OWNER TO grafana_new;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: grafana_new
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    summary text NOT NULL,
    date timestamp without time zone NOT NULL,
    last_edit timestamp without time zone,
    url text NOT NULL,
    language smallint NOT NULL,
    source smallint NOT NULL
);


ALTER TABLE public.articles OWNER TO grafana_new;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana_new
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_id_seq OWNER TO grafana_new;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana_new
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: grafana_new
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.tags OWNER TO grafana_new;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana_new
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tags_id_seq OWNER TO grafana_new;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana_new
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: grafana_new
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: grafana_new
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Data for Name: _docs_tags; Type: TABLE DATA; Schema: public; Owner: grafana_new
--

COPY public._docs_tags (doc_id, tag_id) FROM stdin;
1	6
1	5
2	5
2	8
3	9
3	10
3	2
4	7
4	2
4	4
5	9
6	5
6	8
6	10
7	9
8	4
8	10
8	7
9	8
10	9
10	5
11	8
11	10
12	2
12	5
13	10
13	5
13	4
14	2
15	9
15	10
15	1
16	9
16	3
16	5
17	2
18	4
18	6
18	10
19	8
19	4
20	6
21	4
22	2
22	1
23	9
24	6
24	1
24	5
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: grafana_new
--

COPY public.articles (id, summary, date, last_edit, url, language, source) FROM stdin;
1	ЏҐаў п ­®ў®бвм	2024-03-01 10:00:00	2024-03-02 12:00:00	https://news.com/article1	1	2
2	‚в®а п ­®ў®бвм	2024-03-02 11:00:00	2024-03-02 13:30:00	https://news.com/article2	2	1
3	’аҐвмп ­®ў®бвм	2024-03-03 09:15:00	\N	https://news.com/article3	0	3
4	Ќ®ў®бвм 4	2024-03-16 09:36:51	2024-03-22 01:49:43	https://news.com/article4	0	2
5	Ќ®ў®бвм 5	2024-03-05 17:09:05	\N	https://news.com/article5	0	3
6	Ќ®ў®бвм 6	2024-03-18 01:25:24	\N	https://news.com/article6	0	3
7	Ќ®ў®бвм 7	2024-03-04 06:11:40	2024-03-09 23:39:00	https://news.com/article7	0	3
8	Ќ®ў®бвм 8	2024-03-15 17:47:57	\N	https://news.com/article8	1	2
9	Ќ®ў®бвм 9	2024-03-10 19:40:28	2024-03-18 04:53:39	https://news.com/article9	1	3
10	Ќ®ў®бвм 10	2024-03-15 23:40:40	\N	https://news.com/article10	1	1
11	Ќ®ў®бвм 11	2024-03-13 03:32:20	2024-03-07 23:23:19	https://news.com/article11	1	2
12	Ќ®ў®бвм 12	2024-03-04 00:03:20	\N	https://news.com/article12	2	2
13	Ќ®ў®бвм 13	2024-03-13 18:41:20	2024-03-16 19:29:32	https://news.com/article13	1	1
14	Ќ®ў®бвм 14	2024-03-03 21:43:23	2024-03-06 03:23:53	https://news.com/article14	1	1
15	Ќ®ў®бвм 15	2024-03-19 18:46:47	\N	https://news.com/article15	2	2
16	Ќ®ў®бвм 16	2024-03-08 04:24:55	2024-03-16 12:37:00	https://news.com/article16	1	1
17	Ќ®ў®бвм 17	2024-03-20 16:28:33	\N	https://news.com/article17	1	2
18	Ќ®ў®бвм 18	2024-03-06 14:42:05	2024-03-14 15:18:38	https://news.com/article18	1	2
19	Ќ®ў®бвм 19	2024-03-11 05:14:12	2024-03-06 12:44:11	https://news.com/article19	0	2
20	Ќ®ў®бвм 20	2024-03-22 19:51:14	2024-03-12 17:51:00	https://news.com/article20	2	2
21	Ќ®ў®бвм 21	2024-03-20 07:42:49	2024-03-17 16:10:07	https://news.com/article21	0	1
22	Ќ®ў®бвм 22	2024-03-03 15:27:04	2024-03-01 02:44:04	https://news.com/article22	1	2
23	Ќ®ў®бвм 23	2024-03-05 17:03:59	2024-03-03 05:49:36	https://news.com/article23	1	3
24	—Ґвўсав п ­®ў®бвм	2024-03-05 08:45:00	2024-03-04 14:20:00	https://news.com/article4	1	0
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: grafana_new
--

COPY public.tags (id, name) FROM stdin;
1	Џ®«ЁвЁЄ 
2	ќЄ®­®¬ЁЄ 
3	’Ґе­®«®ЈЁЁ
4	‘Ї®ав
5	ЉаҐ¤Ёв
6	IT
7	‡ аЇ« вл
8	ЉЁЎҐаЎҐ§®Ї б­®бвм
9	”гвЎ®«
10	‘ЃЏ
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana_new
--

SELECT pg_catalog.setval('public.articles_id_seq', 24, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana_new
--

SELECT pg_catalog.setval('public.tags_id_seq', 10, true);


--
-- Name: _docs_tags _docs_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: grafana_new
--

ALTER TABLE ONLY public._docs_tags
    ADD CONSTRAINT _docs_tags_pkey PRIMARY KEY (doc_id, tag_id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: grafana_new
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: tags tags_name_key; Type: CONSTRAINT; Schema: public; Owner: grafana_new
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_name_key UNIQUE (name);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: grafana_new
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: _docs_tags _docs_tags_doc_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grafana_new
--

ALTER TABLE ONLY public._docs_tags
    ADD CONSTRAINT _docs_tags_doc_id_fkey FOREIGN KEY (doc_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: _docs_tags _docs_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grafana_new
--

ALTER TABLE ONLY public._docs_tags
    ADD CONSTRAINT _docs_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO grafana_new;


--
-- Name: TABLE _docs_tags; Type: ACL; Schema: public; Owner: grafana_new
--

GRANT ALL ON TABLE public._docs_tags TO grafana_new;


--
-- Name: TABLE articles; Type: ACL; Schema: public; Owner: grafana_new
--

GRANT ALL ON TABLE public.articles TO grafana_new;


--
-- Name: SEQUENCE articles_id_seq; Type: ACL; Schema: public; Owner: grafana_new
--

GRANT ALL ON SEQUENCE public.articles_id_seq TO grafana_new;


--
-- Name: TABLE tags; Type: ACL; Schema: public; Owner: grafana_new
--

GRANT ALL ON TABLE public.tags TO grafana_new;


--
-- Name: SEQUENCE tags_id_seq; Type: ACL; Schema: public; Owner: grafana_new
--

GRANT ALL ON SEQUENCE public.tags_id_seq TO grafana_new;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: grafana_new
--

ALTER DEFAULT PRIVILEGES FOR ROLE grafana_new IN SCHEMA public GRANT ALL ON SEQUENCES TO grafana_new;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: grafana_new
--

ALTER DEFAULT PRIVILEGES FOR ROLE grafana_new IN SCHEMA public GRANT ALL ON FUNCTIONS TO grafana_new;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: grafana_new
--

ALTER DEFAULT PRIVILEGES FOR ROLE grafana_new IN SCHEMA public GRANT ALL ON TABLES TO grafana_new;


--
-- grafana_newQL database dump complete
--

