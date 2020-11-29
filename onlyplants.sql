--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    userid integer NOT NULL,
    role character(50)
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- Name: administrates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.administrates (
    domainname character(60) NOT NULL,
    userid integer NOT NULL
);


ALTER TABLE public.administrates OWNER TO postgres;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    userid integer NOT NULL,
    address character(100),
    email character(60),
    dateofbirth character(10)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: order_has; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_has (
    productid integer NOT NULL,
    orderid integer NOT NULL,
    quantity integer
);


ALTER TABLE public.order_has OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    quantity integer,
    deliverytype character(40),
    orderid integer NOT NULL,
    deliverytime double precision
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    userid integer NOT NULL,
    orderid integer NOT NULL,
    paymenttype character(30),
    paymentamount double precision
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- Name: plants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plants (
    age integer,
    productid integer NOT NULL
);


ALTER TABLE public.plants OWNER TO postgres;

--
-- Name: pots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pots (
    color character(20),
    productid integer NOT NULL
);


ALTER TABLE public.pots OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    quantity integer,
    productid integer NOT NULL,
    size character(10),
    type character(15),
    price double precision,
    image character(100),
    name character(70)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: seeds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seeds (
    count integer,
    productid integer NOT NULL
);


ALTER TABLE public.seeds OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    userid integer NOT NULL,
    firstname character(50),
    lastname character(50),
    login character(50),
    password character(20)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: website; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.website (
    domainname character(60) NOT NULL,
    websitename character(60)
);


ALTER TABLE public.website OWNER TO postgres;

--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (userid, role) FROM stdin;
777	HeadAdmin                                         
791	Developer                                         
751	Manager                                           
\.


--
-- Data for Name: administrates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.administrates (domainname, userid) FROM stdin;
https://onlyplants.com                                      	777
https://onlyplants.com                                      	791
https://onlyplants.com                                      	751
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (userid, address, email, dateofbirth) FROM stdin;
1	123 W Main St, Phoenix, AZ 82341                                                                    	jkapchan@asu.edu                                            	01/01/1999
2	134 E Main St, Phoenix, AZ 82341                                                                    	bvnguye2@asu.edu                                            	08/14/1999
3	124 W Main Rd, Phoenix, AZ 82341                                                                    	cnguyen@asu.edu                                             	02/02/1999
\.


--
-- Data for Name: order_has; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_has (productid, orderid, quantity) FROM stdin;
1	1	5
2	2	5
100	3	5
1	1010	100
2	1010	1900
100	1010	2900
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (quantity, deliverytype, orderid, deliverytime) FROM stdin;
5	FedEx                                   	1	12.15
10	FedEx                                   	2	1.15
10	FedEx                                   	3	1.15
200	usps                                    	1010	3
\.


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (userid, orderid, paymenttype, paymentamount) FROM stdin;
1	1	VISA                          	9.95
2	2	VISA                          	19.9
3	3	VISA                          	39.9
1	1010	VISA                          	300.09
\.


--
-- Data for Name: plants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plants (age, productid) FROM stdin;
25	100
4	101
2	102
2	103
5	104
1	105
1	106
3	107
\.


--
-- Data for Name: pots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pots (color, productid) FROM stdin;
red                 	200
black               	201
white               	202
sky blue            	203
baby pink           	204
aubergine           	205
clay                	206
black glossy        	207
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (quantity, productid, size, type, price, image, name) FROM stdin;
25	1	small     	seed           	1.99	dandelion-seed-416x278.jpg                                                                          	dandelion_seed                                                        
75	3	small     	seed           	1.99	zinnia-seed-416x416.jpg                                                                             	zinnia_seed                                                           
25	4	small     	seed           	2.99	dahlia-seed-416x416.jpg                                                                             	dahlia_seed                                                           
25	5	small     	seed           	2.99	petunia-seed-416x416.jpg                                                                            	petunia_seed                                                          
100	6	small     	seed           	3.99	pansy-seed-416x312.jpg                                                                              	pansy_seed                                                            
25	7	small     	seed           	1.99	calendula-seed-416x416.jpg                                                                          	calendula_seed                                                        
75	8	small     	seed           	1.99	cornflower-seed-416x312.jpg                                                                         	cornflower_seed                                                       
25	100	small     	plant          	12.99	small-monstera-1000x1000.jpg                                                                        	small_monstera                                                        
4	101	large     	plant          	0.99	large-fiddle-leaf-2048x2048.jpg                                                                     	large_fiddle_leaf                                                     
2	102	small     	plant          	14.99	small-spider-plant-416x416.jpg                                                                      	small_spider_plant                                                    
2	103	large     	plant          	14.99	large-aloe-vera-416x501.jpg                                                                         	large_aloe_vera                                                       
5	104	small     	plant          	19.99	small-peace-lilly-416x541.jpg                                                                       	small_peace_lilly                                                     
1	105	large     	plant          	14.99	large-snake-plant-416x416.jpg                                                                       	large_snake_plant                                                     
1	106	small     	plant          	9.99	small-bromeliad-416x416.jpg                                                                         	small_bromeliad                                                       
3	107	small     	plant          	9.99	small-orchid-416x416.jpg                                                                            	small_orchid                                                          
25	200	small     	pot            	3.99	small-red-pot-416x555.jpg                                                                           	small_red_pot                                                         
5	201	large     	pot            	9.99	large-black-pot-416x300.jpg                                                                         	large_black_pot                                                       
5	202	large     	pot            	9.99	large-white-pot-416x416.jpg                                                                         	large_white_pot                                                       
5	203	large     	pot            	9.99	large-sky-blue-pot-416x517.jpg                                                                      	large_sky blue_pot                                                    
5	204	large     	pot            	9.99	large-baby-pink-pot-416x624.jpg                                                                     	large_baby_pink_pot                                                   
5	205	small     	pot            	3.99	small-aubergine-pot-416x416.jpg                                                                     	small_aubergine_pot                                                   
5	206	small     	pot            	3.99	small-clay-pot-416x400.jpg                                                                          	small_clay_pot                                                        
5	207	small     	pot            	3.99	small-black-glossy-pot-416x416.jpg                                                                  	small_black_glossy_pot                                                
25	2	small     	seed           	1.99	sunflower-seed-416x520                                                                              	sunflower_seed                                                        
\.


--
-- Data for Name: seeds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seeds (count, productid) FROM stdin;
25	1
25	2
75	3
25	4
25	5
100	6
25	7
75	8
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (userid, firstname, lastname, login, password) FROM stdin;
1	Jill                                              	Kapchan                                           	jillkapchan1                                      	Password123         
2	Brandon                                           	Nguyen                                            	brandonnguyen1                                    	Password123         
3	Crystal                                           	Nguyen                                            	crystalnguyen1                                    	Password123         
4	Briana                                            	Oliver                                            	brianaoliver1                                     	Password124         
777	Bob                                               	Ross                                              	bobross1                                          	Admin123            
791	Tim                                               	Otee                                              	timotee1                                          	Admin123            
751	Ava                                               	Lanche                                            	avalanche1                                        	Admin123            
\.


--
-- Data for Name: website; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.website (domainname, websitename) FROM stdin;
https://onlyplants.com                                      	onlyplants                                                  
\.


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (userid);


--
-- Name: administrates administrates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrates
    ADD CONSTRAINT administrates_pkey PRIMARY KEY (domainname, userid);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (userid);


--
-- Name: order_has order_has_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_has
    ADD CONSTRAINT order_has_pkey PRIMARY KEY (productid, orderid);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (userid, orderid);


--
-- Name: plants plant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plants
    ADD CONSTRAINT plant_pkey PRIMARY KEY (productid);


--
-- Name: pots pots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pots
    ADD CONSTRAINT pots_pkey PRIMARY KEY (productid);


--
-- Name: products product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_pkey PRIMARY KEY (productid);


--
-- Name: seeds seed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seeds
    ADD CONSTRAINT seed_pkey PRIMARY KEY (productid);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);


--
-- Name: website website_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.website
    ADD CONSTRAINT website_pkey PRIMARY KEY (domainname);


--
-- Name: admin admin_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid) ON DELETE CASCADE;


--
-- Name: administrates administrates_domainname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrates
    ADD CONSTRAINT administrates_domainname_fkey FOREIGN KEY (domainname) REFERENCES public.website(domainname);


--
-- Name: administrates administrates_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrates
    ADD CONSTRAINT administrates_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);


--
-- Name: customer customer_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid) ON DELETE CASCADE;


--
-- Name: order_has order_has_orderid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_has
    ADD CONSTRAINT order_has_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid) ON DELETE CASCADE;


--
-- Name: order_has order_has_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_has
    ADD CONSTRAINT order_has_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid);


--
-- Name: payment payment_orderid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid) ON DELETE CASCADE;


--
-- Name: payment payment_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_userid_fkey FOREIGN KEY (userid) REFERENCES public.customer(userid) ON DELETE CASCADE;


--
-- Name: plants plant_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plants
    ADD CONSTRAINT plant_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid) ON DELETE CASCADE;


--
-- Name: pots pots_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pots
    ADD CONSTRAINT pots_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid) ON DELETE CASCADE;


--
-- Name: seeds seed_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seeds
    ADD CONSTRAINT seed_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

