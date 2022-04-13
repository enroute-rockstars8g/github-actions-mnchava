--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO jesus_uribe;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO jesus_uribe;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO jesus_uribe;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO jesus_uribe;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO jesus_uribe;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO jesus_uribe;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO jesus_uribe;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO jesus_uribe;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO jesus_uribe;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO jesus_uribe;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO jesus_uribe;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO jesus_uribe;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO jesus_uribe;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO jesus_uribe;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    title character varying(256) NOT NULL,
    publish_year smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    isbn character varying(13) NOT NULL,
    publisher_id bigint NOT NULL
);


ALTER TABLE public.books_book OWNER TO jesus_uribe;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO jesus_uribe;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO jesus_uribe;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO jesus_uribe;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_customer; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.books_customer (
    id bigint NOT NULL,
    username character varying(24) NOT NULL,
    email character varying(254) NOT NULL
);


ALTER TABLE public.books_customer OWNER TO jesus_uribe;

--
-- Name: books_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.books_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_customer_id_seq OWNER TO jesus_uribe;

--
-- Name: books_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.books_customer_id_seq OWNED BY public.books_customer.id;


--
-- Name: books_publisher; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.books_publisher (
    id bigint NOT NULL,
    name character varying(256) NOT NULL
);


ALTER TABLE public.books_publisher OWNER TO jesus_uribe;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.books_publisher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_publisher_id_seq OWNER TO jesus_uribe;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.books_publisher_id_seq OWNED BY public.books_publisher.id;


--
-- Name: books_review; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.books_review (
    id bigint NOT NULL,
    rating smallint NOT NULL,
    review character varying(1024) NOT NULL,
    book_id bigint NOT NULL,
    customer_id bigint NOT NULL,
    CONSTRAINT books_review_rating_check CHECK ((rating >= 0))
);


ALTER TABLE public.books_review OWNER TO jesus_uribe;

--
-- Name: books_review_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.books_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_review_id_seq OWNER TO jesus_uribe;

--
-- Name: books_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.books_review_id_seq OWNED BY public.books_review.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO jesus_uribe;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO jesus_uribe;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO jesus_uribe;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO jesus_uribe;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO jesus_uribe;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO jesus_uribe;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO jesus_uribe;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO jesus_uribe;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO jesus_uribe;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: jesus_uribe
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO jesus_uribe;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: jesus_uribe
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO jesus_uribe;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jesus_uribe
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_customer id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_customer ALTER COLUMN id SET DEFAULT nextval('public.books_customer_id_seq'::regclass);


--
-- Name: books_publisher id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_publisher ALTER COLUMN id SET DEFAULT nextval('public.books_publisher_id_seq'::regclass);


--
-- Name: books_review id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_review ALTER COLUMN id SET DEFAULT nextval('public.books_review_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add books authors	9	add_booksauthors
34	Can change books authors	9	change_booksauthors
35	Can delete books authors	9	delete_booksauthors
36	Can view books authors	9	view_booksauthors
37	Can add customer	10	add_customer
38	Can change customer	10	change_customer
39	Can delete customer	10	delete_customer
40	Can view customer	10	view_customer
41	Can add publisher	11	add_publisher
42	Can change publisher	11	change_publisher
43	Can delete publisher	11	delete_publisher
44	Can view publisher	11	view_publisher
45	Can add review	12	add_review
46	Can change review	12	change_review
47	Can delete review	12	delete_review
48	Can view review	12	view_review
49	Can add blacklisted token	13	add_blacklistedtoken
50	Can change blacklisted token	13	change_blacklistedtoken
51	Can delete blacklisted token	13	delete_blacklistedtoken
52	Can view blacklisted token	13	view_blacklistedtoken
53	Can add outstanding token	14	add_outstandingtoken
54	Can change outstanding token	14	change_outstandingtoken
55	Can delete outstanding token	14	delete_outstandingtoken
56	Can view outstanding token	14	view_outstandingtoken
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$OaYRnqJbf96CzHxM9w3qSL$9qv/TVHRfG50KYy+eSM7t319hxV6SQq4Eodp0hriS9Y=	\N	t	admin			admin@email.com	t	t	2022-04-12 20:23:35.443886+00
2		\N	f	test2				f	t	2022-04-12 20:47:57.717673+00
3	pbkdf2_sha256$320000$CGkk5yiXQ1Q7WnAiSV3Rpd$ProN0M2VrEpoUinuiLfYLudF0OaIqLxoxoM3o13XeiU=	\N	f	test3				f	t	2022-04-12 21:18:02.326335+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.books_book (id, title, publish_year, price, created_at, updated_at, isbn, publisher_id) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_customer; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.books_customer (id, username, email) FROM stdin;
\.


--
-- Data for Name: books_publisher; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.books_publisher (id, name) FROM stdin;
\.


--
-- Data for Name: books_review; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.books_review (id, rating, review, book_id, customer_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	books	author
8	books	book
9	books	booksauthors
10	books	customer
11	books	publisher
12	books	review
13	token_blacklist	blacklistedtoken
14	token_blacklist	outstandingtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 20:03:46.239953+00
2	auth	0001_initial	2022-04-12 20:03:46.310683+00
3	admin	0001_initial	2022-04-12 20:03:46.331036+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 20:03:46.336713+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 20:03:46.342397+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 20:03:46.353985+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 20:03:46.359771+00
8	auth	0003_alter_user_email_max_length	2022-04-12 20:03:46.365546+00
9	auth	0004_alter_user_username_opts	2022-04-12 20:03:46.371591+00
10	auth	0005_alter_user_last_login_null	2022-04-12 20:03:46.378585+00
11	auth	0006_require_contenttypes_0002	2022-04-12 20:03:46.380235+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 20:03:46.385588+00
13	auth	0008_alter_user_username_max_length	2022-04-12 20:03:46.394694+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 20:03:46.400828+00
15	auth	0010_alter_group_name_max_length	2022-04-12 20:03:46.408193+00
16	auth	0011_update_proxy_permissions	2022-04-12 20:03:46.41391+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 20:03:46.419817+00
18	books	0001_initial	2022-04-12 20:03:46.441738+00
19	books	0002_customer_publisher_remove_book_pages_book_isbn_and_more	2022-04-12 20:03:46.487026+00
20	sessions	0001_initial	2022-04-12 20:03:46.497887+00
21	token_blacklist	0001_initial	2022-04-12 20:03:46.526634+00
22	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 20:03:46.533098+00
23	token_blacklist	0003_auto_20171017_2007	2022-04-12 20:03:46.543992+00
24	token_blacklist	0004_auto_20171017_2013	2022-04-12 20:03:46.554055+00
25	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 20:03:46.560959+00
26	token_blacklist	0006_auto_20171017_2113	2022-04-12 20:03:46.567827+00
27	token_blacklist	0007_auto_20171017_2214	2022-04-12 20:03:46.587641+00
28	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 20:03:46.628287+00
29	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 20:03:46.640265+00
30	token_blacklist	0011_linearizes_history	2022-04-12 20:03:46.641818+00
31	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 20:03:46.648216+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-12 22:03:52.857628+00	17
2	2022-04-12 22:04:32.513929+00	18
3	2022-04-13 15:15:19.880877+00	19
4	2022-04-13 15:15:56.036148+00	20
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: jesus_uribe
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4MTQyMSwiaWF0IjoxNjQ5Nzk1MDIxLCJqdGkiOiJjOWZmNTMwN2FjMzk0NWY4YmEwMjhmOGJhOTM2ZjU0YyIsInVzZXJfaWQiOjF9.fqU5dbs6rDO7ynaE4zIv9A8ZAPvYXC594p6oUP0a65Y	2022-04-12 20:23:41.782614+00	2022-04-13 20:23:41+00	1	c9ff5307ac3945f8ba028f8ba936f54c
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjQzOSwiaWF0IjoxNjQ5ODAwMDM5LCJqdGkiOiIzNWViYmYxMjNjZDk0NWU3YmI2MTUwY2RkNjRjMjdiZSIsInVzZXJfaWQiOjF9.eWY5yYpkUsZ_AVj_GMhwO4W4PWSdEs6B3znZt1_S5tg	2022-04-12 21:47:19.485101+00	2022-04-13 21:47:19+00	1	35ebbf123cd945e7bb6150cdd64c27be
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjQ4NywiaWF0IjoxNjQ5ODAwMDg3LCJqdGkiOiJiYWFiYmViN2IxZDA0YzVhOTZjNjEzZjAwYTYwN2ZmNCIsInVzZXJfaWQiOjF9.eQ-SDHvHRDwnrcJkPNlKUkIUgV0a4ylri2QS6bkqUAY	2022-04-12 21:48:07.882482+00	2022-04-13 21:48:07+00	1	baabbeb7b1d04c5a96c613f00a607ff4
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjQ4OSwiaWF0IjoxNjQ5ODAwMDg5LCJqdGkiOiJmYmEwYTg2MDgwMWQ0MWQyOWEyMDg3NWIyYmE2MGIwMyIsInVzZXJfaWQiOjF9.QUFtdTVWyJ0NBpzVuIYvR6eQ1WnFRrpdJw5FiF2cf3s	2022-04-12 21:48:09.077395+00	2022-04-13 21:48:09+00	1	fba0a860801d41d29a20875b2ba60b03
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjUzMywiaWF0IjoxNjQ5ODAwMTMzLCJqdGkiOiI1NmRlM2Q4NmQ0OGM0NmUwOGFmNTVkNzg0ZmZjMjMyZiIsInVzZXJfaWQiOjF9.k_L1D6wsYRy76VHlmvlJj-Conm4xQYK86Cp4i05RHDE	2022-04-12 21:48:53.002892+00	2022-04-13 21:48:53+00	1	56de3d86d48c46e08af55d784ffc232f
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjYyNSwiaWF0IjoxNjQ5ODAwMjI1LCJqdGkiOiIwM2IwZDQ4NjkxZDI0MWY5OTE3OTBiZmNjZDFjNjE5MCIsInVzZXJfaWQiOjF9.Q0CjBV2J7dwwFfPQdw1g1bt6yicQG0BlHgeC2p_FBlc	2022-04-12 21:50:25.604692+00	2022-04-13 21:50:25+00	1	03b0d48691d241f991790bfccd1c6190
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njk4NywiaWF0IjoxNjQ5ODAwNTg3LCJqdGkiOiIwYWVjYzc0NjRkZTI0ZWE0YTM5YTIxYTdmYmY0NzYzYiIsInVzZXJfaWQiOjF9.eL6Tr44JD6MHQq75mvj7fun2Lh3LEZu5k69sUsCzfwI	2022-04-12 21:56:27.330529+00	2022-04-13 21:56:27+00	1	0aecc7464de24ea4a39a21a7fbf4763b
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzExMSwiaWF0IjoxNjQ5ODAwNzExLCJqdGkiOiIyZjcwNWFmMTE1NjQ0ZTAwODI2NWZlNWU2YzIyYjk0ZCIsInVzZXJfaWQiOjF9.NAqAAh0kVx76Ocptrl0j2UCL-fhNH8CpdtmPIH3aWoQ	2022-04-12 21:58:31.718219+00	2022-04-13 21:58:31+00	1	2f705af115644e008265fe5e6c22b94d
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzIwNSwiaWF0IjoxNjQ5ODAwODA1LCJqdGkiOiJjMWI1NDJjNDFmOGE0OWMzYWQ4ZDkzNTZlMTZlYTk1OCIsInVzZXJfaWQiOjF9.NYnhAwIme7bHkaQlZ6Ob7Aen0yI6DsBcqkfSZUM-f0A	2022-04-12 22:00:05.963286+00	2022-04-13 22:00:05+00	1	c1b542c41f8a49c3ad8d9356e16ea958
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzIzMSwiaWF0IjoxNjQ5ODAwODMxLCJqdGkiOiI1Njg1MzBjYTYzZWI0ZjJkODcwMzVmMDg4ZTdjZjhmNyIsInVzZXJfaWQiOjF9.uu6wNqFC21jO-ZAYpmQtLYvzOVoWtseZZ1S3DIywu48	2022-04-12 22:00:31.623873+00	2022-04-13 22:00:31+00	1	568530ca63eb4f2d87035f088e7cf8f7
11	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzI2MywiaWF0IjoxNjQ5ODAwODYzLCJqdGkiOiIyZGRlMjdkNDE0MWE0M2M1ODY5ZWNhYTA5MzI1ZGU0YSIsInVzZXJfaWQiOjF9.i_HcmidZAW9_c2Ka9kf2EZfhUdWQ_lIhRAaNNssKvfM	2022-04-12 22:01:03.811737+00	2022-04-13 22:01:03+00	1	2dde27d4141a43c5869ecaa09325de4a
12	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzI2NywiaWF0IjoxNjQ5ODAwODY3LCJqdGkiOiI2ZGQ2MDVmMjJiYTE0ZTQ4YTliMDRhY2I5NjNmZDc3MyIsInVzZXJfaWQiOjF9.CWPLv5ib60duyMyT1is4cfhoZ5BiMh3kl_XbJ-7UAT0	2022-04-12 22:01:07.029344+00	2022-04-13 22:01:07+00	1	6dd605f22ba14e48a9b04acb963fd773
13	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzI3OSwiaWF0IjoxNjQ5ODAwODc5LCJqdGkiOiI4NDJmMWQ1MDY1Y2M0Y2EwYmExNTc0ZjQ2ODRhNDBjZSIsInVzZXJfaWQiOjF9.e58fte5rjqt50gEK1Hpczf5AgVgW3n5fSZ07AiXGvbQ	2022-04-12 22:01:19.532853+00	2022-04-13 22:01:19+00	1	842f1d5065cc4ca0ba1574f4684a40ce
14	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzM0MywiaWF0IjoxNjQ5ODAwOTQzLCJqdGkiOiJiMDU4ZDRiNmJmOWQ0OTJiODY5NmM3N2ZiODQ0MTE3MyIsInVzZXJfaWQiOjF9.2pJsBLh5V2ajTbWwE0Ui-IryeD4jUIP5x5uzcmQ5JIA	2022-04-12 22:02:23.857061+00	2022-04-13 22:02:23+00	1	b058d4b6bf9d492b8696c77fb8441173
15	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzM2OSwiaWF0IjoxNjQ5ODAwOTY5LCJqdGkiOiI2MDk1MGRkMzg5NjE0OWJiODZmOTIzNTc4YmJjMWU5MCIsInVzZXJfaWQiOjF9.FlcbgZpftJSy02Licz4n-fOF3UNtbsKhGCyE5kr_aEc	2022-04-12 22:02:49.928444+00	2022-04-13 22:02:49+00	1	60950dd3896149bb86f923578bbc1e90
16	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzM4NiwiaWF0IjoxNjQ5ODAwOTg2LCJqdGkiOiJhYTc3ZjM4ZGU5MTY0NTExYjI0ZTRmNDkyMmRkZmQxOSIsInVzZXJfaWQiOjF9.SVXNNXdmQnsOQkUP8k0nfJSbVpZExuRmoUxEWqp_yaA	2022-04-12 22:03:06.822899+00	2022-04-13 22:03:06+00	1	aa77f38de9164511b24e4f4922ddfd19
17	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzQzMiwiaWF0IjoxNjQ5ODAxMDMyLCJqdGkiOiIwMWVmNDQ5OTlhNjc0YTE5OTgzNDFjYjA5Mzg3YmEzMSIsInVzZXJfaWQiOjF9._etLGIP7bkE_XHqlgqBQ4qi7pTg8qUyEVdNqxJL_amQ	2022-04-12 22:03:52.487372+00	2022-04-13 22:03:52+00	1	01ef44999a674a1998341cb09387ba31
18	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzQ3MiwiaWF0IjoxNjQ5ODAxMDcyLCJqdGkiOiIyNGIyYjAzNjY4NjM0NDMxYjg0Nzc5M2M2ZGMwYjY3NCIsInVzZXJfaWQiOjF9.UNCM1WO4KHMLOLxVEZntucWPNHEenC9_7xCOVDAy8Tk	2022-04-12 22:04:32.133087+00	2022-04-13 22:04:32+00	1	24b2b03668634431b847793c6dc0b674
19	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTk0OTMxOSwiaWF0IjoxNjQ5ODYyOTE5LCJqdGkiOiI0MWY4M2NlOWYzOTc0MjI4OTdhYjZhM2U4MDZlNDZjZiIsInVzZXJfaWQiOjF9.E48_BMfNFY0rRD_EmoFJB66cMJO7ezJ6GEAF-8rYGec	2022-04-13 15:15:19.426604+00	2022-04-14 15:15:19+00	1	41f83ce9f397422897ab6a3e806e46cf
20	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTk0OTM1MiwiaWF0IjoxNjQ5ODYyOTUyLCJqdGkiOiI1OGE1ODNmZTNiYzA0OTM5OTFjOTA4MTRjYTQ3YzczMyIsInVzZXJfaWQiOjF9.4pFp-BFGT-jjv0BQVsHicTv5xg-Hk9JkzELGRD7bJ0Y	2022-04-13 15:15:52.319558+00	2022-04-14 15:15:52+00	1	58a583fe3bc0493991c90814ca47c733
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.books_customer_id_seq', 1, false);


--
-- Name: books_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.books_publisher_id_seq', 1, false);


--
-- Name: books_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.books_review_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 4, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jesus_uribe
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 20, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_customer books_customer_email_key; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_customer
    ADD CONSTRAINT books_customer_email_key UNIQUE (email);


--
-- Name: books_customer books_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_customer
    ADD CONSTRAINT books_customer_pkey PRIMARY KEY (id);


--
-- Name: books_customer books_customer_username_key; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_customer
    ADD CONSTRAINT books_customer_username_key UNIQUE (username);


--
-- Name: books_publisher books_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_publisher
    ADD CONSTRAINT books_publisher_pkey PRIMARY KEY (id);


--
-- Name: books_review books_review_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_review
    ADD CONSTRAINT books_review_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_book_publisher_id_189e6c56; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX books_book_publisher_id_189e6c56 ON public.books_book USING btree (publisher_id);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: books_customer_email_fda1adcb_like; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX books_customer_email_fda1adcb_like ON public.books_customer USING btree (email varchar_pattern_ops);


--
-- Name: books_customer_username_4eac7a99_like; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX books_customer_username_4eac7a99_like ON public.books_customer USING btree (username varchar_pattern_ops);


--
-- Name: books_review_book_id_a67a4c60; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX books_review_book_id_a67a4c60 ON public.books_review USING btree (book_id);


--
-- Name: books_review_customer_id_34e03b30; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX books_review_customer_id_34e03b30 ON public.books_review USING btree (customer_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: jesus_uribe
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_book books_book_publisher_id_189e6c56_fk_books_publisher_id; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_publisher_id_189e6c56_fk_books_publisher_id FOREIGN KEY (publisher_id) REFERENCES public.books_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_review books_review_book_id_a67a4c60_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_review
    ADD CONSTRAINT books_review_book_id_a67a4c60_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_review books_review_customer_id_34e03b30_fk_books_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.books_review
    ADD CONSTRAINT books_review_customer_id_34e03b30_fk_books_customer_id FOREIGN KEY (customer_id) REFERENCES public.books_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: jesus_uribe
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

