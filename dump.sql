--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: fantasy_data; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.fantasy_data (
    "position" text,
    team_name text,
    passes text,
    player_name text,
    games_played integer,
    fantasy_points_overall integer,
    players_vbd integer,
    average_points double precision
);


ALTER TABLE public.fantasy_data OWNER TO sulu;

--
-- Name: fantasy_data_complete; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.fantasy_data_complete (
    name character varying(255),
    team character varying(255),
    points_forecasted integer,
    difference_forecasted integer,
    team_name text,
    player_name text,
    games_played integer,
    fantasy_points_overall integer,
    players_vbd integer,
    average_points double precision
);


ALTER TABLE public.fantasy_data_complete OWNER TO sulu;

--
-- Name: fantasy_data_complete_copy; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.fantasy_data_complete_copy (
    name character varying(255),
    team character varying(255),
    points_forecasted integer,
    difference_forecasted integer,
    team_name text,
    player_name text,
    games_played integer,
    fantasy_points_overall integer,
    players_vbd integer,
    average_points double precision
);


ALTER TABLE public.fantasy_data_complete_copy OWNER TO sulu;

--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: mock_draft; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.mock_draft (
    id integer NOT NULL,
    rank integer,
    team text,
    player text
);


ALTER TABLE public.mock_draft OWNER TO sulu;

--
-- Name: mock_draft_copy; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.mock_draft_copy (
    id integer,
    rank integer,
    team text,
    player text
);


ALTER TABLE public.mock_draft_copy OWNER TO sulu;

--
-- Name: mock_draft_def; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.mock_draft_def (
    id integer NOT NULL,
    rank character varying(255),
    name character varying(255)
);


ALTER TABLE public.mock_draft_def OWNER TO sulu;

--
-- Name: mock_draft_def_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.mock_draft_def_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mock_draft_def_id_seq OWNER TO sulu;

--
-- Name: mock_draft_def_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.mock_draft_def_id_seq OWNED BY public.mock_draft_def.id;


--
-- Name: mock_draft_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.mock_draft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mock_draft_id_seq OWNER TO sulu;

--
-- Name: mock_draft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.mock_draft_id_seq OWNED BY public.mock_draft.id;


--
-- Name: mock_draft_kicker; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.mock_draft_kicker (
    id integer NOT NULL,
    rank character varying(255),
    name character varying(255)
);


ALTER TABLE public.mock_draft_kicker OWNER TO sulu;

--
-- Name: mock_draft_kicker_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.mock_draft_kicker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mock_draft_kicker_id_seq OWNER TO sulu;

--
-- Name: mock_draft_kicker_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.mock_draft_kicker_id_seq OWNED BY public.mock_draft_kicker.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: projections_all_diff; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.projections_all_diff (
    id integer NOT NULL,
    name character varying(255),
    team character varying(255),
    points_forecasted integer,
    difference_forecasted integer,
    "position" character varying(255)
);


ALTER TABLE public.projections_all_diff OWNER TO sulu;

--
-- Name: projections_all_diff_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.projections_all_diff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projections_all_diff_id_seq OWNER TO sulu;

--
-- Name: projections_all_diff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.projections_all_diff_id_seq OWNED BY public.projections_all_diff.id;


--
-- Name: projections_def; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.projections_def (
    id integer NOT NULL,
    name text,
    team text,
    points integer
);


ALTER TABLE public.projections_def OWNER TO sulu;

--
-- Name: projections_def_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.projections_def_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projections_def_id_seq OWNER TO sulu;

--
-- Name: projections_def_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.projections_def_id_seq OWNED BY public.projections_def.id;


--
-- Name: projections_ki; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.projections_ki (
    id integer NOT NULL,
    name text,
    team text,
    points integer
);


ALTER TABLE public.projections_ki OWNER TO sulu;

--
-- Name: projections_ki_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.projections_ki_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projections_ki_id_seq OWNER TO sulu;

--
-- Name: projections_ki_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.projections_ki_id_seq OWNED BY public.projections_ki.id;


--
-- Name: projections_qbs; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.projections_qbs (
    id integer NOT NULL,
    name text,
    team text,
    points integer
);


ALTER TABLE public.projections_qbs OWNER TO sulu;

--
-- Name: projections_qbs_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.projections_qbs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projections_qbs_id_seq OWNER TO sulu;

--
-- Name: projections_qbs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.projections_qbs_id_seq OWNED BY public.projections_qbs.id;


--
-- Name: projections_rbs; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.projections_rbs (
    id integer NOT NULL,
    name text,
    team text,
    points integer
);


ALTER TABLE public.projections_rbs OWNER TO sulu;

--
-- Name: projections_rbs_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.projections_rbs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projections_rbs_id_seq OWNER TO sulu;

--
-- Name: projections_rbs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.projections_rbs_id_seq OWNED BY public.projections_rbs.id;


--
-- Name: projections_te; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.projections_te (
    id integer NOT NULL,
    name text,
    team text,
    points integer
);


ALTER TABLE public.projections_te OWNER TO sulu;

--
-- Name: projections_te_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.projections_te_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projections_te_id_seq OWNER TO sulu;

--
-- Name: projections_te_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.projections_te_id_seq OWNED BY public.projections_te.id;


--
-- Name: projections_wrs; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.projections_wrs (
    id integer NOT NULL,
    name text,
    team text,
    points integer
);


ALTER TABLE public.projections_wrs OWNER TO sulu;

--
-- Name: projections_wrs_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.projections_wrs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projections_wrs_id_seq OWNER TO sulu;

--
-- Name: projections_wrs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.projections_wrs_id_seq OWNED BY public.projections_wrs.id;


--
-- Name: schedule; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.schedule (
    id integer NOT NULL,
    team character varying(255),
    week_1 character varying(255),
    week_2 character varying(255),
    week_3 character varying(255),
    week_4 character varying(255),
    week_5 character varying(255),
    week_6 character varying(255),
    week_7 character varying(255),
    week_8 character varying(255),
    week_9 character varying(255),
    week_10 character varying(255),
    week_11 character varying(255),
    week_12 character varying(255),
    week_13 character varying(255),
    week_14 character varying(255),
    week_15 character varying(255),
    week_16 character varying(255),
    week_17 character varying(255),
    week_18 character varying(255)
);


ALTER TABLE public.schedule OWNER TO sulu;

--
-- Name: schedule_copy; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.schedule_copy (
    id integer,
    team character varying(255),
    week_1 character varying(255),
    week_2 character varying(255),
    week_3 character varying(255),
    week_4 character varying(255),
    week_5 character varying(255),
    week_6 character varying(255),
    week_7 character varying(255),
    week_8 character varying(255),
    week_9 character varying(255),
    week_10 character varying(255),
    week_11 character varying(255),
    week_12 character varying(255),
    week_13 character varying(255),
    week_14 character varying(255),
    week_15 character varying(255),
    week_16 character varying(255),
    week_17 character varying(255),
    week_18 character varying(255)
);


ALTER TABLE public.schedule_copy OWNER TO sulu;

--
-- Name: schedule_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedule_id_seq OWNER TO sulu;

--
-- Name: schedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.schedule_id_seq OWNED BY public.schedule.id;


--
-- Name: team_assessment; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.team_assessment (
    id integer NOT NULL,
    team character varying(255),
    projected_strength character varying(255)
);


ALTER TABLE public.team_assessment OWNER TO sulu;

--
-- Name: team_assessment_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.team_assessment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_assessment_id_seq OWNER TO sulu;

--
-- Name: team_assessment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.team_assessment_id_seq OWNED BY public.team_assessment.id;


--
-- Name: teams_def_stats; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.teams_def_stats (
    id integer NOT NULL,
    team character varying(255),
    rush_yards_against character varying(255),
    pass_yards_against character varying(255)
);


ALTER TABLE public.teams_def_stats OWNER TO sulu;

--
-- Name: teams_def_stats_copy; Type: TABLE; Schema: public; Owner: sulu
--

CREATE TABLE public.teams_def_stats_copy (
    id integer,
    team character varying(255),
    rush_yards_against character varying(255),
    pass_yards_against character varying(255)
);


ALTER TABLE public.teams_def_stats_copy OWNER TO sulu;

--
-- Name: teams_def_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: sulu
--

CREATE SEQUENCE public.teams_def_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_def_stats_id_seq OWNER TO sulu;

--
-- Name: teams_def_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sulu
--

ALTER SEQUENCE public.teams_def_stats_id_seq OWNED BY public.teams_def_stats.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    username character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: mock_draft id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.mock_draft ALTER COLUMN id SET DEFAULT nextval('public.mock_draft_id_seq'::regclass);


--
-- Name: mock_draft_def id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.mock_draft_def ALTER COLUMN id SET DEFAULT nextval('public.mock_draft_def_id_seq'::regclass);


--
-- Name: mock_draft_kicker id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.mock_draft_kicker ALTER COLUMN id SET DEFAULT nextval('public.mock_draft_kicker_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: projections_all_diff id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_all_diff ALTER COLUMN id SET DEFAULT nextval('public.projections_all_diff_id_seq'::regclass);


--
-- Name: projections_def id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_def ALTER COLUMN id SET DEFAULT nextval('public.projections_def_id_seq'::regclass);


--
-- Name: projections_ki id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_ki ALTER COLUMN id SET DEFAULT nextval('public.projections_ki_id_seq'::regclass);


--
-- Name: projections_qbs id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_qbs ALTER COLUMN id SET DEFAULT nextval('public.projections_qbs_id_seq'::regclass);


--
-- Name: projections_rbs id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_rbs ALTER COLUMN id SET DEFAULT nextval('public.projections_rbs_id_seq'::regclass);


--
-- Name: projections_te id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_te ALTER COLUMN id SET DEFAULT nextval('public.projections_te_id_seq'::regclass);


--
-- Name: projections_wrs id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_wrs ALTER COLUMN id SET DEFAULT nextval('public.projections_wrs_id_seq'::regclass);


--
-- Name: schedule id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.schedule ALTER COLUMN id SET DEFAULT nextval('public.schedule_id_seq'::regclass);


--
-- Name: team_assessment id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.team_assessment ALTER COLUMN id SET DEFAULT nextval('public.team_assessment_id_seq'::regclass);


--
-- Name: teams_def_stats id; Type: DEFAULT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.teams_def_stats ALTER COLUMN id SET DEFAULT nextval('public.teams_def_stats_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: fantasy_data; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.fantasy_data ("position", team_name, passes, player_name, games_played, fantasy_points_overall, players_vbd, average_points) FROM stdin;
QB	KAN	435	Patrick Mahomes	17	416	136	24.470588235294116
RB	LVR	0	Josh Jacobs	17	275	127	16.176470588235293
RB	2TM	1	Christian McCaffrey	17	271	123	15.941176470588236
RB	TEN	2	Derrick Henry	16	270	122	16.875
WR	MIN	2	Justin Jefferson	17	241	119	14.176470588235293
RB	LAC	0	Austin Ekeler	17	266	118	15.647058823529411
QB	BUF	359	Josh Allen	16	396	117	24.75
TE	KAN	0	Travis Kelce	17	206	114	12.117647058823529
WR	LVR	0	Davante Adams	17	236	114	13.882352941176471
RB	CLE	0	Nick Chubb	17	254	107	14.941176470588236
WR	MIA	0	Tyreek Hill	17	228	107	13.411764705882353
QB	PHI	306	Jalen Hurts	15	378	100	25.2
WR	PHI	0	A.J. Brown	17	212	91	12.470588235294118
WR	BUF	0	Stefon Diggs	16	209	89	13.0625
RB	NYG	0	Saquon Barkley	16	227	82	14.1875
WR	DAL	0	CeeDee Lamb	17	195	75	11.470588235294118
QB	CIN	414	Joe Burrow	16	351	74	21.9375
RB	DET	0	Jamaal Williams	17	214	69	12.588235294117647
WR	MIA	0	Jaylen Waddle	17	184	66	10.823529411764707
RB	DAL	0	Tony Pollard	16	210	65	13.125
RB	MIN	0	Dalvin Cook	17	199	55	11.705882352941176
RB	PHI	0	Miles Sanders	17	197	53	11.588235294117647
TE	SFO	0	George Kittle	15	141	52	9.4
WR	CLE	0	Amari Cooper	17	168	50	9.882352941176471
TE	NOR	13	Taysom Hill	16	137	49	8.5625
RB	GNB	0	Aaron Jones	17	190	46	11.176470588235293
WR	DET	0	Amon-Ra St. Brown	16	162	44	10.125
WR	PHI	0	DeVonta Smith	17	160	42	9.411764705882353
TE	2TM	0	T.J. Hockenson	17	129	42	7.588235294117647
WR	JAX	0	Christian Kirk	17	158	41	9.294117647058824
RB	PIT	1	Najee Harris	17	182	40	10.705882352941176
WR	CIN	0	Ja'Marr Chase	12	155	38	12.916666666666666
RB	NWE	0	Rhamondre Stevenson	17	180	37	10.588235294117647
RB	CIN	0	Joe Mixon	14	180	37	12.857142857142858
WR	SEA	0	Tyler Lockett	16	153	37	9.5625
WR	WAS	0	Terry McLaurin	17	152	35	8.941176470588236
WR	SFO	0	Brandon Aiyuk	17	150	33	8.823529411764707
RB	SEA	0	Kenneth Walker III	15	176	33	11.733333333333333
WR	TAM	0	Mike Evans	15	148	32	9.866666666666667
WR	CIN	0	Tee Higgins	16	147	30	9.1875
TE	BAL	0	Mark Andrews	15	118	30	7.866666666666666
QB	SEA	399	Geno Smith	17	304	30	17.88235294117647
RB	JAX	0	Travis Etienne	17	170	28	10
RB	DAL	0	Ezekiel Elliott	15	169	27	11.266666666666667
QB	CHI	192	Justin Fields	15	296	23	19.733333333333334
QB	JAX	387	Trevor Lawrence	17	296	23	17.41176470588235
WR	DEN	0	Jerry Jeudy	15	137	21	9.133333333333333
WR	SEA	0	D.K. Metcalf	17	137	21	8.058823529411764
WR	CAR	0	D.J. Moore	17	136	20	8
QB	MIN	424	Kirk Cousins	17	292	19	17.176470588235293
TE	JAX	0	Evan Engram	17	104	18	6.117647058823529
WR	NYJ	0	Garrett Wilson	17	133	17	7.823529411764706
QB	NYG	317	Daniel Jones	16	289	16	18.0625
RB	NOR	0	Alvin Kamara	15	155	14	10.333333333333334
RB	ARI	0	James Conner	13	154	13	11.846153846153847
RB	TAM	0	Leonard Fournette	16	153	12	9.5625
TE	CHI	0	Cole Kmet	17	97	11	5.705882352941177
WR	LAR	0	Cooper Kupp	9	126	11	14
WR	NOR	0	Chris Olave	15	126	11	8.4
QB	DET	382	Jared Goff	17	283	11	16.647058823529413
WR	BUF	0	Gabriel Davis	15	124	9	8.266666666666667
WR	GNB	0	Christian Watson	14	123	8	8.785714285714286
TE	NOR	0	Juwan Johnson	16	93	7	5.8125
QB	LAC	477	Justin Herbert	17	279	7	16.41176470588235
WR	TAM	0	Chris Godwin	15	119	4	7.933333333333334
RB	CHI	0	David Montgomery	16	144	3	9
RB	ATL	0	Tyler Allgeier	16	143	3	8.9375
WR	IND	0	Michael Pittman Jr.	16	118	3	7.375
RB	DET	0	D'Andre Swift	14	143	3	10.214285714285714
TE	BUF	0	Dawson Knox	15	88	2	5.866666666666666
WR	JAX	0	Zay Jones	16	116	2	7.25
TE	PHI	0	Dallas Goedert	12	86	1	7.166666666666667
TE	DAL	0	Dalton Schultz	15	86	0	5.733333333333333
WR	GNB	0	Allen Lazard	15	115	0	7.666666666666667
not specified	TEN	0	Tory Carter	9	0	0	0
not specified	WAS	0	Alex Armah	2	0	0	0
TE	PIT	0	Pat Freiermuth	16	85	0	5.3125
RB	KAN	0	Jerick McKinnon	17	140	0	8.235294117647058
QB	TAM	490	Tom Brady	17	272	0	16
QB	GNB	350	Aaron Rodgers	17	239	0	14.058823529411764
QB	BAL	203	Lamar Jackson	12	236	0	19.666666666666668
QB	MIA	259	Tua Tagovailoa	13	231	0	17.76923076923077
QB	DEN	292	Russell Wilson	15	225	0	15
QB	LVR	305	Derek Carr	15	219	0	14.6
QB	ARI	259	Kyler Murray	11	201	0	18.272727272727273
QB	DAL	261	Dak Prescott	12	199	0	16.583333333333332
QB	ATL	184	Marcus Mariota	13	197	0	15.153846153846153
QB	HOU	292	Davis Mills	15	182	0	12.133333333333333
QB	NOR	252	Andy Dalton	14	174	0	12.428571428571429
QB	NWE	288	Mac Jones	14	170	0	12.142857142857142
QB	CLE	236	Jacoby Brissett	16	169	0	10.5625
QB	SFO	207	Jimmy Garoppolo	11	165	0	15
QB	TEN	212	Ryan Tannehill	12	161	0	13.416666666666666
QB	IND	309	Matt Ryan	12	155	0	12.916666666666666
QB	PIT	245	Kenny Pickett	13	150	0	11.538461538461538
RB	GNB	0	AJ Dillon	17	140	0	8.235294117647058
RB	BUF	0	Devin Singletary	16	140	0	8.75
RB	MIA	0	Raheem Mostert	16	137	0	8.5625
RB	2TM	0	Jeff Wilson	16	137	0	8.5625
RB	HOU	0	Dameon Pierce	13	136	0	10.461538461538462
RB	ATL	0	Cordarrelle Patterson	13	134	0	10.307692307692308
RB	LAR	0	Cam Akers	15	128	0	8.533333333333333
RB	2TM	0	Latavius Murray	13	127	0	9.76923076923077
RB	CAR	0	D'Onta Foreman	17	126	0	7.411764705882353
RB	KAN	0	Isiah Pacheco	17	122	0	7.176470588235294
QB	2TM	201	Baker Mayfield	12	121	0	10.083333333333334
RB	WAS	0	Antonio Gibson	15	120	0	8
RB	IND	0	Jonathan Taylor	11	118	0	10.727272727272727
QB	WAS	161	Taylor Heinicke	9	116	0	12.88888888888889
WR	PIT	0	George Pickens	17	115	0	6.764705882352941
WR	LAC	0	Mike Williams	13	114	0	8.76923076923077
WR	NWE	0	Jakobi Meyers	14	113	0	8.071428571428571
QB	WAS	172	Carson Wentz	8	113	0	14.125
WR	WAS	0	Curtis Samuel	17	112	0	6.588235294117647
WR	SFO	0	Deebo Samuel	13	112	0	8.615384615384615
WR	MIN	0	Adam Thielen	17	110	0	6.470588235294118
WR	CIN	1	Tyler Boyd	16	109	0	6.8125
RB	CHI	0	Khalil Herbert	13	109	0	8.384615384615385
QB	LAR	206	Matthew Stafford	9	108	0	12
WR	ATL	0	Drake London	17	107	0	6.294117647058823
WR	KAN	0	JuJu Smith-Schuster	16	107	0	6.6875
WR	CLE	0	Donovan Peoples-Jones	17	106	0	6.235294117647059
QB	SFO	114	Brock Purdy	9	106	0	11.777777777777779
RB	CIN	0	Samaje Perine	16	104	0	6.5
RB	WAS	0	Brian Robinson Jr.	12	104	0	8.666666666666666
WR	LAC	0	Keenan Allen	10	98	0	9.8
QB	NYJ	132	Zach Wilson	9	98	0	10.88888888888889
WR	LVR	1	Mack Hollins	17	97	0	5.705882352941177
WR	LAC	0	Josh Palmer	16	97	0	6.0625
WR	WAS	0	Jahan Dotson	12	96	0	8
RB	NYJ	0	Breece Hall	7	96	0	13.714285714285714
WR	MIN	0	K.J. Osborn	17	96	0	5.647058823529412
WR	PIT	0	Diontae Johnson	17	95	0	5.588235294117647
WR	DEN	0	Courtland Sutton	15	95	0	6.333333333333333
RB	CLE	0	Kareem Hunt	17	92	0	5.411764705882353
WR	ARI	0	Marquise Brown	12	89	0	7.416666666666667
WR	HOU	0	Brandin Cooks	13	89	0	6.846153846153846
RB	TAM	0	Rachaad White	17	89	0	5.235294117647059
WR	ARI	0	DeAndre Hopkins	9	88	0	9.777777777777779
RB	BAL	0	Kenyan Drake	12	87	0	7.25
WR	IND	0	Parris Campbell	17	86	0	5.0588235294117645
QB	CAR	82	Sam Darnold	6	86	0	14.333333333333334
QB	CLE	99	Deshaun Watson	6	86	0	14.333333333333334
RB	NYJ	0	Michael Carter	16	85	0	5.3125
RB	BUF	0	James Cook	16	85	0	5.3125
TE	CLE	0	David Njoku	14	84	0	6
TE	LAC	0	Gerald Everett	16	82	0	5.125
WR	NYG	0	Darius Slayton	16	82	0	5.125
RB	KAN	0	Clyde Edwards-Helaire	10	81	0	8.1
TE	HOU	0	Jordan Akins	15	80	0	5.333333333333333
TE	LAR	0	Tyler Higbee	17	80	0	4.705882352941177
WR	KAN	0	Marquez Valdes-Scantling	17	80	0	4.705882352941177
WR	BAL	0	Devin Duvernay	14	79	0	5.642857142857143
WR	BUF	0	Isaiah McKenzie	15	78	0	5.2
RB	2TM	0	James Robinson	11	78	0	7.090909090909091
WR	NYG	0	Richie James	17	76	0	4.470588235294118
TE	NYJ	0	Tyler Conklin	17	74	0	4.352941176470588
RB	BAL	0	J.K. Dobbins	8	74	0	9.25
RB	NWE	0	Damien Harris	11	74	0	6.7272727272727275
RB	CAR	0	Chuba Hubbard	15	74	0	4.933333333333334
QB	PIT	117	Mitchell Trubisky	7	74	0	10.571428571428571
TE	SEA	0	Noah Fant	17	73	0	4.294117647058823
WR	TAM	0	Russell Gage	13	73	0	5.615384615384615
RB	MIN	0	Alexander Mattison	17	73	0	4.294117647058823
WR	NOR	0	Rashid Shaheed	12	73	0	6.083333333333333
WR	DAL	0	Noah Brown	16	72	0	4.5
WR	NWE	0	DeVante Parker	13	72	0	5.538461538461538
WR	JAX	0	Marvin Jones	16	71	0	4.4375
WR	IND	0	Alec Pierce	16	71	0	4.4375
WR	ATL	0	Olamide Zaccheaus	17	70	0	4.117647058823529
TE	ARI	0	Zach Ertz	10	69	0	6.9
WR	KAN	0	Mecole Hardman	8	69	0	8.625
WR	DET	0	Kalif Raymond	17	69	0	4.0588235294117645
WR	DET	0	DJ Chark	11	68	0	6.181818181818182
WR	HOU	0	Chris Moore	16	67	0	4.1875
WR	LAC	0	DeAndre Carter	17	66	0	3.8823529411764706
WR	NYJ	0	Corey Davis	13	66	0	5.076923076923077
WR	DAL	0	Michael Gallup	14	66	0	4.714285714285714
TE	MIA	0	Mike Gesicki	17	66	0	3.8823529411764706
WR	DET	0	Josh Reynolds	14	66	0	4.714285714285714
RB	3TM	0	Eno Benjamin	15	65	0	4.333333333333333
RB	PHI	0	Kenneth Gainwell	17	65	0	3.823529411764706
TE	TEN	0	Chigoziem Okonkwo	17	65	0	3.823529411764706
RB	PIT	0	Jaylen Warren	16	65	0	4.0625
WR	SEA	0	Marquise Goodwin	13	63	0	4.846153846153846
TE	NWE	0	Hunter Henry	17	63	0	3.7058823529411766
WR	2TM	0	Isaiah Hodgins	10	63	0	6.3
WR	TEN	0	Robert Woods	17	63	0	3.7058823529411766
RB	DEN	0	Melvin Gordon	10	62	0	6.2
WR	CHI	0	Darnell Mooney	12	62	0	5.166666666666667
WR	TEN	0	Treylon Burks	11	61	0	5.545454545454546
WR	ARI	0	Greg Dortch	16	61	0	3.8125
WR	HOU	0	Nico Collins	10	60	0	6
WR	GNB	0	Romeo Doubs	13	60	0	4.615384615384615
WR	2TM	1	Chase Claypool	15	59	0	3.933333333333333
RB	BAL	0	Gus Edwards	9	59	0	6.555555555555555
TE	GNB	0	Robert Tonyan	17	59	0	3.4705882352941178
RB	2TM	0	Chase Edmonds	13	58	0	4.461538461538462
WR	TEN	0	Nick Westbrook-Ikhine	17	58	0	3.411764705882353
RB	LAR	0	Darrell Henderson	10	57	0	5.7
QB	DAL	94	Cooper Rush	9	57	0	6.333333333333333
TE	LVR	0	Darren Waller	9	57	0	6.333333333333333
QB	NYJ	103	Mike White	4	57	0	14.25
RB	TEN	0	Dontrell Hilliard	12	56	0	4.666666666666667
TE	TEN	0	Austin Hooper	17	56	0	3.2941176470588234
WR	BAL	0	Demarcus Robinson	17	56	0	3.2941176470588234
RB	IND	0	Deon Jackson	16	55	0	3.4375
WR	LAR	0	Van Jefferson	11	55	0	5
TE	BAL	0	Isaiah Likely	16	55	0	3.4375
WR	CAR	0	Terrace Marshall Jr.	14	55	0	3.9285714285714284
RB	2TM	0	Zack Moss	13	54	0	4.153846153846154
WR	MIA	0	Trent Sherfield	17	54	0	3.176470588235294
WR	NWE	0	Kendrick Bourne	16	53	0	3.3125
TE	SEA	0	Will Dissly	15	53	0	3.533333333333333
TE	DEN	0	Greg Dulcich	10	53	0	5.3
TE	CIN	0	Hayden Hurst	13	53	0	4.076923076923077
TE	LVR	0	Foster Moreau	15	52	0	3.466666666666667
WR	LAR	0	Allen Robinson	10	52	0	5.2
WR	PHI	0	Quez Watkins	17	52	0	3.0588235294117645
RB	2TM	0	Nyheim Hines	16	51	0	3.1875
RB	LAC	0	Joshua Kelley	13	51	0	3.923076923076923
WR	NYJ	0	Elijah Moore	16	51	0	3.1875
TE	TAM	0	Cade Otton	16	51	0	3.1875
RB	JAX	0	Jamycal Hasty	17	50	0	2.9411764705882355
QB	BAL	75	Tyler Huntley	6	50	0	8.333333333333334
TE	IND	0	Jelani Woods	15	49	0	3.2666666666666666
WR	GNB	0	Randall Cobb	13	48	0	3.6923076923076925
QB	NYJ	110	Joe Flacco	5	48	0	9.6
WR	CIN	0	Trenton Irwin	9	48	0	5.333333333333333
WR	SFO	0	Jauan Jennings	16	48	0	3
RB	SEA	0	Rashaad Penny	5	48	0	9.6
TE	ATL	0	Kyle Pitts	10	48	0	4.8
WR	JAX	0	Jamal Agnew	15	47	0	3.1333333333333333
WR	ARI	0	Rondale Moore	8	47	0	5.875
WR	TAM	0	Julio Jones	10	46	0	4.6
RB	NYJ	0	Zonovan Knight	7	46	0	6.571428571428571
WR	CHI	0	Dante Pettis	17	46	0	2.7058823529411766
WR	CAR	0	Laviska Shenault Jr.	13	46	0	3.5384615384615383
TE	DET	0	Brock Wright	17	46	0	2.7058823529411766
WR	LAR	0	Tutu Atwell	13	45	0	3.4615384615384617
TE	NYG	0	Daniel Bellinger	12	45	0	3.75
WR	LAR	0	Ben Skowronek	14	45	0	3.2142857142857144
WR	NWE	0	Nelson Agholor	16	44	0	2.75
WR	SFO	0	Ray-Ray McCloud	17	44	0	2.588235294117647
TE	SEA	0	Colby Parkinson	17	44	0	2.588235294117647
WR	CHI	0	Equanimeous St. Brown	16	44	0	2.75
WR	NWE	0	Tyquan Thornton	13	44	0	3.3846153846153846
WR	KAN	0	Justin Watson	17	44	0	2.588235294117647
QB	NOR	73	Jameis Winston	3	44	0	14.666666666666666
RB	ATL	0	Caleb Huntley	12	43	0	3.5833333333333335
WR	LVR	0	Hunter Renfrow	10	43	0	4.3
QB	LVR	53	Jarrett Stidham	5	43	0	8.6
TE	KAN	0	Noah Gray	17	42	0	2.4705882352941178
RB	SFO	0	Elijah Mitchell	5	41	0	8.2
RB	PHI	0	Boston Scott	15	41	0	2.7333333333333334
WR	2TM	0	Kadarius Toney	9	41	0	4.555555555555555
WR	NYJ	1	Braxton Berrios	17	40	0	2.3529411764705883
RB	NYG	0	Matt Breida	17	40	0	2.3529411764705883
RB	HOU	0	Rex Burkhead	16	40	0	2.5
WR	CAR	0	Shi Smith	17	40	0	2.3529411764705883
WR	BAL	0	Rashod Bateman	6	39	0	6.5
WR	ATL	0	Damiere Byrd	14	39	0	2.7857142857142856
RB	DET	0	Justin Jackson	16	39	0	2.4375
TE	ATL	0	MyCole Pruitt	13	39	0	3
QB	ATL	73	Desmond Ridder	4	39	0	9.75
QB	CAR	63	P.J. Walker	6	39	0	6.5
QB	NWE	65	Bailey Zappe	4	39	0	9.75
QB	MIA	49	Teddy Bridgewater	5	38	0	7.6
WR	ARI	0	A.J. Green	15	38	0	2.533333333333333
TE	WAS	0	Logan Thomas	14	38	0	2.7142857142857144
QB	PHI	44	Gardner Minshew II	5	37	0	7.4
QB	IND	64	Sam Ehlinger	4	36	0	9
TE	IND	0	Mo Alie-Cox	17	35	0	2.0588235294117645
RB	SFO	0	Kyle Juszczyk	16	35	0	2.1875
WR	NOR	0	Jarvis Landry	9	35	0	3.888888888888889
WR	NOR	0	Michael Thomas	3	35	0	11.666666666666666
TE	NYJ	0	C.J. Uzomah	15	35	0	2.3333333333333335
RB	NOR	0	Mark Ingram	10	34	0	3.4
WR	NOR	0	Tre'Quan Smith	15	34	0	2.2666666666666666
RB	CAR	0	Raheem Blackshear	13	33	0	2.5384615384615383
TE	ARI	0	Trey McBride	16	33	0	2.0625
QB	ARI	90	Colt McCoy	4	33	0	8.25
TE	CAR	0	Tommy Tremble	17	33	0	1.9411764705882353
WR	2TM	0	Chosen Anderson	16	32	0	2
WR	HOU	0	Phillip Dorsett	15	32	0	2.1333333333333333
WR	DEN	0	Kendall Hinton	12	32	0	2.6666666666666665
RB	SFO	0	Jordan Mason	16	32	0	2
TE	CLE	0	Harrison Bryant	17	31	0	1.8235294117647058
RB	NYJ	0	Ty Johnson	17	31	0	1.8235294117647058
WR	2TM	0	Sammy Watkins	12	31	0	2.5833333333333335
TE	IND	0	Kylen Granson	13	30	0	2.3076923076923075
RB	BAL	0	Justice Hill	15	30	0	2
RB	2TM	0	Marlon Mack	8	30	0	3.75
TE	MIN	0	Irv Smith Jr.	8	30	0	3.75
TE	DET	0	Shane Zylstra	13	30	0	2.3076923076923075
RB	LVR	0	Ameer Abdullah	17	29	0	1.7058823529411764
RB	SEA	0	DeeJay Dallas	15	29	0	1.9333333333333333
TE	DAL	0	Jake Ferguson	16	29	0	1.8125
TE	DAL	0	Peyton Hendershot	17	29	0	1.7058823529411764
RB	WAS	0	J.D. McKissic	8	29	0	3.625
RB	HOU	0	Dare Ogunbowale	17	29	0	1.7058823529411764
WR	NYG	0	Wan'Dale Robinson	6	29	0	4.833333333333333
WR	WAS	0	Dyami Brown	15	28	0	1.8666666666666667
RB	DAL	0	Malik Davis	12	28	0	2.3333333333333335
WR	IND	0	Ashton Dulin	12	28	0	2.3333333333333335
WR	ATL	0	KhaDarel Hodge	17	28	0	1.6470588235294117
RB	SEA	0	Travis Homer	10	27	0	2.7
TE	HOU	0	O.J. Howard	13	27	0	2.076923076923077
WR	CHI	0	Velus Jones Jr.	12	27	0	2.25
TE	BAL	0	Josh Oliver	17	27	0	1.588235294117647
TE	NOR	0	Adam Trautman	15	27	0	1.8
WR	CHI	0	Byron Pringle	11	26	0	2.3636363636363638
RB	DEN	0	Javonte Williams	4	26	0	6.5
TE	NWE	0	Jonnu Smith	14	25	0	1.7857142857142858
TE	MIA	0	Durham Smythe	16	25	0	1.5625
RB	NYG	0	Gary Brightwell	17	24	0	1.411764705882353
TE	PIT	0	Connor Heyward	17	24	0	1.411764705882353
WR	MIN	0	Jalen Nailor	15	24	0	1.6
WR	LAR	0	Brandon Powell	17	24	0	1.411764705882353
WR	BUF	0	Khalil Shakir	14	24	0	1.7142857142857142
RB	MIA	0	Alec Ingold	17	23	0	1.3529411764705883
TE	HOU	0	Teagan Quitoriano	9	23	0	2.5555555555555554
WR	2TM	0	Amari Rodgers	16	23	0	1.4375
WR	NOR	0	Marquez Callaway	14	22	0	1.5714285714285714
WR	MIA	0	River Cracraft	11	22	0	2
RB	DET	0	Craig Reynolds	9	22	0	2.4444444444444446
RB	LAR	0	Kyren Williams	10	22	0	2.2
WR	CLE	0	David Bell	16	21	0	1.3125
QB	TEN	40	Joshua Dobbs	2	21	0	10.5
TE	KAN	0	Jody Fortson	13	21	0	1.6153846153846154
RB	MIN	0	C.J. Ham	17	21	0	1.2352941176470589
TE	GNB	0	Marcedes Lewis	17	21	0	1.2352941176470589
WR	KAN	0	Skyy Moore	16	21	0	1.3125
WR	PHI	0	Zach Pascal	17	21	0	1.2352941176470589
TE	DEN	0	Eric Saubert	17	21	0	1.2352941176470589
WR	NYG	0	Sterling Shepard	3	21	0	7
QB	NYG	23	Davis Webb	1	21	0	21
RB	ATL	0	Avery Williams	17	21	0	1.2352941176470589
RB	DEN	0	Mike Boone	9	20	0	2.2222222222222223
WR	LVR	0	Keelan Cole	14	20	0	1.4285714285714286
TE	MIN	0	Johnny Mundt	17	20	0	1.1764705882352942
RB	NWE	0	Pierre Strong	15	20	0	1.3333333333333333
TE	CAR	0	Ian Thomas	17	20	0	1.1764705882352942
TE	DEN	0	Eric Tomlinson	17	20	0	1.1764705882352942
TE	CIN	0	Mitchell Wilcox	16	20	0	1.25
QB	ARI	38	David Blough	2	19	0	9.5
RB	SFO	0	Tevin Coleman	5	19	0	3.8
WR	DEN	0	KJ Hamler	7	19	0	2.7142857142857144
WR	TAM	0	Scott Miller	15	19	0	1.2666666666666666
WR	NYJ	0	Denzel Mims	10	19	0	1.9
TE	LAC	0	Donald Parham	6	19	0	3.1666666666666665
WR	MIN	0	Jalen Reagor	17	19	0	1.1176470588235294
RB	WAS	0	Jonathan Williams	13	19	0	1.4615384615384615
QB	TEN	31	Malik Willis	8	19	0	2.375
RB	LVR	0	Brandon Bolden	16	18	0	1.125
RB	LAR	0	Malcolm Brown	11	18	0	1.6363636363636365
TE	2TM	0	Lawrence Cager	7	18	0	2.5714285714285716
WR	CHI	0	N'Keal Harry	7	18	0	2.5714285714285716
QB	WAS	11	Sam Howell	1	18	0	18
QB	DEN	53	Brett Rypien	4	18	0	4.5
TE	WAS	0	John Bates	16	17	0	1.0625
TE	TAM	0	Cameron Brate	11	17	0	1.5454545454545454
RB	ARI	0	Corey Clement	9	17	0	1.8888888888888888
TE	SFO	0	Ross Dwelley	12	17	0	1.4166666666666667
TE	DET	0	James Mitchell	14	17	0	1.2142857142857142
WR	PIT	0	Steven Sims	12	17	0	1.4166666666666667
RB	PIT	0	Benny Snell Jr.	17	17	0	1
QB	MIA	60	Skylar Thompson	7	17	0	2.4285714285714284
RB	ARI	0	Darrel Williams	6	17	0	2.8333333333333335
QB	HOU	46	Kyle Allen	2	16	0	8
QB	HOU	14	Jeff Driskel	7	16	0	2.2857142857142856
RB	LAC	0	Sony Michel	10	16	0	1.6
TE	DEN	0	Albert Okwuegbunam	8	16	0	2
RB	TEN	0	Hassan Haskins	15	15	0	1
WR	BAL	0	DeSean Jackson	7	15	0	2.142857142857143
RB	KAN	0	Ronald Jones II	6	15	0	2.5
QB	LAR	19	Bryce Perkins	5	15	0	3
WR	CLE	0	Anthony Schwartz	11	15	0	1.3636363636363635
RB	PIT	0	Derek Watt	17	15	0	0.8823529411764706
QB	LAR	38	John Wolford	3	15	0	5
TE	JAX	0	Dan Arnold	17	14	0	0.8235294117647058
WR	NYG	0	Kenny Golladay	12	14	0	1.1666666666666667
RB	LAC	0	Zander Horvath	15	14	0	0.9333333333333333
RB	ARI	0	Keaontay Ingram	12	14	0	1.1666666666666667
WR	DET	0	Tom Kennedy	7	14	0	2
TE	TAM	0	Ko Kieft	17	14	0	0.8235294117647058
WR	TAM	0	Breshad Perriman	11	14	0	1.2727272727272727
WR	GNB	0	Samori Toure	11	14	0	1.2727272727272727
WR	DET	0	Jameson Williams	6	14	0	2.3333333333333335
WR	MIA	0	Cedrick Wilson Jr.	15	14	0	0.9333333333333333
RB	MIA	0	Salvon Ahmed	12	13	0	1.0833333333333333
RB	HOU	0	Royce Freeman	4	13	0	3.25
TE	PIT	0	Zach Gentry	17	13	0	0.7647058823529411
RB	BUF	0	Reggie Gilliam	15	13	0	0.8666666666666667
TE	NYG	0	Tanner Hudson	11	13	0	1.1818181818181819
TE	HOU	0	Brevin Jordan	11	13	0	1.1818181818181819
RB	NYG	0	Chris Myarick	16	13	0	0.8125
WR	NYJ	0	Jeff Smith	11	13	0	1.1818181818181819
TE	2TM	0	Pharaoh Brown	16	12	0	0.75
WR	DAL	0	T.Y. Hilton	3	12	0	4
QB	SFO	15	Trey Lance	2	12	0	6
QB	GNB	14	Jordan Love	4	12	0	3
TE	BUF	0	Quintin Morris	14	12	0	0.8571428571428571
QB	MIN	21	Nick Mullens	4	12	0	3
TE	PHI	0	Jack Stoll	17	12	0	0.7058823529411765
TE	TEN	0	Geoff Swaim	17	12	0	0.7058823529411765
WR	DEN	0	Jalen Virgil	9	12	0	1.3333333333333333
TE	GNB	0	Josiah Deguara	17	11	0	0.6470588235294118
RB	NWE	0	Kevin Harris	5	11	0	2.2
TE	LAR	0	Brycen Hopkins	14	11	0	0.7857142857142857
WR	NYG	0	David Sills	9	11	0	1.2222222222222223
QB	NYG	6	Tyrod Taylor	3	11	0	3.6666666666666665
WR	BUF	0	John Brown	3	10	0	3.3333333333333335
RB	JAX	0	Snoop Conner	8	10	0	1.25
RB	SFO	0	Tyrion Davis-Price	6	10	0	1.6666666666666667
RB	CIN	0	Chris Evans	12	10	0	0.8333333333333334
RB	CHI	0	Darrynton Evans	6	10	0	1.6666666666666667
TE	ATL	0	Anthony Firkser	11	10	0	0.9090909090909091
WR	NYG	0	Marcus Johnson	14	10	0	0.7142857142857143
WR	WAS	0	Dax Milne	15	10	0	0.6666666666666666
RB	MIN	0	Kene Nwangwu	17	10	0	0.5882352941176471
RB	CAR	0	Giovanni Ricci	15	10	0	0.6666666666666666
QB	CHI	15	Trevor Siemian	2	10	0	5
WR	LAC	0	Michael Bandy	10	9	0	0.9
TE	ATL	0	Parker Hesse	17	9	0	0.5294117647058824
RB	IND	0	Phillip Lindsay	3	9	0	3
QB	ARI	45	Trace McSorley	6	9	0	1.5
RB	BAL	0	Patrick Ricard	17	9	0	0.5294117647058824
TE	WAS	0	Armani Rogers	11	9	0	0.8181818181818182
TE	TAM	0	Kyle Rudolph	9	9	0	1
WR	WAS	0	Cam Sims	17	9	0	0.5294117647058824
QB	NYJ	10	Chris Streveler	2	9	0	4.5
RB	IND	0	Jordan Wilkins	4	9	0	2.25
RB	DEN	0	Tyler Badie	1	8	0	8
TE	KAN	0	Blake Bell	3	8	0	2.6666666666666665
TE	PHI	0	Grant Calcaterra	15	8	0	0.5333333333333333
QB	LAC	8	Chase Daniel	4	8	0	2
WR	DEN	0	Brandon Johnson	7	8	0	1.1428571428571428
RB	WAS	0	Jaret Patterson	3	8	0	2.6666666666666665
QB	CHI	14	Nathan Peterman	3	8	0	2.6666666666666665
TE	DEN	0	Andrew Beck	13	7	0	0.5384615384615384
WR	SEA	0	D'Wayne Eskridge	10	7	0	0.7
TE	SEA	0	Tyler Mabry	2	7	0	3.5
TE	LAC	0	Tre' McKitty	17	7	0	0.4117647058823529
WR	NWE	0	Ty Montgomery	1	7	0	7
WR	PIT	0	Gunner Olszewski	16	7	0	0.4375
WR	2TM	0	Freddie Swain	4	7	0	1.75
RB	TAM	0	Ke'Shawn Vaughn	15	7	0	0.4666666666666667
WR	NOR	0	Kevin White	7	7	0	1
RB	LVR	0	Zamir White	14	7	0	0.5
QB	BAL	22	Anthony Brown	2	6	0	3
WR	BUF	0	Jamison Crowder	4	6	0	1.5
WR	LAC	0	Jalen Guyton	3	6	0	2
TE	SFO	0	Tyler Kroft	11	6	0	0.5454545454545454
WR	BUF	0	Jake Kumerow	6	6	0	1
WR	IND	0	Mike Strachan	13	6	0	0.46153846153846156
WR	CIN	0	Trent Taylor	16	6	0	0.375
WR	TAM	0	Deven Thompkins	5	6	0	1.2
WR	CIN	0	Mike Thomas	10	6	0	0.6
TE	2TM	0	Nick Vannett	9	6	0	0.6666666666666666
RB	CIN	0	Trayveon Williams	8	6	0	0.75
WR	ARI	0	Andre Baccellia	8	5	0	0.625
RB	CAR	0	Spencer Brown	2	5	0	2.5
RB	TEN	0	Julius Chestnut	6	5	0	0.8333333333333334
WR	2TM	0	Chris Conley	9	5	0	0.5555555555555556
QB	TAM	6	Blaine Gabbert	1	5	0	5
RB	MIA	0	Myles Gaskin	4	5	0	1.25
WR	TEN	0	Cody Hollister	11	5	0	0.45454545454545453
RB	NOR	0	David Johnson	5	5	0	1
RB	2TM	0	Tony Jones	6	5	0	0.8333333333333334
TE	BAL	0	Charlie Kolar	2	5	0	2.5
RB	LAR	0	Ronnie Rivers	8	5	0	0.625
RB	LAC	0	Isaiah Spiller	6	5	0	0.8333333333333334
TE	CAR	0	Stephen Sullivan	14	5	0	0.35714285714285715
RB	GNB	0	Patrick Taylor	14	5	0	0.35714285714285715
RB	NOR	0	Dwayne Washington	12	5	0	0.4166666666666667
TE	CHI	0	Trevon Wesco	14	5	0	0.35714285714285715
WR	2TM	0	Cole Beasley	4	4	0	1
TE	LAR	0	Kendall Blanton	4	4	0	1
RB	CHI	0	Trestan Ebner	17	4	0	0.23529411764705882
TE	JAX	0	Luke Farrell	17	4	0	0.23529411764705882
TE	JAX	0	Chris Manhertz	17	4	0	0.23529411764705882
RB	PIT	0	Anthony McFarland Jr.	1	4	0	4
WR	TEN	0	Racey McMath	5	4	0	0.8
WR	TEN	0	Kyle Philips	4	4	0	1
WR	BAL	0	James Proche	15	4	0	0.26666666666666666
WR	SEA	0	Laquon Treadwell	6	4	0	0.6666666666666666
WR	CLE	0	Michael Woods II	10	4	0	0.4
WR	CLE	0	Daylen Baldwin	1	3	0	3
RB	TAM	0	Giovani Bernard	8	3	0	0.375
WR	DEN	0	Tyrie Cleveland	6	3	0	0.5
WR	2TM	0	Jaelon Darden	14	3	0	0.21428571428571427
TE	GNB	0	Tyler Davis	17	3	0	0.17647058823529413
TE	MIN	0	Ben Ellefson	4	3	0	0.75
TE	CHI	0	Ryan Griffin	15	3	0	0.2
WR	JAX	0	Tim Jones	17	3	0	0.17647058823529413
RB	LAC	0	Larry Rountree	4	3	0	0.75
WR	LVR	0	DJ Turner	9	3	0	0.3333333333333333
WR	BAL	0	Tylan Wallace	9	3	0	0.3333333333333333
RB	2TM	0	Jonathan Ward	8	3	0	0.375
RB	KAN	0	Michael Burton	17	2	0	0.11764705882352941
WR	DET	0	Quintez Cephus	4	2	0	0.5
RB	MIN	0	Ty Chandler	3	2	0	0.6666666666666666
WR	ARI	0	Pharoh Cooper	5	2	0	0.4
WR	ATL	0	Frank Darby	5	2	0	0.4
RB	BAL	0	Mike Davis	8	2	0	0.25
WR	ATL	0	Bryan Edwards	7	2	0	0.2857142857142857
WR	DAL	0	Simi Fehoko	5	2	0	0.4
QB	IND	25	Nick Foles	3	2	0	0.6666666666666666
WR	SFO	0	Danny Gray	13	2	0	0.15384615384615385
RB	HOU	0	Troy Hairston	16	2	0	0.125
WR	SEA	0	Penny Hart	9	2	0	0.2222222222222222
TE	LVR	0	Jesper Horsted	15	2	0	0.13333333333333333
WR	DAL	0	Dennis Houston	2	2	0	1
WR	NWE	0	Lil'Jordan Humphrey	6	2	0	0.3333333333333333
WR	2TM	0	Andy Isabella	5	2	0	0.4
WR	SEA	0	Cade Johnson	3	2	0	0.6666666666666666
RB	CLE	0	D'Ernest Johnson	15	2	0	0.13333333333333333
WR	NOR	0	Keith Kirkwood	5	2	0	0.4
WR	IND	0	Dezmon Patmon	1	2	0	2
RB	NOR	0	Adam Prentice	11	2	0	0.18181818181818182
RB	PHI	0	Trey Sermon	2	2	0	1
TE	LAC	0	Stone Smartt	7	2	0	0.2857142857142857
RB	NWE	0	J.J. Taylor	1	2	0	2
TE	WAS	0	Cole Turner	10	2	0	0.2
TE	ARI	0	Maxx Williams	11	2	0	0.18181818181818182
WR	GNB	0	Juwann Winfree	3	2	0	0.6666666666666666
WR	SEA	0	Dareke Young	13	2	0	0.15384615384615385
WR	DET	0	Maurice Alexander	4	1	0	0.25
QB	CIN	3	Brandon Allen	1	1	0	1
TE	ARI	0	Stephen Anderson	16	1	0	0.0625
TE	CIN	0	Devin Asiasi	12	1	0	0.08333333333333333
WR	TEN	0	C.J. Board	4	1	0	0.25
RB	WAS	0	Reggie Bonnafon	1	1	0	1
WR	PIT	0	Miles Boykin	16	1	0	0.0625
RB	DET	0	Jason Cabinda	8	1	0	0.125
WR	HOU	0	Jalen Camp	2	1	0	0.5
RB	CLE	0	Jerome Ford	13	1	0	0.07692307692307693
TE	LAR	0	Jacob Harris	7	1	0	0.14285714285714285
RB	GNB	0	Kylin Hill	2	1	0	0.5
QB	NWE	5	Brian Hoyer	1	1	0	1
RB	SEA	0	Godwin Igwebuike	5	1	0	0.2
RB	LVR	0	Jakob Johnson	17	1	0	0.058823529411764705
QB	SFO	1	Josh Johnson	2	1	0	0.5
WR	2TM	0	Tyron Johnson	4	1	0	0.25
TE	DAL	0	Sean McKeon	13	1	0	0.07692307692307693
WR	LAC	0	Jason Moore	6	1	0	0.16666666666666666
RB	DEN	0	Devine Ozigbo	4	1	0	0.25
TE	NYJ	0	Jeremy Ruckert	9	1	0	0.1111111111111111
TE	HOU	0	Mason Schreck	3	1	0	0.3333333333333333
RB	ATL	0	Keith Smith	17	1	0	0.058823529411764705
TE	BUF	0	Tommy Sweeney	5	1	0	0.2
WR	DAL	0	Jalen Tolbert	8	1	0	0.125
WR	LAR	0	Austin Trammell	6	1	0	0.16666666666666666
QB	TAM	3	Kyle Trask	1	1	0	1
WR	DEN	0	Montrell Washington	15	1	0	0.06666666666666667
WR	CHI	0	Nsimba Webster	2	1	0	0.5
RB	ARI	0	Ty'Son Williams	1	1	0	1
not specified	ATL	0	Josh Ali	2	0	0	0
not specified	CHI	0	Chase Allen	1	0	0	0
RB	SEA	0	Nick Bellore	16	0	0	0
not specified	DET	0	Trinity Benson	1	0	0	0
not specified	ATL	0	Jared Bernhardt	2	0	0	0
not specified	DET	0	Stanley Berryhill	4	0	0	0
not specified	CHI	0	Khari Blasingame	16	0	0	0
not specified	NWE	0	Lynn Bowden Jr.	1	0	0	0
not specified	BAL	0	Nick Boyle	12	0	0	0
not specified	LVR	0	Brittain Brown	6	0	0	0
not specified	TEN	0	Trenton Cannon	2	0	0	0
not specified	MIA	0	Cethan Carter	1	0	0	0
not specified	LAR	0	Roger Carter	1	0	0	0
not specified	MIN	0	Dan Chisena	2	0	0	0
not specified	MIA	0	Tanner Conner	13	0	0	0
WR	IND	0	Keke Coutee	8	0	0	0
not specified	PHI	0	Britain Covey	17	0	0	0
not specified	DAL	0	Rico Dowdle	5	0	0	0
QB	CAR	3	Jacob Eason	1	0	0	0
not specified	WAS	0	Alex Erickson	2	0	0	0
WR	MIA	0	Erik Ezukanma	1	0	0	0
RB	CLE	0	Demetric Felton	8	0	0	0
not specified	IND	0	Ethan Fernea	1	0	0	0
TE	ATL	0	Feleipe Franks	11	0	0	0
not specified	2TM	0	Jake Funk	6	0	0	0
not specified	TAM	0	Kaylon Geiger	3	0	0	0
not specified	BUF	0	Tanner Gentry	3	0	0	0
not specified	SEA	0	Cullen Gillaspia	6	0	0	0
not specified	TEN	0	Josh Gordon	2	0	0	0
not specified	DET	0	Garrett Griffin	1	0	0	0
not specified	NYJ	0	Justin Hardee	17	0	0	0
not specified	CIN	0	Clark Harris	1	0	0	0
not specified	CAR	0	Rashard Higgins	3	0	0	0
not specified	2TM	0	Jacob Hollister	5	0	0	0
not specified	NOR	0	J.P. Holtz	6	0	0	0
RB	NOR	0	Jordan Howard	2	0	0	0
not specified	PHI	0	Tyree Jackson	5	0	0	0
not specified	CLE	0	Jesse James	2	0	0	0
RB	BUF	0	Duke Johnson	1	0	0	0
not specified	HOU	0	Johnny Johnson	1	0	0	0
not specified	HOU	0	Tyler Johnson	2	0	0	0
not specified	IND	0	Nikola Kalinic	7	0	0	0
QB	BUF	2	Case Keenum	2	0	0	0
not specified	CLE	0	John Kelly	1	0	0	0
not specified	KAN	0	Marcus Kemp	3	0	0	0
WR	TEN	0	Mason Kinsey	2	0	0	0
not specified	NOR	0	Lucas Krull	1	0	0	0
not specified	CIN	0	Kwamie Lassiter II	1	0	0	0
not specified	MIA	0	Hunter Long	9	0	0	0
not specified	SFO	0	Tay Martin	2	0	0	0
not specified	LAR	0	Lance McCutcheon	10	0	0	0
not specified	WAS	0	Kyric McGowan	2	0	0	0
not specified	NOR	0	Kirk Merritt	4	0	0	0
not specified	CIN	0	Stanley Morgan Jr.	14	0	0	0
not specified	MIN	0	Nick Muse	10	0	0	0
not specified	DAL	0	Qadree Ollison	3	0	0	0
not specified	LAR	0	Matthew Orzech	17	0	0	0
not specified	KAN	0	Cornell Powell	3	0	0	0
not specified	IND	0	D'Vonte Price	1	0	0	0
not specified	TEN	0	Kevin Rader	14	0	0	0
not specified	CAR	0	Andre Roberts	3	0	0	0
TE	LAC	0	Richard Rodgers	10	0	0	0
TE	CIN	0	Drew Sample	2	0	0	0
WR	MIA	0	Braylon Sanders	3	0	0	0
not specified	NWE	0	Matthew Slater	17	0	0	0
not specified	SFO	0	Willie Snead	4	0	0	0
not specified	NWE	0	Matt Sokol	3	0	0	0
QB	DET	0	Nate Sudfeld	2	0	0	0
not specified	LAR	0	Keir Thomas	8	0	0	0
not specified	PHI	0	Noah Togiai	2	0	0	0
not specified	CHI	0	Jake Tonges	4	0	0	0
not specified	SFO	0	Malik Turner	3	0	0	0
not specified	BAL	0	Binjimen Victor	2	0	0	0
not specified	DAL	0	James Washington	2	0	0	0
not specified	NWE	0	Scotty Washington	1	0	0	0
not specified	2TM	0	Raleigh Webb	12	0	0	0
WR	PIT	0	Cody White	1	0	0	0
not specified	NYG	0	Antonio Williams	2	0	0	0
RB	ATL	0	Damien Williams	1	0	0	0
not specified	CAR	0	Preston Williams	1	0	0	0
not specified	ARI	0	Javon Wims	1	0	0	0
not specified	SFO	0	Charlie Woerner	17	0	0	0
not specified	ATL	0	Logan Woodside	1	0	0	0
not specified	DET	0	Brandon Zylstra	2	0	0	0
QB	JAX	7	C.J. Beathard	4	-1	0	-0.25
WR	NOR	0	Deonte Harty	4	-1	0	-0.25
QB	KAN	0	Chad Henne	3	-1	0	-0.3333333333333333
WR	2TM	0	Ihmir Smith-Marsette	8	-1	0	-0.125
WR	DAL	0	KaVontae Turpin	17	-1	0	-0.058823529411764705
not specified	BUF	0	Taiwan Jones	16	-2	0	-0.125
not specified	CLE	0	Chester Rogers	3	-2	0	-0.6666666666666666
QB	CHI	2	Tim Boyle	1	-3	0	-3
\.


--
-- Data for Name: fantasy_data_complete; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.fantasy_data_complete (name, team, points_forecasted, difference_forecasted, team_name, player_name, games_played, fantasy_points_overall, players_vbd, average_points) FROM stdin;
Patrick Mahomes	II KC	383	257	KAN	Patrick Mahomes	17	416	136	24.470588235294116
Josh Jacobs	LV	206	134	LVR	Josh Jacobs	17	275	127	16.176470588235293
Christian McCaffrey	SF	200	128	2TM	Christian McCaffrey	17	271	123	15.941176470588236
Derrick Henry	TEN	216	144	TEN	Derrick Henry	16	270	122	16.875
Justin Jefferson	MIN	202	139	MIN	Justin Jefferson	17	241	119	14.176470588235293
Austin Ekeler	LAC	215	143	LAC	Austin Ekeler	17	266	118	15.647058823529411
Josh Allen	BUF	371	245	BUF	Josh Allen	16	396	117	24.75
Travis Kelce	KC	175	140	KAN	Travis Kelce	17	206	114	12.117647058823529
Davante Adams	LV	197	134	LVR	Davante Adams	17	236	114	13.882352941176471
Nick Chubb	CLE	203	131	CLE	Nick Chubb	17	254	107	14.941176470588236
Tyreek Hill	MIA	175	112	MIA	Tyreek Hill	17	228	107	13.411764705882353
Jalen Hurts	PHI	373	247	PHI	Jalen Hurts	15	378	100	25.2
A.J. Brown	PHI	163	100	PHI	A.J. Brown	17	212	91	12.470588235294118
Stefon Diggs	BUF	165	102	BUF	Stefon Diggs	16	209	89	13.0625
Saquon Barkley	NYG	185	113	NYG	Saquon Barkley	16	227	82	14.1875
CeeDee Lamb	DAL	160	97	DAL	CeeDee Lamb	17	195	75	11.470588235294118
Joe Burrow	CIN	349	223	CIN	Joe Burrow	16	351	74	21.9375
Jamaal Williams	NO	122	50	DET	Jamaal Williams	17	214	69	12.588235294117647
Jaylen Waddle	MIA	145	82	MIA	Jaylen Waddle	17	184	66	10.823529411764707
Tony Pollard	DAL	190	118	DAL	Tony Pollard	16	210	65	13.125
Dalvin Cook	MIN	184	112	MIN	Dalvin Cook	17	199	55	11.705882352941176
Miles Sanders	CAR	134	62	PHI	Miles Sanders	17	197	53	11.588235294117647
George Kittle	SF	113	78	SFO	George Kittle	15	141	52	9.4
Amari Cooper	CLE	141	78	CLE	Amari Cooper	17	168	50	9.882352941176471
Taysom Hill	NO	37	2	NOR	Taysom Hill	16	137	49	8.5625
Aaron Jones	GB	163	91	GNB	Aaron Jones	17	190	46	11.176470588235293
DeVonta Smith	PHI	138	75	PHI	DeVonta Smith	17	160	42	9.411764705882353
T.J. Hockenson	MIN	114	79	2TM	T.J. Hockenson	17	129	42	7.588235294117647
Christian Kirk	JAC	124	61	JAX	Christian Kirk	17	158	41	9.294117647058824
Najee Harris	PIT	167	95	PIT	Najee Harris	17	182	40	10.705882352941176
Ja'Marr Chase	CIN	196	133	CIN	Ja'Marr Chase	12	155	38	12.916666666666666
Rhamondre Stevenson	NE	153	81	NWE	Rhamondre Stevenson	17	180	37	10.588235294117647
Joe Mixon	CIN	170	98	CIN	Joe Mixon	14	180	37	12.857142857142858
Tyler Lockett	SEA	117	54	SEA	Tyler Lockett	16	153	37	9.5625
Terry McLaurin	WAS	129	66	WAS	Terry McLaurin	17	152	35	8.941176470588236
Brandon Aiyuk	SF	115	52	SFO	Brandon Aiyuk	17	150	33	8.823529411764707
Mike Evans	TB	128	65	TAM	Mike Evans	15	148	32	9.866666666666667
Tee Higgins	CIN	141	78	CIN	Tee Higgins	16	147	30	9.1875
Mark Andrews	BAL	122	87	BAL	Mark Andrews	15	118	30	7.866666666666666
Geno Smith	SEA	282	156	SEA	Geno Smith	17	304	30	17.88235294117647
Travis Etienne	Jr. JAC	164	92	JAX	Travis Etienne	17	170	28	10
Justin Fields	CHI	319	193	CHI	Justin Fields	15	296	23	19.733333333333334
Trevor Lawrence	JAC	290	164	JAX	Trevor Lawrence	17	296	23	17.41176470588235
Jerry Jeudy	DEN	133	70	DEN	Jerry Jeudy	15	137	21	9.133333333333333
Kirk Cousins	MIN	303	177	MIN	Kirk Cousins	17	292	19	17.176470588235293
Evan Engram	JAC	88	53	JAX	Evan Engram	17	104	18	6.117647058823529
Garrett Wilson	NYJ	147	84	NYJ	Garrett Wilson	17	133	17	7.823529411764706
Daniel Jones	NYG	286	160	NYG	Daniel Jones	16	289	16	18.0625
Alvin Kamara	NO	148	76	NOR	Alvin Kamara	15	155	14	10.333333333333334
James Conner	ARI	163	91	ARI	James Conner	13	154	13	11.846153846153847
Cole Kmet	CHI	87	52	CHI	Cole Kmet	17	97	11	5.705882352941177
Cooper Kupp	LAR	189	126	LAR	Cooper Kupp	9	126	11	14
Chris Olave	NO	128	65	NOR	Chris Olave	15	126	11	8.4
Jared Goff	DET	272	146	DET	Jared Goff	17	283	11	16.647058823529413
Christian Watson	GB	151	88	GNB	Christian Watson	14	123	8	8.785714285714286
Juwan Johnson	NO	75	40	NOR	Juwan Johnson	16	93	7	5.8125
Justin Herbert	LAC	308	182	LAC	Justin Herbert	17	279	7	16.41176470588235
Chris Godwin	TB	112	49	TAM	Chris Godwin	15	119	4	7.933333333333334
David Montgomery	DET	156	84	CHI	David Montgomery	16	144	3	9
Tyler Allgeier	ATL	102	30	ATL	Tyler Allgeier	16	143	3	8.9375
D'Andre Swift	PHI	151	79	DET	D'Andre Swift	14	143	3	10.214285714285714
Dawson Knox	BUF	62	27	BUF	Dawson Knox	15	88	2	5.866666666666666
Zay Jones	JAC	91	28	JAX	Zay Jones	16	116	2	7.25
Dallas Goedert	PHI	97	62	PHI	Dallas Goedert	12	86	1	7.166666666666667
Dalton Schultz	HOU	77	42	DAL	Dalton Schultz	15	86	0	5.733333333333333
Allen Lazard	NYJ	108	45	GNB	Allen Lazard	15	115	0	7.666666666666667
Pat Freiermuth	PIT	89	54	PIT	Pat Freiermuth	16	85	0	5.3125
Jerick McKinnon	KC	111	39	KAN	Jerick McKinnon	17	140	0	8.235294117647058
Aaron Rodgers	NYJ	279	153	GNB	Aaron Rodgers	17	239	0	14.058823529411764
Lamar Jackson	BAL	344	218	BAL	Lamar Jackson	12	236	0	19.666666666666668
Tua Tagovailoa	MIA	253	127	MIA	Tua Tagovailoa	13	231	0	17.76923076923077
Russell Wilson	DEN	292	166	DEN	Russell Wilson	15	225	0	15
Derek Carr	NO	249	123	LVR	Derek Carr	15	219	0	14.6
Kyler Murray	ARI	170	44	ARI	Kyler Murray	11	201	0	18.272727272727273
Dak Prescott	DAL	290	164	DAL	Dak Prescott	12	199	0	16.583333333333332
Marcus Mariota	PHI	28	-98	ATL	Marcus Mariota	13	197	0	15.153846153846153
Davis Mills	HOU	20	-106	HOU	Davis Mills	15	182	0	12.133333333333333
Andy Dalton	CAR	20	-106	NOR	Andy Dalton	14	174	0	12.428571428571429
Mac Jones	NE	205	79	NWE	Mac Jones	14	170	0	12.142857142857142
Jacoby Brissett	WAS	106	-20	CLE	Jacoby Brissett	16	169	0	10.5625
Jimmy Garoppolo	LV	240	114	SFO	Jimmy Garoppolo	11	165	0	15
Ryan Tannehill	TEN	155	29	TEN	Ryan Tannehill	12	161	0	13.416666666666666
Kenny Pickett	PIT	257	131	PIT	Kenny Pickett	13	150	0	11.538461538461538
AJ Dillon	GB	128	56	GNB	AJ Dillon	17	140	0	8.235294117647058
Devin Singletary	HOU	92	20	BUF	Devin Singletary	16	140	0	8.75
Raheem Mostert	MIA	102	30	MIA	Raheem Mostert	16	137	0	8.5625
Jeff Wilson	Jr. MIA	115	43	2TM	Jeff Wilson	16	137	0	8.5625
Dameon Pierce	HOU	155	83	HOU	Dameon Pierce	13	136	0	10.461538461538462
Cordarrelle Patterson	ATL	70	-2	ATL	Cordarrelle Patterson	13	134	0	10.307692307692308
Cam Akers	LAR	133	61	LAR	Cam Akers	15	128	0	8.533333333333333
Latavius Murray	BUF	61	-11	2TM	Latavius Murray	13	127	0	9.76923076923077
D'Onta Foreman	CHI	102	30	CAR	D'Onta Foreman	17	126	0	7.411764705882353
Isiah Pacheco	KC	159	87	KAN	Isiah Pacheco	17	122	0	7.176470588235294
Baker Mayfield	TB	175	49	2TM	Baker Mayfield	12	121	0	10.083333333333334
Antonio Gibson	WAS	94	22	WAS	Antonio Gibson	15	120	0	8
Jonathan Taylor	IND	193	121	IND	Jonathan Taylor	11	118	0	10.727272727272727
Taylor Heinicke	ATL	38	-88	WAS	Taylor Heinicke	9	116	0	12.88888888888889
George Pickens	PIT	125	62	PIT	George Pickens	17	115	0	6.764705882352941
Mike Williams	LAC	124	61	LAC	Mike Williams	13	114	0	8.76923076923077
Jakobi Meyers	LV	119	56	NWE	Jakobi Meyers	14	113	0	8.071428571428571
Curtis Samuel	WAS	85	22	WAS	Curtis Samuel	17	112	0	6.588235294117647
Deebo Samuel	SF	151	88	SFO	Deebo Samuel	13	112	0	8.615384615384615
Adam Thielen	CAR	86	23	MIN	Adam Thielen	17	110	0	6.470588235294118
Tyler Boyd	CIN	91	28	CIN	Tyler Boyd	16	109	0	6.8125
Khalil Herbert	CHI	110	38	CHI	Khalil Herbert	13	109	0	8.384615384615385
Matthew Stafford	LAR	238	112	LAR	Matthew Stafford	9	108	0	12
Drake London	ATL	113	50	ATL	Drake London	17	107	0	6.294117647058823
JuJu Smith-Schuster	NE	77	14	KAN	JuJu Smith-Schuster	16	107	0	6.6875
Donovan Peoples-Jones	CLE	97	34	CLE	Donovan Peoples-Jones	17	106	0	6.235294117647059
Brock Purdy	SF	240	114	SFO	Brock Purdy	9	106	0	11.777777777777779
Samaje Perine	DEN	124	52	CIN	Samaje Perine	16	104	0	6.5
Keenan Allen	LAC	126	63	LAC	Keenan Allen	10	98	0	9.8
Zach Wilson	NYJ	16	-110	NYJ	Zach Wilson	9	98	0	10.88888888888889
Mack Hollins	ATL	64	1	LVR	Mack Hollins	17	97	0	5.705882352941177
Jahan Dotson	WAS	114	51	WAS	Jahan Dotson	12	96	0	8
Breece Hall	NYJ	182	110	NYJ	Breece Hall	7	96	0	13.714285714285714
K.J. Osborn	MIN	85	22	MIN	K.J. Osborn	17	96	0	5.647058823529412
Diontae Johnson	PIT	107	44	PIT	Diontae Johnson	17	95	0	5.588235294117647
Courtland Sutton	DEN	104	41	DEN	Courtland Sutton	15	95	0	6.333333333333333
Marquise Brown	ARI	119	56	ARI	Marquise Brown	12	89	0	7.416666666666667
Brandin Cooks	DAL	122	59	HOU	Brandin Cooks	13	89	0	6.846153846153846
Rachaad White	TB	131	59	TAM	Rachaad White	17	89	0	5.235294117647059
Parris Campbell	NYG	69	6	IND	Parris Campbell	17	86	0	5.0588235294117645
Sam Darnold	SF	15	-111	CAR	Sam Darnold	6	86	0	14.333333333333334
Deshaun Watson	CLE	319	193	CLE	Deshaun Watson	6	86	0	14.333333333333334
Michael Carter	NYJ	69	-3	NYJ	Michael Carter	16	85	0	5.3125
James Cook	BUF	113	41	BUF	James Cook	16	85	0	5.3125
David Njoku	CLE	85	50	CLE	David Njoku	14	84	0	6
Gerald Everett	LAC	80	45	LAC	Gerald Everett	16	82	0	5.125
Darius Slayton	NYG	52	-11	NYG	Darius Slayton	16	82	0	5.125
Clyde Edwards-Helaire	KC	41	-31	KAN	Clyde Edwards-Helaire	10	81	0	8.1
Jordan Akins	CLE	19	-16	HOU	Jordan Akins	15	80	0	5.333333333333333
Tyler Higbee	LAR	79	44	LAR	Tyler Higbee	17	80	0	4.705882352941177
Marquez Valdes-Scantling	KC	92	29	KAN	Marquez Valdes-Scantling	17	80	0	4.705882352941177
Devin Duvernay	BAL	17	-46	BAL	Devin Duvernay	14	79	0	5.642857142857143
Isaiah McKenzie	IND	28	-35	BUF	Isaiah McKenzie	15	78	0	5.2
James Robinson	NE	85	13	2TM	James Robinson	11	78	0	7.090909090909091
Richie James	Jr. KC	56	-7	NYG	Richie James	17	76	0	4.470588235294118
Tyler Conklin	NYJ	67	32	NYJ	Tyler Conklin	17	74	0	4.352941176470588
J.K. Dobbins	BAL	169	97	BAL	J.K. Dobbins	8	74	0	9.25
Damien Harris	BUF	107	35	NWE	Damien Harris	11	74	0	6.7272727272727275
Chuba Hubbard	CAR	92	20	CAR	Chuba Hubbard	15	74	0	4.933333333333334
Noah Fant	SEA	63	28	SEA	Noah Fant	17	73	0	4.294117647058823
Russell Gage	TB	72	9	TAM	Russell Gage	13	73	0	5.615384615384615
Alexander Mattison	MIN	117	45	MIN	Alexander Mattison	17	73	0	4.294117647058823
Rashid Shaheed	NO	84	21	NOR	Rashid Shaheed	12	73	0	6.083333333333333
Noah Brown	HOU	9	-54	DAL	Noah Brown	16	72	0	4.5
DeVante Parker	NE	76	13	NWE	DeVante Parker	13	72	0	5.538461538461538
Marvin Jones	Jr. DET	82	19	JAX	Marvin Jones	16	71	0	4.4375
Alec Pierce	IND	70	7	IND	Alec Pierce	16	71	0	4.4375
Olamide Zaccheaus	PHI	41	-22	ATL	Olamide Zaccheaus	17	70	0	4.117647058823529
Zach Ertz	ARI	66	31	ARI	Zach Ertz	10	69	0	6.9
Mecole Hardman	Jr. NYJ	79	16	KAN	Mecole Hardman	8	69	0	8.625
Kalif Raymond	DET	34	-29	DET	Kalif Raymond	17	69	0	4.0588235294117645
DJ Chark	Jr. CAR	111	48	DET	DJ Chark	11	68	0	6.181818181818182
Chris Moore	TEN	55	-8	HOU	Chris Moore	16	67	0	4.1875
DeAndre Carter	LV	6	-57	LAC	DeAndre Carter	17	66	0	3.8823529411764706
Corey Davis	NYJ	60	-3	NYJ	Corey Davis	13	66	0	5.076923076923077
Michael Gallup	DAL	89	26	DAL	Michael Gallup	14	66	0	4.714285714285714
Mike Gesicki	NE	61	26	MIA	Mike Gesicki	17	66	0	3.8823529411764706
Josh Reynolds	DET	44	-19	DET	Josh Reynolds	14	66	0	4.714285714285714
Eno Benjamin	NO	9	-63	3TM	Eno Benjamin	15	65	0	4.333333333333333
Kenneth Gainwell	PHI	58	-14	PHI	Kenneth Gainwell	17	65	0	3.823529411764706
Chigoziem Okonkwo	TEN	76	41	TEN	Chigoziem Okonkwo	17	65	0	3.823529411764706
Jaylen Warren	PIT	79	7	PIT	Jaylen Warren	16	65	0	4.0625
Marquise Goodwin	CLE	38	-25	SEA	Marquise Goodwin	13	63	0	4.846153846153846
Hunter Henry	NE	56	21	NWE	Hunter Henry	17	63	0	3.7058823529411766
Isaiah Hodgins	NYG	74	11	2TM	Isaiah Hodgins	10	63	0	6.3
Robert Woods	HOU	72	9	TEN	Robert Woods	17	63	0	3.7058823529411766
Darnell Mooney	CHI	89	26	CHI	Darnell Mooney	12	62	0	5.166666666666667
Treylon Burks	TEN	106	43	TEN	Treylon Burks	11	61	0	5.545454545454546
Greg Dortch	ARI	8	-55	ARI	Greg Dortch	16	61	0	3.8125
Nico Collins	HOU	96	33	HOU	Nico Collins	10	60	0	6
Romeo Doubs	GB	86	23	GNB	Romeo Doubs	13	60	0	4.615384615384615
Chase Claypool	CHI	83	20	2TM	Chase Claypool	15	59	0	3.933333333333333
Gus Edwards	BAL	90	18	BAL	Gus Edwards	9	59	0	6.555555555555555
Robert Tonyan	CHI	32	-3	GNB	Robert Tonyan	17	59	0	3.4705882352941178
Chase Edmonds	TB	69	-3	2TM	Chase Edmonds	13	58	0	4.461538461538462
Nick Westbrook-Ikhine	TEN	68	5	TEN	Nick Westbrook-Ikhine	17	58	0	3.411764705882353
Cooper Rush	DAL	13	-113	DAL	Cooper Rush	9	57	0	6.333333333333333
Darren Waller	NYG	102	67	LVR	Darren Waller	9	57	0	6.333333333333333
Mike White	MIA	28	-98	NYJ	Mike White	4	57	0	14.25
Austin Hooper	LV	51	16	TEN	Austin Hooper	17	56	0	3.2941176470588234
Deon Jackson	IND	57	-15	IND	Deon Jackson	16	55	0	3.4375
Van Jefferson	LAR	79	16	LAR	Van Jefferson	11	55	0	5
Isaiah Likely	BAL	43	8	BAL	Isaiah Likely	16	55	0	3.4375
Zack Moss	IND	38	-34	2TM	Zack Moss	13	54	0	4.153846153846154
Trent Sherfield	BUF	25	-38	MIA	Trent Sherfield	17	54	0	3.176470588235294
Kendrick Bourne	NE	49	-14	NWE	Kendrick Bourne	16	53	0	3.3125
Will Dissly	SEA	38	3	SEA	Will Dissly	15	53	0	3.533333333333333
Greg Dulcich	DEN	76	41	DEN	Greg Dulcich	10	53	0	5.3
Hayden Hurst	CAR	54	19	CIN	Hayden Hurst	13	53	0	4.076923076923077
Foster Moreau	NO	41	6	LVR	Foster Moreau	15	52	0	3.466666666666667
Allen Robinson	II PIT	61	-2	LAR	Allen Robinson	10	52	0	5.2
Quez Watkins	PHI	43	-20	PHI	Quez Watkins	17	52	0	3.0588235294117645
Nyheim Hines	BUF	67	-5	2TM	Nyheim Hines	16	51	0	3.1875
Joshua Kelley	LAC	66	-6	LAC	Joshua Kelley	13	51	0	3.923076923076923
Elijah Moore	CLE	76	13	NYJ	Elijah Moore	16	51	0	3.1875
Cade Otton	TB	60	25	TAM	Cade Otton	16	51	0	3.1875
Tyler Huntley	BAL	22	-104	BAL	Tyler Huntley	6	50	0	8.333333333333334
Jelani Woods	IND	64	29	IND	Jelani Woods	15	49	0	3.2666666666666666
Randall Cobb	NYJ	30	-33	GNB	Randall Cobb	13	48	0	3.6923076923076925
Trenton Irwin	CIN	33	-30	CIN	Trenton Irwin	9	48	0	5.333333333333333
Jauan Jennings	SF	50	-13	SFO	Jauan Jennings	16	48	0	3
Rashaad Penny	PHI	129	57	SEA	Rashaad Penny	5	48	0	9.6
Kyle Pitts	ATL	94	59	ATL	Kyle Pitts	10	48	0	4.8
Jamal Agnew	JAC	42	-21	JAX	Jamal Agnew	15	47	0	3.1333333333333333
Rondale Moore	ARI	83	20	ARI	Rondale Moore	8	47	0	5.875
Zonovan Knight	NYJ	73	1	NYJ	Zonovan Knight	7	46	0	6.571428571428571
Brock Wright	DET	25	-10	DET	Brock Wright	17	46	0	2.7058823529411766
Tutu Atwell	LAR	63	0	LAR	Tutu Atwell	13	45	0	3.4615384615384617
Daniel Bellinger	NYG	21	-14	NYG	Daniel Bellinger	12	45	0	3.75
Ben Skowronek	LAR	60	-3	LAR	Ben Skowronek	14	45	0	3.2142857142857144
Nelson Agholor	BAL	22	-41	NWE	Nelson Agholor	16	44	0	2.75
Ray-Ray McCloud	III SF	14	-49	SFO	Ray-Ray McCloud	17	44	0	2.588235294117647
Colby Parkinson	SEA	31	-4	SEA	Colby Parkinson	17	44	0	2.588235294117647
Tyquan Thornton	NE	77	14	NWE	Tyquan Thornton	13	44	0	3.3846153846153846
Justin Watson	KC	22	-41	KAN	Justin Watson	17	44	0	2.588235294117647
Jameis Winston	NO	14	-112	NOR	Jameis Winston	3	44	0	14.666666666666666
Caleb Huntley	ATL	25	-47	ATL	Caleb Huntley	12	43	0	3.5833333333333335
Hunter Renfrow	LV	81	18	LVR	Hunter Renfrow	10	43	0	4.3
Jarrett Stidham	DEN	15	-111	LVR	Jarrett Stidham	5	43	0	8.6
Noah Gray	KC	37	2	KAN	Noah Gray	17	42	0	2.4705882352941178
Elijah Mitchell	SF	112	40	SFO	Elijah Mitchell	5	41	0	8.2
Boston Scott	PHI	26	-46	PHI	Boston Scott	15	41	0	2.7333333333333334
Kadarius Toney	KC	109	46	2TM	Kadarius Toney	9	41	0	4.555555555555555
Braxton Berrios	MIA	55	-8	NYJ	Braxton Berrios	17	40	0	2.3529411764705883
Matt Breida	NYG	41	-31	NYG	Matt Breida	17	40	0	2.3529411764705883
Shi Smith	CAR	10	-53	CAR	Shi Smith	17	40	0	2.3529411764705883
Rashod Bateman	BAL	86	23	BAL	Rashod Bateman	6	39	0	6.5
Desmond Ridder	ATL	187	61	ATL	Desmond Ridder	4	39	0	9.75
P.J. Walker	CHI	24	-102	CAR	P.J. Walker	6	39	0	6.5
Bailey Zappe	NE	25	-101	NWE	Bailey Zappe	4	39	0	9.75
Logan Thomas	WAS	60	25	WAS	Logan Thomas	14	38	0	2.7142857142857144
Mo Alie-Cox	IND	28	-7	IND	Mo Alie-Cox	17	35	0	2.0588235294117645
Kyle Juszczyk	SF	26	-46	SFO	Kyle Juszczyk	16	35	0	2.1875
Michael Thomas	NO	111	48	NOR	Michael Thomas	3	35	0	11.666666666666666
C.J. Uzomah	NYJ	33	-2	NYJ	C.J. Uzomah	15	35	0	2.3333333333333335
Tre'Quan Smith	NO	45	-18	NOR	Tre'Quan Smith	15	34	0	2.2666666666666666
Raheem Blackshear	CAR	34	-38	CAR	Raheem Blackshear	13	33	0	2.5384615384615383
Trey McBride	ARI	43	8	ARI	Trey McBride	16	33	0	2.0625
Colt McCoy	ARI	88	-38	ARI	Colt McCoy	4	33	0	8.25
Tommy Tremble	CAR	37	2	CAR	Tommy Tremble	17	33	0	1.9411764705882353
Chosen Anderson	MIA	38	-25	2TM	Chosen Anderson	16	32	0	2
Phillip Dorsett	II LV	12	-51	HOU	Phillip Dorsett	15	32	0	2.1333333333333333
Kendall Hinton	DEN	7	-56	DEN	Kendall Hinton	12	32	0	2.6666666666666665
Jordan Mason	SF	41	-31	SFO	Jordan Mason	16	32	0	2
Harrison Bryant	CLE	27	-8	CLE	Harrison Bryant	17	31	0	1.8235294117647058
Kylen Granson	IND	27	-8	IND	Kylen Granson	13	30	0	2.3076923076923075
Justice Hill	BAL	32	-40	BAL	Justice Hill	15	30	0	2
Shane Zylstra	DET	19	-16	DET	Shane Zylstra	13	30	0	2.3076923076923075
Ameer Abdullah	LV	47	-25	LVR	Ameer Abdullah	17	29	0	1.7058823529411764
DeeJay Dallas	SEA	30	-42	SEA	DeeJay Dallas	15	29	0	1.9333333333333333
Jake Ferguson	DAL	44	9	DAL	Jake Ferguson	16	29	0	1.8125
Peyton Hendershot	DAL	25	-10	DAL	Peyton Hendershot	17	29	0	1.7058823529411764
Dare Ogunbowale	HOU	13	-59	HOU	Dare Ogunbowale	17	29	0	1.7058823529411764
Wan'Dale Robinson	NYG	67	4	NYG	Wan'Dale Robinson	6	29	0	4.833333333333333
Dyami Brown	WAS	20	-43	WAS	Dyami Brown	15	28	0	1.8666666666666667
Malik Davis	DAL	28	-44	DAL	Malik Davis	12	28	0	2.3333333333333335
Ashton Dulin	IND	9	-54	IND	Ashton Dulin	12	28	0	2.3333333333333335
KhaDarel Hodge	ATL	23	-40	ATL	KhaDarel Hodge	17	28	0	1.6470588235294117
Travis Homer	CHI	28	-44	SEA	Travis Homer	10	27	0	2.7
O.J. Howard	LV	21	-14	HOU	O.J. Howard	13	27	0	2.076923076923077
Josh Oliver	MIN	36	1	BAL	Josh Oliver	17	27	0	1.588235294117647
Adam Trautman	DEN	21	-14	NOR	Adam Trautman	15	27	0	1.8
Javonte Williams	DEN	135	63	DEN	Javonte Williams	4	26	0	6.5
Jonnu Smith	ATL	35	0	NWE	Jonnu Smith	14	25	0	1.7857142857142858
Durham Smythe	MIA	26	-9	MIA	Durham Smythe	16	25	0	1.5625
Gary Brightwell	NYG	34	-38	NYG	Gary Brightwell	17	24	0	1.411764705882353
Connor Heyward	PIT	19	-16	PIT	Connor Heyward	17	24	0	1.411764705882353
Jalen Nailor	MIN	3	-60	MIN	Jalen Nailor	15	24	0	1.6
Brandon Powell	MIN	19	-44	LAR	Brandon Powell	17	24	0	1.411764705882353
Khalil Shakir	BUF	55	-8	BUF	Khalil Shakir	14	24	0	1.7142857142857142
Alec Ingold	MIA	21	-51	MIA	Alec Ingold	17	23	0	1.3529411764705883
Teagan Quitoriano	HOU	34	-1	HOU	Teagan Quitoriano	9	23	0	2.5555555555555554
Amari Rodgers	HOU	8	-55	2TM	Amari Rodgers	16	23	0	1.4375
Craig Reynolds	DET	43	-29	DET	Craig Reynolds	9	22	0	2.4444444444444446
Kyren Williams	LAR	52	-20	LAR	Kyren Williams	10	22	0	2.2
David Bell	CLE	24	-39	CLE	David Bell	16	21	0	1.3125
Joshua Dobbs	CLE	14	-112	TEN	Joshua Dobbs	2	21	0	10.5
Jody Fortson	KC	29	-6	KAN	Jody Fortson	13	21	0	1.6153846153846154
C.J. Ham	MIN	12	-60	MIN	C.J. Ham	17	21	0	1.2352941176470589
Skyy Moore	KC	94	31	KAN	Skyy Moore	16	21	0	1.3125
Zach Pascal	ARI	5	-58	PHI	Zach Pascal	17	21	0	1.2352941176470589
Eric Saubert	MIA	21	-14	DEN	Eric Saubert	17	21	0	1.2352941176470589
Sterling Shepard	NYG	86	23	NYG	Sterling Shepard	3	21	0	7
Avery Williams	ATL	12	-60	ATL	Avery Williams	17	21	0	1.2352941176470589
Mike Boone	HOU	29	-43	DEN	Mike Boone	9	20	0	2.2222222222222223
Johnny Mundt	MIN	12	-23	MIN	Johnny Mundt	17	20	0	1.1764705882352942
Pierre Strong	Jr. NE	24	-48	NWE	Pierre Strong	15	20	0	1.3333333333333333
Ian Thomas	CAR	24	-11	CAR	Ian Thomas	17	20	0	1.1764705882352942
David Blough	ARI	29	-97	ARI	David Blough	2	19	0	9.5
KJ Hamler	DEN	13	-50	DEN	KJ Hamler	7	19	0	2.7142857142857144
Denzel Mims	NYJ	6	-57	NYJ	Denzel Mims	10	19	0	1.9
Donald Parham	Jr. LAC	36	1	LAC	Donald Parham	6	19	0	3.1666666666666665
Jalen Reagor	MIN	11	-52	MIN	Jalen Reagor	17	19	0	1.1176470588235294
Jonathan Williams	WAS	28	-44	WAS	Jonathan Williams	13	19	0	1.4615384615384615
Malik Willis	TEN	6	-120	TEN	Malik Willis	8	19	0	2.375
Brandon Bolden	LV	30	-42	LVR	Brandon Bolden	16	18	0	1.125
Lawrence Cager	NYG	10	-25	2TM	Lawrence Cager	7	18	0	2.5714285714285716
Sam Howell	WAS	139	13	WAS	Sam Howell	1	18	0	18
John Bates	WAS	20	-15	WAS	John Bates	16	17	0	1.0625
Corey Clement	ARI	57	-15	ARI	Corey Clement	9	17	0	1.8888888888888888
Ross Dwelley	SF	16	-19	SFO	Ross Dwelley	12	17	0	1.4166666666666667
James Mitchell	DET	14	-21	DET	James Mitchell	14	17	0	1.2142857142857142
Kyle Allen	BUF	11	-115	HOU	Kyle Allen	2	16	0	8
Albert Okwuegbunam	DEN	14	-21	DEN	Albert Okwuegbunam	8	16	0	2
Hassan Haskins	TEN	29	-43	TEN	Hassan Haskins	15	15	0	1
Dan Arnold	PHI	16	-19	JAX	Dan Arnold	17	14	0	0.8235294117647058
Zander Horvath	LAC	16	-56	LAC	Zander Horvath	15	14	0	0.9333333333333333
Keaontay Ingram	ARI	62	-10	ARI	Keaontay Ingram	12	14	0	1.1666666666666667
Tom Kennedy	DET	2	-61	DET	Tom Kennedy	7	14	0	2
Ko Kieft	TB	22	-13	TAM	Ko Kieft	17	14	0	0.8235294117647058
Samori Toure	GB	20	-43	GNB	Samori Toure	11	14	0	1.2727272727272727
Jameson Williams	DET	62	-1	DET	Jameson Williams	6	14	0	2.3333333333333335
Salvon Ahmed	MIA	11	-61	MIA	Salvon Ahmed	12	13	0	1.0833333333333333
Zach Gentry	PIT	11	-24	PIT	Zach Gentry	17	13	0	0.7647058823529411
Reggie Gilliam	BUF	5	-67	BUF	Reggie Gilliam	15	13	0	0.8666666666666667
Tanner Hudson	CIN	3	-32	NYG	Tanner Hudson	11	13	0	1.1818181818181819
Brevin Jordan	HOU	5	-30	HOU	Brevin Jordan	11	13	0	1.1818181818181819
Trey Lance	SF	68	-58	SFO	Trey Lance	2	12	0	6
Jordan Love	GB	222	96	GNB	Jordan Love	4	12	0	3
Quintin Morris	BUF	6	-29	BUF	Quintin Morris	14	12	0	0.8571428571428571
Nick Mullens	MIN	14	-112	MIN	Nick Mullens	4	12	0	3
Jack Stoll	PHI	17	-18	PHI	Jack Stoll	17	12	0	0.7058823529411765
Josiah Deguara	GB	20	-15	GNB	Josiah Deguara	17	11	0	0.6470588235294118
Kevin Harris	NE	39	-33	NWE	Kevin Harris	5	11	0	2.2
Brycen Hopkins	LAR	17	-18	LAR	Brycen Hopkins	14	11	0	0.7857142857142857
Tyrod Taylor	NYG	24	-102	NYG	Tyrod Taylor	3	11	0	3.6666666666666665
Snoop Conner	JAC	18	-54	JAX	Snoop Conner	8	10	0	1.25
Tyrion Davis-Price	SF	24	-48	SFO	Tyrion Davis-Price	6	10	0	1.6666666666666667
Chris Evans	CIN	18	-54	CIN	Chris Evans	12	10	0	0.8333333333333334
Dax Milne	WAS	9	-54	WAS	Dax Milne	15	10	0	0.6666666666666666
Kene Nwangwu	MIN	23	-49	MIN	Kene Nwangwu	17	10	0	0.5882352941176471
Trevor Siemian	CIN	16	-110	CHI	Trevor Siemian	2	10	0	5
Parker Hesse	ATL	9	-26	ATL	Parker Hesse	17	9	0	0.5294117647058824
Patrick Ricard	BAL	11	-61	BAL	Patrick Ricard	17	9	0	0.5294117647058824
Armani Rogers	WAS	10	-25	WAS	Armani Rogers	11	9	0	0.8181818181818182
Tyler Badie	DEN	17	-55	DEN	Tyler Badie	1	8	0	8
Blake Bell	KC	15	-20	KAN	Blake Bell	3	8	0	2.6666666666666665
Grant Calcaterra	PHI	3	-32	PHI	Grant Calcaterra	15	8	0	0.5333333333333333
Jaret Patterson	WAS	10	-62	WAS	Jaret Patterson	3	8	0	2.6666666666666665
Andrew Beck	HOU	5	-30	DEN	Andrew Beck	13	7	0	0.5384615384615384
Tyler Mabry	SEA	6	-29	SEA	Tyler Mabry	2	7	0	3.5
Tre' McKitty	LAC	15	-20	LAC	Tre' McKitty	17	7	0	0.4117647058823529
Ty Montgomery	NE	23	-49	NWE	Ty Montgomery	1	7	0	7
Gunner Olszewski	PIT	17	-46	PIT	Gunner Olszewski	16	7	0	0.4375
Ke'Shawn Vaughn	TB	41	-31	TAM	Ke'Shawn Vaughn	15	7	0	0.4666666666666667
Zamir White	LV	51	-21	LVR	Zamir White	14	7	0	0.5
Jalen Guyton	LAC	36	-27	LAC	Jalen Guyton	3	6	0	2
Tyler Kroft	MIA	17	-18	SFO	Tyler Kroft	11	6	0	0.5454545454545454
Mike Strachan	IND	5	-58	IND	Mike Strachan	13	6	0	0.46153846153846156
Trent Taylor	CIN	6	-57	CIN	Trent Taylor	16	6	0	0.375
Deven Thompkins	TB	10	-53	TAM	Deven Thompkins	5	6	0	1.2
Trayveon Williams	CIN	44	-28	CIN	Trayveon Williams	8	6	0	0.75
Spencer Brown	BUF	11	-61	CAR	Spencer Brown	2	5	0	2.5
Julius Chestnut	TEN	12	-60	TEN	Julius Chestnut	6	5	0	0.8333333333333334
Chris Conley	SF	5	-58	2TM	Chris Conley	9	5	0	0.5555555555555556
Blaine Gabbert	KC	16	-110	TAM	Blaine Gabbert	1	5	0	5
Tony Jones	Jr. DEN	44	-28	2TM	Tony Jones	6	5	0	0.8333333333333334
Charlie Kolar	BAL	11	-24	BAL	Charlie Kolar	2	5	0	2.5
Ronnie Rivers	LAR	9	-63	LAR	Ronnie Rivers	8	5	0	0.625
Isaiah Spiller	LAC	47	-25	LAC	Isaiah Spiller	6	5	0	0.8333333333333334
Stephen Sullivan	CAR	16	-19	CAR	Stephen Sullivan	14	5	0	0.35714285714285715
Patrick Taylor	Jr. GB	23	-49	GNB	Patrick Taylor	14	5	0	0.35714285714285715
Trevon Wesco	TEN	26	-9	CHI	Trevon Wesco	14	5	0	0.35714285714285715
Luke Farrell	JAC	12	-23	JAX	Luke Farrell	17	4	0	0.23529411764705882
Chris Manhertz	DEN	13	-22	JAX	Chris Manhertz	17	4	0	0.23529411764705882
Racey McMath	TEN	20	-43	TEN	Racey McMath	5	4	0	0.8
Kyle Philips	TEN	59	-4	TEN	Kyle Philips	4	4	0	1
James Proche	II BAL	4	-59	BAL	James Proche	15	4	0	0.26666666666666666
Ben Ellefson	MIN	12	-23	MIN	Ben Ellefson	4	3	0	0.75
Tim Jones	JAC	10	-53	JAX	Tim Jones	17	3	0	0.17647058823529413
Larry Rountree	III LAC	14	-58	LAC	Larry Rountree	4	3	0	0.75
Michael Burton	DEN	7	-65	KAN	Michael Burton	17	2	0	0.11764705882352941
Ty Chandler	MIN	68	-4	MIN	Ty Chandler	3	2	0	0.6666666666666666
Frank Darby	ATL	4	-59	ATL	Frank Darby	5	2	0	0.4
Bryan Edwards	NO	13	-50	ATL	Bryan Edwards	7	2	0	0.2857142857142857
Simi Fehoko	DAL	5	-58	DAL	Simi Fehoko	5	2	0	0.4
Danny Gray	SF	10	-53	SFO	Danny Gray	13	2	0	0.15384615384615385
Troy Hairston	II HOU	10	-62	HOU	Troy Hairston	16	2	0	0.125
Penny Hart	ATL	13	-50	SEA	Penny Hart	9	2	0	0.2222222222222222
Jesper Horsted	LV	16	-19	LVR	Jesper Horsted	15	2	0	0.13333333333333333
Cade Johnson	SEA	5	-58	SEA	Cade Johnson	3	2	0	0.6666666666666666
D'Ernest Johnson	JAC	24	-48	CLE	D'Ernest Johnson	15	2	0	0.13333333333333333
Keith Kirkwood	NO	5	-58	NOR	Keith Kirkwood	5	2	0	0.4
Adam Prentice	NO	7	-65	NOR	Adam Prentice	11	2	0	0.18181818181818182
Stone Smartt	LAC	12	-23	LAC	Stone Smartt	7	2	0	0.2857142857142857
Cole Turner	WAS	8	-27	WAS	Cole Turner	10	2	0	0.2
Dareke Young	SEA	11	-52	SEA	Dareke Young	13	2	0	0.15384615384615385
Devin Asiasi	CIN	13	-22	CIN	Devin Asiasi	12	1	0	0.08333333333333333
Miles Boykin	PIT	5	-58	PIT	Miles Boykin	16	1	0	0.0625
Jason Cabinda	DET	6	-66	DET	Jason Cabinda	8	1	0	0.125
Jerome Ford	CLE	87	15	CLE	Jerome Ford	13	1	0	0.07692307692307693
Brian Hoyer	LV	28	-98	NWE	Brian Hoyer	1	1	0	1
Jakob Johnson	LV	5	-67	LVR	Jakob Johnson	17	1	0	0.058823529411764705
Sean McKeon	DAL	6	-29	DAL	Sean McKeon	13	1	0	0.07692307692307693
Jeremy Ruckert	NYJ	13	-22	NYJ	Jeremy Ruckert	9	1	0	0.1111111111111111
Keith Smith	ATL	4	-68	ATL	Keith Smith	17	1	0	0.058823529411764705
Jalen Tolbert	DAL	24	-39	DAL	Jalen Tolbert	8	1	0	0.125
Kyle Trask	TB	72	-54	TAM	Kyle Trask	1	1	0	1
Montrell Washington	DEN	2	-61	DEN	Montrell Washington	15	1	0	0.06666666666666667
Ty'Son Williams	ARI	21	-51	ARI	Ty'Son Williams	1	1	0	1
Trinity Benson	DET	9	-54	DET	Trinity Benson	1	0	0	0
Brittain Brown	LV	24	-48	LVR	Brittain Brown	6	0	0	0
Britain Covey	PHI	10	-53	PHI	Britain Covey	17	0	0	0
Rico Dowdle	DAL	25	-47	DAL	Rico Dowdle	5	0	0	0
Erik Ezukanma	MIA	12	-51	MIA	Erik Ezukanma	1	0	0	0
Feleipe Franks	ATL	1	-125	ATL	Feleipe Franks	11	0	0	0
John Kelly	Jr. CLE	28	-44	CLE	John Kelly	1	0	0	0
Marcus Kemp	WAS	4	-59	KAN	Marcus Kemp	3	0	0	0
Mason Kinsey	TEN	4	-59	TEN	Mason Kinsey	2	0	0	0
Lucas Krull	NO	3	-32	NOR	Lucas Krull	1	0	0	0
Hunter Long	LAR	30	-5	MIA	Hunter Long	9	0	0	0
Lance McCutcheon	LAR	6	-57	LAR	Lance McCutcheon	10	0	0	0
Kevin Rader	TEN	20	-15	TEN	Kevin Rader	14	0	0	0
Drew Sample	CIN	14	-21	CIN	Drew Sample	2	0	0	0
Matt Sokol	NE	5	-30	NWE	Matt Sokol	3	0	0	0
Noah Togiai	ARI	7	-28	PHI	Noah Togiai	2	0	0	0
Scotty Washington	NE	5	-30	NWE	Scotty Washington	1	0	0	0
Charlie Woerner	SF	2	-33	SFO	Charlie Woerner	17	0	0	0
C.J. Beathard	JAC	13	-113	JAX	C.J. Beathard	4	-1	0	-0.25
Deonte Harty	BUF	33	-30	NOR	Deonte Harty	4	-1	0	-0.25
KaVontae Turpin	DAL	16	-47	DAL	KaVontae Turpin	17	-1	0	-0.058823529411764705
Michael Wilson	ARI	16	-47	\N	\N	\N	\N	\N	\N
Luke Musgrave	GB	49	14	\N	\N	\N	\N	\N	\N
Matt Prater	ARI	110	-8	\N	\N	\N	\N	\N	\N
WAS	WAS	116	6	\N	\N	\N	\N	\N	\N
Dalton Kincaid	BUF	73	38	\N	\N	\N	\N	\N	\N
Deuce Vaughn	DAL	31	-41	\N	\N	\N	\N	\N	\N
Matt Gay	IND	113	-5	\N	\N	\N	\N	\N	\N
Devon Achane	MIA	76	4	\N	\N	\N	\N	\N	\N
Jaren Hall	MIN	10	-116	\N	\N	\N	\N	\N	\N
C.J. Stroud	HOU	210	84	\N	\N	\N	\N	\N	\N
JAC	JAC	113	3	\N	\N	\N	\N	\N	\N
Chris Rodriguez	Jr. WAS	24	-48	\N	\N	\N	\N	\N	\N
Harrison Butker	KC	135	17	\N	\N	\N	\N	\N	\N
JaMycal Hasty	JAC	53	-19	\N	\N	\N	\N	\N	\N
ATL	ATL	101	-9	\N	\N	\N	\N	\N	\N
Jake Haener	NO	9	-117	\N	\N	\N	\N	\N	\N
KC	KC	116	6	\N	\N	\N	\N	\N	\N
Evan McPherson	CIN	130	12	\N	\N	\N	\N	\N	\N
Demario Douglas	NE	5	-58	\N	\N	\N	\N	\N	\N
Clayton Tune	ARI	8	-118	\N	\N	\N	\N	\N	\N
Derius Davis	LAC	3	-60	\N	\N	\N	\N	\N	\N
NYJ	NYJ	109	-1	\N	\N	\N	\N	\N	\N
Amon-Ra St.	Brown DET	148	85	\N	\N	\N	\N	\N	\N
Cameron Dicker	LAC	129	11	\N	\N	\N	\N	\N	\N
Israel Abanikanda	NYJ	35	-37	\N	\N	\N	\N	\N	\N
DJ Moore	CHI	145	82	\N	\N	\N	\N	\N	\N
Luke Schoonmaker	DAL	33	-2	\N	\N	\N	\N	\N	\N
Sam LaPorta	DET	63	28	\N	\N	\N	\N	\N	\N
Charlie Jones	CIN	41	-22	\N	\N	\N	\N	\N	\N
Tim Patrick	DEN	96	33	\N	\N	\N	\N	\N	\N
IND	IND	111	1	\N	\N	\N	\N	\N	\N
Justin Tucker	BAL	140	22	\N	\N	\N	\N	\N	\N
Grant DuBose	GB	5	-58	\N	\N	\N	\N	\N	\N
Davis Allen	LAR	19	-16	\N	\N	\N	\N	\N	\N
Zach Charbonnet	SEA	94	22	\N	\N	\N	\N	\N	\N
Marvin Mims	Jr. DEN	34	-29	\N	\N	\N	\N	\N	\N
Curtis Hodges	WAS	16	-19	\N	\N	\N	\N	\N	\N
Stetson Bennett	LAR	20	-106	\N	\N	\N	\N	\N	\N
Jayden Reed	GB	81	18	\N	\N	\N	\N	\N	\N
CHI	CHI	97	-13	\N	\N	\N	\N	\N	\N
CIN	CIN	111	1	\N	\N	\N	\N	\N	\N
Tank Bigsby	JAC	71	-1	\N	\N	\N	\N	\N	\N
Laviska Shenault	Jr. CAR	31	-32	\N	\N	\N	\N	\N	\N
Josh Downs	IND	54	-9	\N	\N	\N	\N	\N	\N
Calvin Ridley	JAC	133	70	\N	\N	\N	\N	\N	\N
Brayden Willis	SF	17	-18	\N	\N	\N	\N	\N	\N
Tre Tucker	LV	12	-51	\N	\N	\N	\N	\N	\N
Quentin Johnston	LAC	99	36	\N	\N	\N	\N	\N	\N
Caleb Shudak	TEN	95	-23	\N	\N	\N	\N	\N	\N
Riley Patterson	DET	121	3	\N	\N	\N	\N	\N	\N
MIN	MIN	104	-6	\N	\N	\N	\N	\N	\N
TB	TB	107	-3	\N	\N	\N	\N	\N	\N
Joshua Palmer	LAC	58	-5	\N	\N	\N	\N	\N	\N
Will Levis	TEN	79	-47	\N	\N	\N	\N	\N	\N
Cairo Santos	CHI	119	1	\N	\N	\N	\N	\N	\N
Greg Zuerlein	NYJ	123	5	\N	\N	\N	\N	\N	\N
Chris Boswell	PIT	115	-3	\N	\N	\N	\N	\N	\N
Zach Evans	LAR	55	-17	\N	\N	\N	\N	\N	\N
Jordan Addison	MIN	108	45	\N	\N	\N	\N	\N	\N
Terrace Marshall	Jr. CAR	54	-9	\N	\N	\N	\N	\N	\N
LAR	LAR	104	-6	\N	\N	\N	\N	\N	\N
Evan Hull	IND	14	-58	\N	\N	\N	\N	\N	\N
Hendon Hooker	DET	14	-112	\N	\N	\N	\N	\N	\N
Anthony McFarland	Jr. PIT	26	-46	\N	\N	\N	\N	\N	\N
Puka Nacua	LAR	38	-25	\N	\N	\N	\N	\N	\N
Anthony Richardson	IND	229	103	\N	\N	\N	\N	\N	\N
PIT	PIT	114	4	\N	\N	\N	\N	\N	\N
TEN	TEN	103	-7	\N	\N	\N	\N	\N	\N
Jaxon Smith-Njigba	SEA	106	43	\N	\N	\N	\N	\N	\N
ARI	ARI	100	-10	\N	\N	\N	\N	\N	\N
Cade York	CLE	113	-5	\N	\N	\N	\N	\N	\N
Jalin Hyatt	NYG	51	-12	\N	\N	\N	\N	\N	\N
Equanimeous St.	Brown CHI	21	-42	\N	\N	\N	\N	\N	\N
David Moore	TB	23	-40	\N	\N	\N	\N	\N	\N
Rashee Rice	KC	72	9	\N	\N	\N	\N	\N	\N
PHI	PHI	125	15	\N	\N	\N	\N	\N	\N
Jake Moody	SF	126	8	\N	\N	\N	\N	\N	\N
Anders Carlson	GB	108	-10	\N	\N	\N	\N	\N	\N
Michael Pittman	Jr. IND	100	37	\N	\N	\N	\N	\N	\N
Max Duggan	LAC	10	-116	\N	\N	\N	\N	\N	\N
Ka'imi Fairbairn	HOU	113	-5	\N	\N	\N	\N	\N	\N
Scotty Miller	ATL	8	-55	\N	\N	\N	\N	\N	\N
Damarea Crockett	DEN	22	-50	\N	\N	\N	\N	\N	\N
Roschon Johnson	CHI	66	-6	\N	\N	\N	\N	\N	\N
LAC	LAC	113	3	\N	\N	\N	\N	\N	\N
Eddy Pineiro	CAR	118	0	\N	\N	\N	\N	\N	\N
NO	NO	110	0	\N	\N	\N	\N	\N	\N
Payne Durham	TB	15	-20	\N	\N	\N	\N	\N	\N
BAL	BAL	117	7	\N	\N	\N	\N	\N	\N
Zack Kuntz	NYJ	11	-24	\N	\N	\N	\N	\N	\N
Parker Washington	JAC	23	-40	\N	\N	\N	\N	\N	\N
Brenton Strange	JAC	28	-7	\N	\N	\N	\N	\N	\N
Lew Nichols	III GB	15	-57	\N	\N	\N	\N	\N	\N
Chase Brown	CIN	75	3	\N	\N	\N	\N	\N	\N
Jonathan Mingo	CAR	85	22	\N	\N	\N	\N	\N	\N
CLE	CLE	118	8	\N	\N	\N	\N	\N	\N
BUF	BUF	113	3	\N	\N	\N	\N	\N	\N
DET	DET	114	4	\N	\N	\N	\N	\N	\N
SF	SF	114	4	\N	\N	\N	\N	\N	\N
Tucker Kraft	GB	33	-2	\N	\N	\N	\N	\N	\N
Kendre Miller	NO	59	-13	\N	\N	\N	\N	\N	\N
John FitzPatrick	ATL	5	-30	\N	\N	\N	\N	\N	\N
Eric Gray	NYG	41	-31	\N	\N	\N	\N	\N	\N
GB	GB	107	-3	\N	\N	\N	\N	\N	\N
Calvin Austin	III PIT	22	-41	\N	\N	\N	\N	\N	\N
Tyjae Spears	TEN	66	-6	\N	\N	\N	\N	\N	\N
Kenneth Walker	III SEA	181	109	\N	\N	\N	\N	\N	\N
Justin Shorter	BUF	12	-51	\N	\N	\N	\N	\N	\N
Ronald Jones	II DAL	79	7	\N	\N	\N	\N	\N	\N
Daniel Carlson	LV	129	11	\N	\N	\N	\N	\N	\N
Cedrick Wilson	Jr. MIA	18	-45	\N	\N	\N	\N	\N	\N
Kayshon Boutte	NE	10	-53	\N	\N	\N	\N	\N	\N
Michael Badgley	DET	125	7	\N	\N	\N	\N	\N	\N
SEA	SEA	114	4	\N	\N	\N	\N	\N	\N
Younghoe Koo	ATL	127	9	\N	\N	\N	\N	\N	\N
Christopher Dunn	LAR	113	-5	\N	\N	\N	\N	\N	\N
Josh Whyle	TEN	20	-15	\N	\N	\N	\N	\N	\N
Brian Robinson	Jr. WAS	135	63	\N	\N	\N	\N	\N	\N
Dontayvion Wicks	GB	43	-20	\N	\N	\N	\N	\N	\N
Easton Stick	LAC	19	-107	\N	\N	\N	\N	\N	\N
Chad Ryland	NE	55	-63	\N	\N	\N	\N	\N	\N
Jermar Jefferson	DET	13	-59	\N	\N	\N	\N	\N	\N
Bijan Robinson	ATL	190	118	\N	\N	\N	\N	\N	\N
Brandon McManus	JAC	115	-3	\N	\N	\N	\N	\N	\N
Andrew Ogletree	IND	16	-19	\N	\N	\N	\N	\N	\N
HOU	HOU	114	4	\N	\N	\N	\N	\N	\N
Dustin Hopkins	LAC	136	18	\N	\N	\N	\N	\N	\N
Graham Gano	NYG	121	3	\N	\N	\N	\N	\N	\N
Michael Mayer	LV	48	13	\N	\N	\N	\N	\N	\N
Jason Sanders	MIA	120	2	\N	\N	\N	\N	\N	\N
La'Mical Perine	KC	11	-61	\N	\N	\N	\N	\N	\N
Joey Slye	WAS	104	-14	\N	\N	\N	\N	\N	\N
Zay Flowers	BAL	83	20	\N	\N	\N	\N	\N	\N
NE	NE	116	6	\N	\N	\N	\N	\N	\N
Irv Smith	Jr. CIN	67	32	\N	\N	\N	\N	\N	\N
CAR	CAR	100	-10	\N	\N	\N	\N	\N	\N
Sincere McCormick	LV	24	-48	\N	\N	\N	\N	\N	\N
Velus Jones	Jr. CHI	15	-48	\N	\N	\N	\N	\N	\N
Tristan Vizcaino	DAL	121	3	\N	\N	\N	\N	\N	\N
Tanner McKee	PHI	9	-117	\N	\N	\N	\N	\N	\N
Nate McCrary	CLE	9	-63	\N	\N	\N	\N	\N	\N
Wil Lutz	NO	112	-6	\N	\N	\N	\N	\N	\N
Chase McLaughlin	TB	104	-14	\N	\N	\N	\N	\N	\N
Jake Elliott	PHI	131	13	\N	\N	\N	\N	\N	\N
Greg Joseph	MIN	123	5	\N	\N	\N	\N	\N	\N
LV	LV	92	-18	\N	\N	\N	\N	\N	\N
Jason Myers	SEA	125	7	\N	\N	\N	\N	\N	\N
Aidan O'Connell	LV	10	-116	\N	\N	\N	\N	\N	\N
Jahmyr Gibbs	DET	147	75	\N	\N	\N	\N	\N	\N
DeWayne McBride	MIN	22	-50	\N	\N	\N	\N	\N	\N
Mitch Trubisky	PIT	21	-105	\N	\N	\N	\N	\N	\N
DK Metcalf	SEA	144	81	\N	\N	\N	\N	\N	\N
NYG	NYG	110	0	\N	\N	\N	\N	\N	\N
Tyler Bass	BUF	130	12	\N	\N	\N	\N	\N	\N
DEN	DEN	103	-7	\N	\N	\N	\N	\N	\N
DAL	DAL	122	12	\N	\N	\N	\N	\N	\N
Dorian Thompson-Robinson	CLE	8	-118	\N	\N	\N	\N	\N	\N
Drew Lock	SEA	15	-111	\N	\N	\N	\N	\N	\N
Odell Beckham	Jr. BAL	98	35	\N	\N	\N	\N	\N	\N
Gardner Minshew	II IND	44	-82	\N	\N	\N	\N	\N	\N
Jason Huntley	PIT	7	-65	\N	\N	\N	\N	\N	\N
Bryce Young	CAR	239	113	\N	\N	\N	\N	\N	\N
MIA	MIA	113	3	\N	\N	\N	\N	\N	\N
Darnell Washington	PIT	21	-14	\N	\N	\N	\N	\N	\N
Matt Barkley	BUF	16	-110	\N	\N	\N	\N	\N	\N
Dee Eskridge	SEA	20	-43	\N	\N	\N	\N	\N	\N
Sean Clifford	GB	20	-106	\N	\N	\N	\N	\N	\N
Cameron Latu	SF	13	-22	\N	\N	\N	\N	\N	\N
John Metchie	III HOU	71	8	\N	\N	\N	\N	\N	\N
Will Mallory	IND	10	-25	\N	\N	\N	\N	\N	\N
Cedric Tillman	CLE	28	-35	\N	\N	\N	\N	\N	\N
Gabe Davis	BUF	117	54	\N	\N	\N	\N	\N	\N
David Wells	TB	3	-32	\N	\N	\N	\N	\N	\N
Elijah Higgins	MIA	15	-20	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: fantasy_data_complete_copy; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.fantasy_data_complete_copy (name, team, points_forecasted, difference_forecasted, team_name, player_name, games_played, fantasy_points_overall, players_vbd, average_points) FROM stdin;
Patrick Mahomes	II KC	383	257	KAN	Patrick Mahomes	17	416	136	24.470588235294116
Josh Jacobs	LV	206	134	LVR	Josh Jacobs	17	275	127	16.176470588235293
Christian McCaffrey	SF	200	128	2TM	Christian McCaffrey	17	271	123	15.941176470588236
Derrick Henry	TEN	216	144	TEN	Derrick Henry	16	270	122	16.875
Justin Jefferson	MIN	202	139	MIN	Justin Jefferson	17	241	119	14.176470588235293
Austin Ekeler	LAC	215	143	LAC	Austin Ekeler	17	266	118	15.647058823529411
Josh Allen	BUF	371	245	BUF	Josh Allen	16	396	117	24.75
Travis Kelce	KC	175	140	KAN	Travis Kelce	17	206	114	12.117647058823529
Davante Adams	LV	197	134	LVR	Davante Adams	17	236	114	13.882352941176471
Nick Chubb	CLE	203	131	CLE	Nick Chubb	17	254	107	14.941176470588236
Tyreek Hill	MIA	175	112	MIA	Tyreek Hill	17	228	107	13.411764705882353
Jalen Hurts	PHI	373	247	PHI	Jalen Hurts	15	378	100	25.2
A.J. Brown	PHI	163	100	PHI	A.J. Brown	17	212	91	12.470588235294118
Stefon Diggs	BUF	165	102	BUF	Stefon Diggs	16	209	89	13.0625
Saquon Barkley	NYG	185	113	NYG	Saquon Barkley	16	227	82	14.1875
CeeDee Lamb	DAL	160	97	DAL	CeeDee Lamb	17	195	75	11.470588235294118
Joe Burrow	CIN	349	223	CIN	Joe Burrow	16	351	74	21.9375
Jamaal Williams	NO	122	50	DET	Jamaal Williams	17	214	69	12.588235294117647
Jaylen Waddle	MIA	145	82	MIA	Jaylen Waddle	17	184	66	10.823529411764707
Tony Pollard	DAL	190	118	DAL	Tony Pollard	16	210	65	13.125
Dalvin Cook	MIN	184	112	MIN	Dalvin Cook	17	199	55	11.705882352941176
Miles Sanders	CAR	134	62	PHI	Miles Sanders	17	197	53	11.588235294117647
George Kittle	SF	113	78	SFO	George Kittle	15	141	52	9.4
Amari Cooper	CLE	141	78	CLE	Amari Cooper	17	168	50	9.882352941176471
Taysom Hill	NO	37	2	NOR	Taysom Hill	16	137	49	8.5625
Aaron Jones	GB	163	91	GNB	Aaron Jones	17	190	46	11.176470588235293
DeVonta Smith	PHI	138	75	PHI	DeVonta Smith	17	160	42	9.411764705882353
T.J. Hockenson	MIN	114	79	2TM	T.J. Hockenson	17	129	42	7.588235294117647
Christian Kirk	JAC	124	61	JAX	Christian Kirk	17	158	41	9.294117647058824
Najee Harris	PIT	167	95	PIT	Najee Harris	17	182	40	10.705882352941176
Ja'Marr Chase	CIN	196	133	CIN	Ja'Marr Chase	12	155	38	12.916666666666666
Rhamondre Stevenson	NE	153	81	NWE	Rhamondre Stevenson	17	180	37	10.588235294117647
Joe Mixon	CIN	170	98	CIN	Joe Mixon	14	180	37	12.857142857142858
Tyler Lockett	SEA	117	54	SEA	Tyler Lockett	16	153	37	9.5625
Terry McLaurin	WAS	129	66	WAS	Terry McLaurin	17	152	35	8.941176470588236
Brandon Aiyuk	SF	115	52	SFO	Brandon Aiyuk	17	150	33	8.823529411764707
Mike Evans	TB	128	65	TAM	Mike Evans	15	148	32	9.866666666666667
Tee Higgins	CIN	141	78	CIN	Tee Higgins	16	147	30	9.1875
Mark Andrews	BAL	122	87	BAL	Mark Andrews	15	118	30	7.866666666666666
Geno Smith	SEA	282	156	SEA	Geno Smith	17	304	30	17.88235294117647
Travis Etienne	Jr. JAC	164	92	JAX	Travis Etienne	17	170	28	10
Justin Fields	CHI	319	193	CHI	Justin Fields	15	296	23	19.733333333333334
Trevor Lawrence	JAC	290	164	JAX	Trevor Lawrence	17	296	23	17.41176470588235
Jerry Jeudy	DEN	133	70	DEN	Jerry Jeudy	15	137	21	9.133333333333333
Kirk Cousins	MIN	303	177	MIN	Kirk Cousins	17	292	19	17.176470588235293
Evan Engram	JAC	88	53	JAX	Evan Engram	17	104	18	6.117647058823529
Garrett Wilson	NYJ	147	84	NYJ	Garrett Wilson	17	133	17	7.823529411764706
Daniel Jones	NYG	286	160	NYG	Daniel Jones	16	289	16	18.0625
Alvin Kamara	NO	148	76	NOR	Alvin Kamara	15	155	14	10.333333333333334
James Conner	ARI	163	91	ARI	James Conner	13	154	13	11.846153846153847
Cole Kmet	CHI	87	52	CHI	Cole Kmet	17	97	11	5.705882352941177
Cooper Kupp	LAR	189	126	LAR	Cooper Kupp	9	126	11	14
Chris Olave	NO	128	65	NOR	Chris Olave	15	126	11	8.4
Jared Goff	DET	272	146	DET	Jared Goff	17	283	11	16.647058823529413
Christian Watson	GB	151	88	GNB	Christian Watson	14	123	8	8.785714285714286
Juwan Johnson	NO	75	40	NOR	Juwan Johnson	16	93	7	5.8125
Justin Herbert	LAC	308	182	LAC	Justin Herbert	17	279	7	16.41176470588235
Chris Godwin	TB	112	49	TAM	Chris Godwin	15	119	4	7.933333333333334
David Montgomery	DET	156	84	CHI	David Montgomery	16	144	3	9
Tyler Allgeier	ATL	102	30	ATL	Tyler Allgeier	16	143	3	8.9375
D'Andre Swift	PHI	151	79	DET	D'Andre Swift	14	143	3	10.214285714285714
Dawson Knox	BUF	62	27	BUF	Dawson Knox	15	88	2	5.866666666666666
Zay Jones	JAC	91	28	JAX	Zay Jones	16	116	2	7.25
Dallas Goedert	PHI	97	62	PHI	Dallas Goedert	12	86	1	7.166666666666667
Dalton Schultz	HOU	77	42	DAL	Dalton Schultz	15	86	0	5.733333333333333
Allen Lazard	NYJ	108	45	GNB	Allen Lazard	15	115	0	7.666666666666667
Pat Freiermuth	PIT	89	54	PIT	Pat Freiermuth	16	85	0	5.3125
Jerick McKinnon	KC	111	39	KAN	Jerick McKinnon	17	140	0	8.235294117647058
Aaron Rodgers	NYJ	279	153	GNB	Aaron Rodgers	17	239	0	14.058823529411764
Lamar Jackson	BAL	344	218	BAL	Lamar Jackson	12	236	0	19.666666666666668
Tua Tagovailoa	MIA	253	127	MIA	Tua Tagovailoa	13	231	0	17.76923076923077
Russell Wilson	DEN	292	166	DEN	Russell Wilson	15	225	0	15
Derek Carr	NO	249	123	LVR	Derek Carr	15	219	0	14.6
Kyler Murray	ARI	170	44	ARI	Kyler Murray	11	201	0	18.272727272727273
Dak Prescott	DAL	290	164	DAL	Dak Prescott	12	199	0	16.583333333333332
Marcus Mariota	PHI	28	-98	ATL	Marcus Mariota	13	197	0	15.153846153846153
Davis Mills	HOU	20	-106	HOU	Davis Mills	15	182	0	12.133333333333333
Andy Dalton	CAR	20	-106	NOR	Andy Dalton	14	174	0	12.428571428571429
Mac Jones	NE	205	79	NWE	Mac Jones	14	170	0	12.142857142857142
Jacoby Brissett	WAS	106	-20	CLE	Jacoby Brissett	16	169	0	10.5625
Jimmy Garoppolo	LV	240	114	SFO	Jimmy Garoppolo	11	165	0	15
Ryan Tannehill	TEN	155	29	TEN	Ryan Tannehill	12	161	0	13.416666666666666
Kenny Pickett	PIT	257	131	PIT	Kenny Pickett	13	150	0	11.538461538461538
AJ Dillon	GB	128	56	GNB	AJ Dillon	17	140	0	8.235294117647058
Devin Singletary	HOU	92	20	BUF	Devin Singletary	16	140	0	8.75
Raheem Mostert	MIA	102	30	MIA	Raheem Mostert	16	137	0	8.5625
Jeff Wilson	Jr. MIA	115	43	2TM	Jeff Wilson	16	137	0	8.5625
Dameon Pierce	HOU	155	83	HOU	Dameon Pierce	13	136	0	10.461538461538462
Cordarrelle Patterson	ATL	70	-2	ATL	Cordarrelle Patterson	13	134	0	10.307692307692308
Cam Akers	LAR	133	61	LAR	Cam Akers	15	128	0	8.533333333333333
Latavius Murray	BUF	61	-11	2TM	Latavius Murray	13	127	0	9.76923076923077
D'Onta Foreman	CHI	102	30	CAR	D'Onta Foreman	17	126	0	7.411764705882353
Isiah Pacheco	KC	159	87	KAN	Isiah Pacheco	17	122	0	7.176470588235294
Baker Mayfield	TB	175	49	2TM	Baker Mayfield	12	121	0	10.083333333333334
Antonio Gibson	WAS	94	22	WAS	Antonio Gibson	15	120	0	8
Jonathan Taylor	IND	193	121	IND	Jonathan Taylor	11	118	0	10.727272727272727
Taylor Heinicke	ATL	38	-88	WAS	Taylor Heinicke	9	116	0	12.88888888888889
George Pickens	PIT	125	62	PIT	George Pickens	17	115	0	6.764705882352941
Mike Williams	LAC	124	61	LAC	Mike Williams	13	114	0	8.76923076923077
Jakobi Meyers	LV	119	56	NWE	Jakobi Meyers	14	113	0	8.071428571428571
Curtis Samuel	WAS	85	22	WAS	Curtis Samuel	17	112	0	6.588235294117647
Deebo Samuel	SF	151	88	SFO	Deebo Samuel	13	112	0	8.615384615384615
Adam Thielen	CAR	86	23	MIN	Adam Thielen	17	110	0	6.470588235294118
Tyler Boyd	CIN	91	28	CIN	Tyler Boyd	16	109	0	6.8125
Khalil Herbert	CHI	110	38	CHI	Khalil Herbert	13	109	0	8.384615384615385
Matthew Stafford	LAR	238	112	LAR	Matthew Stafford	9	108	0	12
Drake London	ATL	113	50	ATL	Drake London	17	107	0	6.294117647058823
JuJu Smith-Schuster	NE	77	14	KAN	JuJu Smith-Schuster	16	107	0	6.6875
Donovan Peoples-Jones	CLE	97	34	CLE	Donovan Peoples-Jones	17	106	0	6.235294117647059
Brock Purdy	SF	240	114	SFO	Brock Purdy	9	106	0	11.777777777777779
Samaje Perine	DEN	124	52	CIN	Samaje Perine	16	104	0	6.5
Keenan Allen	LAC	126	63	LAC	Keenan Allen	10	98	0	9.8
Zach Wilson	NYJ	16	-110	NYJ	Zach Wilson	9	98	0	10.88888888888889
Mack Hollins	ATL	64	1	LVR	Mack Hollins	17	97	0	5.705882352941177
Jahan Dotson	WAS	114	51	WAS	Jahan Dotson	12	96	0	8
Breece Hall	NYJ	182	110	NYJ	Breece Hall	7	96	0	13.714285714285714
K.J. Osborn	MIN	85	22	MIN	K.J. Osborn	17	96	0	5.647058823529412
Diontae Johnson	PIT	107	44	PIT	Diontae Johnson	17	95	0	5.588235294117647
Courtland Sutton	DEN	104	41	DEN	Courtland Sutton	15	95	0	6.333333333333333
Marquise Brown	ARI	119	56	ARI	Marquise Brown	12	89	0	7.416666666666667
Brandin Cooks	DAL	122	59	HOU	Brandin Cooks	13	89	0	6.846153846153846
Rachaad White	TB	131	59	TAM	Rachaad White	17	89	0	5.235294117647059
Parris Campbell	NYG	69	6	IND	Parris Campbell	17	86	0	5.0588235294117645
Sam Darnold	SF	15	-111	CAR	Sam Darnold	6	86	0	14.333333333333334
Deshaun Watson	CLE	319	193	CLE	Deshaun Watson	6	86	0	14.333333333333334
Michael Carter	NYJ	69	-3	NYJ	Michael Carter	16	85	0	5.3125
James Cook	BUF	113	41	BUF	James Cook	16	85	0	5.3125
David Njoku	CLE	85	50	CLE	David Njoku	14	84	0	6
Gerald Everett	LAC	80	45	LAC	Gerald Everett	16	82	0	5.125
Darius Slayton	NYG	52	-11	NYG	Darius Slayton	16	82	0	5.125
Clyde Edwards-Helaire	KC	41	-31	KAN	Clyde Edwards-Helaire	10	81	0	8.1
Jordan Akins	CLE	19	-16	HOU	Jordan Akins	15	80	0	5.333333333333333
Tyler Higbee	LAR	79	44	LAR	Tyler Higbee	17	80	0	4.705882352941177
Marquez Valdes-Scantling	KC	92	29	KAN	Marquez Valdes-Scantling	17	80	0	4.705882352941177
Devin Duvernay	BAL	17	-46	BAL	Devin Duvernay	14	79	0	5.642857142857143
Isaiah McKenzie	IND	28	-35	BUF	Isaiah McKenzie	15	78	0	5.2
James Robinson	NE	85	13	2TM	James Robinson	11	78	0	7.090909090909091
Richie James	Jr. KC	56	-7	NYG	Richie James	17	76	0	4.470588235294118
Tyler Conklin	NYJ	67	32	NYJ	Tyler Conklin	17	74	0	4.352941176470588
J.K. Dobbins	BAL	169	97	BAL	J.K. Dobbins	8	74	0	9.25
Damien Harris	BUF	107	35	NWE	Damien Harris	11	74	0	6.7272727272727275
Chuba Hubbard	CAR	92	20	CAR	Chuba Hubbard	15	74	0	4.933333333333334
Noah Fant	SEA	63	28	SEA	Noah Fant	17	73	0	4.294117647058823
Russell Gage	TB	72	9	TAM	Russell Gage	13	73	0	5.615384615384615
Alexander Mattison	MIN	117	45	MIN	Alexander Mattison	17	73	0	4.294117647058823
Rashid Shaheed	NO	84	21	NOR	Rashid Shaheed	12	73	0	6.083333333333333
Noah Brown	HOU	9	-54	DAL	Noah Brown	16	72	0	4.5
DeVante Parker	NE	76	13	NWE	DeVante Parker	13	72	0	5.538461538461538
Marvin Jones	Jr. DET	82	19	JAX	Marvin Jones	16	71	0	4.4375
Alec Pierce	IND	70	7	IND	Alec Pierce	16	71	0	4.4375
Olamide Zaccheaus	PHI	41	-22	ATL	Olamide Zaccheaus	17	70	0	4.117647058823529
Zach Ertz	ARI	66	31	ARI	Zach Ertz	10	69	0	6.9
Mecole Hardman	Jr. NYJ	79	16	KAN	Mecole Hardman	8	69	0	8.625
Kalif Raymond	DET	34	-29	DET	Kalif Raymond	17	69	0	4.0588235294117645
DJ Chark	Jr. CAR	111	48	DET	DJ Chark	11	68	0	6.181818181818182
Chris Moore	TEN	55	-8	HOU	Chris Moore	16	67	0	4.1875
DeAndre Carter	LV	6	-57	LAC	DeAndre Carter	17	66	0	3.8823529411764706
Corey Davis	NYJ	60	-3	NYJ	Corey Davis	13	66	0	5.076923076923077
Michael Gallup	DAL	89	26	DAL	Michael Gallup	14	66	0	4.714285714285714
Mike Gesicki	NE	61	26	MIA	Mike Gesicki	17	66	0	3.8823529411764706
Josh Reynolds	DET	44	-19	DET	Josh Reynolds	14	66	0	4.714285714285714
Eno Benjamin	NO	9	-63	3TM	Eno Benjamin	15	65	0	4.333333333333333
Kenneth Gainwell	PHI	58	-14	PHI	Kenneth Gainwell	17	65	0	3.823529411764706
Chigoziem Okonkwo	TEN	76	41	TEN	Chigoziem Okonkwo	17	65	0	3.823529411764706
Jaylen Warren	PIT	79	7	PIT	Jaylen Warren	16	65	0	4.0625
Marquise Goodwin	CLE	38	-25	SEA	Marquise Goodwin	13	63	0	4.846153846153846
Hunter Henry	NE	56	21	NWE	Hunter Henry	17	63	0	3.7058823529411766
Isaiah Hodgins	NYG	74	11	2TM	Isaiah Hodgins	10	63	0	6.3
Robert Woods	HOU	72	9	TEN	Robert Woods	17	63	0	3.7058823529411766
Darnell Mooney	CHI	89	26	CHI	Darnell Mooney	12	62	0	5.166666666666667
Treylon Burks	TEN	106	43	TEN	Treylon Burks	11	61	0	5.545454545454546
Greg Dortch	ARI	8	-55	ARI	Greg Dortch	16	61	0	3.8125
Nico Collins	HOU	96	33	HOU	Nico Collins	10	60	0	6
Romeo Doubs	GB	86	23	GNB	Romeo Doubs	13	60	0	4.615384615384615
Chase Claypool	CHI	83	20	2TM	Chase Claypool	15	59	0	3.933333333333333
Gus Edwards	BAL	90	18	BAL	Gus Edwards	9	59	0	6.555555555555555
Robert Tonyan	CHI	32	-3	GNB	Robert Tonyan	17	59	0	3.4705882352941178
Chase Edmonds	TB	69	-3	2TM	Chase Edmonds	13	58	0	4.461538461538462
Nick Westbrook-Ikhine	TEN	68	5	TEN	Nick Westbrook-Ikhine	17	58	0	3.411764705882353
Cooper Rush	DAL	13	-113	DAL	Cooper Rush	9	57	0	6.333333333333333
Darren Waller	NYG	102	67	LVR	Darren Waller	9	57	0	6.333333333333333
Mike White	MIA	28	-98	NYJ	Mike White	4	57	0	14.25
Austin Hooper	LV	51	16	TEN	Austin Hooper	17	56	0	3.2941176470588234
Deon Jackson	IND	57	-15	IND	Deon Jackson	16	55	0	3.4375
Van Jefferson	LAR	79	16	LAR	Van Jefferson	11	55	0	5
Isaiah Likely	BAL	43	8	BAL	Isaiah Likely	16	55	0	3.4375
Zack Moss	IND	38	-34	2TM	Zack Moss	13	54	0	4.153846153846154
Trent Sherfield	BUF	25	-38	MIA	Trent Sherfield	17	54	0	3.176470588235294
Kendrick Bourne	NE	49	-14	NWE	Kendrick Bourne	16	53	0	3.3125
Will Dissly	SEA	38	3	SEA	Will Dissly	15	53	0	3.533333333333333
Greg Dulcich	DEN	76	41	DEN	Greg Dulcich	10	53	0	5.3
Hayden Hurst	CAR	54	19	CIN	Hayden Hurst	13	53	0	4.076923076923077
Foster Moreau	NO	41	6	LVR	Foster Moreau	15	52	0	3.466666666666667
Allen Robinson	II PIT	61	-2	LAR	Allen Robinson	10	52	0	5.2
Quez Watkins	PHI	43	-20	PHI	Quez Watkins	17	52	0	3.0588235294117645
Nyheim Hines	BUF	67	-5	2TM	Nyheim Hines	16	51	0	3.1875
Joshua Kelley	LAC	66	-6	LAC	Joshua Kelley	13	51	0	3.923076923076923
Elijah Moore	CLE	76	13	NYJ	Elijah Moore	16	51	0	3.1875
Cade Otton	TB	60	25	TAM	Cade Otton	16	51	0	3.1875
Tyler Huntley	BAL	22	-104	BAL	Tyler Huntley	6	50	0	8.333333333333334
Jelani Woods	IND	64	29	IND	Jelani Woods	15	49	0	3.2666666666666666
Randall Cobb	NYJ	30	-33	GNB	Randall Cobb	13	48	0	3.6923076923076925
Trenton Irwin	CIN	33	-30	CIN	Trenton Irwin	9	48	0	5.333333333333333
Jauan Jennings	SF	50	-13	SFO	Jauan Jennings	16	48	0	3
Rashaad Penny	PHI	129	57	SEA	Rashaad Penny	5	48	0	9.6
Kyle Pitts	ATL	94	59	ATL	Kyle Pitts	10	48	0	4.8
Jamal Agnew	JAC	42	-21	JAX	Jamal Agnew	15	47	0	3.1333333333333333
Rondale Moore	ARI	83	20	ARI	Rondale Moore	8	47	0	5.875
Zonovan Knight	NYJ	73	1	NYJ	Zonovan Knight	7	46	0	6.571428571428571
Brock Wright	DET	25	-10	DET	Brock Wright	17	46	0	2.7058823529411766
Tutu Atwell	LAR	63	0	LAR	Tutu Atwell	13	45	0	3.4615384615384617
Daniel Bellinger	NYG	21	-14	NYG	Daniel Bellinger	12	45	0	3.75
Ben Skowronek	LAR	60	-3	LAR	Ben Skowronek	14	45	0	3.2142857142857144
Nelson Agholor	BAL	22	-41	NWE	Nelson Agholor	16	44	0	2.75
Ray-Ray McCloud	III SF	14	-49	SFO	Ray-Ray McCloud	17	44	0	2.588235294117647
Colby Parkinson	SEA	31	-4	SEA	Colby Parkinson	17	44	0	2.588235294117647
Tyquan Thornton	NE	77	14	NWE	Tyquan Thornton	13	44	0	3.3846153846153846
Justin Watson	KC	22	-41	KAN	Justin Watson	17	44	0	2.588235294117647
Jameis Winston	NO	14	-112	NOR	Jameis Winston	3	44	0	14.666666666666666
Caleb Huntley	ATL	25	-47	ATL	Caleb Huntley	12	43	0	3.5833333333333335
Hunter Renfrow	LV	81	18	LVR	Hunter Renfrow	10	43	0	4.3
Jarrett Stidham	DEN	15	-111	LVR	Jarrett Stidham	5	43	0	8.6
Noah Gray	KC	37	2	KAN	Noah Gray	17	42	0	2.4705882352941178
Elijah Mitchell	SF	112	40	SFO	Elijah Mitchell	5	41	0	8.2
Boston Scott	PHI	26	-46	PHI	Boston Scott	15	41	0	2.7333333333333334
Kadarius Toney	KC	109	46	2TM	Kadarius Toney	9	41	0	4.555555555555555
Braxton Berrios	MIA	55	-8	NYJ	Braxton Berrios	17	40	0	2.3529411764705883
Matt Breida	NYG	41	-31	NYG	Matt Breida	17	40	0	2.3529411764705883
Shi Smith	CAR	10	-53	CAR	Shi Smith	17	40	0	2.3529411764705883
Rashod Bateman	BAL	86	23	BAL	Rashod Bateman	6	39	0	6.5
Desmond Ridder	ATL	187	61	ATL	Desmond Ridder	4	39	0	9.75
P.J. Walker	CHI	24	-102	CAR	P.J. Walker	6	39	0	6.5
Bailey Zappe	NE	25	-101	NWE	Bailey Zappe	4	39	0	9.75
Logan Thomas	WAS	60	25	WAS	Logan Thomas	14	38	0	2.7142857142857144
Mo Alie-Cox	IND	28	-7	IND	Mo Alie-Cox	17	35	0	2.0588235294117645
Kyle Juszczyk	SF	26	-46	SFO	Kyle Juszczyk	16	35	0	2.1875
Michael Thomas	NO	111	48	NOR	Michael Thomas	3	35	0	11.666666666666666
C.J. Uzomah	NYJ	33	-2	NYJ	C.J. Uzomah	15	35	0	2.3333333333333335
Tre'Quan Smith	NO	45	-18	NOR	Tre'Quan Smith	15	34	0	2.2666666666666666
Raheem Blackshear	CAR	34	-38	CAR	Raheem Blackshear	13	33	0	2.5384615384615383
Trey McBride	ARI	43	8	ARI	Trey McBride	16	33	0	2.0625
Colt McCoy	ARI	88	-38	ARI	Colt McCoy	4	33	0	8.25
Tommy Tremble	CAR	37	2	CAR	Tommy Tremble	17	33	0	1.9411764705882353
Chosen Anderson	MIA	38	-25	2TM	Chosen Anderson	16	32	0	2
Phillip Dorsett	II LV	12	-51	HOU	Phillip Dorsett	15	32	0	2.1333333333333333
Kendall Hinton	DEN	7	-56	DEN	Kendall Hinton	12	32	0	2.6666666666666665
Jordan Mason	SF	41	-31	SFO	Jordan Mason	16	32	0	2
Harrison Bryant	CLE	27	-8	CLE	Harrison Bryant	17	31	0	1.8235294117647058
Kylen Granson	IND	27	-8	IND	Kylen Granson	13	30	0	2.3076923076923075
Justice Hill	BAL	32	-40	BAL	Justice Hill	15	30	0	2
Shane Zylstra	DET	19	-16	DET	Shane Zylstra	13	30	0	2.3076923076923075
Ameer Abdullah	LV	47	-25	LVR	Ameer Abdullah	17	29	0	1.7058823529411764
DeeJay Dallas	SEA	30	-42	SEA	DeeJay Dallas	15	29	0	1.9333333333333333
Jake Ferguson	DAL	44	9	DAL	Jake Ferguson	16	29	0	1.8125
Peyton Hendershot	DAL	25	-10	DAL	Peyton Hendershot	17	29	0	1.7058823529411764
Dare Ogunbowale	HOU	13	-59	HOU	Dare Ogunbowale	17	29	0	1.7058823529411764
Wan'Dale Robinson	NYG	67	4	NYG	Wan'Dale Robinson	6	29	0	4.833333333333333
Dyami Brown	WAS	20	-43	WAS	Dyami Brown	15	28	0	1.8666666666666667
Malik Davis	DAL	28	-44	DAL	Malik Davis	12	28	0	2.3333333333333335
Ashton Dulin	IND	9	-54	IND	Ashton Dulin	12	28	0	2.3333333333333335
KhaDarel Hodge	ATL	23	-40	ATL	KhaDarel Hodge	17	28	0	1.6470588235294117
Travis Homer	CHI	28	-44	SEA	Travis Homer	10	27	0	2.7
O.J. Howard	LV	21	-14	HOU	O.J. Howard	13	27	0	2.076923076923077
Josh Oliver	MIN	36	1	BAL	Josh Oliver	17	27	0	1.588235294117647
Adam Trautman	DEN	21	-14	NOR	Adam Trautman	15	27	0	1.8
Javonte Williams	DEN	135	63	DEN	Javonte Williams	4	26	0	6.5
Jonnu Smith	ATL	35	0	NWE	Jonnu Smith	14	25	0	1.7857142857142858
Durham Smythe	MIA	26	-9	MIA	Durham Smythe	16	25	0	1.5625
Gary Brightwell	NYG	34	-38	NYG	Gary Brightwell	17	24	0	1.411764705882353
Connor Heyward	PIT	19	-16	PIT	Connor Heyward	17	24	0	1.411764705882353
Jalen Nailor	MIN	3	-60	MIN	Jalen Nailor	15	24	0	1.6
Brandon Powell	MIN	19	-44	LAR	Brandon Powell	17	24	0	1.411764705882353
Khalil Shakir	BUF	55	-8	BUF	Khalil Shakir	14	24	0	1.7142857142857142
Alec Ingold	MIA	21	-51	MIA	Alec Ingold	17	23	0	1.3529411764705883
Teagan Quitoriano	HOU	34	-1	HOU	Teagan Quitoriano	9	23	0	2.5555555555555554
Amari Rodgers	HOU	8	-55	2TM	Amari Rodgers	16	23	0	1.4375
Craig Reynolds	DET	43	-29	DET	Craig Reynolds	9	22	0	2.4444444444444446
Kyren Williams	LAR	52	-20	LAR	Kyren Williams	10	22	0	2.2
David Bell	CLE	24	-39	CLE	David Bell	16	21	0	1.3125
Joshua Dobbs	CLE	14	-112	TEN	Joshua Dobbs	2	21	0	10.5
Jody Fortson	KC	29	-6	KAN	Jody Fortson	13	21	0	1.6153846153846154
C.J. Ham	MIN	12	-60	MIN	C.J. Ham	17	21	0	1.2352941176470589
Skyy Moore	KC	94	31	KAN	Skyy Moore	16	21	0	1.3125
Zach Pascal	ARI	5	-58	PHI	Zach Pascal	17	21	0	1.2352941176470589
Eric Saubert	MIA	21	-14	DEN	Eric Saubert	17	21	0	1.2352941176470589
Sterling Shepard	NYG	86	23	NYG	Sterling Shepard	3	21	0	7
Avery Williams	ATL	12	-60	ATL	Avery Williams	17	21	0	1.2352941176470589
Mike Boone	HOU	29	-43	DEN	Mike Boone	9	20	0	2.2222222222222223
Johnny Mundt	MIN	12	-23	MIN	Johnny Mundt	17	20	0	1.1764705882352942
Pierre Strong	Jr. NE	24	-48	NWE	Pierre Strong	15	20	0	1.3333333333333333
Ian Thomas	CAR	24	-11	CAR	Ian Thomas	17	20	0	1.1764705882352942
David Blough	ARI	29	-97	ARI	David Blough	2	19	0	9.5
KJ Hamler	DEN	13	-50	DEN	KJ Hamler	7	19	0	2.7142857142857144
Denzel Mims	NYJ	6	-57	NYJ	Denzel Mims	10	19	0	1.9
Donald Parham	Jr. LAC	36	1	LAC	Donald Parham	6	19	0	3.1666666666666665
Jalen Reagor	MIN	11	-52	MIN	Jalen Reagor	17	19	0	1.1176470588235294
Jonathan Williams	WAS	28	-44	WAS	Jonathan Williams	13	19	0	1.4615384615384615
Malik Willis	TEN	6	-120	TEN	Malik Willis	8	19	0	2.375
Brandon Bolden	LV	30	-42	LVR	Brandon Bolden	16	18	0	1.125
Lawrence Cager	NYG	10	-25	2TM	Lawrence Cager	7	18	0	2.5714285714285716
Sam Howell	WAS	139	13	WAS	Sam Howell	1	18	0	18
John Bates	WAS	20	-15	WAS	John Bates	16	17	0	1.0625
Corey Clement	ARI	57	-15	ARI	Corey Clement	9	17	0	1.8888888888888888
Ross Dwelley	SF	16	-19	SFO	Ross Dwelley	12	17	0	1.4166666666666667
James Mitchell	DET	14	-21	DET	James Mitchell	14	17	0	1.2142857142857142
Kyle Allen	BUF	11	-115	HOU	Kyle Allen	2	16	0	8
Albert Okwuegbunam	DEN	14	-21	DEN	Albert Okwuegbunam	8	16	0	2
Hassan Haskins	TEN	29	-43	TEN	Hassan Haskins	15	15	0	1
Dan Arnold	PHI	16	-19	JAX	Dan Arnold	17	14	0	0.8235294117647058
Zander Horvath	LAC	16	-56	LAC	Zander Horvath	15	14	0	0.9333333333333333
Keaontay Ingram	ARI	62	-10	ARI	Keaontay Ingram	12	14	0	1.1666666666666667
Tom Kennedy	DET	2	-61	DET	Tom Kennedy	7	14	0	2
Ko Kieft	TB	22	-13	TAM	Ko Kieft	17	14	0	0.8235294117647058
Samori Toure	GB	20	-43	GNB	Samori Toure	11	14	0	1.2727272727272727
Jameson Williams	DET	62	-1	DET	Jameson Williams	6	14	0	2.3333333333333335
Salvon Ahmed	MIA	11	-61	MIA	Salvon Ahmed	12	13	0	1.0833333333333333
Zach Gentry	PIT	11	-24	PIT	Zach Gentry	17	13	0	0.7647058823529411
Reggie Gilliam	BUF	5	-67	BUF	Reggie Gilliam	15	13	0	0.8666666666666667
Tanner Hudson	CIN	3	-32	NYG	Tanner Hudson	11	13	0	1.1818181818181819
Brevin Jordan	HOU	5	-30	HOU	Brevin Jordan	11	13	0	1.1818181818181819
Trey Lance	SF	68	-58	SFO	Trey Lance	2	12	0	6
Jordan Love	GB	222	96	GNB	Jordan Love	4	12	0	3
Quintin Morris	BUF	6	-29	BUF	Quintin Morris	14	12	0	0.8571428571428571
Nick Mullens	MIN	14	-112	MIN	Nick Mullens	4	12	0	3
Jack Stoll	PHI	17	-18	PHI	Jack Stoll	17	12	0	0.7058823529411765
Josiah Deguara	GB	20	-15	GNB	Josiah Deguara	17	11	0	0.6470588235294118
Kevin Harris	NE	39	-33	NWE	Kevin Harris	5	11	0	2.2
Brycen Hopkins	LAR	17	-18	LAR	Brycen Hopkins	14	11	0	0.7857142857142857
Tyrod Taylor	NYG	24	-102	NYG	Tyrod Taylor	3	11	0	3.6666666666666665
Snoop Conner	JAC	18	-54	JAX	Snoop Conner	8	10	0	1.25
Tyrion Davis-Price	SF	24	-48	SFO	Tyrion Davis-Price	6	10	0	1.6666666666666667
Chris Evans	CIN	18	-54	CIN	Chris Evans	12	10	0	0.8333333333333334
Dax Milne	WAS	9	-54	WAS	Dax Milne	15	10	0	0.6666666666666666
Kene Nwangwu	MIN	23	-49	MIN	Kene Nwangwu	17	10	0	0.5882352941176471
Trevor Siemian	CIN	16	-110	CHI	Trevor Siemian	2	10	0	5
Parker Hesse	ATL	9	-26	ATL	Parker Hesse	17	9	0	0.5294117647058824
Patrick Ricard	BAL	11	-61	BAL	Patrick Ricard	17	9	0	0.5294117647058824
Armani Rogers	WAS	10	-25	WAS	Armani Rogers	11	9	0	0.8181818181818182
Tyler Badie	DEN	17	-55	DEN	Tyler Badie	1	8	0	8
Blake Bell	KC	15	-20	KAN	Blake Bell	3	8	0	2.6666666666666665
Grant Calcaterra	PHI	3	-32	PHI	Grant Calcaterra	15	8	0	0.5333333333333333
Jaret Patterson	WAS	10	-62	WAS	Jaret Patterson	3	8	0	2.6666666666666665
Andrew Beck	HOU	5	-30	DEN	Andrew Beck	13	7	0	0.5384615384615384
Tyler Mabry	SEA	6	-29	SEA	Tyler Mabry	2	7	0	3.5
Tre' McKitty	LAC	15	-20	LAC	Tre' McKitty	17	7	0	0.4117647058823529
Ty Montgomery	NE	23	-49	NWE	Ty Montgomery	1	7	0	7
Gunner Olszewski	PIT	17	-46	PIT	Gunner Olszewski	16	7	0	0.4375
Ke'Shawn Vaughn	TB	41	-31	TAM	Ke'Shawn Vaughn	15	7	0	0.4666666666666667
Zamir White	LV	51	-21	LVR	Zamir White	14	7	0	0.5
Jalen Guyton	LAC	36	-27	LAC	Jalen Guyton	3	6	0	2
Tyler Kroft	MIA	17	-18	SFO	Tyler Kroft	11	6	0	0.5454545454545454
Mike Strachan	IND	5	-58	IND	Mike Strachan	13	6	0	0.46153846153846156
Trent Taylor	CIN	6	-57	CIN	Trent Taylor	16	6	0	0.375
Deven Thompkins	TB	10	-53	TAM	Deven Thompkins	5	6	0	1.2
Trayveon Williams	CIN	44	-28	CIN	Trayveon Williams	8	6	0	0.75
Spencer Brown	BUF	11	-61	CAR	Spencer Brown	2	5	0	2.5
Julius Chestnut	TEN	12	-60	TEN	Julius Chestnut	6	5	0	0.8333333333333334
Chris Conley	SF	5	-58	2TM	Chris Conley	9	5	0	0.5555555555555556
Blaine Gabbert	KC	16	-110	TAM	Blaine Gabbert	1	5	0	5
Tony Jones	Jr. DEN	44	-28	2TM	Tony Jones	6	5	0	0.8333333333333334
Charlie Kolar	BAL	11	-24	BAL	Charlie Kolar	2	5	0	2.5
Ronnie Rivers	LAR	9	-63	LAR	Ronnie Rivers	8	5	0	0.625
Isaiah Spiller	LAC	47	-25	LAC	Isaiah Spiller	6	5	0	0.8333333333333334
Stephen Sullivan	CAR	16	-19	CAR	Stephen Sullivan	14	5	0	0.35714285714285715
Patrick Taylor	Jr. GB	23	-49	GNB	Patrick Taylor	14	5	0	0.35714285714285715
Trevon Wesco	TEN	26	-9	CHI	Trevon Wesco	14	5	0	0.35714285714285715
Luke Farrell	JAC	12	-23	JAX	Luke Farrell	17	4	0	0.23529411764705882
Chris Manhertz	DEN	13	-22	JAX	Chris Manhertz	17	4	0	0.23529411764705882
Racey McMath	TEN	20	-43	TEN	Racey McMath	5	4	0	0.8
Kyle Philips	TEN	59	-4	TEN	Kyle Philips	4	4	0	1
James Proche	II BAL	4	-59	BAL	James Proche	15	4	0	0.26666666666666666
Ben Ellefson	MIN	12	-23	MIN	Ben Ellefson	4	3	0	0.75
Tim Jones	JAC	10	-53	JAX	Tim Jones	17	3	0	0.17647058823529413
Larry Rountree	III LAC	14	-58	LAC	Larry Rountree	4	3	0	0.75
Michael Burton	DEN	7	-65	KAN	Michael Burton	17	2	0	0.11764705882352941
Ty Chandler	MIN	68	-4	MIN	Ty Chandler	3	2	0	0.6666666666666666
Frank Darby	ATL	4	-59	ATL	Frank Darby	5	2	0	0.4
Bryan Edwards	NO	13	-50	ATL	Bryan Edwards	7	2	0	0.2857142857142857
Simi Fehoko	DAL	5	-58	DAL	Simi Fehoko	5	2	0	0.4
Danny Gray	SF	10	-53	SFO	Danny Gray	13	2	0	0.15384615384615385
Troy Hairston	II HOU	10	-62	HOU	Troy Hairston	16	2	0	0.125
Penny Hart	ATL	13	-50	SEA	Penny Hart	9	2	0	0.2222222222222222
Jesper Horsted	LV	16	-19	LVR	Jesper Horsted	15	2	0	0.13333333333333333
Cade Johnson	SEA	5	-58	SEA	Cade Johnson	3	2	0	0.6666666666666666
D'Ernest Johnson	JAC	24	-48	CLE	D'Ernest Johnson	15	2	0	0.13333333333333333
Keith Kirkwood	NO	5	-58	NOR	Keith Kirkwood	5	2	0	0.4
Adam Prentice	NO	7	-65	NOR	Adam Prentice	11	2	0	0.18181818181818182
Stone Smartt	LAC	12	-23	LAC	Stone Smartt	7	2	0	0.2857142857142857
Cole Turner	WAS	8	-27	WAS	Cole Turner	10	2	0	0.2
Dareke Young	SEA	11	-52	SEA	Dareke Young	13	2	0	0.15384615384615385
Devin Asiasi	CIN	13	-22	CIN	Devin Asiasi	12	1	0	0.08333333333333333
Miles Boykin	PIT	5	-58	PIT	Miles Boykin	16	1	0	0.0625
Jason Cabinda	DET	6	-66	DET	Jason Cabinda	8	1	0	0.125
Jerome Ford	CLE	87	15	CLE	Jerome Ford	13	1	0	0.07692307692307693
Brian Hoyer	LV	28	-98	NWE	Brian Hoyer	1	1	0	1
Jakob Johnson	LV	5	-67	LVR	Jakob Johnson	17	1	0	0.058823529411764705
Sean McKeon	DAL	6	-29	DAL	Sean McKeon	13	1	0	0.07692307692307693
Jeremy Ruckert	NYJ	13	-22	NYJ	Jeremy Ruckert	9	1	0	0.1111111111111111
Keith Smith	ATL	4	-68	ATL	Keith Smith	17	1	0	0.058823529411764705
Jalen Tolbert	DAL	24	-39	DAL	Jalen Tolbert	8	1	0	0.125
Kyle Trask	TB	72	-54	TAM	Kyle Trask	1	1	0	1
Montrell Washington	DEN	2	-61	DEN	Montrell Washington	15	1	0	0.06666666666666667
Ty'Son Williams	ARI	21	-51	ARI	Ty'Son Williams	1	1	0	1
Trinity Benson	DET	9	-54	DET	Trinity Benson	1	0	0	0
Brittain Brown	LV	24	-48	LVR	Brittain Brown	6	0	0	0
Britain Covey	PHI	10	-53	PHI	Britain Covey	17	0	0	0
Rico Dowdle	DAL	25	-47	DAL	Rico Dowdle	5	0	0	0
Erik Ezukanma	MIA	12	-51	MIA	Erik Ezukanma	1	0	0	0
Feleipe Franks	ATL	1	-125	ATL	Feleipe Franks	11	0	0	0
John Kelly	Jr. CLE	28	-44	CLE	John Kelly	1	0	0	0
Marcus Kemp	WAS	4	-59	KAN	Marcus Kemp	3	0	0	0
Mason Kinsey	TEN	4	-59	TEN	Mason Kinsey	2	0	0	0
Lucas Krull	NO	3	-32	NOR	Lucas Krull	1	0	0	0
Hunter Long	LAR	30	-5	MIA	Hunter Long	9	0	0	0
Lance McCutcheon	LAR	6	-57	LAR	Lance McCutcheon	10	0	0	0
Kevin Rader	TEN	20	-15	TEN	Kevin Rader	14	0	0	0
Drew Sample	CIN	14	-21	CIN	Drew Sample	2	0	0	0
Matt Sokol	NE	5	-30	NWE	Matt Sokol	3	0	0	0
Noah Togiai	ARI	7	-28	PHI	Noah Togiai	2	0	0	0
Scotty Washington	NE	5	-30	NWE	Scotty Washington	1	0	0	0
Charlie Woerner	SF	2	-33	SFO	Charlie Woerner	17	0	0	0
C.J. Beathard	JAC	13	-113	JAX	C.J. Beathard	4	-1	0	-0.25
Deonte Harty	BUF	33	-30	NOR	Deonte Harty	4	-1	0	-0.25
KaVontae Turpin	DAL	16	-47	DAL	KaVontae Turpin	17	-1	0	-0.058823529411764705
Michael Wilson	ARI	16	-47	\N	\N	\N	\N	\N	\N
Philadelphia Eagles		125	15	\N	\N	\N	\N	\N	\N
Luke Musgrave	GB	49	14	\N	\N	\N	\N	\N	\N
Matt Prater	ARI	110	-8	\N	\N	\N	\N	\N	\N
Dalton Kincaid	BUF	73	38	\N	\N	\N	\N	\N	\N
Deuce Vaughn	DAL	31	-41	\N	\N	\N	\N	\N	\N
Matt Gay	IND	113	-5	\N	\N	\N	\N	\N	\N
Devon Achane	MIA	76	4	\N	\N	\N	\N	\N	\N
Jaren Hall	MIN	10	-116	\N	\N	\N	\N	\N	\N
C.J. Stroud	HOU	210	84	\N	\N	\N	\N	\N	\N
Chris Rodriguez	Jr. WAS	24	-48	\N	\N	\N	\N	\N	\N
Harrison Butker	KC	135	17	\N	\N	\N	\N	\N	\N
JaMycal Hasty	JAC	53	-19	\N	\N	\N	\N	\N	\N
Jacksonville Jaguars		113	3	\N	\N	\N	\N	\N	\N
Jake Haener	NO	9	-117	\N	\N	\N	\N	\N	\N
Arizona Cardinals		100	-10	\N	\N	\N	\N	\N	\N
Evan McPherson	CIN	130	12	\N	\N	\N	\N	\N	\N
Dallas Cowboys		122	12	\N	\N	\N	\N	\N	\N
Demario Douglas	NE	5	-58	\N	\N	\N	\N	\N	\N
Clayton Tune	ARI	8	-118	\N	\N	\N	\N	\N	\N
Tampa Bay	Buccaneers	107	-3	\N	\N	\N	\N	\N	\N
Derius Davis	LAC	3	-60	\N	\N	\N	\N	\N	\N
Buffalo Bills		113	3	\N	\N	\N	\N	\N	\N
Amon-Ra St.	Brown DET	148	85	\N	\N	\N	\N	\N	\N
Cameron Dicker	LAC	129	11	\N	\N	\N	\N	\N	\N
Israel Abanikanda	NYJ	35	-37	\N	\N	\N	\N	\N	\N
DJ Moore	CHI	145	82	\N	\N	\N	\N	\N	\N
Luke Schoonmaker	DAL	33	-2	\N	\N	\N	\N	\N	\N
Sam LaPorta	DET	63	28	\N	\N	\N	\N	\N	\N
Charlie Jones	CIN	41	-22	\N	\N	\N	\N	\N	\N
Tim Patrick	DEN	96	33	\N	\N	\N	\N	\N	\N
Justin Tucker	BAL	140	22	\N	\N	\N	\N	\N	\N
Grant DuBose	GB	5	-58	\N	\N	\N	\N	\N	\N
Davis Allen	LAR	19	-16	\N	\N	\N	\N	\N	\N
Zach Charbonnet	SEA	94	22	\N	\N	\N	\N	\N	\N
Marvin Mims	Jr. DEN	34	-29	\N	\N	\N	\N	\N	\N
Curtis Hodges	WAS	16	-19	\N	\N	\N	\N	\N	\N
Stetson Bennett	LAR	20	-106	\N	\N	\N	\N	\N	\N
Jayden Reed	GB	81	18	\N	\N	\N	\N	\N	\N
New York	Jets	109	-1	\N	\N	\N	\N	\N	\N
New York	Giants	110	0	\N	\N	\N	\N	\N	\N
Tank Bigsby	JAC	71	-1	\N	\N	\N	\N	\N	\N
Laviska Shenault	Jr. CAR	31	-32	\N	\N	\N	\N	\N	\N
Josh Downs	IND	54	-9	\N	\N	\N	\N	\N	\N
Calvin Ridley	JAC	133	70	\N	\N	\N	\N	\N	\N
Detroit Lions		114	4	\N	\N	\N	\N	\N	\N
Seattle Seahawks		114	4	\N	\N	\N	\N	\N	\N
Brayden Willis	SF	17	-18	\N	\N	\N	\N	\N	\N
Tre Tucker	LV	12	-51	\N	\N	\N	\N	\N	\N
Quentin Johnston	LAC	99	36	\N	\N	\N	\N	\N	\N
Caleb Shudak	TEN	95	-23	\N	\N	\N	\N	\N	\N
Riley Patterson	DET	121	3	\N	\N	\N	\N	\N	\N
Green Bay	Packers	107	-3	\N	\N	\N	\N	\N	\N
Joshua Palmer	LAC	58	-5	\N	\N	\N	\N	\N	\N
Will Levis	TEN	79	-47	\N	\N	\N	\N	\N	\N
Cairo Santos	CHI	119	1	\N	\N	\N	\N	\N	\N
Greg Zuerlein	NYJ	123	5	\N	\N	\N	\N	\N	\N
Chris Boswell	PIT	115	-3	\N	\N	\N	\N	\N	\N
Zach Evans	LAR	55	-17	\N	\N	\N	\N	\N	\N
Jordan Addison	MIN	108	45	\N	\N	\N	\N	\N	\N
Pittsburgh Steelers		114	4	\N	\N	\N	\N	\N	\N
Terrace Marshall	Jr. CAR	54	-9	\N	\N	\N	\N	\N	\N
Evan Hull	IND	14	-58	\N	\N	\N	\N	\N	\N
San Francisco	49ers	114	4	\N	\N	\N	\N	\N	\N
Hendon Hooker	DET	14	-112	\N	\N	\N	\N	\N	\N
Anthony McFarland	Jr. PIT	26	-46	\N	\N	\N	\N	\N	\N
Puka Nacua	LAR	38	-25	\N	\N	\N	\N	\N	\N
Las Vegas	Raiders	92	-18	\N	\N	\N	\N	\N	\N
Anthony Richardson	IND	229	103	\N	\N	\N	\N	\N	\N
Atlanta Falcons		101	-9	\N	\N	\N	\N	\N	\N
Jaxon Smith-Njigba	SEA	106	43	\N	\N	\N	\N	\N	\N
Cade York	CLE	113	-5	\N	\N	\N	\N	\N	\N
New Orleans	Saints	110	0	\N	\N	\N	\N	\N	\N
Jalin Hyatt	NYG	51	-12	\N	\N	\N	\N	\N	\N
Equanimeous St.	Brown CHI	21	-42	\N	\N	\N	\N	\N	\N
Cincinnati Bengals		111	1	\N	\N	\N	\N	\N	\N
David Moore	TB	23	-40	\N	\N	\N	\N	\N	\N
Rashee Rice	KC	72	9	\N	\N	\N	\N	\N	\N
Jake Moody	SF	126	8	\N	\N	\N	\N	\N	\N
Anders Carlson	GB	108	-10	\N	\N	\N	\N	\N	\N
Michael Pittman	Jr. IND	100	37	\N	\N	\N	\N	\N	\N
Max Duggan	LAC	10	-116	\N	\N	\N	\N	\N	\N
Ka'imi Fairbairn	HOU	113	-5	\N	\N	\N	\N	\N	\N
Scotty Miller	ATL	8	-55	\N	\N	\N	\N	\N	\N
Carolina Panthers		100	-10	\N	\N	\N	\N	\N	\N
Damarea Crockett	DEN	22	-50	\N	\N	\N	\N	\N	\N
Roschon Johnson	CHI	66	-6	\N	\N	\N	\N	\N	\N
Kansas City	Chiefs	116	6	\N	\N	\N	\N	\N	\N
Eddy Pineiro	CAR	118	0	\N	\N	\N	\N	\N	\N
Payne Durham	TB	15	-20	\N	\N	\N	\N	\N	\N
Zack Kuntz	NYJ	11	-24	\N	\N	\N	\N	\N	\N
Parker Washington	JAC	23	-40	\N	\N	\N	\N	\N	\N
Houston Texans		114	4	\N	\N	\N	\N	\N	\N
Brenton Strange	JAC	28	-7	\N	\N	\N	\N	\N	\N
Lew Nichols	III GB	15	-57	\N	\N	\N	\N	\N	\N
Denver Broncos		103	-7	\N	\N	\N	\N	\N	\N
Chase Brown	CIN	75	3	\N	\N	\N	\N	\N	\N
Jonathan Mingo	CAR	85	22	\N	\N	\N	\N	\N	\N
New England	Patriots	116	6	\N	\N	\N	\N	\N	\N
Tucker Kraft	GB	33	-2	\N	\N	\N	\N	\N	\N
Cleveland Browns		118	8	\N	\N	\N	\N	\N	\N
Kendre Miller	NO	59	-13	\N	\N	\N	\N	\N	\N
John FitzPatrick	ATL	5	-30	\N	\N	\N	\N	\N	\N
Eric Gray	NYG	41	-31	\N	\N	\N	\N	\N	\N
Calvin Austin	III PIT	22	-41	\N	\N	\N	\N	\N	\N
Tyjae Spears	TEN	66	-6	\N	\N	\N	\N	\N	\N
Kenneth Walker	III SEA	181	109	\N	\N	\N	\N	\N	\N
Justin Shorter	BUF	12	-51	\N	\N	\N	\N	\N	\N
Ronald Jones	II DAL	79	7	\N	\N	\N	\N	\N	\N
Daniel Carlson	LV	129	11	\N	\N	\N	\N	\N	\N
Cedrick Wilson	Jr. MIA	18	-45	\N	\N	\N	\N	\N	\N
Kayshon Boutte	NE	10	-53	\N	\N	\N	\N	\N	\N
Michael Badgley	DET	125	7	\N	\N	\N	\N	\N	\N
Younghoe Koo	ATL	127	9	\N	\N	\N	\N	\N	\N
Los Angeles	Rams	104	-6	\N	\N	\N	\N	\N	\N
Los Angeles	Chargers	113	3	\N	\N	\N	\N	\N	\N
Christopher Dunn	LAR	113	-5	\N	\N	\N	\N	\N	\N
Josh Whyle	TEN	20	-15	\N	\N	\N	\N	\N	\N
Brian Robinson	Jr. WAS	135	63	\N	\N	\N	\N	\N	\N
Dontayvion Wicks	GB	43	-20	\N	\N	\N	\N	\N	\N
Easton Stick	LAC	19	-107	\N	\N	\N	\N	\N	\N
Chad Ryland	NE	55	-63	\N	\N	\N	\N	\N	\N
Jermar Jefferson	DET	13	-59	\N	\N	\N	\N	\N	\N
Bijan Robinson	ATL	190	118	\N	\N	\N	\N	\N	\N
Brandon McManus	JAC	115	-3	\N	\N	\N	\N	\N	\N
Andrew Ogletree	IND	16	-19	\N	\N	\N	\N	\N	\N
Washington Commanders		116	6	\N	\N	\N	\N	\N	\N
Baltimore Ravens		117	7	\N	\N	\N	\N	\N	\N
Dustin Hopkins	LAC	136	18	\N	\N	\N	\N	\N	\N
Graham Gano	NYG	121	3	\N	\N	\N	\N	\N	\N
Michael Mayer	LV	48	13	\N	\N	\N	\N	\N	\N
Jason Sanders	MIA	120	2	\N	\N	\N	\N	\N	\N
La'Mical Perine	KC	11	-61	\N	\N	\N	\N	\N	\N
Joey Slye	WAS	104	-14	\N	\N	\N	\N	\N	\N
Zay Flowers	BAL	83	20	\N	\N	\N	\N	\N	\N
Irv Smith	Jr. CIN	67	32	\N	\N	\N	\N	\N	\N
Sincere McCormick	LV	24	-48	\N	\N	\N	\N	\N	\N
Velus Jones	Jr. CHI	15	-48	\N	\N	\N	\N	\N	\N
Tristan Vizcaino	DAL	121	3	\N	\N	\N	\N	\N	\N
Tanner McKee	PHI	9	-117	\N	\N	\N	\N	\N	\N
Chicago Bears		97	-13	\N	\N	\N	\N	\N	\N
Nate McCrary	CLE	9	-63	\N	\N	\N	\N	\N	\N
Indianapolis Colts		111	1	\N	\N	\N	\N	\N	\N
Wil Lutz	NO	112	-6	\N	\N	\N	\N	\N	\N
Chase McLaughlin	TB	104	-14	\N	\N	\N	\N	\N	\N
Jake Elliott	PHI	131	13	\N	\N	\N	\N	\N	\N
Greg Joseph	MIN	123	5	\N	\N	\N	\N	\N	\N
Jason Myers	SEA	125	7	\N	\N	\N	\N	\N	\N
Aidan O'Connell	LV	10	-116	\N	\N	\N	\N	\N	\N
Jahmyr Gibbs	DET	147	75	\N	\N	\N	\N	\N	\N
DeWayne McBride	MIN	22	-50	\N	\N	\N	\N	\N	\N
Mitch Trubisky	PIT	21	-105	\N	\N	\N	\N	\N	\N
DK Metcalf	SEA	144	81	\N	\N	\N	\N	\N	\N
Tennessee Titans		103	-7	\N	\N	\N	\N	\N	\N
Tyler Bass	BUF	130	12	\N	\N	\N	\N	\N	\N
Minnesota Vikings		104	-6	\N	\N	\N	\N	\N	\N
Dorian Thompson-Robinson	CLE	8	-118	\N	\N	\N	\N	\N	\N
Drew Lock	SEA	15	-111	\N	\N	\N	\N	\N	\N
Odell Beckham	Jr. BAL	98	35	\N	\N	\N	\N	\N	\N
Gardner Minshew	II IND	44	-82	\N	\N	\N	\N	\N	\N
Jason Huntley	PIT	7	-65	\N	\N	\N	\N	\N	\N
Bryce Young	CAR	239	113	\N	\N	\N	\N	\N	\N
Darnell Washington	PIT	21	-14	\N	\N	\N	\N	\N	\N
Matt Barkley	BUF	16	-110	\N	\N	\N	\N	\N	\N
Dee Eskridge	SEA	20	-43	\N	\N	\N	\N	\N	\N
Sean Clifford	GB	20	-106	\N	\N	\N	\N	\N	\N
Cameron Latu	SF	13	-22	\N	\N	\N	\N	\N	\N
John Metchie	III HOU	71	8	\N	\N	\N	\N	\N	\N
Will Mallory	IND	10	-25	\N	\N	\N	\N	\N	\N
Miami Dolphins		113	3	\N	\N	\N	\N	\N	\N
Cedric Tillman	CLE	28	-35	\N	\N	\N	\N	\N	\N
Gabe Davis	BUF	117	54	\N	\N	\N	\N	\N	\N
David Wells	TB	3	-32	\N	\N	\N	\N	\N	\N
Elijah Higgins	MIA	15	-20	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2022_08_10_090812_add_username_to_users_table	2
\.


--
-- Data for Name: mock_draft; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.mock_draft (id, rank, team, player) FROM stdin;
3	3	Dave Richard	Christian McCaffrey
5	5	Zach Brook	Travis Kelce
9	9	Adam Aizer	Jonathan Taylor
10	10	Jamey Eisenberg	Bijan Robinson
109	109	Jacob Gibbs	Chigoziem Okonkwo
12	12	Jacob Gibbs	Josh Jacobs
52	52	Thomas Shafer	T.J. Hockenson
110	110	Meron Berkson	Jaxon Smith-Njigba
15	15	Jamey Eisenberg	CeeDee Lamb
16	16	Adam Aizer	Davante Adams
107	107	Meron Berkson	Odell Beckham
19	19	Chris Towers	Amon-Ra St.
20	20	Zach Brook	Nick Chubb
21	21	Thomas Shafer	Derrick Henry
111	111	Jamey Eisenberg	Romeo Doubs
23	23	Frank Stampfl	Travis Etienne
24	24	Heath Cummings	Tee Higgins
25	25	Heath Cummings	Mark Andrews
26	26	Frank Stampfl	DeVonta Smith
27	27	Dave Richard	Chris Olave
31	31	George Maselli	Kenneth Walker
32	32	Daniel Schneier	Josh Allen
112	112	Adam Aizer	Evan Engram
36	36	Jacob Gibbs	Christian Watson
34	34	Jamey Eisenberg	Najee Harris
35	35	Meron Berkson	Deebo Samuel
37	37	Jacob Gibbs	Keenan Allen
40	40	Adam Aizer	Aaron Jones
39	39	Jamey Eisenberg	Calvin Ridley
41	41	Daniel Schneier	J.K. Dobbins
42	42	George Maselli	Justin Fields
43	43	Chris Towers	Miles Sanders
44	44	Zach Brook	Jahmyr Gibbs
45	45	Thomas Shafer	Lamar Jackson
46	46	Dave Richard	Amari Cooper
71	71	Frank Stampfl	D'Andre Swift
48	48	Heath Cummings	DJ Moore
18	18	George Maselli	Garrett Wilson
50	50	Frank Stampfl	Dalvin Cook
51	51	Dave Richard	Joe Mixon
49	49	Heath Cummings	Dameon Pierce
53	53	Zach Brook	Terry McLaurin
54	54	Chris Towers	Drake London
114	114	George Maselli	Tua Tagovailoa
56	56	Daniel Schneier	Jerry Jeudy
57	57	Adam Aizer	Chris Godwin
65	65	Daniel Schneier	George Kittle
64	64	Adam Aizer	Kirk Cousins
63	63	Jamey Eisenberg	Cam Akers
66	66	George Maselli	David Montgomery
67	67	Chris Towers	Jamaal Williams
68	68	Zach Brook	George Pickens
69	69	Thomas Shafer	Mike Williams
113	113	Daniel Schneier	Roschon Johnson
73	73	Heath Cummings	Treylon Burks
74	74	Frank Stampfl	Trevor Lawrence
75	75	Dave Richard	Dallas Goedert
76	76	Thomas Shafer	Marquise Brown
77	77	Zach Brook	Jordan Addison
78	78	Chris Towers	Tyler Lockett
79	79	George Maselli	Michael Pittman
80	80	Daniel Schneier	Brandin Cooks
81	81	Adam Aizer	Alvin Kamara
108	108	Jacob Gibbs	Jonathan Mingo
87	87	Jamey Eisenberg	Samaje Perine
88	88	Adam Aizer	Jahan Dotson
89	89	Daniel Schneier	Jerick McKinnon
90	90	George Maselli	Kadarius Toney
91	91	Chris Towers	JuJu Smith-Schuster
13	13	Jacob Gibbs	Breece Hall
93	93	Thomas Shafer	Michael Thomas
94	94	Dave Richard	Brian Robinson
17	17	Daniel Schneier	A.J. Brown
102	102	Chris Towers	Zach Charbonnet
47	47	Frank Stampfl	DK Metcalf
97	97	Heath Cummings	Rashaad Penny
99	99	Dave Richard	Damien Harris
70	70	Dave Richard	Diontae Johnson
72	72	Heath Cummings	James Conner
101	101	Zach Brook	Quentin Johnston
103	103	George Maselli	Jeff Wilson
104	104	Daniel Schneier	Tank Bigsby
105	105	Adam Aizer	D'Onta Foreman
106	106	Jamey Eisenberg	Nico Collins
14	14	Meron Berkson	Stefon Diggs
11	11	Meron Berkson	Tony Pollard
38	38	Meron Berkson	DeAndre Hopkins
33	33	Adam Aizer	Joe Burrow
55	55	George Maselli	Isiah Pacheco
86	86	Meron Berkson	AJ Dillon
92	92	Zach Brook	Adam Thielen
95	95	Frank Stampfl	Zay Flowers
96	96	Heath Cummings	Devon Achane
100	100	Thomas Shafer	Jamaal Williams
22	22	Dave Richard	Jaylen Waddle
98	98	Frank Stampfl	Gabe Davis
4	4	Thomas Shafer	Austin Ekeler
6	6	Chris Towers	Cooper Kupp
7	7	George Maselli	Tyreek Hill
8	8	Daniel Schneier	Saquon Barkley
28	28	Thomas Shafer	Rhamondre Stevenson
58	58	Jamey Eisenberg	Kyle Pitts
59	59	Meron Berkson	Rachaad White
60	60	Jacob Gibbs	Anthony Richardson
61	61	Jacob Gibbs	Brandon Aiyuk
62	62	Meron Berkson	Justin Herbert
82	82	Jamey Eisenberg	Mike Evans
83	83	Meron Berkson	Darren Waller
84	84	Jacob Gibbs	Khalil Herbert
85	85	Jacob Gibbs	James Cook
2	2	Frank Stampfl	Justin Jefferson
30	30	Chris Towers	Patrick Mahomes
115	115	Chris Towers	Elijah Moore
117	117	Thomas Shafer	Deshaun Watson
119	119	Frank Stampfl	Antonio Gibson
120	120	Heath Cummings	Jamaal Williams
122	122	Frank Stampfl	Pat Freiermuth
127	127	George Maselli	Irv Smith
130	130	Jamey Eisenberg	Dak Prescott
167	167	Frank Stampfl	Leonard Fournette
121	121	Heath Cummings	Alexander Mattison
123	123	Dave Richard	Elijah Mitchell
124	124	Thomas Shafer	Courtland Sutton
125	125	Zach Brook	Jakobi Meyers
126	126	Chris Towers	Skyy Moore
128	128	Daniel Schneier	Jalin Hyatt
129	129	Adam Aizer	Devin Singletary
131	131	Meron Berkson	Allen Lazard
132	132	Jacob Gibbs	Rashod Bateman
133	133	Jacob Gibbs	Josh Downs
134	134	Meron Berkson	Raheem Mostert
135	135	Jamey Eisenberg	Tyler Allgeier
136	136	Adam Aizer	Wan'Dale Robinson
137	137	Daniel Schneier	Zay Jones
138	138	George Maselli	Nathaniel Dell
139	139	Chris Towers	Israel Abanikanda
140	140	Zach Brook	John Metchie
141	141	Thomas Shafer	Isaiah Hodgins
142	142	Dave Richard	Kendre Miller 
143	143	Frank Stampfl	David Njoku
144	144	Heath Cummings	Kyler Murray
145	145	Heath Cummings	Daniel Jones
146	146	Frank Stampfl	Alec Pierce
147	147	Dave Richard	Dalton Schultz
149	149	Zach Brook	Donovan Peoples-Jones
150	150	Chris Towers	Gerald Everett
148	148	Thomas Shafer	Mike Davis
151	151	George Maselli	Tyjae Spears
152	152	Daniel Schneier	Dalton Kincaid
155	155	Meron Berkson	Ezekiel Elliott
154	154	Jamey Eisenberg	Jaylen Warren 
153	153	Adam Aizer	Tutu Atwell 
156	156	Jacob Gibbs	Jarran Reed
157	157	Jacob Gibbs	Rondale Moore
158	158	Meron Berkson	Mack Wilson
159	159	Jamey Eisenberg	Kyle Philips
160	160	Adam Aizer	Greg Dulcich
161	161	Daniel Schneier	Ray Rice
162	162	George Maselli	Khalil Shakir 
163	163	Chris Towers	Sam LaPorta
164	164	Zach Brook	Kenneth Gainwell
165	165	Thomas Shafer	Earnest Gray
166	166	Dave Richard	Dj Chark
168	168	Heath Cummings	Darnell Mooney
1	1	Heath Cummings	Ja'Marr Chase
29	29	Zach Brook	Jalen Hurts
169	169	Team	PHI
170	170	Team	ARI
171	171	TEAM	NYG
172	172	team	NYJ
173	173	team	KC
174	174	team	NO
175	175	team	LV
176	176	team	TB
177	177	kicker	Justin Tucker
178	178	kicker	Dustin Hopkins
179	179	kicker	Jake Elliott
180	180	kicker	Daniel Carlson
181	181	kciker	Jake Moody
182	182	kicker	Jason Myers
183	183	kicker	Tyler Bass
184	184	kicker	Younghoe Koo
118	118	Dave Richard	Aaron Rodgers
116	116	Zach Brook	Chris Brown
\.


--
-- Data for Name: mock_draft_copy; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.mock_draft_copy (id, rank, team, player) FROM stdin;
108	108	Jacob Gibbs	J. Mingo WR CAR
3	3	Dave Richard	Christian McCaffrey
5	5	Zach Brook	Travis Kelce
9	9	Adam Aizer	Jonathan Taylor
10	10	Jamey Eisenberg	Bijan Robinson
109	109	Jacob Gibbs	Chigoziem Okonkwo
12	12	Jacob Gibbs	Josh Jacobs
13	13	Jacob Gibbs	Josh Jacobs
110	110	Meron Berkson	Jaxon Smith-Njigba
15	15	Jamey Eisenberg	CeeDee Lamb
16	16	Adam Aizer	Davante Adams
107	107	Meron Berkson	Odell Beckham
19	19	Chris Towers	Amon-Ra St.
20	20	Zach Brook	Nick Chubb
21	21	Thomas Shafer	Derrick Henry
111	111	Jamey Eisenberg	Romeo Doubs
23	23	Frank Stampfl	Travis Etienne
24	24	Heath Cummings	Tee Higgins
25	25	Heath Cummings	Mark Andrews
26	26	Frank Stampfl	DeVonta Smith
27	27	Dave Richard	Chris Olave
31	31	George Maselli	Kenneth Walker
32	32	Daniel Schneier	Josh Allen
112	112	Adam Aizer	Evan Engram
36	36	Jacob Gibbs	Christian Watson
34	34	Jamey Eisenberg	Najee Harris
35	35	Meron Berkson	Deebo Samuel
37	37	Jacob Gibbs	Keenan Allen
113	113	Daniel Schneier	Roschon Johnson 
40	40	Adam Aizer	Aaron Jones
39	39	Jamey Eisenberg	Calvin Ridley
41	41	Daniel Schneier	J.K. Dobbins
42	42	George Maselli	Justin Fields
43	43	Chris Towers	Miles Sanders
44	44	Zach Brook	Jahmyr Gibbs
45	45	Thomas Shafer	Lamar Jackson
46	46	Dave Richard	Amari Cooper
47	47	Frank Stampfl	DK Metcalf 
48	48	Heath Cummings	DJ Moore
18	18	George Maselli	Garrett Wilson
50	50	Frank Stampfl	Dalvin Cook
51	51	Dave Richard	Joe Mixon
49	49	Heath Cummings	Dameon Pierce
52	52	Thomas Shafer	TJ Hockenson
53	53	Zach Brook	Terry McLaurin
54	54	Chris Towers	Drake London
114	114	George Maselli	Tua Tagovailoa
56	56	Daniel Schneier	Jerry Jeudy
57	57	Adam Aizer	Chris Godwin
65	65	Daniel Schneier	George Kittle
64	64	Adam Aizer	Kirk Cousins
63	63	Jamey Eisenberg	Cam Akers
66	66	George Maselli	David Montgomery
67	67	Chris Towers	Jamaal Williams
68	68	Zach Brook	George Pickens
69	69	Thomas Shafer	Mike Williams
70	70	Dave Richard	David Johnson
71	71	Frank Stampfl	D’Andre Swift
72	72	Heath Cummings	James Conner 
73	73	Heath Cummings	Treylon Burks
74	74	Frank Stampfl	Trevor Lawrence
75	75	Dave Richard	Dallas Goedert
76	76	Thomas Shafer	Marquise Brown
77	77	Zach Brook	Jordan Addison
78	78	Chris Towers	Tyler Lockett
79	79	George Maselli	Michael Pittman
80	80	Daniel Schneier	Brandin Cooks
81	81	Adam Aizer	Alvin Kamara
87	87	Jamey Eisenberg	Samaje Perine
88	88	Adam Aizer	Jahan Dotson
89	89	Daniel Schneier	Jerick McKinnon
90	90	George Maselli	Kadarius Toney
91	91	Chris Towers	JuJu Smith-Schuster
93	93	Thomas Shafer	Michael Thomas
94	94	Dave Richard	Brian Robinson
102	102	Chris Towers	Zach Charbonnet
97	97	Heath Cummings	Rashaad Penny
98	98	Frank Stampfl	Gabriel Davis
99	99	Dave Richard	Damien Harris
101	101	Zach Brook	Quentin Johnston
103	103	George Maselli	Jeff Wilson
104	104	Daniel Schneier	Tank Bigsby
105	105	Adam Aizer	D'Onta Foreman
106	106	Jamey Eisenberg	Nico Collins
17	17	Daniel Schneier	Antonio Brown
14	14	Meron Berkson	Stefon Diggs
11	11	Meron Berkson	Tony Pollard
38	38	Meron Berkson	DeAndre Hopkins
33	33	Adam Aizer	Joe Burrow
55	55	George Maselli	Isiah Pacheco
86	86	Meron Berkson	AJ Dillon
92	92	Zach Brook	Adam Thielen
95	95	Frank Stampfl	Zay Flowers
96	96	Heath Cummings	Devon Achane
100	100	Thomas Shafer	Jamaal Williams
22	22	Dave Richard	Jaylen Waddle
1	1	Heath Cummings	Ja’Marr Chase
4	4	Thomas Shafer	Austin Ekeler
6	6	Chris Towers	Cooper Kupp
7	7	George Maselli	Tyreek Hill
8	8	Daniel Schneier	Saquon Barkley
28	28	Thomas Shafer	Rhamondre Stevenson
29	29	Zach Brook	Jaylen Hurts
58	58	Jamey Eisenberg	Kyle Pitts
59	59	Meron Berkson	Rachaad White
60	60	Jacob Gibbs	Anthony Richardson
61	61	Jacob Gibbs	Brandon Aiyuk
62	62	Meron Berkson	Justin Herbert
82	82	Jamey Eisenberg	Mike Evans
83	83	Meron Berkson	Darren Waller
84	84	Jacob Gibbs	Khalil Herbert
85	85	Jacob Gibbs	James Cook
2	2	Frank Stampfl	Justin Jefferson
30	30	Chris Towers	Patrick Mahomes
115	115	Chris Towers	Elijah Moore
116	116	Zach Brook	Chris Brown 
117	117	Thomas Shafer	Deshaun Watson
118	118	Dave Richard	Aaron Rodgers 
119	119	Frank Stampfl	Antonio Gibson
120	120	Heath Cummings	Jamaal Williams
122	122	Frank Stampfl	Pat Freiermuth
127	127	George Maselli	Irv Smith
130	130	Jamey Eisenberg	Dak Prescott
167	167	Frank Stampfl	Leonard Fournette
121	121	Heath Cummings	Alexander Mattison
123	123	Dave Richard	Elijah Mitchell
124	124	Thomas Shafer	Courtland Sutton
125	125	Zach Brook	Jakobi Meyers
126	126	Chris Towers	Skyy Moore
128	128	Daniel Schneier	Jalin Hyatt
129	129	Adam Aizer	Devin Singletary
131	131	Meron Berkson	Allen Lazard
132	132	Jacob Gibbs	Rashod Bateman
133	133	Jacob Gibbs	Josh Downs
134	134	Meron Berkson	Raheem Mostert
135	135	Jamey Eisenberg	Tyler Allgeier
136	136	Adam Aizer	Wan'Dale Robinson
137	137	Daniel Schneier	Zay Jones
138	138	George Maselli	Nathaniel Dell
139	139	Chris Towers	Israel Abanikanda
140	140	Zach Brook	John Metchie
141	141	Thomas Shafer	Isaiah Hodgins
142	142	Dave Richard	Kendre Miller 
143	143	Frank Stampfl	David Njoku
144	144	Heath Cummings	Kyler Murray
145	145	Heath Cummings	Daniel Jones
146	146	Frank Stampfl	Alec Pierce
147	147	Dave Richard	Dalton Schultz
149	149	Zach Brook	Donovan Peoples-Jones
150	150	Chris Towers	Gerald Everett
148	148	Thomas Shafer	Mike Davis
151	151	George Maselli	Tyjae Spears
152	152	Daniel Schneier	Dalton Kincaid
155	155	Meron Berkson	Ezekiel Elliott
154	154	Jamey Eisenberg	Jaylen Warren 
153	153	Adam Aizer	Tutu Atwell 
156	156	Jacob Gibbs	Jarran Reed
157	157	Jacob Gibbs	Rondale Moore
158	158	Meron Berkson	Mack Wilson
159	159	Jamey Eisenberg	Kyle Philips
160	160	Adam Aizer	Greg Dulcich
161	161	Daniel Schneier	Ray Rice
162	162	George Maselli	Khalil Shakir 
163	163	Chris Towers	Sam LaPorta
164	164	Zach Brook	Kenneth Gainwell
165	165	Thomas Shafer	Earnest Gray
166	166	Dave Richard	Dj Chark
168	168	Heath Cummings	Darnell Mooney
\.


--
-- Data for Name: mock_draft_def; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.mock_draft_def (id, rank, name) FROM stdin;
1	1	PHI
2	2	DAL
3	3	CLE
4	4	BAL
5	5	NE
6	6	KC
7	7	WAS
8	8	SF
9	9	PIT
10	10	DET
\.


--
-- Data for Name: mock_draft_kicker; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.mock_draft_kicker (id, rank, name) FROM stdin;
1	1	Justin Tucker
2	2	Dustin Hopkins
3	3	Harrison Butker
4	4	Jake Elliott
5	5	Tyler Bass
6	6	Daniel Carlson
7	7	Jake Moody
8	8	Jason Myers
9	9	Greg Joseph
10	10	Greg Zuerlein
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: projections_all_diff; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.projections_all_diff (id, name, team, points_forecasted, difference_forecasted, "position") FROM stdin;
2	Jalen Hurts	PHI	373	247	QB
3	Josh Allen	BUF	371	245	QB
4	Joe Burrow	CIN	349	223	QB
5	Lamar Jackson	BAL	344	218	QB
6	Justin Fields	CHI	319	193	QB
7	Deshaun Watson	CLE	319	193	QB
8	Justin Herbert	LAC	308	182	QB
9	Kirk Cousins	MIN	303	177	QB
10	Russell Wilson	DEN	292	166	QB
11	Dak Prescott	DAL	290	164	QB
12	Trevor Lawrence	JAC	290	164	QB
13	Daniel Jones	NYG	286	160	QB
14	Geno Smith	SEA	282	156	QB
15	Aaron Rodgers	NYJ	279	153	QB
16	Jared Goff	DET	272	146	QB
17	Kenny Pickett	PIT	257	131	QB
18	Tua Tagovailoa	MIA	253	127	QB
19	Derek Carr	NO	249	123	QB
20	Brock Purdy	SF	240	114	QB
21	Jimmy Garoppolo	LV	240	114	QB
22	Bryce Young	CAR	239	113	QB
23	Matthew Stafford	LAR	238	112	QB
24	Anthony Richardson	IND	229	103	QB
25	Jordan Love	GB	222	96	QB
26	C.J. Stroud	HOU	210	84	QB
27	Mac Jones	NE	205	79	QB
28	Desmond Ridder	ATL	187	61	QB
29	Baker Mayfield	TB	175	49	QB
30	Kyler Murray	ARI	170	44	QB
31	Ryan Tannehill	TEN	155	29	QB
32	Sam Howell	WAS	139	13	QB
33	Jacoby Brissett	WAS	106	-20	QB
34	Colt McCoy	ARI	88	-38	QB
35	Will Levis	TEN	79	-47	QB
36	Kyle Trask	TB	72	-54	QB
37	Trey Lance	SF	68	-58	QB
38	Gardner Minshew	II IND	44	-82	QB
39	Taylor Heinicke	ATL	38	-88	QB
40	David Blough	ARI	29	-97	QB
41	Mike White	MIA	28	-98	QB
42	Brian Hoyer	LV	28	-98	QB
43	Marcus Mariota	PHI	28	-98	QB
44	Bailey Zappe	NE	25	-101	QB
45	Tyrod Taylor	NYG	24	-102	QB
46	P.J. Walker	CHI	24	-102	QB
47	Tyler Huntley	BAL	22	-104	QB
48	Mitch Trubisky	PIT	21	-105	QB
49	Sean Clifford	GB	20	-106	QB
50	Andy Dalton	CAR	20	-106	QB
51	Stetson Bennett	LAR	20	-106	QB
52	Davis Mills	HOU	20	-106	QB
53	Easton Stick	LAC	19	-107	QB
54	Blaine Gabbert	KC	16	-110	QB
55	Zach Wilson	NYJ	16	-110	QB
56	Matt Barkley	BUF	16	-110	QB
57	Trevor Siemian	CIN	16	-110	QB
58	Drew Lock	SEA	15	-111	QB
59	Jarrett Stidham	DEN	15	-111	QB
60	Sam Darnold	SF	15	-111	QB
61	Nick Mullens	MIN	14	-112	QB
62	Jameis Winston	NO	14	-112	QB
63	Hendon Hooker	DET	14	-112	QB
64	Joshua Dobbs	CLE	14	-112	QB
65	C.J. Beathard	JAC	13	-113	QB
66	Cooper Rush	DAL	13	-113	QB
67	Kyle Allen	BUF	11	-115	QB
68	Max Duggan	LAC	10	-116	QB
69	Jaren Hall	MIN	10	-116	QB
70	Aidan O'Connell	LV	10	-116	QB
71	Tanner McKee	PHI	9	-117	QB
72	Jake Haener	NO	9	-117	QB
73	Dorian Thompson-Robinson	CLE	8	-118	QB
74	Clayton Tune	ARI	8	-118	QB
75	Malik Willis	TEN	6	-120	QB
76	Feleipe Franks	ATL	1	-125	QB
77	Justin Jefferson	MIN	202	139	WR
78	Davante Adams	LV	197	134	WR
79	Ja'Marr Chase	CIN	196	133	WR
80	Cooper Kupp	LAR	189	126	WR
81	Tyreek Hill	MIA	175	112	WR
82	Stefon Diggs	BUF	165	102	WR
83	A.J. Brown	PHI	163	100	WR
84	CeeDee Lamb	DAL	160	97	WR
85	Deebo Samuel	SF	151	88	WR
86	Christian Watson	GB	151	88	WR
88	Garrett Wilson	NYJ	147	84	WR
89	DJ Moore	CHI	145	82	WR
90	Jaylen Waddle	MIA	145	82	WR
91	DK Metcalf	SEA	144	81	WR
92	Amari Cooper	CLE	141	78	WR
93	Tee Higgins	CIN	141	78	WR
94	DeVonta Smith	PHI	138	75	WR
95	Jerry Jeudy	DEN	133	70	WR
96	Calvin Ridley	JAC	133	70	WR
97	Terry McLaurin	WAS	129	66	WR
98	Mike Evans	TB	128	65	WR
99	Chris Olave	NO	128	65	WR
100	Keenan Allen	LAC	126	63	WR
101	George Pickens	PIT	125	62	WR
102	Christian Kirk	JAC	124	61	WR
103	Mike Williams	LAC	124	61	WR
104	Brandin Cooks	DAL	122	59	WR
105	Jakobi Meyers	LV	119	56	WR
106	Marquise Brown	ARI	119	56	WR
107	Tyler Lockett	SEA	117	54	WR
108	Gabe Davis	BUF	117	54	WR
109	Brandon Aiyuk	SF	115	52	WR
110	Jahan Dotson	WAS	114	51	WR
111	Drake London	ATL	113	50	WR
112	Chris Godwin	TB	112	49	WR
113	DJ Chark	Jr. CAR	111	48	WR
114	Michael Thomas	NO	111	48	WR
115	Kadarius Toney	KC	109	46	WR
116	Jordan Addison	MIN	108	45	WR
117	Allen Lazard	NYJ	108	45	WR
118	Diontae Johnson	PIT	107	44	WR
119	Jaxon Smith-Njigba	SEA	106	43	WR
120	Treylon Burks	TEN	106	43	WR
121	Courtland Sutton	DEN	104	41	WR
122	Michael Pittman	Jr. IND	100	37	WR
123	Quentin Johnston	LAC	99	36	WR
124	Odell Beckham	Jr. BAL	98	35	WR
248	DeAndre Carter	LV	6	-57	WR
87	Amon-Ra St.	DET	148	85	WR
125	Donovan Peoples-Jones	CLE	97	34	WR
126	Tim Patrick	DEN	96	33	WR
127	Nico Collins	HOU	96	33	WR
128	Skyy Moore	KC	94	31	WR
129	Marquez Valdes-Scantling	KC	92	29	WR
130	Tyler Boyd	CIN	91	28	WR
131	Zay Jones	JAC	91	28	WR
132	Michael Gallup	DAL	89	26	WR
133	Darnell Mooney	CHI	89	26	WR
134	Romeo Doubs	GB	86	23	WR
135	Sterling Shepard	NYG	86	23	WR
136	Rashod Bateman	BAL	86	23	WR
137	Adam Thielen	CAR	86	23	WR
138	K.J. Osborn	MIN	85	22	WR
139	Jonathan Mingo	CAR	85	22	WR
140	Curtis Samuel	WAS	85	22	WR
141	Rashid Shaheed	NO	84	21	WR
142	Zay Flowers	BAL	83	20	WR
143	Rondale Moore	ARI	83	20	WR
144	Chase Claypool	CHI	83	20	WR
145	Marvin Jones	Jr. DET	82	19	WR
146	Hunter Renfrow	LV	81	18	WR
147	Jayden Reed	GB	81	18	WR
148	Van Jefferson	LAR	79	16	WR
149	Mecole Hardman	Jr. NYJ	79	16	WR
150	JuJu Smith-Schuster	NE	77	14	WR
151	Tyquan Thornton	NE	77	14	WR
152	Elijah Moore	CLE	76	13	WR
153	DeVante Parker	NE	76	13	WR
154	Isaiah Hodgins	NYG	74	11	WR
155	Robert Woods	HOU	72	9	WR
156	Russell Gage	TB	72	9	WR
157	Rashee Rice	KC	72	9	WR
158	John Metchie	III HOU	71	8	WR
159	Alec Pierce	IND	70	7	WR
160	Parris Campbell	NYG	69	6	WR
161	Nick Westbrook-Ikhine	TEN	68	5	WR
162	Wan'Dale Robinson	NYG	67	4	WR
163	Mack Hollins	ATL	64	1	WR
164	Tutu Atwell	LAR	63	0	WR
165	Jameson Williams	DET	62	-1	WR
166	Allen Robinson	II PIT	61	-2	WR
167	Corey Davis	NYJ	60	-3	WR
168	Ben Skowronek	LAR	60	-3	WR
169	Kyle Philips	TEN	59	-4	WR
170	Joshua Palmer	LAC	58	-5	WR
171	Richie James	Jr. KC	56	-7	WR
172	Chris Moore	TEN	55	-8	WR
173	Khalil Shakir	BUF	55	-8	WR
174	Braxton Berrios	MIA	55	-8	WR
175	Josh Downs	IND	54	-9	WR
176	Terrace Marshall	Jr. CAR	54	-9	WR
177	Darius Slayton	NYG	52	-11	WR
178	Jalin Hyatt	NYG	51	-12	WR
179	Jauan Jennings	SF	50	-13	WR
180	Kendrick Bourne	NE	49	-14	WR
181	Tre'Quan Smith	NO	45	-18	WR
182	Josh Reynolds	DET	44	-19	WR
183	Quez Watkins	PHI	43	-20	WR
184	Dontayvion Wicks	GB	43	-20	WR
185	Jamal Agnew	JAC	42	-21	WR
186	Charlie Jones	CIN	41	-22	WR
187	Olamide Zaccheaus	PHI	41	-22	WR
188	Chosen Anderson	MIA	38	-25	WR
189	Marquise Goodwin	CLE	38	-25	WR
190	Puka Nacua	LAR	38	-25	WR
191	Jalen Guyton	LAC	36	-27	WR
192	Marvin Mims	Jr. DEN	34	-29	WR
193	Kalif Raymond	DET	34	-29	WR
194	Trenton Irwin	CIN	33	-30	WR
195	Deonte Harty	BUF	33	-30	WR
196	Laviska Shenault	Jr. CAR	31	-32	WR
197	Randall Cobb	NYJ	30	-33	WR
198	Cedric Tillman	CLE	28	-35	WR
199	Isaiah McKenzie	IND	28	-35	WR
200	Trent Sherfield	BUF	25	-38	WR
201	David Bell	CLE	24	-39	WR
202	Jalen Tolbert	DAL	24	-39	WR
203	David Moore	TB	23	-40	WR
204	KhaDarel Hodge	ATL	23	-40	WR
205	Parker Washington	JAC	23	-40	WR
206	Justin Watson	KC	22	-41	WR
207	Nelson Agholor	BAL	22	-41	WR
208	Calvin Austin	III PIT	22	-41	WR
209	Equanimeous St.	Brown CHI	21	-42	WR
210	Dee Eskridge	SEA	20	-43	WR
211	Samori Toure	GB	20	-43	WR
212	Racey McMath	TEN	20	-43	WR
213	Dyami Brown	WAS	20	-43	WR
214	Brandon Powell	MIN	19	-44	WR
215	Cedrick Wilson	Jr. MIA	18	-45	WR
216	Devin Duvernay	BAL	17	-46	WR
217	Gunner Olszewski	PIT	17	-46	WR
218	KaVontae Turpin	DAL	16	-47	WR
219	Michael Wilson	ARI	16	-47	WR
220	Velus Jones	Jr. CHI	15	-48	WR
221	Ray-Ray McCloud	III SF	14	-49	WR
222	Penny Hart	ATL	13	-50	WR
223	Bryan Edwards	NO	13	-50	WR
224	KJ Hamler	DEN	13	-50	WR
225	Justin Shorter	BUF	12	-51	WR
226	Tre Tucker	LV	12	-51	WR
227	Phillip Dorsett	II LV	12	-51	WR
228	Erik Ezukanma	MIA	12	-51	WR
229	Dareke Young	SEA	11	-52	WR
230	Jalen Reagor	MIN	11	-52	WR
231	Tim Jones	JAC	10	-53	WR
232	Kayshon Boutte	NE	10	-53	WR
233	Danny Gray	SF	10	-53	WR
234	Deven Thompkins	TB	10	-53	WR
235	Britain Covey	PHI	10	-53	WR
236	Shi Smith	CAR	10	-53	WR
237	Noah Brown	HOU	9	-54	WR
238	Trinity Benson	DET	9	-54	WR
239	Ashton Dulin	IND	9	-54	WR
240	Dax Milne	WAS	9	-54	WR
241	Greg Dortch	ARI	8	-55	WR
242	Amari Rodgers	HOU	8	-55	WR
243	Scotty Miller	ATL	8	-55	WR
244	Kendall Hinton	DEN	7	-56	WR
245	Trent Taylor	CIN	6	-57	WR
246	Lance McCutcheon	LAR	6	-57	WR
247	Denzel Mims	NYJ	6	-57	WR
249	Keith Kirkwood	NO	5	-58	WR
250	Simi Fehoko	DAL	5	-58	WR
251	Cade Johnson	SEA	5	-58	WR
252	Zach Pascal	ARI	5	-58	WR
253	Miles Boykin	PIT	5	-58	WR
254	Demario Douglas	NE	5	-58	WR
255	Chris Conley	SF	5	-58	WR
256	Grant DuBose	GB	5	-58	WR
257	Mike Strachan	IND	5	-58	WR
258	Mason Kinsey	TEN	4	-59	WR
259	James Proche	II BAL	4	-59	WR
260	Marcus Kemp	WAS	4	-59	WR
261	Frank Darby	ATL	4	-59	WR
262	Derius Davis	LAC	3	-60	WR
263	Jalen Nailor	MIN	3	-60	WR
264	Tom Kennedy	DET	2	-61	WR
265	Montrell Washington	DEN	2	-61	WR
266	Derrick Henry	TEN	216	144	RB
267	Austin Ekeler	LAC	215	143	RB
268	Josh Jacobs	LV	206	134	RB
269	Nick Chubb	CLE	203	131	RB
270	Christian McCaffrey	SF	200	128	RB
271	Jonathan Taylor	IND	193	121	RB
272	Bijan Robinson	ATL	190	118	RB
273	Tony Pollard	DAL	190	118	RB
274	Saquon Barkley	NYG	185	113	RB
275	Dalvin Cook	MIN	184	112	RB
276	Breece Hall	NYJ	182	110	RB
277	Kenneth Walker	III SEA	181	109	RB
278	Joe Mixon	CIN	170	98	RB
279	J.K. Dobbins	BAL	169	97	RB
280	Najee Harris	PIT	167	95	RB
281	Travis Etienne	Jr. JAC	164	92	RB
282	James Conner	ARI	163	91	RB
283	Aaron Jones	GB	163	91	RB
284	Isiah Pacheco	KC	159	87	RB
285	David Montgomery	DET	156	84	RB
286	Dameon Pierce	HOU	155	83	RB
287	Rhamondre Stevenson	NE	153	81	RB
289	Alvin Kamara	NO	148	76	RB
290	Jahmyr Gibbs	DET	147	75	RB
291	Brian Robinson	Jr. WAS	135	63	RB
292	Javonte Williams	DEN	135	63	RB
293	Miles Sanders	CAR	134	62	RB
294	Cam Akers	LAR	133	61	RB
295	Rachaad White	TB	131	59	RB
296	Rashaad Penny	PHI	129	57	RB
297	AJ Dillon	GB	128	56	RB
298	Samaje Perine	DEN	124	52	RB
299	Jamaal Williams	NO	122	50	RB
300	Alexander Mattison	MIN	117	45	RB
302	James Cook	BUF	113	41	RB
303	Elijah Mitchell	SF	112	40	RB
304	Jerick McKinnon	KC	111	39	RB
305	Khalil Herbert	CHI	110	38	RB
306	Damien Harris	BUF	107	35	RB
307	Tyler Allgeier	ATL	102	30	RB
308	Raheem Mostert	MIA	102	30	RB
309	D'Onta Foreman	CHI	102	30	RB
310	Antonio Gibson	WAS	94	22	RB
311	Zach Charbonnet	SEA	94	22	RB
312	Chuba Hubbard	CAR	92	20	RB
313	Devin Singletary	HOU	92	20	RB
314	Gus Edwards	BAL	90	18	RB
315	Jerome Ford	CLE	87	15	RB
316	James Robinson	NE	85	13	RB
317	Jaylen Warren	PIT	79	7	RB
318	Ronald Jones	II DAL	79	7	RB
319	Devon Achane	MIA	76	4	RB
320	Chase Brown	CIN	75	3	RB
321	Zonovan Knight	NYJ	73	1	RB
322	Tank Bigsby	JAC	71	-1	RB
323	Cordarrelle Patterson	ATL	70	-2	RB
324	Michael Carter	NYJ	69	-3	RB
325	Chase Edmonds	TB	69	-3	RB
326	Ty Chandler	MIN	68	-4	RB
327	Nyheim Hines	BUF	67	-5	RB
328	Roschon Johnson	CHI	66	-6	RB
329	Joshua Kelley	LAC	66	-6	RB
330	Tyjae Spears	TEN	66	-6	RB
331	Keaontay Ingram	ARI	62	-10	RB
332	Latavius Murray	BUF	61	-11	RB
333	Kendre Miller	NO	59	-13	RB
334	Kenneth Gainwell	PHI	58	-14	RB
335	Deon Jackson	IND	57	-15	RB
336	Corey Clement	ARI	57	-15	RB
337	Zach Evans	LAR	55	-17	RB
338	JaMycal Hasty	JAC	53	-19	RB
339	Kyren Williams	LAR	52	-20	RB
340	Zamir White	LV	51	-21	RB
341	Isaiah Spiller	LAC	47	-25	RB
342	Ameer Abdullah	LV	47	-25	RB
343	Trayveon Williams	CIN	44	-28	RB
344	Tony Jones	Jr. DEN	44	-28	RB
345	Craig Reynolds	DET	43	-29	RB
346	Clyde Edwards-Helaire	KC	41	-31	RB
347	Eric Gray	NYG	41	-31	RB
348	Ke'Shawn Vaughn	TB	41	-31	RB
349	Jordan Mason	SF	41	-31	RB
350	Matt Breida	NYG	41	-31	RB
351	Kevin Harris	NE	39	-33	RB
352	Zack Moss	IND	38	-34	RB
353	Israel Abanikanda	NYJ	35	-37	RB
354	Raheem Blackshear	CAR	34	-38	RB
355	Gary Brightwell	NYG	34	-38	RB
356	Justice Hill	BAL	32	-40	RB
357	Deuce Vaughn	DAL	31	-41	RB
358	Brandon Bolden	LV	30	-42	RB
359	DeeJay Dallas	SEA	30	-42	RB
360	Hassan Haskins	TEN	29	-43	RB
361	Mike Boone	HOU	29	-43	RB
362	Jonathan Williams	WAS	28	-44	RB
363	Travis Homer	CHI	28	-44	RB
364	Malik Davis	DAL	28	-44	RB
365	John Kelly	Jr. CLE	28	-44	RB
366	Kyle Juszczyk	SF	26	-46	RB
367	Anthony McFarland	Jr. PIT	26	-46	RB
368	Boston Scott	PHI	26	-46	RB
369	Rico Dowdle	DAL	25	-47	RB
370	Caleb Huntley	ATL	25	-47	RB
371	D'Ernest Johnson	JAC	24	-48	RB
301	Jeff Wilson	MIA	115	43	RB
372	Chris Rodriguez	Jr. WAS	24	-48	RB
373	Pierre Strong	Jr. NE	24	-48	RB
374	Tyrion Davis-Price	SF	24	-48	RB
375	Brittain Brown	LV	24	-48	RB
376	Sincere McCormick	LV	24	-48	RB
377	Kene Nwangwu	MIN	23	-49	RB
378	Patrick Taylor	Jr. GB	23	-49	RB
379	Ty Montgomery	NE	23	-49	RB
380	DeWayne McBride	MIN	22	-50	RB
381	Damarea Crockett	DEN	22	-50	RB
382	Ty'Son Williams	ARI	21	-51	RB
383	Alec Ingold	MIA	21	-51	RB
384	Chris Evans	CIN	18	-54	RB
385	Snoop Conner	JAC	18	-54	RB
386	Tyler Badie	DEN	17	-55	RB
387	Zander Horvath	LAC	16	-56	RB
388	Lew Nichols	III GB	15	-57	RB
389	Larry Rountree	III LAC	14	-58	RB
390	Evan Hull	IND	14	-58	RB
391	Jermar Jefferson	DET	13	-59	RB
392	Dare Ogunbowale	HOU	13	-59	RB
393	C.J. Ham	MIN	12	-60	RB
394	Julius Chestnut	TEN	12	-60	RB
395	Avery Williams	ATL	12	-60	RB
396	Spencer Brown	BUF	11	-61	RB
397	La'Mical Perine	KC	11	-61	RB
398	Salvon Ahmed	MIA	11	-61	RB
399	Patrick Ricard	BAL	11	-61	RB
400	Jaret Patterson	WAS	10	-62	RB
401	Troy Hairston	II HOU	10	-62	RB
402	Nate McCrary	CLE	9	-63	RB
403	Eno Benjamin	NO	9	-63	RB
404	Ronnie Rivers	LAR	9	-63	RB
405	Michael Burton	DEN	7	-65	RB
406	Adam Prentice	NO	7	-65	RB
407	Jason Huntley	PIT	7	-65	RB
408	Jason Cabinda	DET	6	-66	RB
409	Jakob Johnson	LV	5	-67	RB
410	Reggie Gilliam	BUF	5	-67	RB
411	Keith Smith	ATL	4	-68	RB
412	Travis Kelce	KC	175	140	TE
413	Mark Andrews	BAL	122	87	TE
415	George Kittle	SF	113	78	TE
416	Darren Waller	NYG	102	67	TE
417	Dallas Goedert	PHI	97	62	TE
418	Kyle Pitts	ATL	94	59	TE
419	Pat Freiermuth	PIT	89	54	TE
420	Evan Engram	JAC	88	53	TE
421	Cole Kmet	CHI	87	52	TE
422	David Njoku	CLE	85	50	TE
423	Gerald Everett	LAC	80	45	TE
424	Tyler Higbee	LAR	79	44	TE
425	Dalton Schultz	HOU	77	42	TE
426	Chigoziem Okonkwo	TEN	76	41	TE
427	Greg Dulcich	DEN	76	41	TE
428	Juwan Johnson	NO	75	40	TE
429	Dalton Kincaid	BUF	73	38	TE
430	Irv Smith	Jr. CIN	67	32	TE
431	Tyler Conklin	NYJ	67	32	TE
432	Zach Ertz	ARI	66	31	TE
433	Jelani Woods	IND	64	29	TE
434	Sam LaPorta	DET	63	28	TE
435	Noah Fant	SEA	63	28	TE
436	Dawson Knox	BUF	62	27	TE
437	Mike Gesicki	NE	61	26	TE
438	Cade Otton	TB	60	25	TE
439	Logan Thomas	WAS	60	25	TE
440	Hunter Henry	NE	56	21	TE
441	Hayden Hurst	CAR	54	19	TE
442	Austin Hooper	LV	51	16	TE
443	Luke Musgrave	GB	49	14	TE
444	Michael Mayer	LV	48	13	TE
445	Jake Ferguson	DAL	44	9	TE
446	Trey McBride	ARI	43	8	TE
447	Isaiah Likely	BAL	43	8	TE
448	Foster Moreau	NO	41	6	TE
449	Will Dissly	SEA	38	3	TE
450	Taysom Hill	NO	37	2	TE
451	Noah Gray	KC	37	2	TE
452	Tommy Tremble	CAR	37	2	TE
453	Josh Oliver	MIN	36	1	TE
454	Donald Parham	Jr. LAC	36	1	TE
455	Jonnu Smith	ATL	35	0	TE
456	Teagan Quitoriano	HOU	34	-1	TE
457	C.J. Uzomah	NYJ	33	-2	TE
458	Luke Schoonmaker	DAL	33	-2	TE
459	Tucker Kraft	GB	33	-2	TE
460	Robert Tonyan	CHI	32	-3	TE
461	Colby Parkinson	SEA	31	-4	TE
462	Hunter Long	LAR	30	-5	TE
463	Jody Fortson	KC	29	-6	TE
464	Mo Alie-Cox	IND	28	-7	TE
465	Brenton Strange	JAC	28	-7	TE
466	Kylen Granson	IND	27	-8	TE
467	Harrison Bryant	CLE	27	-8	TE
468	Durham Smythe	MIA	26	-9	TE
469	Trevon Wesco	TEN	26	-9	TE
470	Brock Wright	DET	25	-10	TE
471	Peyton Hendershot	DAL	25	-10	TE
472	Ian Thomas	CAR	24	-11	TE
473	Ko Kieft	TB	22	-13	TE
474	Darnell Washington	PIT	21	-14	TE
475	Eric Saubert	MIA	21	-14	TE
476	O.J. Howard	LV	21	-14	TE
477	Adam Trautman	DEN	21	-14	TE
478	Daniel Bellinger	NYG	21	-14	TE
479	Kevin Rader	TEN	20	-15	TE
480	Josh Whyle	TEN	20	-15	TE
481	John Bates	WAS	20	-15	TE
482	Josiah Deguara	GB	20	-15	TE
483	Connor Heyward	PIT	19	-16	TE
484	Jordan Akins	CLE	19	-16	TE
485	Davis Allen	LAR	19	-16	TE
486	Shane Zylstra	DET	19	-16	TE
487	Tyler Kroft	MIA	17	-18	TE
488	Brycen Hopkins	LAR	17	-18	TE
489	Brayden Willis	SF	17	-18	TE
490	Jack Stoll	PHI	17	-18	TE
491	Dan Arnold	PHI	16	-19	TE
492	Ross Dwelley	SF	16	-19	TE
493	Jesper Horsted	LV	16	-19	TE
494	Stephen Sullivan	CAR	16	-19	TE
495	Curtis Hodges	WAS	16	-19	TE
496	Andrew Ogletree	IND	16	-19	TE
497	Blake Bell	KC	15	-20	TE
498	Tre' McKitty	LAC	15	-20	TE
499	Payne Durham	TB	15	-20	TE
500	Elijah Higgins	MIA	15	-20	TE
501	Drew Sample	CIN	14	-21	TE
502	Albert Okwuegbunam	DEN	14	-21	TE
503	James Mitchell	DET	14	-21	TE
504	Jeremy Ruckert	NYJ	13	-22	TE
505	Chris Manhertz	DEN	13	-22	TE
506	Cameron Latu	SF	13	-22	TE
507	Devin Asiasi	CIN	13	-22	TE
508	Ben Ellefson	MIN	12	-23	TE
509	Luke Farrell	JAC	12	-23	TE
510	Johnny Mundt	MIN	12	-23	TE
511	Stone Smartt	LAC	12	-23	TE
512	Zach Gentry	PIT	11	-24	TE
513	Charlie Kolar	BAL	11	-24	TE
514	Zack Kuntz	NYJ	11	-24	TE
515	Lawrence Cager	NYG	10	-25	TE
516	Will Mallory	IND	10	-25	TE
517	Armani Rogers	WAS	10	-25	TE
518	Parker Hesse	ATL	9	-26	TE
519	Cole Turner	WAS	8	-27	TE
520	Noah Togiai	ARI	7	-28	TE
521	Quintin Morris	BUF	6	-29	TE
522	Tyler Mabry	SEA	6	-29	TE
523	Sean McKeon	DAL	6	-29	TE
524	Matt Sokol	NE	5	-30	TE
525	Scotty Washington	NE	5	-30	TE
526	Brevin Jordan	HOU	5	-30	TE
527	Andrew Beck	HOU	5	-30	TE
528	John FitzPatrick	ATL	5	-30	TE
529	Lucas Krull	NO	3	-32	TE
530	Tanner Hudson	CIN	3	-32	TE
531	David Wells	TB	3	-32	TE
532	Grant Calcaterra	PHI	3	-32	TE
533	Charlie Woerner	SF	2	-33	TE
534	PHI	PHI	125	15	DEF
535	DAL	DAL	122	12	DEF
536	CLE	CLE	118	8	DEF
537	BAL	BAL	117	7	DEF
538	NE	NE	116	6	DEF
539	KC	KC	116	6	DEF
540	WAS	WAS	116	6	DEF
541	SF	SF	114	4	DEF
542	PIT	PIT	114	4	DEF
543	DET	DET	114	4	DEF
544	SEA	SEA	114	4	DEF
545	HOU	HOU	114	4	DEF
546	BUF	BUF	113	3	DEF
547	MIA	MIA	113	3	DEF
548	LAC	LAC	113	3	DEF
549	JAC	JAC	113	3	DEF
550	CIN	CIN	111	1	DEF
551	IND	IND	111	1	DEF
552	NYG	NYG	110	0	DEF
553	NO	NO	110	0	DEF
554	NYJ	NYJ	109	-1	DEF
555	TB	TB	107	-3	DEF
556	GB	GB	107	-3	DEF
557	LAR	LAR	104	-6	DEF
558	MIN	MIN	104	-6	DEF
559	TEN	TEN	103	-7	DEF
560	DEN	DEN	103	-7	DEF
561	ATL	ATL	101	-9	DEF
562	CAR	CAR	100	-10	DEF
563	ARI	ARI	100	-10	DEF
564	CHI	CHI	97	-13	DEF
565	LV	LV	92	-18	DEF
566	Justin Tucker	BAL	140	22	KI
567	Dustin Hopkins	LAC	136	18	KI
568	Harrison Butker	KC	135	17	KI
569	Jake Elliott	PHI	131	13	KI
570	Tyler Bass	BUF	130	12	KI
571	Evan McPherson	CIN	130	12	KI
572	Cameron Dicker	LAC	129	11	KI
573	Daniel Carlson	LV	129	11	KI
574	Younghoe Koo	ATL	127	9	KI
575	Jake Moody	SF	126	8	KI
576	Michael Badgley	DET	125	7	KI
577	Jason Myers	SEA	125	7	KI
578	Greg Joseph	MIN	123	5	KI
579	Greg Zuerlein	NYJ	123	5	KI
580	Tristan Vizcaino	DAL	121	3	KI
581	Riley Patterson	DET	121	3	KI
582	Graham Gano	NYG	121	3	KI
583	Jason Sanders	MIA	120	2	KI
584	Cairo Santos	CHI	119	1	KI
585	Eddy Pineiro	CAR	118	0	KI
586	Brandon McManus	JAC	115	-3	KI
587	Chris Boswell	PIT	115	-3	KI
588	Cade York	CLE	113	-5	KI
589	Ka'imi Fairbairn	HOU	113	-5	KI
590	Matt Gay	IND	113	-5	KI
591	Christopher Dunn	LAR	113	-5	KI
592	Wil Lutz	NO	112	-6	KI
593	Matt Prater	ARI	110	-8	KI
594	Anders Carlson	GB	108	-10	KI
595	Joey Slye	WAS	104	-14	KI
596	Chase McLaughlin	TB	104	-14	KI
597	Caleb Shudak	TEN	95	-23	KI
598	Chad Ryland	NE	55	-63	KI
1	Patrick Mahomes	KC	383	257	QB
599	DeAndre Hopkins	ARI	0	-63	WR
600	Jeff Wilsons	MIA	0	-72	RB
414	T.J. Hockenson	MIN	114	79	TE
288	D'Andre Swift	PHI	151	79	RB
\.


--
-- Data for Name: projections_def; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.projections_def (id, name, team, points) FROM stdin;
1	PHI	57.8	125
2	DAL	51.1	122
3	CLE	47.4	118
4	BAL	48.5	117
5	NE	48.5	116
6	KC	50.7	116
7	WAS	48.3	116
8	SF	46.3	114
9	PIT	47.5	114
10	DET	42.7	114
11	SEA	47.9	114
12	HOU	46.0	114
13	BUF	43.4	113
14	MIA	47.1	113
15	LAC	44.2	113
16	JAC	41.4	113
17	CIN	40.6	111
18	IND	45.8	111
19	NYG	41.2	110
20	NO	45.6	110
21	NYJ	47.7	109
22	TB	42.7	107
23	GB	42.4	107
24	LAR	43.0	104
25	MIN	38.8	104
26	TEN	40.7	103
27	DEN	38.6	103
28	ATL	35.5	101
29	CAR	37.4	100
30	ARI	40.6	100
31	CHI	32.0	97
32	LV	36.2	92
\.


--
-- Data for Name: projections_ki; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.projections_ki (id, name, team, points) FROM stdin;
1	Justin Tucker BAL	32.2	140
2	Dustin Hopkins LAC	31.0	136
3	Harrison Butker KC	28.3	135
4	Jake Elliott PHI	27.3	131
5	Tyler Bass BUF	28.6	130
6	Evan McPherson CIN	28.6	130
7	Cameron Dicker LAC	28.1	129
8	Daniel Carlson LV	30.8	129
9	Younghoe Koo ATL	29.5	127
10	Jake Moody SF	29.0	126
11	Michael Badgley DET	27.2	125
12	Jason Myers SEA	28.4	125
13	Greg Joseph MIN	28.0	123
14	Greg Zuerlein NYJ	28.6	123
15	Tristan Vizcaino DAL	28.1	121
16	Riley Patterson DET	27.2	121
17	Graham Gano NYG	28.3	121
18	Jason Sanders MIA	27.5	120
19	Cairo Santos CHI	27.5	119
20	Eddy Pineiro CAR	28.4	118
21	Brandon McManus JAC	26.8	115
22	Chris Boswell PIT	27.5	115
23	Cade York CLE	25.1	113
24	Ka'imi Fairbairn HOU	27.1	113
25	Matt Gay IND	27.0	113
26	Christopher Dunn LAR	26.9	113
27	Wil Lutz NO	25.0	112
28	Matt Prater ARI	26.0	110
29	Anders Carlson GB	25.7	108
30	Joey Slye WAS	25.6	104
31	Chase McLaughlin TB	24.8	104
32	Caleb Shudak TEN	22.6	95
33	Chad Ryland NE	13.4	55
\.


--
-- Data for Name: projections_qbs; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.projections_qbs (id, name, team, points) FROM stdin;
1	Patrick Mahomes II KC	619.5	383
2	Jalen Hurts PHI	496.9	373
3	Josh Allen BUF	584.9	371
4	Joe Burrow CIN	601.9	349
5	Lamar Jackson BAL	488.3	344
6	Justin Fields CHI	398.9	319
7	Deshaun Watson CLE	525.4	319
8	Justin Herbert LAC	646.3	308
9	Kirk Cousins MIN	615.8	303
10	Russell Wilson DEN	527.0	292
11	Dak Prescott DAL	548.1	290
12	Trevor Lawrence JAC	579.6	290
13	Daniel Jones NYG	513.9	286
14	Geno Smith SEA	538.4	282
15	Aaron Rodgers NYJ	581.4	279
16	Jared Goff DET	569.5	272
17	Kenny Pickett PIT	536.6	257
18	Tua Tagovailoa MIA	516.6	253
19	Derek Carr NO	509.2	249
20	Brock Purdy SF	445.6	240
21	Jimmy Garoppolo LV	515.7	240
22	Bryce Young CAR	523.1	239
23	Matthew Stafford LAR	541.8	238
24	Anthony Richardson IND	421.5	229
25	Jordan Love GB	516.7	222
26	C.J. Stroud HOU	531.2	210
27	Mac Jones NE	499.4	205
28	Desmond Ridder ATL	392.9	187
29	Baker Mayfield TB	471.1	175
30	Kyler Murray ARI	329.8	170
31	Ryan Tannehill TEN	321.8	155
32	Sam Howell WAS	314.8	139
33	Jacoby Brissett WAS	244.6	106
34	Colt McCoy ARI	236.1	88
35	Will Levis TEN	174.4	79
36	Kyle Trask TB	194.8	72
37	Trey Lance SF	53.6	68
38	Gardner Minshew II IND	106.6	44
39	Taylor Heinicke ATL	78.7	38
40	David Blough ARI	83.0	29
41	Mike White MIA	65.2	28
42	Brian Hoyer LV	64.0	28
43	Marcus Mariota PHI	41.1	28
44	Bailey Zappe NE	63.0	25
45	Tyrod Taylor NYG	44.0	24
46	P.J. Walker CHI	50.8	24
47	Tyler Huntley BAL	41.6	22
48	Mitch Trubisky PIT	46.9	21
49	Sean Clifford GB	41.4	20
50	Andy Dalton CAR	45.1	20
51	Stetson Bennett LAR	45.3	20
52	Davis Mills HOU	44.2	20
53	Easton Stick LAC	38.5	19
54	Blaine Gabbert KC	32.5	16
55	Zach Wilson NYJ	33.5	16
56	Matt Barkley BUF	38.8	16
57	Trevor Siemian CIN	31.2	16
58	Drew Lock SEA	27.9	15
59	Jarrett Stidham DEN	27.2	15
60	Sam Darnold SF	24.3	15
61	Nick Mullens MIN	31.6	14
62	Jameis Winston NO	25.4	14
63	Hendon Hooker DET	24.2	14
64	Joshua Dobbs CLE	28.4	14
65	C.J. Beathard JAC	29.1	13
66	Cooper Rush DAL	27.6	13
67	Kyle Allen BUF	24.0	11
68	Max Duggan LAC	21.0	10
69	Jaren Hall MIN	19.0	10
70	Aidan O'Connell LV	18.0	10
71	Tanner McKee PHI	16.0	9
72	Jake Haener NO	15.0	9
73	Dorian Thompson-Robinson CLE	17.0	8
74	Clayton Tune ARI	19.0	8
75	Malik Willis TEN	18.0	6
76	Feleipe Franks ATL	0.0	1
\.


--
-- Data for Name: projections_rbs; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.projections_rbs (id, name, team, points) FROM stdin;
1	Derrick Henry TEN	314.4	216
2	Austin Ekeler LAC	183.8	215
3	Josh Jacobs LV	268.8	206
4	Nick Chubb CLE	257.1	203
5	Christian McCaffrey SF	188.7	200
6	Jonathan Taylor IND	273.6	193
7	Bijan Robinson ATL	229.3	190
8	Tony Pollard DAL	214.8	190
9	Saquon Barkley NYG	229.3	185
10	Dalvin Cook MIN	229.8	184
11	Breece Hall NYJ	198.9	182
12	Kenneth Walker III SEA	244.6	181
13	Joe Mixon CIN	202.9	170
14	J.K. Dobbins BAL	189.6	169
15	Najee Harris PIT	245.9	167
16	Travis Etienne Jr. JAC	213.6	164
17	James Conner ARI	211.0	163
18	Aaron Jones GB	182.3	163
19	Isiah Pacheco KC	201.3	159
20	David Montgomery DET	184.5	156
21	Dameon Pierce HOU	231.9	155
22	Rhamondre Stevenson NE	185.2	153
23	D'Andre Swift PHI	134.8	151
24	Alvin Kamara NO	163.1	148
25	Jahmyr Gibbs DET	148.7	147
26	Brian Robinson Jr. WAS	231.3	135
27	Javonte Williams DEN	166.9	135
28	Miles Sanders CAR	187.8	134
29	Cam Akers LAR	186.2	133
30	Rachaad White TB	179.5	131
31	Rashaad Penny PHI	167.6	129
32	AJ Dillon GB	171.9	128
33	Samaje Perine DEN	146.3	124
34	Jamaal Williams NO	182.7	122
35	Alexander Mattison MIN	153.1	117
36	Jeff Wilson Jr. MIA	141.7	115
37	James Cook BUF	136.4	113
38	Elijah Mitchell SF	155.7	112
39	Jerick McKinnon KC	84.6	111
40	Khalil Herbert CHI	131.4	110
41	Damien Harris BUF	135.2	107
42	Tyler Allgeier ATL	155.8	102
43	Raheem Mostert MIA	137.4	102
44	D'Onta Foreman CHI	149.0	102
45	Antonio Gibson WAS	111.9	94
46	Zach Charbonnet SEA	113.7	94
47	Chuba Hubbard CAR	116.4	92
48	Devin Singletary HOU	133.1	92
49	Gus Edwards BAL	123.8	90
50	Jerome Ford CLE	109.9	87
51	James Robinson NE	128.6	85
52	Jaylen Warren PIT	99.5	79
53	Ronald Jones II DAL	122.2	79
54	Devon Achane MIA	85.2	76
55	Chase Brown CIN	83.5	75
56	Zonovan Knight NYJ	106.0	73
57	Tank Bigsby JAC	89.5	71
58	Cordarrelle Patterson ATL	73.1	70
59	Michael Carter NYJ	78.6	69
60	Chase Edmonds TB	93.4	69
61	Ty Chandler MIN	67.4	68
62	Nyheim Hines BUF	69.0	67
63	Roschon Johnson CHI	84.8	66
64	Joshua Kelley LAC	96.2	66
65	Tyjae Spears TEN	86.2	66
66	Keaontay Ingram ARI	78.7	62
67	Latavius Murray BUF	82.0	61
68	Kendre Miller NO	70.5	59
69	Kenneth Gainwell PHI	62.7	58
70	Deon Jackson IND	63.4	57
71	Corey Clement ARI	76.1	57
72	Zach Evans LAR	77.5	55
73	JaMycal Hasty JAC	61.4	53
74	Kyren Williams LAR	63.5	52
75	Zamir White LV	75.7	51
76	Isaiah Spiller LAC	61.5	47
77	Ameer Abdullah LV	40.9	47
78	Trayveon Williams CIN	49.3	44
79	Tony Jones Jr. DEN	54.5	44
80	Craig Reynolds DET	43.9	43
81	Clyde Edwards-Helaire KC	46.6	41
82	Eric Gray NYG	45.7	41
83	Ke'Shawn Vaughn TB	70.6	41
84	Jordan Mason SF	60.3	41
85	Matt Breida NYG	55.2	41
86	Kevin Harris NE	53.2	39
87	Zack Moss IND	47.0	38
88	Israel Abanikanda NYJ	39.2	35
89	Raheem Blackshear CAR	47.3	34
90	Gary Brightwell NYG	41.3	34
91	Justice Hill BAL	28.9	32
92	Deuce Vaughn DAL	35.4	31
93	Brandon Bolden LV	31.6	30
94	DeeJay Dallas SEA	36.7	30
95	Hassan Haskins TEN	39.6	29
96	Mike Boone HOU	32.9	29
97	Jonathan Williams WAS	32.4	28
98	Travis Homer CHI	30.4	28
99	Malik Davis DAL	39.8	28
100	John Kelly Jr. CLE	32.7	28
101	Kyle Juszczyk SF	6.9	26
102	Anthony McFarland Jr. PIT	34.0	26
103	Boston Scott PHI	34.5	26
104	Rico Dowdle DAL	37.0	25
105	Caleb Huntley ATL	41.0	25
106	D'Ernest Johnson JAC	30.0	24
107	Chris Rodriguez Jr. WAS	37.0	24
108	Pierre Strong Jr. NE	23.1	24
109	Tyrion Davis-Price SF	32.5	24
110	Brittain Brown LV	31.0	24
111	Sincere McCormick LV	31.0	24
112	Kene Nwangwu MIN	26.0	23
113	Patrick Taylor Jr. GB	28.9	23
114	Ty Montgomery NE	30.0	23
115	DeWayne McBride MIN	28.0	22
116	Damarea Crockett DEN	31.0	22
117	Ty'Son Williams ARI	27.2	21
118	Alec Ingold MIA	4.1	21
119	Chris Evans CIN	14.9	18
120	Snoop Conner JAC	20.9	18
121	Tyler Badie DEN	19.0	17
122	Zander Horvath LAC	6.1	16
123	Lew Nichols III GB	20.6	15
124	Larry Rountree III LAC	15.7	14
125	Evan Hull IND	18.4	14
126	Jermar Jefferson DET	12.7	13
127	Dare Ogunbowale HOU	16.1	13
128	C.J. Ham MIN	4.0	12
129	Julius Chestnut TEN	8.8	12
130	Avery Williams ATL	14.0	12
131	Spencer Brown BUF	12.1	11
132	La'Mical Perine KC	10.4	11
133	Salvon Ahmed MIA	15.4	11
134	Patrick Ricard BAL	5.0	11
135	Jaret Patterson WAS	11.9	10
136	Troy Hairston II HOU	0.0	10
137	Nate McCrary CLE	9.1	9
138	Eno Benjamin NO	5.5	9
139	Ronnie Rivers LAR	10.6	9
140	Michael Burton DEN	4.3	7
141	Adam Prentice NO	4.5	7
142	Jason Huntley PIT	8.5	7
143	Jason Cabinda DET	2.2	6
144	Jakob Johnson LV	0.0	5
145	Reggie Gilliam BUF	0.0	5
146	Keith Smith ATL	0.0	4
\.


--
-- Data for Name: projections_te; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.projections_te (id, name, team, points) FROM stdin;
1	Travis Kelce KC	99.8	175
2	Mark Andrews BAL	68.5	122
3	T.J. Hockenson MIN	76.6	114
4	George Kittle SF	59.5	113
5	Darren Waller NYG	62.6	102
6	Dallas Goedert PHI	64.8	97
7	Kyle Pitts ATL	50.5	94
8	Pat Freiermuth PIT	59.4	89
9	Evan Engram JAC	61.3	88
10	Cole Kmet CHI	48.9	87
11	David Njoku CLE	52.9	85
12	Gerald Everett LAC	51.7	80
13	Tyler Higbee LAR	59.3	79
14	Dalton Schultz HOU	55.1	77
15	Chigoziem Okonkwo TEN	42.6	76
16	Greg Dulcich DEN	43.0	76
17	Juwan Johnson NO	38.0	75
18	Dalton Kincaid BUF	42.6	73
19	Irv Smith Jr. CIN	42.3	67
20	Tyler Conklin NYJ	48.8	67
21	Zach Ertz ARI	46.7	66
22	Jelani Woods IND	34.3	64
23	Sam LaPorta DET	40.1	63
24	Noah Fant SEA	43.9	63
25	Dawson Knox BUF	35.4	62
26	Mike Gesicki NE	37.1	61
27	Cade Otton TB	43.2	60
28	Logan Thomas WAS	45.5	60
29	Hunter Henry NE	36.3	56
30	Hayden Hurst CAR	45.1	54
31	Austin Hooper LV	34.7	51
32	Luke Musgrave GB	33.5	49
33	Michael Mayer LV	30.3	48
34	Jake Ferguson DAL	28.4	44
35	Trey McBride ARI	34.5	43
36	Isaiah Likely BAL	25.3	43
37	Foster Moreau NO	22.7	41
38	Will Dissly SEA	27.7	38
39	Taysom Hill NO	23.0	37
40	Noah Gray KC	24.0	37
41	Tommy Tremble CAR	20.2	37
42	Josh Oliver MIN	21.3	36
43	Donald Parham Jr. LAC	19.5	36
44	Jonnu Smith ATL	23.6	35
45	Teagan Quitoriano HOU	19.3	34
46	C.J. Uzomah NYJ	21.1	33
47	Luke Schoonmaker DAL	21.7	33
48	Tucker Kraft GB	22.4	33
49	Robert Tonyan CHI	20.8	32
50	Colby Parkinson SEA	18.5	31
51	Hunter Long LAR	20.2	30
52	Jody Fortson KC	16.1	29
53	Mo Alie-Cox IND	14.7	28
54	Brenton Strange JAC	19.8	28
55	Kylen Granson IND	22.0	27
56	Harrison Bryant CLE	20.8	27
57	Durham Smythe MIA	20.1	26
58	Trevon Wesco TEN	17.3	26
59	Brock Wright DET	11.7	25
60	Peyton Hendershot DAL	14.1	25
61	Ian Thomas CAR	18.6	24
62	Ko Kieft TB	13.3	22
63	Darnell Washington PIT	17.1	21
64	Eric Saubert MIA	13.2	21
65	O.J. Howard LV	7.1	21
66	Adam Trautman DEN	14.0	21
67	Daniel Bellinger NYG	14.9	21
68	Kevin Rader TEN	14.4	20
69	Josh Whyle TEN	13.9	20
70	John Bates WAS	16.0	20
71	Josiah Deguara GB	15.2	20
72	Connor Heyward PIT	11.0	19
73	Jordan Akins CLE	10.7	19
74	Davis Allen LAR	17.1	19
75	Shane Zylstra DET	10.6	19
76	Tyler Kroft MIA	10.2	17
77	Brycen Hopkins LAR	9.5	17
78	Brayden Willis SF	10.0	17
79	Jack Stoll PHI	12.9	17
80	Dan Arnold PHI	8.3	16
81	Ross Dwelley SF	5.1	16
82	Jesper Horsted LV	11.0	16
83	Stephen Sullivan CAR	8.7	16
84	Curtis Hodges WAS	10.0	16
85	Andrew Ogletree IND	11.0	16
86	Blake Bell KC	8.5	15
87	Tre' McKitty LAC	11.1	15
88	Payne Durham TB	12.7	15
89	Elijah Higgins MIA	7.5	15
90	Drew Sample CIN	10.9	14
91	Albert Okwuegbunam DEN	8.6	14
92	James Mitchell DET	9.4	14
93	Jeremy Ruckert NYJ	8.9	13
94	Chris Manhertz DEN	8.6	13
95	Cameron Latu SF	8.4	13
96	Devin Asiasi CIN	9.0	13
97	Ben Ellefson MIN	8.5	12
98	Luke Farrell JAC	7.8	12
99	Johnny Mundt MIN	8.6	12
100	Stone Smartt LAC	9.0	12
101	Zach Gentry PIT	8.9	11
102	Charlie Kolar BAL	6.5	11
103	Zack Kuntz NYJ	6.9	11
104	Lawrence Cager NYG	6.7	10
105	Will Mallory IND	7.0	10
106	Armani Rogers WAS	5.9	10
107	Parker Hesse ATL	6.4	9
108	Cole Turner WAS	5.3	8
109	Noah Togiai ARI	4.7	7
110	Quintin Morris BUF	4.0	6
111	Tyler Mabry SEA	3.5	6
112	Sean McKeon DAL	3.6	6
113	Matt Sokol NE	3.7	5
114	Scotty Washington NE	3.7	5
115	Brevin Jordan HOU	3.5	5
116	Andrew Beck HOU	3.3	5
117	John FitzPatrick ATL	3.2	5
118	Lucas Krull NO	2.1	3
119	Tanner Hudson CIN	1.9	3
120	David Wells TB	1.8	3
121	Grant Calcaterra PHI	1.6	3
122	Charlie Woerner SF	1.5	2
\.


--
-- Data for Name: projections_wrs; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.projections_wrs (id, name, team, points) FROM stdin;
1	Justin Jefferson MIN	110.3	202
2	Davante Adams LV	96.5	197
3	Ja'Marr Chase CIN	98.5	196
4	Cooper Kupp LAR	112.2	189
5	Tyreek Hill MIA	97.7	175
6	Stefon Diggs BUF	93.5	165
7	A.J. Brown PHI	73.6	163
8	CeeDee Lamb DAL	90.7	160
9	Deebo Samuel SF	61.8	151
10	Christian Watson GB	65.9	151
11	Amon-Ra St. Brown DET	96.1	148
12	Garrett Wilson NYJ	76.4	147
13	DJ Moore CHI	61.4	145
14	Jaylen Waddle MIA	74.2	145
15	DK Metcalf SEA	77.1	144
16	Amari Cooper CLE	69.8	141
17	Tee Higgins CIN	76.8	141
18	DeVonta Smith PHI	77.8	138
19	Jerry Jeudy DEN	65.1	133
20	Calvin Ridley JAC	75.2	133
21	Terry McLaurin WAS	72.3	129
22	Mike Evans TB	71.3	128
23	Chris Olave NO	70.0	128
24	Keenan Allen LAC	88.0	126
25	George Pickens PIT	61.1	125
26	Christian Kirk JAC	70.9	124
27	Mike Williams LAC	64.0	124
28	Brandin Cooks DAL	68.1	122
29	Jakobi Meyers LV	74.7	119
30	Marquise Brown ARI	75.4	119
31	Tyler Lockett SEA	74.6	117
32	Gabe Davis BUF	46.2	117
33	Brandon Aiyuk SF	61.2	115
34	Jahan Dotson WAS	55.1	114
35	Drake London ATL	70.9	113
36	Chris Godwin TB	91.4	112
37	DJ Chark Jr. CAR	51.3	111
38	Michael Thomas NO	69.6	111
39	Kadarius Toney KC	50.2	109
40	Jordan Addison MIN	56.9	108
41	Allen Lazard NYJ	55.5	108
42	Diontae Johnson PIT	73.8	107
43	Jaxon Smith-Njigba SEA	57.6	106
44	Treylon Burks TEN	57.2	106
45	Courtland Sutton DEN	58.2	104
46	Michael Pittman Jr. IND	74.6	100
47	Quentin Johnston LAC	49.9	99
48	Odell Beckham Jr. BAL	49.3	98
49	Donovan Peoples-Jones CLE	53.3	97
50	Tim Patrick DEN	47.2	96
51	Nico Collins HOU	53.7	96
52	Skyy Moore KC	48.6	94
53	Marquez Valdes-Scantling KC	37.8	92
54	Tyler Boyd CIN	56.9	91
55	Zay Jones JAC	60.6	91
56	Michael Gallup DAL	46.3	89
57	Darnell Mooney CHI	49.6	89
58	Romeo Doubs GB	55.7	86
59	Sterling Shepard NYG	57.5	86
60	Rashod Bateman BAL	43.5	86
61	Adam Thielen CAR	51.9	86
62	K.J. Osborn MIN	49.9	85
63	Jonathan Mingo CAR	52.2	85
64	Curtis Samuel WAS	49.6	85
65	Rashid Shaheed NO	37.4	84
66	Zay Flowers BAL	42.4	83
67	Rondale Moore ARI	61.6	83
68	Chase Claypool CHI	41.4	83
69	Marvin Jones Jr. DET	43.9	82
70	Hunter Renfrow LV	60.1	81
71	Jayden Reed GB	47.4	81
72	Van Jefferson LAR	39.3	79
73	Mecole Hardman Jr. NYJ	38.5	79
74	JuJu Smith-Schuster NE	64.1	77
75	Tyquan Thornton NE	40.0	77
76	Elijah Moore CLE	43.0	76
77	DeVante Parker NE	39.4	76
78	Isaiah Hodgins NYG	47.9	74
79	Robert Woods HOU	54.0	72
80	Russell Gage TB	54.8	72
81	Rashee Rice KC	36.3	72
82	John Metchie III HOU	44.3	71
83	Alec Pierce IND	38.2	70
84	Parris Campbell NYG	43.5	69
85	Nick Westbrook-Ikhine TEN	33.2	68
86	Wan'Dale Robinson NYG	47.6	67
87	Mack Hollins ATL	38.4	64
88	Tutu Atwell LAR	29.3	63
89	Jameson Williams DET	31.3	62
90	Allen Robinson II PIT	38.2	61
91	Corey Davis NYJ	28.5	60
92	Ben Skowronek LAR	41.5	60
93	Kyle Philips TEN	40.1	59
94	Joshua Palmer LAC	40.3	58
95	Richie James Jr. KC	32.8	56
96	Chris Moore TEN	37.0	55
97	Khalil Shakir BUF	29.6	55
98	Braxton Berrios MIA	33.5	55
99	Josh Downs IND	33.4	54
100	Terrace Marshall Jr. CAR	28.2	54
101	Darius Slayton NYG	28.0	52
102	Jalin Hyatt NYG	29.3	51
103	Jauan Jennings SF	30.1	50
104	Kendrick Bourne NE	33.0	49
105	Tre'Quan Smith NO	23.5	45
106	Josh Reynolds DET	23.3	44
107	Quez Watkins PHI	25.1	43
108	Dontayvion Wicks GB	26.8	43
109	Jamal Agnew JAC	22.3	42
110	Charlie Jones CIN	22.3	41
111	Olamide Zaccheaus PHI	23.1	41
112	Chosen Anderson MIA	18.7	38
113	Marquise Goodwin CLE	14.9	38
114	Puka Nacua LAR	23.2	38
115	Jalen Guyton LAC	17.1	36
116	Marvin Mims Jr. DEN	20.1	34
117	Kalif Raymond DET	19.9	34
118	Trenton Irwin CIN	18.4	33
119	Deonte Harty BUF	19.8	33
120	Laviska Shenault Jr. CAR	15.5	31
121	Randall Cobb NYJ	19.4	30
122	Cedric Tillman CLE	15.7	28
123	Isaiah McKenzie IND	15.4	28
124	Trent Sherfield BUF	12.9	25
125	David Bell CLE	16.4	24
126	Jalen Tolbert DAL	13.4	24
127	David Moore TB	13.4	23
128	KhaDarel Hodge ATL	14.5	23
129	Parker Washington JAC	14.0	23
130	Justin Watson KC	10.5	22
131	Nelson Agholor BAL	11.2	22
132	Calvin Austin III PIT	13.6	22
133	Equanimeous St. Brown CHI	10.7	21
134	Dee Eskridge SEA	9.4	20
135	Samori Toure GB	12.9	20
136	Racey McMath TEN	12.3	20
137	Dyami Brown WAS	12.0	20
138	Brandon Powell MIN	11.9	19
139	Cedrick Wilson Jr. MIA	11.0	18
140	Devin Duvernay BAL	6.7	17
141	Gunner Olszewski PIT	6.5	17
142	KaVontae Turpin DAL	7.1	16
143	Michael Wilson ARI	10.4	16
144	Velus Jones Jr. CHI	5.9	15
145	Ray-Ray McCloud III SF	6.1	14
146	Penny Hart ATL	8.9	13
147	Bryan Edwards NO	6.2	13
148	KJ Hamler DEN	5.7	13
149	Justin Shorter BUF	7.2	12
150	Tre Tucker LV	7.1	12
151	Phillip Dorsett II LV	6.1	12
152	Erik Ezukanma MIA	7.0	12
153	Dareke Young SEA	6.9	11
154	Jalen Reagor MIN	5.2	11
155	Tim Jones JAC	6.6	10
156	Kayshon Boutte NE	6.9	10
157	Danny Gray SF	5.7	10
158	Deven Thompkins TB	6.4	10
159	Britain Covey PHI	6.0	10
160	Shi Smith CAR	6.0	10
161	Noah Brown HOU	6.3	9
162	Trinity Benson DET	6.0	9
163	Ashton Dulin IND	5.3	9
164	Dax Milne WAS	6.6	9
165	Greg Dortch ARI	5.3	8
166	Amari Rodgers HOU	3.1	8
167	Scotty Miller ATL	5.7	8
168	Kendall Hinton DEN	3.2	7
169	Trent Taylor CIN	3.4	6
170	Lance McCutcheon LAR	3.6	6
171	Denzel Mims NYJ	2.8	6
172	DeAndre Carter LV	3.6	6
173	Keith Kirkwood NO	3.1	5
174	Simi Fehoko DAL	3.3	5
175	Cade Johnson SEA	3.2	5
176	Zach Pascal ARI	3.3	5
177	Miles Boykin PIT	3.1	5
178	Demario Douglas NE	3.5	5
179	Chris Conley SF	2.7	5
180	Grant DuBose GB	3.2	5
181	Mike Strachan IND	2.5	5
182	Mason Kinsey TEN	3.0	4
183	James Proche II BAL	2.8	4
184	Marcus Kemp WAS	3.2	4
185	Frank Darby ATL	2.9	4
186	Derius Davis LAC	1.9	3
187	Jalen Nailor MIN	1.9	3
188	Tom Kennedy DET	1.2	2
189	Montrell Washington DEN	0.0	2
\.


--
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.schedule (id, team, week_1, week_2, week_3, week_4, week_5, week_6, week_7, week_8, week_9, week_10, week_11, week_12, week_13, week_14, week_15, week_16, week_17, week_18) FROM stdin;
18	SEA	LAR	DET	CAR	NYG	BYE	CIN	ARI	CLE	BAL	WAS	LAR	SF	DAL	SF	PHI	TEN	PIT	ARI
12	CLE	CIN	PIT	TEN	BAL	BYE	SF	IND	SEA	ARI	BAL	PIT	DEN	LAR	JAC	CHI	HOU	NYJ	CIN
10	PIT	SF	CLE	LV	HOU	BAL	BYE	LAR	JAX	TEN	GB	CLE	CIN	ARI	NE	IND	CIN	SEA	BAL
14	DET	KC	SEA	ATL	GB	CAR	TB	BAL	LV	BYE	LAC	CHI	GB	NO	CHI	DEN	MIN	DAL	MIN
16	TEN	NO	LAC	CLE	CIN	IND	BAL	BYE	ATL	PIT	TB	JAC	CAR	IND	MIA	HOU	SEA	HOU	JAC
19	NYG	DAL	ARI	SF	SEA	MIA	BUF	WAS	NYJ	LV	DAL	WAS	NE	BYE	GB	NO	PHI	LV	PHI
22	LAC	MIA	TEN	MIN	LV	BYE	DAL	KC	CHI	NYJ	DET	GB	BAL	NE	DEN	LV	BUF	DEN	KC
6	CAR	ATL	NO	SEA	MIN	DET	MIA	BYE	HOU	IND	CHI	DAL	TEN	TB	NO	ATL	GB	JAC	TB
30	BUF	NYJ	LV	WAS	MIA	JAC	NYG	NE	TB	CIN	DEN	NYJ	PHI	BYE	KC	DAL	LAC	NE	MIA
8	IND	JAC	HOU	BAL	LAR	TEN	JAC	CLE	NO	CAR	NE	BYE	TB	TEN	CIN	PIT	ATL	OAK	HOU
4	LV	DEN	BUF	PIT	LAC	GB	NE	CHI	DET	NYG	NYJ	MIA	KC	BYE	MIN	LAC	KC	IND	DEN
9	MIN	TB	PHI	LAC	CAR	KC	CHI	SF	GB	ATL	NO	DEN	CHI	LV	CIN	DET	GB	\N	\N
31	BAL	HOU	CIN	IND	CLE	PIT	TEN	DET	ARI	SEA	CLE	CIN	LAC	BYE	LAR	JAC	SF	MIA	PIT
25	DAL	NYG	NYJ	ARI	NE	SF	LAC	BYE	LAR	PHI	NYG	CAR	WAS	SEA	PHI	BUF	MIA	DET	WAS
27	CHI	GB	TB	KC	DEN	WAS	MIN	LV	LAC	NO	CAR	DET	MIN	BYE	DET	CLE	ARI	ATL	GB
2	GB	CHI	ATL	NO	DET	LV	BYE	DEN	MIN	LAR	PIT	LAC	DET	KC	NYG	TB	CAR	MIN	CHI
32	TB	MIN	CHI	PHI	NO	BYE	DET	ATL	BUF	HOU	TEN	SF	IND	CAR	ATL	GB	JAC	NO	CAR
20	NE	TB	PHI	LAC	CAR	KC	CHI	SF	GB	ATL	NO	DEN	CHI	LV	CIN	DET	GB	\N	\N
17	SF	PIT	LAR	NYG	ARI	DAL	CLE	MIN	CIN	BYE	JAC	TB	SEA	PHI	SEA	ARI	BAL	WAS	LAR
21	LAR	SEA	SF	CIN	IND	PHI	ARI	PIT	DAL	GB	SEA	ARI	CLE	BAL	WAS	NO	NYG	SF	\N
29	ARI	WAS	NYG	DAL	SF	CIN	LAR	SEA	BAL	CLE	ATL	HOU	LAR	PIT	BYE	SF	CHI	PHI	SEA
1	PHI	NE	MIN	TB	WAS	LV	NYJ	MIA	WAS	DAL	BYE	KC	BUF	SF	DAL	SEA	NYG	ARI	NYG
24	JAC	IND	KC	HOU	ATL	BUF	IND	NO	PIT	BYE	SF	TEN	HOU	CIN	CLE	BAL	TB	CAR	TEN
5	DEN	LV	WAS	MIA	CHI	NYJ	KC	GB	KC	BYE	BUF	MIN	CLE	HOU	LAC	DET	NE	LAC	LVR
28	ATL	CAR	GB	DET	JAX	HOU	WAS	TB	TEN	MIN	ARI	BYE	NO	NYJ	TB	CAR	IND	CHI	NO
7	MIA	LAC	NE	DEN	BUF	NYG	CAR	PHI	NE	KC	OAK	NYJ	WAS	TEN	NYJ	DAL	BAL	BUF	\N
15	WAS	ARI	DEN	BUF	PHI	CHI	ATL	NYG	PHI	NE	SEA	NYG	DAL	MIA	BYE	LAR	NYJ	SF	DAL
26	CIN	CLE	BAL	LAR	TEN	ARI	SEA	BYE	SF	BUF	HOU	BAL	PIT	JAC	IND	MIN	PIT	KC	CLE
23	KC	DET	JAC	CHI	NYJ	MIN	DEN	LAC	DEN	MIA	BYE	PHI	LV	GB	BUF	NE	LV	CIN	LAC
11	NO	TEN	CAR	GB	TB	NE	HOU	JAC	IND	CHI	MIN	BYE	ATL	DET	CAR	NYG	LAR	TB	ATL
13	HOU	BAL	IND	JAC	PIT	ATL	NO	BYE	CAR	TB	CIN	ARI	JAX	DEN	NYJ	TEN	CLE	TEN	IND
3	NYJ	BUF	DAL	NE	KC	DEN	PHI	BYE	NYG	LAC	LV	BUF	MIA	ATL	HOU	MIA	WAS	CLE	NE
\.


--
-- Data for Name: schedule_copy; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.schedule_copy (id, team, week_1, week_2, week_3, week_4, week_5, week_6, week_7, week_8, week_9, week_10, week_11, week_12, week_13, week_14, week_15, week_16, week_17, week_18) FROM stdin;
18	SEA	LAR	DET	CAR	NYG	BYE	CIN	ARI	CLE	BAL	WAS	LAR	SF	DAL	SF	PHI	TEN	PIT	ARI
12	CLE	CIN	PIT	TEN	BAL	BYE	SF	IND	SEA	ARI	BAL	PIT	DEN	LAR	JAC	CHI	HOU	NYJ	CIN
10	PIT	SF	CLE	LV	HOU	BAL	BYE	LAR	JAX	TEN	GB	CLE	CIN	ARI	NE	IND	CIN	SEA	BAL
14	DET	KC	SEA	ATL	GB	CAR	TB	BAL	LV	BYE	LAC	CHI	GB	NO	CHI	DEN	MIN	DAL	MIN
16	TEN	NO	LAC	CLE	CIN	IND	BAL	BYE	ATL	PIT	TB	JAC	CAR	IND	MIA	HOU	SEA	HOU	JAC
9	MIN	TB	PHI	LAC	CAR	KC	CHI	SFO	GB	ATL	NO	DEN	CHI	LV	CIN	DET	GB	\N	\N
19	NYG	DAL	ARI	SF	SEA	MIA	BUF	WAS	NYJ	LV	DAL	WAS	NE	BYE	GB	NO	PHI	LV	PHI
22	LAC	MIA	TEN	MIN	LV	BYE	DAL	KC	CHI	NYJ	DET	GB	BAL	NE	DEN	LV	BUF	DEN	KC
6	CAR	ATL	NO	SEA	MIN	DET	MIA	BYE	HOU	IND	CHI	DAL	TEN	TB	NO	ATL	GB	JAC	TB
30	BUF	NYJ	LV	WAS	MIA	JAC	NYG	NE	TB	CIN	DEN	NYJ	PHI	BYE	KC	DAL	LAC	NE	MIA
8	IND	JAC	HOU	BAL	LAR	TEN	JAC	CLE	NO	CAR	NE	BYE	TB	TEN	CIN	PIT	ATL	OAK	HOU
4	LV	DEN	BUF	PIT	LAC	GB	NE	CHI	DET	NYG	NYJ	MIA	KC	BYE	MIN	LAC	KC	IND	DEN
31	BAL	HOU	CIN	IND	CLE	PIT	TEN	DET	ARI	SEA	CLE	CIN	LAC	BYE	LAR	JAC	SF	MIA	PIT
25	DAL	NYG	NYJ	ARI	NE	SF	LAC	BYE	LAR	PHI	NYG	CAR	WAS	SEA	PHI	BUF	MIA	DET	WAS
27	CHI	GB	TB	KC	DEN	WAS	MIN	LV	LAC	NO	CAR	DET	MIN	BYE	DET	CLE	ARI	ATL	GB
2	GB	CHI	ATL	NO	DET	LV	BYE	DEN	MIN	LAR	PIT	LAC	DET	KC	NYG	TB	CAR	MIN	CHI
32	TB	MIN	CHI	PHI	NO	BYE	DET	ATL	BUF	HOU	TEN	SF	IND	CAR	ATL	GB	JAC	NO	CAR
20	NE	TB	PHI	LAC	CAR	KC	CHI	SF	GB	ATL	NO	DEN	CHI	LV	CIN	DET	GB	\N	\N
17	SF	PIT	LAR	NYG	ARI	DAL	CLE	MIN	CIN	BYE	JAC	TB	SEA	PHI	SEA	ARI	BAL	WAS	LAR
21	LAR	SEA	SF	CIN	IND	PHI	ARI	PIT	DAL	GB	SEA	ARI	CLE	BAL	WAS	NO	NYG	SF	\N
29	ARI	WAS	NYG	DAL	SF	CIN	LAR	SEA	BAL	CLE	ATL	HOU	LAR	PIT	BYE	SF	CHI	PHI	SEA
1	PHI	NE	MIN	TB	WAS	LV	NYJ	MIA	WAS	DAL	BYE	KC	BUF	SF	DAL	SEA	NYG	ARI	NYG
24	JAC	IND	KC	HOU	ATL	BUF	IND	NO	PIT	BYE	SF	TEN	HOU	CIN	CLE	BAL	TB	CAR	TEN
5	DEN	LV	WAS	MIA	CHI	NYJ	KC	GB	KC	BYE	BUF	MIN	CLE	HOU	LAC	DET	NE	LAC	LVR
28	ATL	CAR	GB	DET	JAX	HOU	WAS	TB	TEN	MIN	ARI	BYE	NO	NYJ	TB	CAR	IND	CHI	NO
7	MIA	LAC	NE	DEN	BUF	NYG	CAR	PHI	NE	KC	OAK	NYJ	WAS	TEN	NYJ	DAL	BAL	BUF	\N
15	WAS	ARI	DEN	BUF	PHI	CHI	ATL	NYG	PHI	NE	SEA	NYG	DAL	MIA	BYE	LAR	NYJ	SF	DAL
26	CIN	CLE	BAL	LAR	TEN	ARI	SEA	BYE	SF	BUF	HOU	BAL	PIT	JAC	IND	MIN	PIT	KC	CLE
23	KC	DET	JAC	CHI	NYJ	MIN	DEN	LAC	DEN	MIA	BYE	PHI	LV	GB	BUF	NE	LV	CIN	LAC
11	NO	TEN	CAR	GB	TB	NE	HOU	JAC	IND	CHI	MIN	BYE	ATL	DET	CAR	NYG	LAR	TB	ATL
13	HOU	BAL	IND	JAC	PIT	ATL	NO	BYE	CAR	TB	CIN	ARI	JAX	DEN	NYJ	TEN	CLE	TEN	IND
3	NYJ	BUF	DAL	NE	KC	DEN	PHI	BYE	NYG	LAC	LV	BUF	MIA	ATL	HOU	MIA	WAS	CLE	NE
\.


--
-- Data for Name: team_assessment; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.team_assessment (id, team, projected_strength) FROM stdin;
1	ARI	3
2	ATL	10
3	BAL	12
4	BUF	12
5	CAR	8
6	CHI	6
7	CIN	13
8	CLE	7
9	DAL	10
10	DEN	9
11	DET	10
12	GB	6
13	HOU	7
14	IND	4
15	JAC	11
16	KC	14
17	LAC	8
18	LAR	9
19	LV	7
20	MIA	8
21	MIN	8
22	NE	9
23	NO	7
24	NYG	9
25	NYJ	10
26	PHI	10
27	PIT	9
28	SEA	9
29	SF	12
30	TB	5
31	TEN	6
32	WAS	6
\.


--
-- Data for Name: teams_def_stats; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.teams_def_stats (id, team, rush_yards_against, pass_yards_against) FROM stdin;
33	Avg Team	3701.2	2059.2
34	League Total	118438	65894
35	Avg Tm/G	218.5	121.6
1	SF	3789	1321
2	BUF	3433	1673
3	BAL	3947	1566
4	NYJ	3220	2068
5	CIN	3665	1706
6	DAL	3415	2198
7	WAS	3252	1926
8	PHI	3057	2068
9	NO	3134	2218
11	NE	3681	1793
12	JAC	4055	1951
13	TB	3461	2052
14	DEN	3574	1866
15	TEN	4671	1307
16	KC	3756	1823
17	GB	3349	2372
18	NYG	3638	2451
19	CAR	3868	2085
20	CLE	3336	2295
21	LAC	3406	2478
22	LAR	3842	1956
23	ATL	3942	2214
24	MIA	3992	1751
25	SEA	3595	2554
26	LV	4129	2087
27	HOU	3558	2894
28	MIN	4515	2093
29	DET	4179	2491
30	IND	3569	2109
31	ARI	3915	2016
32	CHI	3716	2674
10	PIT	3779	1838
\.


--
-- Data for Name: teams_def_stats_copy; Type: TABLE DATA; Schema: public; Owner: sulu
--

COPY public.teams_def_stats_copy (id, team, rush_yards_against, pass_yards_against) FROM stdin;
33	Avg Team	3701.2	2059.2
34	League Total	118438	65894
35	Avg Tm/G	218.5	121.6
1	SF	3789	1321
2	BUF	3433	1673
3	BAL	3947	1566
4	NYJ	3220	2068
5	CIN	3665	1706
6	DAL	3415	2198
7	WAS	3252	1926
8	PHI	3057	2068
9	NO	3134	2218
11	NE	3681	1793
12	JAC	4055	1951
13	TB	3461	2052
14	DEN	3574	1866
15	TEN	4671	1307
16	KC	3756	1823
17	GB	3349	2372
18	NYG	3638	2451
19	CAR	3868	2085
20	CLE	3336	2295
21	LAC	3406	2478
22	LAR	3842	1956
23	ATL	3942	2214
24	MIA	3992	1751
25	SEA	3595	2554
26	LV	4129	2087
27	HOU	3558	2894
28	MIN	4515	2093
29	DET	4179	2491
30	IND	3569	2109
31	ARI	3915	2016
32	CHI	3716	2674
10	PIT	3779	1838
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, username) FROM stdin;
3	Simon Ulu	s.ulu@mail.de	\N	$2y$10$q8A7xyyjTgm.poKzULSFQuozhp4DUH2AdJQxThJ5xfc3PQIQleOhu	\N	2022-08-13 08:05:10	2022-08-13 08:05:10	suu12
\.


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 5, true);


--
-- Name: mock_draft_def_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.mock_draft_def_id_seq', 10, true);


--
-- Name: mock_draft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.mock_draft_id_seq', 184, true);


--
-- Name: mock_draft_kicker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.mock_draft_kicker_id_seq', 10, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: projections_all_diff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.projections_all_diff_id_seq', 600, true);


--
-- Name: projections_def_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.projections_def_id_seq', 32, true);


--
-- Name: projections_ki_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.projections_ki_id_seq', 33, true);


--
-- Name: projections_qbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.projections_qbs_id_seq', 76, true);


--
-- Name: projections_rbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.projections_rbs_id_seq', 146, true);


--
-- Name: projections_te_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.projections_te_id_seq', 122, true);


--
-- Name: projections_wrs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.projections_wrs_id_seq', 189, true);


--
-- Name: schedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.schedule_id_seq', 32, true);


--
-- Name: team_assessment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.team_assessment_id_seq', 32, true);


--
-- Name: teams_def_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sulu
--

SELECT pg_catalog.setval('public.teams_def_stats_id_seq', 35, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: mock_draft_def mock_draft_def_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.mock_draft_def
    ADD CONSTRAINT mock_draft_def_pkey PRIMARY KEY (id);


--
-- Name: mock_draft_kicker mock_draft_kicker_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.mock_draft_kicker
    ADD CONSTRAINT mock_draft_kicker_pkey PRIMARY KEY (id);


--
-- Name: mock_draft mock_draft_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.mock_draft
    ADD CONSTRAINT mock_draft_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: projections_all_diff projections_all_diff_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_all_diff
    ADD CONSTRAINT projections_all_diff_pkey PRIMARY KEY (id);


--
-- Name: projections_def projections_def_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_def
    ADD CONSTRAINT projections_def_pkey PRIMARY KEY (id);


--
-- Name: projections_ki projections_ki_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_ki
    ADD CONSTRAINT projections_ki_pkey PRIMARY KEY (id);


--
-- Name: projections_qbs projections_qbs_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_qbs
    ADD CONSTRAINT projections_qbs_pkey PRIMARY KEY (id);


--
-- Name: projections_rbs projections_rbs_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_rbs
    ADD CONSTRAINT projections_rbs_pkey PRIMARY KEY (id);


--
-- Name: projections_te projections_te_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_te
    ADD CONSTRAINT projections_te_pkey PRIMARY KEY (id);


--
-- Name: projections_wrs projections_wrs_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.projections_wrs
    ADD CONSTRAINT projections_wrs_pkey PRIMARY KEY (id);


--
-- Name: schedule schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (id);


--
-- Name: team_assessment team_assessment_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.team_assessment
    ADD CONSTRAINT team_assessment_pkey PRIMARY KEY (id);


--
-- Name: teams_def_stats teams_def_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: sulu
--

ALTER TABLE ONLY public.teams_def_stats
    ADD CONSTRAINT teams_def_stats_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- PostgreSQL database dump complete
--

