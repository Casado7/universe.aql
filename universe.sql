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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(60),
    edad numeric,
    tiene_vida boolean,
    text text,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info (
    name character varying(60) NOT NULL,
    info_id integer NOT NULL,
    text text
);


ALTER TABLE public.info OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.info ALTER COLUMN info_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.info_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(60),
    distancia_planeta integer,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    tiene_vida boolean,
    edad numeric,
    text text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(60),
    distancia_galaxy integer,
    tiene_vida boolean,
    edad numeric,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    text text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(60),
    distancia_galaxy integer,
    tiene_vida boolean,
    edad numeric,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    text text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('galaxia1', 5, true, 'Johnn', 4, 1);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('galaxia2', 35, true, 'Jas', 5, 2);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('galaxia3', 312, true, 'Fred', 6, 3);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('galaxia4', 5, true, 'Johnn', 4, 4);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('galaxia5', 35, true, 'Jas', 5, 5);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('galaxia6', 312, true, 'Fred', 6, 6);


--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info OVERRIDING SYSTEM VALUE VALUES ('info1', 1, 'text');
INSERT INTO public.info OVERRIDING SYSTEM VALUE VALUES ('info2', 2, 'text');
INSERT INTO public.info OVERRIDING SYSTEM VALUE VALUES ('info3', 3, 'text');
INSERT INTO public.info OVERRIDING SYSTEM VALUE VALUES ('info4', 4, 'text');
INSERT INTO public.info OVERRIDING SYSTEM VALUE VALUES ('info5', 5, 'text');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon1', 5, 1, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon2', 5, 2, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon3', 5, 3, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon4', 5, 4, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon5', 5, 5, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon6', 5, 6, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon7', 5, 7, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon8', 5, 8, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon9', 5, 9, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon10', 5, 10, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon11', 5, 11, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon12', 5, 12, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon13', 5, 13, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon14', 5, 14, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon15', 5, 15, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon16', 5, 16, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon17', 5, 17, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon18', 5, 18, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon19', 5, 19, 1, true, 4343, 'text');
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES ('moon20', 5, 20, 1, true, 4343, 'text');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet1', 5, true, 4343, 1, 1, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet2', 5, true, 4343, 2, 2, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet3', 5, true, 4343, 3, 3, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet4', 5, true, 4343, 4, 4, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet5', 5, true, 4343, 5, 5, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet6', 5, true, 4343, 6, 6, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet7', 5, true, 4343, 1, 7, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet8', 5, true, 4343, 2, 8, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet9', 5, true, 4343, 3, 9, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet10', 5, true, 4343, 4, 10, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet11', 5, true, 4343, 5, 11, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet12', 5, true, 4343, 6, 12, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet13', 5, true, 4343, 1, 13, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet14', 5, true, 4343, 1, 14, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet15', 5, true, 4343, 1, 15, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet16', 5, true, 4343, 1, 16, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet17', 5, true, 4343, 1, 17, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet18', 5, true, 4343, 1, 18, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet19', 5, true, 4343, 1, 19, 'text');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('planet20', 5, true, 4343, 1, 20, 'text');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star1', 5, true, 4343, 1, 1, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star2', 5, true, 4343, 2, 2, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star3', 5, true, 4343, 3, 3, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star4', 5, true, 4343, 4, 4, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star5', 5, true, 4343, 5, 5, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star6', 5, true, 4343, 6, 6, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star7', 5, true, 4343, 1, 7, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star8', 5, true, 4343, 2, 8, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star9', 5, true, 4343, 3, 9, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star10', 5, true, 4343, 4, 10, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star11', 5, true, 4343, 5, 11, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star12', 5, true, 4343, 6, 12, 'text');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES ('star13', 5, true, 4343, 1, 13, 'text');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_info_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: info info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_name_key UNIQUE (name);


--
-- Name: info info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_pkey PRIMARY KEY (info_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) NOT VALID;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) NOT VALID;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

