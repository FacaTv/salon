--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    "time" character varying(20),
    appointment_id integer NOT NULL,
    service_id integer,
    costumer_id integer,
    customer_id integer
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying(25),
    phone character varying(15)
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES ('1', 1, 1, NULL, 1);
INSERT INTO public.appointments VALUES ('12', 2, 3, NULL, 20);
INSERT INTO public.appointments VALUES ('12', 3, 1, NULL, 20);
INSERT INTO public.appointments VALUES ('1', 4, 1, NULL, 20);
INSERT INTO public.appointments VALUES ('12', 5, 1, NULL, 20);
INSERT INTO public.appointments VALUES ('5', 6, 2, NULL, 21);
INSERT INTO public.appointments VALUES ('12', 7, 2, NULL, 20);
INSERT INTO public.appointments VALUES ('12', 8, 1, NULL, 20);
INSERT INTO public.appointments VALUES ('2', 9, 3, NULL, 20);
INSERT INTO public.appointments VALUES ('12', 10, 3, NULL, 20);
INSERT INTO public.appointments VALUES ('3', 11, 3, NULL, 42);
INSERT INTO public.appointments VALUES ('12', 12, 1, NULL, 20);
INSERT INTO public.appointments VALUES ('13', 13, 1, NULL, 20);
INSERT INTO public.appointments VALUES ('1', 14, 1, NULL, 20);
INSERT INTO public.appointments VALUES ('10', 15, 3, NULL, 20);
INSERT INTO public.appointments VALUES ('2', 16, 3, NULL, 20);
INSERT INTO public.appointments VALUES ('12', 17, 1, NULL, 58);
INSERT INTO public.appointments VALUES ('1', 18, 3, NULL, 20);
INSERT INTO public.appointments VALUES ('2', 19, 1, NULL, 20);
INSERT INTO public.appointments VALUES ('2', 20, 2, NULL, 69);
INSERT INTO public.appointments VALUES ('2', 21, 2, NULL, 69);
INSERT INTO public.appointments VALUES ('2', 22, 3, NULL, 20);
INSERT INTO public.appointments VALUES ('', 25, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('', 136, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('2', 30, 3, NULL, 20);
INSERT INTO public.appointments VALUES ('', 143, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('2', 36, 3, NULL, 90);
INSERT INTO public.appointments VALUES ('asd', 37, 3, NULL, 58);
INSERT INTO public.appointments VALUES ('./salon.shj', 38, 3, NULL, 58);
INSERT INTO public.appointments VALUES ('', 150, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('1', 75, 1, NULL, 20);
INSERT INTO public.appointments VALUES ('', 78, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('3', 83, 1, NULL, 20);
INSERT INTO public.appointments VALUES ('', 86, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('2', 91, 2, NULL, 20);
INSERT INTO public.appointments VALUES ('', 94, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('', 101, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('', 108, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('', 115, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('', 122, 1, NULL, 5);
INSERT INTO public.appointments VALUES ('', 129, 1, NULL, 5);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (1, 'Faca', '123');
INSERT INTO public.customers VALUES (2, 'Faca', '123-4567');
INSERT INTO public.customers VALUES (69, 'lor', '555');
INSERT INTO public.customers VALUES (5, '', '');
INSERT INTO public.customers VALUES (9, 'Faca', '1234');
INSERT INTO public.customers VALUES (20, 'Test', '321');
INSERT INTO public.customers VALUES (21, 'jordan', '45');
INSERT INTO public.customers VALUES (90, 'asd', '[A');
INSERT INTO public.customers VALUES (42, 'jor', '12');
INSERT INTO public.customers VALUES (58, 'gUY', '312');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'Cut');
INSERT INTO public.services VALUES (2, 'Hair implant');
INSERT INTO public.services VALUES (3, 'Color');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 220, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 237, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 3, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments fk_costumer_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk_costumer_id FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments fk_service_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk_service_id FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

