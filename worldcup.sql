--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(15) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(15) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (225, 2018, 'Final', 341, 342, 4, 2);
INSERT INTO public.games VALUES (226, 2018, 'Third Place', 343, 344, 2, 0);
INSERT INTO public.games VALUES (227, 2018, 'Semi-Final', 342, 344, 2, 1);
INSERT INTO public.games VALUES (228, 2018, 'Semi-Final', 341, 343, 1, 0);
INSERT INTO public.games VALUES (229, 2018, 'Quarter-Final', 342, 345, 3, 2);
INSERT INTO public.games VALUES (230, 2018, 'Quarter-Final', 344, 346, 2, 0);
INSERT INTO public.games VALUES (231, 2018, 'Quarter-Final', 343, 347, 2, 1);
INSERT INTO public.games VALUES (232, 2018, 'Quarter-Final', 341, 348, 2, 0);
INSERT INTO public.games VALUES (233, 2018, 'Eighth-Final', 344, 349, 2, 1);
INSERT INTO public.games VALUES (234, 2018, 'Eighth-Final', 346, 350, 1, 0);
INSERT INTO public.games VALUES (235, 2018, 'Eighth-Final', 343, 351, 3, 2);
INSERT INTO public.games VALUES (236, 2018, 'Eighth-Final', 347, 352, 2, 0);
INSERT INTO public.games VALUES (237, 2018, 'Eighth-Final', 342, 353, 2, 1);
INSERT INTO public.games VALUES (238, 2018, 'Eighth-Final', 345, 354, 2, 1);
INSERT INTO public.games VALUES (239, 2018, 'Eighth-Final', 348, 355, 2, 1);
INSERT INTO public.games VALUES (240, 2018, 'Eighth-Final', 341, 356, 4, 3);
INSERT INTO public.games VALUES (241, 2014, 'Final', 357, 356, 1, 0);
INSERT INTO public.games VALUES (242, 2014, 'Third Place', 358, 347, 3, 0);
INSERT INTO public.games VALUES (243, 2014, 'Semi-Final', 356, 358, 1, 0);
INSERT INTO public.games VALUES (244, 2014, 'Semi-Final', 357, 347, 7, 1);
INSERT INTO public.games VALUES (245, 2014, 'Quarter-Final', 358, 359, 1, 0);
INSERT INTO public.games VALUES (246, 2014, 'Quarter-Final', 356, 343, 1, 0);
INSERT INTO public.games VALUES (247, 2014, 'Quarter-Final', 347, 349, 2, 1);
INSERT INTO public.games VALUES (248, 2014, 'Quarter-Final', 357, 341, 1, 0);
INSERT INTO public.games VALUES (249, 2014, 'Eighth-Final', 347, 360, 2, 1);
INSERT INTO public.games VALUES (250, 2014, 'Eighth-Final', 349, 348, 2, 0);
INSERT INTO public.games VALUES (251, 2014, 'Eighth-Final', 341, 361, 2, 0);
INSERT INTO public.games VALUES (252, 2014, 'Eighth-Final', 357, 362, 2, 1);
INSERT INTO public.games VALUES (253, 2014, 'Eighth-Final', 358, 352, 2, 1);
INSERT INTO public.games VALUES (254, 2014, 'Eighth-Final', 359, 363, 2, 1);
INSERT INTO public.games VALUES (255, 2014, 'Eighth-Final', 356, 350, 1, 0);
INSERT INTO public.games VALUES (256, 2014, 'Eighth-Final', 343, 364, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (341, 'France');
INSERT INTO public.teams VALUES (342, 'Croatia');
INSERT INTO public.teams VALUES (343, 'Belgium');
INSERT INTO public.teams VALUES (344, 'England');
INSERT INTO public.teams VALUES (345, 'Russia');
INSERT INTO public.teams VALUES (346, 'Sweden');
INSERT INTO public.teams VALUES (347, 'Brazil');
INSERT INTO public.teams VALUES (348, 'Uruguay');
INSERT INTO public.teams VALUES (349, 'Colombia');
INSERT INTO public.teams VALUES (350, 'Switzerland');
INSERT INTO public.teams VALUES (351, 'Japan');
INSERT INTO public.teams VALUES (352, 'Mexico');
INSERT INTO public.teams VALUES (353, 'Denmark');
INSERT INTO public.teams VALUES (354, 'Spain');
INSERT INTO public.teams VALUES (355, 'Portugal');
INSERT INTO public.teams VALUES (356, 'Argentina');
INSERT INTO public.teams VALUES (357, 'Germany');
INSERT INTO public.teams VALUES (358, 'Netherlands');
INSERT INTO public.teams VALUES (359, 'Costa Rica');
INSERT INTO public.teams VALUES (360, 'Chile');
INSERT INTO public.teams VALUES (361, 'Nigeria');
INSERT INTO public.teams VALUES (362, 'Algeria');
INSERT INTO public.teams VALUES (363, 'Greece');
INSERT INTO public.teams VALUES (364, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 256, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 364, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_key FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_key FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

