--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-03-10 20:09:55

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
-- TOC entry 200 (class 1259 OID 16507)
-- Name: Fitness; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Fitness" (
    "ID_fitness" integer NOT NULL,
    date_created timestamp without time zone,
    date_updated timestamp without time zone,
    data jsonb,
    latitude double precision,
    longitude double precision,
    name character(50),
    country character(2),
    main_image text,
    text character(3000),
    types character(50),
    popularity integer NOT NULL,
    "URL" text,
    "Source" character(1000)
);


ALTER TABLE public."Fitness" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16513)
-- Name: Fitness_ID_fitness_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Fitness_ID_fitness_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Fitness_ID_fitness_seq" OWNER TO postgres;

--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 201
-- Name: Fitness_ID_fitness_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Fitness_ID_fitness_seq" OWNED BY public."Fitness"."ID_fitness";


--
-- TOC entry 202 (class 1259 OID 16515)
-- Name: Fitness_popularity_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Fitness" ALTER COLUMN popularity ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Fitness_popularity_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 5
    CACHE 1
);


--
-- TOC entry 2853 (class 2604 OID 16517)
-- Name: Fitness ID_fitness; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fitness" ALTER COLUMN "ID_fitness" SET DEFAULT nextval('public."Fitness_ID_fitness_seq"'::regclass);


--
-- TOC entry 2986 (class 0 OID 16507)
-- Dependencies: 200
-- Data for Name: Fitness; Type: TABLE DATA; Schema: public; Owner: postgres
--

--COPY public."Fitness" ("ID_fitness", date_created, date_updated, data, latitude, longitude, name, country, main_image, text, types, popularity, "URL", "Source") FROM stdin;
--\.


--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 201
-- Name: Fitness_ID_fitness_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Fitness_ID_fitness_seq"', 1, false);


--
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 202
-- Name: Fitness_popularity_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Fitness_popularity_seq"', 1, false);


--
-- TOC entry 2855 (class 2606 OID 16519)
-- Name: Fitness Fitness_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fitness"
    ADD CONSTRAINT "Fitness_pkey" PRIMARY KEY ("ID_fitness");


-- Completed on 2021-03-10 20:09:55

--
-- PostgreSQL database dump complete
--

