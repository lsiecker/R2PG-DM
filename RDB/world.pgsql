--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: edge; Type: TABLE; Schema: public; Owner: radu
--

CREATE TABLE public.edge (
    id integer NOT NULL,
    srcid integer,
    tgtid integer,
    label text
);


ALTER TABLE public.edge OWNER TO radu;

--
-- Name: node; Type: TABLE; Schema: public; Owner: radu
--

CREATE TABLE public.node (
    id integer NOT NULL,
    label text
);


ALTER TABLE public.node OWNER TO radu;

--
-- Name: property; Type: TABLE; Schema: public; Owner: radu
--

CREATE TABLE public.property (
    id integer NOT NULL,
    key text NOT NULL,
    value text
);


ALTER TABLE public.property OWNER TO radu;

--
-- Data for Name: edge; Type: TABLE DATA; Schema: public; Owner: radu
--

COPY public.edge (id, srcid, tgtid, label) FROM stdin;
5303	4080	1	country-city
5304	4081	5	country-city
5305	4082	33	country-city
5306	4083	34	country-city
5307	4084	35	country-city
5308	4085	54	country-city
5309	4086	55	country-city
5310	4087	56	country-city
5311	4088	62	country-city
5312	4089	63	country-city
5313	4090	65	country-city
5314	4091	69	country-city
5315	4092	126	country-city
5316	4093	129	country-city
5317	4094	135	country-city
5318	4095	144	country-city
5319	4096	148	country-city
5320	4097	149	country-city
5321	4098	150	country-city
5322	4099	174	country-city
5323	4100	179	country-city
5324	4101	185	country-city
5325	4102	187	country-city
5326	4103	191	country-city
5327	4104	192	country-city
5328	4105	194	country-city
5329	4106	201	country-city
5330	4107	204	country-city
5331	4108	211	country-city
5332	4109	456	country-city
5333	4110	537	country-city
5334	4111	538	country-city
5335	4112	539	country-city
5336	4113	549	country-city
5337	4114	552	country-city
5338	4115	553	country-city
5339	4116	554	country-city
5340	4117	583	country-city
5341	4118	584	country-city
5342	4119	585	country-city
5343	4120	586	country-city
5344	4121	587	country-city
5345	4122	594	country-city
5346	4123	608	country-city
5347	4124	645	country-city
5348	4125	652	country-city
5349	4126	653	country-city
5350	4127	716	country-city
5351	4128	756	country-city
5352	4129	763	country-city
5353	4130	764	country-city
5354	4131	766	country-city
5355	4132	901	country-city
5356	4133	902	country-city
5357	4134	904	country-city
5358	4135	905	country-city
5359	4136	910	country-city
5360	4137	915	country-city
5361	4138	916	country-city
5362	4139	917	country-city
5363	4140	919	country-city
5364	4141	921	country-city
5365	4142	922	country-city
5366	4143	926	country-city
5367	4144	927	country-city
5368	4145	928	country-city
5369	4146	929	country-city
5370	4147	933	country-city
5371	4148	937	country-city
5372	4149	938	country-city
5373	4150	939	country-city
5374	4151	1109	country-city
5375	4152	1365	country-city
5376	4153	1380	country-city
5377	4154	1447	country-city
5378	4155	1449	country-city
5379	4156	1450	country-city
5380	4157	1464	country-city
5381	4158	1522	country-city
5382	4159	1523	country-city
5383	4160	1530	country-city
5384	4161	1532	country-city
5385	4162	1780	country-city
5386	4163	1786	country-city
5387	4164	1791	country-city
5388	4165	1792	country-city
5389	4166	190	country-city
5390	4166	1800	country-city
5391	4146	1804	country-city
5392	4167	1804	country-city
5393	4108	1822	country-city
5394	4122	1822	country-city
5395	4168	1822	country-city
5396	4169	1859	country-city
5397	4170	1864	country-city
5398	4171	1881	country-city
5399	4172	1889	country-city
5400	4173	1891	country-city
5401	4174	2253	country-city
5402	4175	2256	country-city
5403	4176	2257	country-city
5404	4177	2295	country-city
5405	4178	2296	country-city
5406	4179	2298	country-city
5407	4180	2317	country-city
5408	4181	2318	country-city
5409	4182	2331	country-city
5410	4183	2401	country-city
5411	4184	2409	country-city
5412	4185	2413	country-city
5413	4186	2429	country-city
5414	4187	2430	country-city
5415	4188	2432	country-city
5416	4189	2434	country-city
5417	4190	2437	country-city
5418	4191	2438	country-city
5419	4192	2440	country-city
5420	4193	2441	country-city
5421	4194	2446	country-city
5422	4195	2447	country-city
5423	4196	2452	country-city
5424	4197	2453	country-city
5425	4198	2454	country-city
5426	4199	2455	country-city
5427	4200	2460	country-city
5428	4201	2462	country-city
5429	4202	2463	country-city
5430	4203	2464	country-city
5431	4204	2482	country-city
5432	4205	2484	country-city
5433	4206	2486	country-city
5434	4207	2507	country-city
5435	4208	2508	country-city
5436	4209	2509	country-city
5437	4210	2511	country-city
5438	4211	2514	country-city
5439	4212	2515	country-city
5440	4213	2689	country-city
5441	4214	2690	country-city
5442	4215	2695	country-city
5443	4216	2696	country-city
5444	4217	2697	country-city
5445	4218	2698	country-city
5446	4219	2710	country-city
5447	4220	2726	country-city
5448	4221	2728	country-city
5449	4222	2729	country-city
5450	4223	2734	country-city
5451	4224	2738	country-city
5452	4225	2754	country-city
5453	4226	2805	country-city
5454	4227	2806	country-city
5455	4228	2807	country-city
5456	4229	2814	country-city
5457	4230	2821	country-city
5458	4231	2831	country-city
5459	4232	2881	country-city
5460	4233	2882	country-city
5461	4234	2884	country-city
5462	4235	2885	country-city
5463	4236	2890	country-city
5464	4237	2912	country-city
5465	4238	2913	country-city
5466	4239	2914	country-city
5467	4240	2919	country-city
5468	4241	2928	country-city
5469	4242	2972	country-city
5470	4243	2973	country-city
5471	4244	2974	country-city
5472	4245	3014	country-city
5473	4246	3016	country-city
5474	4247	3017	country-city
5475	4248	3018	country-city
5476	4249	3047	country-city
5477	4250	3048	country-city
5478	4251	3063	country-city
5479	4252	3064	country-city
5480	4253	3065	country-city
5481	4254	3066	country-city
5482	4255	3067	country-city
5483	4256	3068	country-city
5484	4257	3161	country-city
5485	4258	3162	country-city
5486	4259	3169	country-city
5487	4260	3171	country-city
5488	4261	3172	country-city
5489	4262	3173	country-city
5490	4263	3198	country-city
5491	4264	3206	country-city
5492	4265	3207	country-city
5493	4266	3208	country-city
5494	4267	3209	country-city
5495	4268	3212	country-city
5496	4269	3214	country-city
5497	4270	3217	country-city
5498	4271	3225	country-city
5499	4272	3236	country-city
5500	4273	3243	country-city
5501	4274	3244	country-city
5502	4275	3248	country-city
5503	4276	3250	country-city
5504	4277	3261	country-city
5505	4278	3263	country-city
5506	4279	3306	country-city
5507	4280	3315	country-city
5508	4281	3320	country-city
5509	4282	3332	country-city
5510	4283	3333	country-city
5511	4284	3334	country-city
5512	4285	3336	country-city
5513	4286	3337	country-city
5514	4287	3339	country-city
5515	4288	3349	country-city
5516	4289	3358	country-city
5517	4290	3419	country-city
5518	4291	3423	country-city
5519	4292	3424	country-city
5520	4293	3425	country-city
5521	4294	3426	country-city
5522	4295	3483	country-city
5523	4296	3492	country-city
5524	4297	3493	country-city
5525	4298	3499	country-city
5526	4299	3503	country-city
5527	4300	3520	country-city
5528	4301	3536	country-city
5529	4302	3537	country-city
5530	4303	3538	country-city
5531	4304	3539	country-city
5532	4305	3580	country-city
5533	4306	3770	country-city
5534	4307	3791	country-city
5535	4308	3813	country-city
5536	4309	4067	country-city
5537	4310	4068	country-city
5538	4311	4074	country-city
5539	4319	4080	countrylanguage-country
5540	4552	4080	countrylanguage-country
5541	4764	4080	countrylanguage-country
5542	4913	4080	countrylanguage-country
5543	5030	4080	countrylanguage-country
5544	4320	4081	countrylanguage-country
5545	4553	4081	countrylanguage-country
5546	4765	4081	countrylanguage-country
5547	4914	4081	countrylanguage-country
5548	4321	4082	countrylanguage-country
5549	4554	4082	countrylanguage-country
5550	4766	4082	countrylanguage-country
5551	4322	4083	countrylanguage-country
5552	4555	4083	countrylanguage-country
5553	4767	4083	countrylanguage-country
5554	4323	4084	countrylanguage-country
5555	4556	4084	countrylanguage-country
5556	4324	4085	countrylanguage-country
5557	4557	4085	countrylanguage-country
5558	4768	4085	countrylanguage-country
5559	4325	4086	countrylanguage-country
5560	4558	4086	countrylanguage-country
5561	4769	4086	countrylanguage-country
5562	4915	4086	countrylanguage-country
5563	4326	4087	countrylanguage-country
5564	4559	4087	countrylanguage-country
5565	4770	4087	countrylanguage-country
5566	4916	4087	countrylanguage-country
5567	5031	4087	countrylanguage-country
5568	5121	4087	countrylanguage-country
5569	5190	4087	countrylanguage-country
5570	5228	4087	countrylanguage-country
5571	5258	4087	countrylanguage-country
5572	4327	4088	countrylanguage-country
5573	4328	4089	countrylanguage-country
5574	4560	4089	countrylanguage-country
5575	4329	4090	countrylanguage-country
5576	4561	4090	countrylanguage-country
5577	4330	4091	countrylanguage-country
5578	4562	4091	countrylanguage-country
5579	4771	4091	countrylanguage-country
5580	4331	4092	countrylanguage-country
5581	4563	4092	countrylanguage-country
5582	4332	4093	countrylanguage-country
5583	4564	4093	countrylanguage-country
5584	4772	4093	countrylanguage-country
5585	4917	4093	countrylanguage-country
5586	4333	4094	countrylanguage-country
5587	4565	4094	countrylanguage-country
5588	4773	4094	countrylanguage-country
5589	4918	4094	countrylanguage-country
5590	5032	4094	countrylanguage-country
5591	5122	4094	countrylanguage-country
5592	5191	4094	countrylanguage-country
5593	5229	4094	countrylanguage-country
5594	4334	4095	countrylanguage-country
5595	4566	4095	countrylanguage-country
5596	4774	4095	countrylanguage-country
5597	4919	4095	countrylanguage-country
5598	4335	4096	countrylanguage-country
5599	4567	4096	countrylanguage-country
5600	4336	4097	countrylanguage-country
5601	4568	4097	countrylanguage-country
5602	4337	4098	countrylanguage-country
5603	4569	4098	countrylanguage-country
5604	4775	4098	countrylanguage-country
5605	4920	4098	countrylanguage-country
5606	5033	4098	countrylanguage-country
5607	5123	4098	countrylanguage-country
5608	5192	4098	countrylanguage-country
5609	4338	4099	countrylanguage-country
5610	4570	4099	countrylanguage-country
5611	4339	4100	countrylanguage-country
5612	4571	4100	countrylanguage-country
5613	4776	4100	countrylanguage-country
5614	4921	4100	countrylanguage-country
5615	5034	4100	countrylanguage-country
5616	5124	4100	countrylanguage-country
5617	4340	4101	countrylanguage-country
5618	4572	4101	countrylanguage-country
5619	4777	4101	countrylanguage-country
5620	4922	4101	countrylanguage-country
5621	4341	4102	countrylanguage-country
5622	4573	4102	countrylanguage-country
5623	4778	4102	countrylanguage-country
5624	4923	4102	countrylanguage-country
5625	5035	4102	countrylanguage-country
5626	5125	4102	countrylanguage-country
5627	5193	4102	countrylanguage-country
5628	4342	4103	countrylanguage-country
5629	4343	4104	countrylanguage-country
5630	4574	4104	countrylanguage-country
5631	4779	4104	countrylanguage-country
5632	4344	4105	countrylanguage-country
5633	4575	4105	countrylanguage-country
5634	4780	4105	countrylanguage-country
5635	4924	4105	countrylanguage-country
5636	4345	4106	countrylanguage-country
5637	4346	4107	countrylanguage-country
5638	4576	4107	countrylanguage-country
5639	4781	4107	countrylanguage-country
5640	4925	4107	countrylanguage-country
5641	5036	4107	countrylanguage-country
5642	4347	4108	countrylanguage-country
5643	4577	4108	countrylanguage-country
5644	4782	4108	countrylanguage-country
5645	4926	4108	countrylanguage-country
5646	5037	4108	countrylanguage-country
5647	4348	4109	countrylanguage-country
5648	4578	4109	countrylanguage-country
5649	4783	4109	countrylanguage-country
5650	4349	4110	countrylanguage-country
5651	4350	4111	countrylanguage-country
5652	4579	4111	countrylanguage-country
5653	4784	4111	countrylanguage-country
5654	4927	4111	countrylanguage-country
5655	4351	4112	countrylanguage-country
5656	4580	4112	countrylanguage-country
5657	4785	4112	countrylanguage-country
5658	4928	4112	countrylanguage-country
5659	4352	4113	countrylanguage-country
5660	4581	4113	countrylanguage-country
5661	4786	4113	countrylanguage-country
5662	4929	4113	countrylanguage-country
5663	5038	4113	countrylanguage-country
5664	5126	4113	countrylanguage-country
5665	4353	4114	countrylanguage-country
5666	4582	4114	countrylanguage-country
5667	4787	4114	countrylanguage-country
5668	4354	4115	countrylanguage-country
5669	4355	4116	countrylanguage-country
5670	4583	4116	countrylanguage-country
5671	4788	4116	countrylanguage-country
5672	4930	4116	countrylanguage-country
5673	4356	4117	countrylanguage-country
5674	4584	4117	countrylanguage-country
5675	4357	4118	countrylanguage-country
5676	4585	4118	countrylanguage-country
5677	4789	4118	countrylanguage-country
5678	4931	4118	countrylanguage-country
5679	4358	4119	countrylanguage-country
5680	4586	4119	countrylanguage-country
5681	4790	4119	countrylanguage-country
5682	4359	4120	countrylanguage-country
5683	4587	4120	countrylanguage-country
5684	4360	4121	countrylanguage-country
5685	4588	4121	countrylanguage-country
5686	4361	4122	countrylanguage-country
5687	4589	4122	countrylanguage-country
5688	4362	4123	countrylanguage-country
5689	4590	4123	countrylanguage-country
5690	4363	4124	countrylanguage-country
5691	4591	4124	countrylanguage-country
5692	4364	4125	countrylanguage-country
5693	4592	4125	countrylanguage-country
5694	4791	4125	countrylanguage-country
5695	4932	4125	countrylanguage-country
5696	5039	4125	countrylanguage-country
5697	5127	4125	countrylanguage-country
5698	4365	4126	countrylanguage-country
5699	4593	4126	countrylanguage-country
5700	4792	4126	countrylanguage-country
5701	4933	4126	countrylanguage-country
5702	4366	4127	countrylanguage-country
5703	4594	4127	countrylanguage-country
5704	4793	4127	countrylanguage-country
5705	4934	4127	countrylanguage-country
5706	5040	4127	countrylanguage-country
5707	5128	4127	countrylanguage-country
5708	5194	4127	countrylanguage-country
5709	5230	4127	countrylanguage-country
5710	5259	4127	countrylanguage-country
5711	5276	4127	countrylanguage-country
5712	5291	4127	countrylanguage-country
5713	4367	4128	countrylanguage-country
5714	4595	4128	countrylanguage-country
5715	4794	4128	countrylanguage-country
5716	4935	4128	countrylanguage-country
5717	5041	4128	countrylanguage-country
5718	5129	4128	countrylanguage-country
5719	5195	4128	countrylanguage-country
5720	4368	4129	countrylanguage-country
5721	4369	4130	countrylanguage-country
5722	4596	4130	countrylanguage-country
5723	4370	4131	countrylanguage-country
5724	4597	4131	countrylanguage-country
5725	4795	4131	countrylanguage-country
5726	4936	4131	countrylanguage-country
5727	5042	4131	countrylanguage-country
5728	5130	4131	countrylanguage-country
5729	5196	4131	countrylanguage-country
5730	5231	4131	countrylanguage-country
5731	5260	4131	countrylanguage-country
5732	5277	4131	countrylanguage-country
5733	4371	4132	countrylanguage-country
5734	4598	4132	countrylanguage-country
5735	4372	4133	countrylanguage-country
5736	4599	4133	countrylanguage-country
5737	4796	4133	countrylanguage-country
5738	4937	4133	countrylanguage-country
5739	4373	4134	countrylanguage-country
5740	4600	4134	countrylanguage-country
5741	4797	4134	countrylanguage-country
5742	4938	4134	countrylanguage-country
5743	5043	4134	countrylanguage-country
5744	4374	4135	countrylanguage-country
5745	4601	4135	countrylanguage-country
5746	4798	4135	countrylanguage-country
5747	4939	4135	countrylanguage-country
5748	5044	4135	countrylanguage-country
5749	5131	4135	countrylanguage-country
5750	4375	4136	countrylanguage-country
5751	4602	4136	countrylanguage-country
5752	4799	4136	countrylanguage-country
5753	4940	4136	countrylanguage-country
5754	5045	4136	countrylanguage-country
5755	5132	4136	countrylanguage-country
5756	4376	4137	countrylanguage-country
5757	4603	4137	countrylanguage-country
5758	4377	4138	countrylanguage-country
5759	4378	4139	countrylanguage-country
5760	4604	4139	countrylanguage-country
5761	4379	4140	countrylanguage-country
5762	4605	4140	countrylanguage-country
5763	4380	4141	countrylanguage-country
5764	4606	4141	countrylanguage-country
5765	4800	4141	countrylanguage-country
5766	4941	4141	countrylanguage-country
5767	5046	4141	countrylanguage-country
5768	4381	4142	countrylanguage-country
5769	4607	4142	countrylanguage-country
5770	4801	4142	countrylanguage-country
5771	4942	4142	countrylanguage-country
5772	5047	4142	countrylanguage-country
5773	4382	4143	countrylanguage-country
5774	4608	4143	countrylanguage-country
5775	4802	4143	countrylanguage-country
5776	4943	4143	countrylanguage-country
5777	5048	4143	countrylanguage-country
5778	5133	4143	countrylanguage-country
5779	5197	4143	countrylanguage-country
5780	4383	4144	countrylanguage-country
5781	4609	4144	countrylanguage-country
5782	4803	4144	countrylanguage-country
5783	4944	4144	countrylanguage-country
5784	5049	4144	countrylanguage-country
5785	5134	4144	countrylanguage-country
5786	4384	4145	countrylanguage-country
5787	4610	4145	countrylanguage-country
5788	4804	4145	countrylanguage-country
5789	4385	4146	countrylanguage-country
5790	4611	4146	countrylanguage-country
5791	4386	4147	countrylanguage-country
5792	4612	4147	countrylanguage-country
5793	4805	4147	countrylanguage-country
5794	4945	4147	countrylanguage-country
5795	4387	4148	countrylanguage-country
5796	4613	4148	countrylanguage-country
5797	4806	4148	countrylanguage-country
5798	4946	4148	countrylanguage-country
5799	5050	4148	countrylanguage-country
5800	4388	4149	countrylanguage-country
5801	4614	4149	countrylanguage-country
5802	4389	4150	countrylanguage-country
5803	4615	4150	countrylanguage-country
5804	4807	4150	countrylanguage-country
5805	4947	4150	countrylanguage-country
5806	5051	4150	countrylanguage-country
5807	5135	4150	countrylanguage-country
5808	5198	4150	countrylanguage-country
5809	5232	4150	countrylanguage-country
5810	5261	4150	countrylanguage-country
5811	4390	4151	countrylanguage-country
5812	4616	4151	countrylanguage-country
5813	4808	4151	countrylanguage-country
5814	4948	4151	countrylanguage-country
5815	5052	4151	countrylanguage-country
5816	5136	4151	countrylanguage-country
5817	5199	4151	countrylanguage-country
5818	5233	4151	countrylanguage-country
5819	5262	4151	countrylanguage-country
5820	5278	4151	countrylanguage-country
5821	5292	4151	countrylanguage-country
5822	5298	4151	countrylanguage-country
5823	4391	4152	countrylanguage-country
5824	4617	4152	countrylanguage-country
5825	4809	4152	countrylanguage-country
5826	4949	4152	countrylanguage-country
5827	5053	4152	countrylanguage-country
5828	4392	4153	countrylanguage-country
5829	4618	4153	countrylanguage-country
5830	4810	4153	countrylanguage-country
5831	4950	4153	countrylanguage-country
5832	5054	4153	countrylanguage-country
5833	5137	4153	countrylanguage-country
5834	5200	4153	countrylanguage-country
5835	5234	4153	countrylanguage-country
5836	5263	4153	countrylanguage-country
5837	5279	4153	countrylanguage-country
5838	4393	4154	countrylanguage-country
5839	4619	4154	countrylanguage-country
5840	4394	4155	countrylanguage-country
5841	4620	4155	countrylanguage-country
5842	4395	4156	countrylanguage-country
5843	4621	4156	countrylanguage-country
5844	4811	4156	countrylanguage-country
5845	4396	4157	countrylanguage-country
5846	4622	4157	countrylanguage-country
5847	4812	4157	countrylanguage-country
5848	4951	4157	countrylanguage-country
5849	5055	4157	countrylanguage-country
5850	5138	4157	countrylanguage-country
5851	5201	4157	countrylanguage-country
5852	5235	4157	countrylanguage-country
5853	4397	4158	countrylanguage-country
5854	4623	4158	countrylanguage-country
5855	4398	4159	countrylanguage-country
5856	4624	4159	countrylanguage-country
5857	4813	4159	countrylanguage-country
5858	4952	4159	countrylanguage-country
5859	5056	4159	countrylanguage-country
5860	5139	4159	countrylanguage-country
5861	5202	4159	countrylanguage-country
5862	5236	4159	countrylanguage-country
5863	4399	4160	countrylanguage-country
5864	4625	4160	countrylanguage-country
5865	4400	4161	countrylanguage-country
5866	4626	4161	countrylanguage-country
5867	4814	4161	countrylanguage-country
5868	4953	4161	countrylanguage-country
5869	5057	4161	countrylanguage-country
5870	5140	4161	countrylanguage-country
5871	4401	4162	countrylanguage-country
5872	4627	4162	countrylanguage-country
5873	4402	4163	countrylanguage-country
5874	4628	4163	countrylanguage-country
5875	4815	4163	countrylanguage-country
5876	4403	4164	countrylanguage-country
5877	4629	4164	countrylanguage-country
5878	4404	4165	countrylanguage-country
5879	4630	4165	countrylanguage-country
5880	4816	4165	countrylanguage-country
5881	4954	4165	countrylanguage-country
5882	5058	4165	countrylanguage-country
5883	5141	4165	countrylanguage-country
5884	4405	4166	countrylanguage-country
5885	4631	4166	countrylanguage-country
5886	4817	4166	countrylanguage-country
5887	4955	4166	countrylanguage-country
5888	4406	4167	countrylanguage-country
5889	4632	4167	countrylanguage-country
5890	4818	4167	countrylanguage-country
5891	4956	4167	countrylanguage-country
5892	5059	4167	countrylanguage-country
5893	5142	4167	countrylanguage-country
5894	5203	4167	countrylanguage-country
5895	5237	4167	countrylanguage-country
5896	4407	4168	countrylanguage-country
5897	4633	4168	countrylanguage-country
5898	4819	4168	countrylanguage-country
5899	4957	4168	countrylanguage-country
5900	5060	4168	countrylanguage-country
5901	5143	4168	countrylanguage-country
5902	5204	4168	countrylanguage-country
5903	5238	4168	countrylanguage-country
5904	5264	4168	countrylanguage-country
5905	5280	4168	countrylanguage-country
5906	5293	4168	countrylanguage-country
5907	5299	4168	countrylanguage-country
5908	4408	4169	countrylanguage-country
5909	4634	4169	countrylanguage-country
5910	4409	4170	countrylanguage-country
5911	4635	4170	countrylanguage-country
5912	4820	4170	countrylanguage-country
5913	4958	4170	countrylanguage-country
5914	5061	4170	countrylanguage-country
5915	5144	4170	countrylanguage-country
5916	4410	4171	countrylanguage-country
5917	4636	4171	countrylanguage-country
5918	4821	4171	countrylanguage-country
5919	4959	4171	countrylanguage-country
5920	5062	4171	countrylanguage-country
5921	5145	4171	countrylanguage-country
5922	5205	4171	countrylanguage-country
5923	5239	4171	countrylanguage-country
5924	5265	4171	countrylanguage-country
5925	5281	4171	countrylanguage-country
5926	4411	4172	countrylanguage-country
5927	4637	4172	countrylanguage-country
5928	4822	4172	countrylanguage-country
5929	4960	4172	countrylanguage-country
5930	5063	4172	countrylanguage-country
5931	5146	4172	countrylanguage-country
5932	4412	4173	countrylanguage-country
5933	4638	4173	countrylanguage-country
5934	4823	4173	countrylanguage-country
5935	4961	4173	countrylanguage-country
5936	5064	4173	countrylanguage-country
5937	5147	4173	countrylanguage-country
5938	5206	4173	countrylanguage-country
5939	5240	4173	countrylanguage-country
5940	5266	4173	countrylanguage-country
5941	5282	4173	countrylanguage-country
5942	5294	4173	countrylanguage-country
5943	5300	4173	countrylanguage-country
5944	4413	4174	countrylanguage-country
5945	4639	4174	countrylanguage-country
5946	4824	4174	countrylanguage-country
5947	4962	4174	countrylanguage-country
5948	5065	4174	countrylanguage-country
5949	5148	4174	countrylanguage-country
5950	5207	4174	countrylanguage-country
5951	4414	4175	countrylanguage-country
5952	4640	4175	countrylanguage-country
5953	4415	4176	countrylanguage-country
5954	4641	4176	countrylanguage-country
5955	4825	4176	countrylanguage-country
5956	4963	4176	countrylanguage-country
5957	5066	4176	countrylanguage-country
5958	4416	4177	countrylanguage-country
5959	4642	4177	countrylanguage-country
5960	4826	4177	countrylanguage-country
5961	4964	4177	countrylanguage-country
5962	5067	4177	countrylanguage-country
5963	4417	4178	countrylanguage-country
5964	4643	4178	countrylanguage-country
5965	4827	4178	countrylanguage-country
5966	4965	4178	countrylanguage-country
5967	5068	4178	countrylanguage-country
5968	5149	4178	countrylanguage-country
5969	4418	4179	countrylanguage-country
5970	4644	4179	countrylanguage-country
5971	4828	4179	countrylanguage-country
5972	4966	4179	countrylanguage-country
5973	5069	4179	countrylanguage-country
5974	5150	4179	countrylanguage-country
5975	5208	4179	countrylanguage-country
5976	5241	4179	countrylanguage-country
5977	5267	4179	countrylanguage-country
5978	5283	4179	countrylanguage-country
5979	4419	4180	countrylanguage-country
5980	4645	4180	countrylanguage-country
5981	4420	4181	countrylanguage-country
5982	4646	4181	countrylanguage-country
5983	4421	4182	countrylanguage-country
5984	4647	4182	countrylanguage-country
5985	4422	4183	countrylanguage-country
5986	4648	4183	countrylanguage-country
5987	4423	4184	countrylanguage-country
5988	4649	4184	countrylanguage-country
5989	4424	4185	countrylanguage-country
5990	4425	4186	countrylanguage-country
5991	4650	4186	countrylanguage-country
5992	4426	4187	countrylanguage-country
5993	4651	4187	countrylanguage-country
5994	4427	4188	countrylanguage-country
5995	4652	4188	countrylanguage-country
5996	4829	4188	countrylanguage-country
5997	4967	4188	countrylanguage-country
5998	4428	4189	countrylanguage-country
5999	4653	4189	countrylanguage-country
6000	4830	4189	countrylanguage-country
6001	4968	4189	countrylanguage-country
6002	5070	4189	countrylanguage-country
6003	5151	4189	countrylanguage-country
6004	4429	4190	countrylanguage-country
6005	4654	4190	countrylanguage-country
6006	4831	4190	countrylanguage-country
6007	4430	4191	countrylanguage-country
6008	4655	4191	countrylanguage-country
6009	4832	4191	countrylanguage-country
6010	4431	4192	countrylanguage-country
6011	4656	4192	countrylanguage-country
6012	4833	4192	countrylanguage-country
6013	4969	4192	countrylanguage-country
6014	5071	4192	countrylanguage-country
6015	5152	4192	countrylanguage-country
6016	5209	4192	countrylanguage-country
6017	5242	4192	countrylanguage-country
6018	4432	4193	countrylanguage-country
6019	4657	4193	countrylanguage-country
6020	4433	4194	countrylanguage-country
6021	4658	4194	countrylanguage-country
6022	4834	4194	countrylanguage-country
6023	4434	4195	countrylanguage-country
6024	4659	4195	countrylanguage-country
6025	4835	4195	countrylanguage-country
6026	4970	4195	countrylanguage-country
6027	5072	4195	countrylanguage-country
6028	4435	4196	countrylanguage-country
6029	4660	4196	countrylanguage-country
6030	4836	4196	countrylanguage-country
6031	4971	4196	countrylanguage-country
6032	5073	4196	countrylanguage-country
6033	4436	4197	countrylanguage-country
6034	4437	4198	countrylanguage-country
6035	4661	4198	countrylanguage-country
6036	4837	4198	countrylanguage-country
6037	4972	4198	countrylanguage-country
6038	4438	4199	countrylanguage-country
6039	4662	4199	countrylanguage-country
6040	4439	4200	countrylanguage-country
6041	4663	4200	countrylanguage-country
6042	4838	4200	countrylanguage-country
6043	4973	4200	countrylanguage-country
6044	5074	4200	countrylanguage-country
6045	4440	4201	countrylanguage-country
6046	4664	4201	countrylanguage-country
6047	4839	4201	countrylanguage-country
6048	4974	4201	countrylanguage-country
6049	4441	4202	countrylanguage-country
6050	4665	4202	countrylanguage-country
6051	4442	4203	countrylanguage-country
6052	4666	4203	countrylanguage-country
6053	4840	4203	countrylanguage-country
6054	4975	4203	countrylanguage-country
6055	5075	4203	countrylanguage-country
6056	5153	4203	countrylanguage-country
6057	4443	4204	countrylanguage-country
6058	4667	4204	countrylanguage-country
6059	4841	4204	countrylanguage-country
6060	4976	4204	countrylanguage-country
6061	5076	4204	countrylanguage-country
6062	5154	4204	countrylanguage-country
6063	4444	4205	countrylanguage-country
6064	4668	4205	countrylanguage-country
6065	4445	4206	countrylanguage-country
6066	4669	4206	countrylanguage-country
6067	4446	4207	countrylanguage-country
6068	4670	4207	countrylanguage-country
6069	4447	4208	countrylanguage-country
6070	4671	4208	countrylanguage-country
6071	4448	4209	countrylanguage-country
6072	4672	4209	countrylanguage-country
6073	4842	4209	countrylanguage-country
6074	4977	4209	countrylanguage-country
6075	5077	4209	countrylanguage-country
6076	5155	4209	countrylanguage-country
6077	4449	4210	countrylanguage-country
6078	4673	4210	countrylanguage-country
6079	4843	4210	countrylanguage-country
6080	4978	4210	countrylanguage-country
6081	5078	4210	countrylanguage-country
6082	5156	4210	countrylanguage-country
6083	4450	4211	countrylanguage-country
6084	4674	4211	countrylanguage-country
6085	4844	4211	countrylanguage-country
6086	4451	4212	countrylanguage-country
6087	4675	4212	countrylanguage-country
6088	4845	4212	countrylanguage-country
6089	4979	4212	countrylanguage-country
6090	5079	4212	countrylanguage-country
6091	5157	4212	countrylanguage-country
6092	4452	4213	countrylanguage-country
6093	4676	4213	countrylanguage-country
6094	4846	4213	countrylanguage-country
6095	4980	4213	countrylanguage-country
6096	5080	4213	countrylanguage-country
6097	5158	4213	countrylanguage-country
6098	4453	4214	countrylanguage-country
6099	4677	4214	countrylanguage-country
6100	4847	4214	countrylanguage-country
6101	4981	4214	countrylanguage-country
6102	5081	4214	countrylanguage-country
6103	4454	4215	countrylanguage-country
6104	4678	4215	countrylanguage-country
6105	4848	4215	countrylanguage-country
6106	4982	4215	countrylanguage-country
6107	4455	4216	countrylanguage-country
6108	4679	4216	countrylanguage-country
6109	4849	4216	countrylanguage-country
6110	4983	4216	countrylanguage-country
6111	5082	4216	countrylanguage-country
6112	5159	4216	countrylanguage-country
6113	4456	4217	countrylanguage-country
6114	4457	4218	countrylanguage-country
6115	4680	4218	countrylanguage-country
6116	4850	4218	countrylanguage-country
6117	4984	4218	countrylanguage-country
6118	5083	4218	countrylanguage-country
6119	5160	4218	countrylanguage-country
6120	5210	4218	countrylanguage-country
6121	5243	4218	countrylanguage-country
6122	5268	4218	countrylanguage-country
6123	5284	4218	countrylanguage-country
6124	4458	4219	countrylanguage-country
6125	4681	4219	countrylanguage-country
6126	4851	4219	countrylanguage-country
6127	4985	4219	countrylanguage-country
6128	5084	4219	countrylanguage-country
6129	5161	4219	countrylanguage-country
6130	5211	4219	countrylanguage-country
6131	5244	4219	countrylanguage-country
6132	4459	4220	countrylanguage-country
6133	4682	4220	countrylanguage-country
6134	4852	4220	countrylanguage-country
6135	4986	4220	countrylanguage-country
6136	5085	4220	countrylanguage-country
6137	5162	4220	countrylanguage-country
6138	5212	4220	countrylanguage-country
6139	5245	4220	countrylanguage-country
6140	4460	4221	countrylanguage-country
6141	4683	4221	countrylanguage-country
6142	4853	4221	countrylanguage-country
6143	4987	4221	countrylanguage-country
6144	5086	4221	countrylanguage-country
6145	4461	4222	countrylanguage-country
6146	4684	4222	countrylanguage-country
6147	4854	4222	countrylanguage-country
6148	4988	4222	countrylanguage-country
6149	5087	4222	countrylanguage-country
6150	5163	4222	countrylanguage-country
6151	5213	4222	countrylanguage-country
6152	4462	4223	countrylanguage-country
6153	4685	4223	countrylanguage-country
6154	4855	4223	countrylanguage-country
6155	4989	4223	countrylanguage-country
6156	4463	4224	countrylanguage-country
6157	4686	4224	countrylanguage-country
6158	4856	4224	countrylanguage-country
6159	4990	4224	countrylanguage-country
6160	5088	4224	countrylanguage-country
6161	4464	4225	countrylanguage-country
6162	4687	4225	countrylanguage-country
6163	4857	4225	countrylanguage-country
6164	4991	4225	countrylanguage-country
6165	5089	4225	countrylanguage-country
6166	5164	4225	countrylanguage-country
6167	5214	4225	countrylanguage-country
6168	5246	4225	countrylanguage-country
6169	5269	4225	countrylanguage-country
6170	5285	4225	countrylanguage-country
6171	4465	4226	countrylanguage-country
6172	4688	4226	countrylanguage-country
6173	4466	4227	countrylanguage-country
6174	4467	4228	countrylanguage-country
6175	4689	4228	countrylanguage-country
6176	4858	4228	countrylanguage-country
6177	4992	4228	countrylanguage-country
6178	5090	4228	countrylanguage-country
6179	4468	4229	countrylanguage-country
6180	4690	4229	countrylanguage-country
6181	4859	4229	countrylanguage-country
6182	4993	4229	countrylanguage-country
6183	5091	4229	countrylanguage-country
6184	4469	4230	countrylanguage-country
6185	4691	4230	countrylanguage-country
6186	4470	4231	countrylanguage-country
6187	4692	4231	countrylanguage-country
6188	4860	4231	countrylanguage-country
6189	4994	4231	countrylanguage-country
6190	5092	4231	countrylanguage-country
6191	5165	4231	countrylanguage-country
6192	5215	4231	countrylanguage-country
6193	5247	4231	countrylanguage-country
6194	4471	4232	countrylanguage-country
6195	4693	4232	countrylanguage-country
6196	4861	4232	countrylanguage-country
6197	4995	4232	countrylanguage-country
6198	4472	4233	countrylanguage-country
6199	4694	4233	countrylanguage-country
6200	4862	4233	countrylanguage-country
6201	4996	4233	countrylanguage-country
6202	5093	4233	countrylanguage-country
6203	5166	4233	countrylanguage-country
6204	4473	4234	countrylanguage-country
6205	4695	4234	countrylanguage-country
6206	4474	4235	countrylanguage-country
6207	4696	4235	countrylanguage-country
6208	4863	4235	countrylanguage-country
6209	4997	4235	countrylanguage-country
6210	4475	4236	countrylanguage-country
6211	4697	4236	countrylanguage-country
6212	4864	4236	countrylanguage-country
6213	4476	4237	countrylanguage-country
6214	4477	4238	countrylanguage-country
6215	4698	4238	countrylanguage-country
6216	4865	4238	countrylanguage-country
6217	4998	4238	countrylanguage-country
6218	5094	4238	countrylanguage-country
6219	5167	4238	countrylanguage-country
6220	4478	4239	countrylanguage-country
6221	4479	4240	countrylanguage-country
6222	4699	4240	countrylanguage-country
6223	4480	4241	countrylanguage-country
6224	4700	4241	countrylanguage-country
6225	4866	4241	countrylanguage-country
6226	4999	4241	countrylanguage-country
6227	4481	4242	countrylanguage-country
6228	4701	4242	countrylanguage-country
6229	4482	4243	countrylanguage-country
6230	4702	4243	countrylanguage-country
6231	4483	4244	countrylanguage-country
6232	4703	4244	countrylanguage-country
6233	4867	4244	countrylanguage-country
6234	5000	4244	countrylanguage-country
6235	5095	4244	countrylanguage-country
6236	5168	4244	countrylanguage-country
6237	4484	4245	countrylanguage-country
6238	4704	4245	countrylanguage-country
6239	4485	4246	countrylanguage-country
6240	4705	4246	countrylanguage-country
6241	4868	4246	countrylanguage-country
6242	4486	4247	countrylanguage-country
6243	4706	4247	countrylanguage-country
6244	4869	4247	countrylanguage-country
6245	5001	4247	countrylanguage-country
6246	5096	4247	countrylanguage-country
6247	4487	4248	countrylanguage-country
6248	4707	4248	countrylanguage-country
6249	4870	4248	countrylanguage-country
6250	5002	4248	countrylanguage-country
6251	5097	4248	countrylanguage-country
6252	5169	4248	countrylanguage-country
6253	4488	4249	countrylanguage-country
6254	4708	4249	countrylanguage-country
6255	4489	4250	countrylanguage-country
6256	4709	4250	countrylanguage-country
6257	4871	4250	countrylanguage-country
6258	5003	4250	countrylanguage-country
6259	5098	4250	countrylanguage-country
6260	5170	4250	countrylanguage-country
6261	4490	4251	countrylanguage-country
6262	4491	4252	countrylanguage-country
6263	4710	4252	countrylanguage-country
6264	4492	4253	countrylanguage-country
6265	4711	4253	countrylanguage-country
6266	4493	4254	countrylanguage-country
6267	4712	4254	countrylanguage-country
6268	4494	4255	countrylanguage-country
6269	4495	4256	countrylanguage-country
6270	4713	4256	countrylanguage-country
6271	4872	4256	countrylanguage-country
6272	5004	4256	countrylanguage-country
6273	5099	4256	countrylanguage-country
6274	5171	4256	countrylanguage-country
6275	4496	4257	countrylanguage-country
6276	4714	4257	countrylanguage-country
6277	4873	4257	countrylanguage-country
6278	4497	4258	countrylanguage-country
6279	4715	4258	countrylanguage-country
6280	4874	4258	countrylanguage-country
6281	5005	4258	countrylanguage-country
6282	5100	4258	countrylanguage-country
6283	5172	4258	countrylanguage-country
6284	4498	4259	countrylanguage-country
6285	4716	4259	countrylanguage-country
6286	4875	4259	countrylanguage-country
6287	4499	4260	countrylanguage-country
6288	4500	4261	countrylanguage-country
6289	4717	4261	countrylanguage-country
6290	4501	4262	countrylanguage-country
6291	4502	4263	countrylanguage-country
6292	4718	4263	countrylanguage-country
6293	4876	4263	countrylanguage-country
6294	5006	4263	countrylanguage-country
6295	5101	4263	countrylanguage-country
6296	5173	4263	countrylanguage-country
6297	4503	4264	countrylanguage-country
6298	4719	4264	countrylanguage-country
6299	4877	4264	countrylanguage-country
6300	4504	4265	countrylanguage-country
6301	4720	4265	countrylanguage-country
6302	4878	4265	countrylanguage-country
6303	5007	4265	countrylanguage-country
6304	5102	4265	countrylanguage-country
6305	5174	4265	countrylanguage-country
6306	5216	4265	countrylanguage-country
6307	5248	4265	countrylanguage-country
6308	4505	4266	countrylanguage-country
6309	4721	4266	countrylanguage-country
6310	4879	4266	countrylanguage-country
6311	4506	4267	countrylanguage-country
6312	4722	4267	countrylanguage-country
6313	4880	4267	countrylanguage-country
6314	5008	4267	countrylanguage-country
6315	5103	4267	countrylanguage-country
6316	4507	4268	countrylanguage-country
6317	4723	4268	countrylanguage-country
6318	4881	4268	countrylanguage-country
6319	4508	4269	countrylanguage-country
6320	4724	4269	countrylanguage-country
6321	4509	4270	countrylanguage-country
6322	4725	4270	countrylanguage-country
6323	4882	4270	countrylanguage-country
6324	4510	4271	countrylanguage-country
6325	4726	4271	countrylanguage-country
6326	4883	4271	countrylanguage-country
6327	5009	4271	countrylanguage-country
6328	5104	4271	countrylanguage-country
6329	5175	4271	countrylanguage-country
6330	5217	4271	countrylanguage-country
6331	5249	4271	countrylanguage-country
6332	5270	4271	countrylanguage-country
6333	5286	4271	countrylanguage-country
6334	4511	4272	countrylanguage-country
6335	4727	4272	countrylanguage-country
6336	4884	4272	countrylanguage-country
6337	5010	4272	countrylanguage-country
6338	5105	4272	countrylanguage-country
6339	4512	4273	countrylanguage-country
6340	4728	4273	countrylanguage-country
6341	4513	4274	countrylanguage-country
6342	4729	4274	countrylanguage-country
6343	4514	4275	countrylanguage-country
6344	4730	4275	countrylanguage-country
6345	4885	4275	countrylanguage-country
6346	5011	4275	countrylanguage-country
6347	4515	4276	countrylanguage-country
6348	4731	4276	countrylanguage-country
6349	4516	4277	countrylanguage-country
6350	4732	4277	countrylanguage-country
6351	4886	4277	countrylanguage-country
6352	4517	4278	countrylanguage-country
6353	4733	4278	countrylanguage-country
6354	4887	4278	countrylanguage-country
6355	5012	4278	countrylanguage-country
6356	5106	4278	countrylanguage-country
6357	5176	4278	countrylanguage-country
6358	4518	4279	countrylanguage-country
6359	4734	4279	countrylanguage-country
6360	4888	4279	countrylanguage-country
6361	5013	4279	countrylanguage-country
6362	5107	4279	countrylanguage-country
6363	5177	4279	countrylanguage-country
6364	5218	4279	countrylanguage-country
6365	5250	4279	countrylanguage-country
6366	5271	4279	countrylanguage-country
6367	5287	4279	countrylanguage-country
6368	5295	4279	countrylanguage-country
6369	4519	4280	countrylanguage-country
6370	4735	4280	countrylanguage-country
6371	4889	4280	countrylanguage-country
6372	5014	4280	countrylanguage-country
6373	5108	4280	countrylanguage-country
6374	5178	4280	countrylanguage-country
6375	5219	4280	countrylanguage-country
6376	4520	4281	countrylanguage-country
6377	4736	4281	countrylanguage-country
6378	4890	4281	countrylanguage-country
6379	5015	4281	countrylanguage-country
6380	5109	4281	countrylanguage-country
6381	5179	4281	countrylanguage-country
6382	4521	4282	countrylanguage-country
6383	4737	4282	countrylanguage-country
6384	4891	4282	countrylanguage-country
6385	5016	4282	countrylanguage-country
6386	5110	4282	countrylanguage-country
6387	5180	4282	countrylanguage-country
6388	5220	4282	countrylanguage-country
6389	5251	4282	countrylanguage-country
6390	4522	4283	countrylanguage-country
6391	4738	4283	countrylanguage-country
6392	4523	4284	countrylanguage-country
6393	4739	4284	countrylanguage-country
6394	4524	4285	countrylanguage-country
6395	4740	4285	countrylanguage-country
6396	4892	4285	countrylanguage-country
6397	4525	4286	countrylanguage-country
6398	4741	4286	countrylanguage-country
6399	4893	4286	countrylanguage-country
6400	5017	4286	countrylanguage-country
6401	5111	4286	countrylanguage-country
6402	5181	4286	countrylanguage-country
6403	5221	4286	countrylanguage-country
6404	5252	4286	countrylanguage-country
6405	4526	4287	countrylanguage-country
6406	4742	4287	countrylanguage-country
6407	4894	4287	countrylanguage-country
6408	5018	4287	countrylanguage-country
6409	5112	4287	countrylanguage-country
6410	5182	4287	countrylanguage-country
6411	5222	4287	countrylanguage-country
6412	5253	4287	countrylanguage-country
6413	4527	4288	countrylanguage-country
6414	4743	4288	countrylanguage-country
6415	4895	4288	countrylanguage-country
6416	4528	4289	countrylanguage-country
6417	4744	4289	countrylanguage-country
6418	4896	4289	countrylanguage-country
6419	4529	4290	countrylanguage-country
6420	4745	4290	countrylanguage-country
6421	4897	4290	countrylanguage-country
6422	5019	4290	countrylanguage-country
6423	4530	4291	countrylanguage-country
6424	4531	4292	countrylanguage-country
6425	4746	4292	countrylanguage-country
6426	4898	4292	countrylanguage-country
6427	4532	4293	countrylanguage-country
6428	4747	4293	countrylanguage-country
6429	4899	4293	countrylanguage-country
6430	5020	4293	countrylanguage-country
6431	5113	4293	countrylanguage-country
6432	5183	4293	countrylanguage-country
6433	5223	4293	countrylanguage-country
6434	5254	4293	countrylanguage-country
6435	5272	4293	countrylanguage-country
6436	5288	4293	countrylanguage-country
6437	4533	4294	countrylanguage-country
6438	4748	4294	countrylanguage-country
6439	4900	4294	countrylanguage-country
6440	5021	4294	countrylanguage-country
6441	5114	4294	countrylanguage-country
6442	5184	4294	countrylanguage-country
6443	5224	4294	countrylanguage-country
6444	4534	4295	countrylanguage-country
6445	4749	4295	countrylanguage-country
6446	4901	4295	countrylanguage-country
6447	5022	4295	countrylanguage-country
6448	5115	4295	countrylanguage-country
6449	5185	4295	countrylanguage-country
6450	4535	4296	countrylanguage-country
6451	4536	4297	countrylanguage-country
6452	4750	4297	countrylanguage-country
6453	4902	4297	countrylanguage-country
6454	4537	4298	countrylanguage-country
6455	4751	4298	countrylanguage-country
6456	4538	4299	countrylanguage-country
6457	4752	4299	countrylanguage-country
6458	4903	4299	countrylanguage-country
6459	5023	4299	countrylanguage-country
6460	5116	4299	countrylanguage-country
6461	5186	4299	countrylanguage-country
6462	4539	4300	countrylanguage-country
6463	4753	4300	countrylanguage-country
6464	4904	4300	countrylanguage-country
6465	5024	4300	countrylanguage-country
6466	4540	4301	countrylanguage-country
6467	4754	4301	countrylanguage-country
6468	4541	4302	countrylanguage-country
6469	4755	4302	countrylanguage-country
6470	4905	4302	countrylanguage-country
6471	4542	4303	countrylanguage-country
6472	4543	4304	countrylanguage-country
6473	4756	4304	countrylanguage-country
6474	4906	4304	countrylanguage-country
6475	4544	4305	countrylanguage-country
6476	4757	4305	countrylanguage-country
6477	4907	4305	countrylanguage-country
6478	5025	4305	countrylanguage-country
6479	5117	4305	countrylanguage-country
6480	5187	4305	countrylanguage-country
6481	5225	4305	countrylanguage-country
6482	5255	4305	countrylanguage-country
6483	5273	4305	countrylanguage-country
6484	5289	4305	countrylanguage-country
6485	5296	4305	countrylanguage-country
6486	5301	4305	countrylanguage-country
6487	4545	4306	countrylanguage-country
6488	4758	4306	countrylanguage-country
6489	4908	4306	countrylanguage-country
6490	5026	4306	countrylanguage-country
6491	5118	4306	countrylanguage-country
6492	5188	4306	countrylanguage-country
6493	5226	4306	countrylanguage-country
6494	5256	4306	countrylanguage-country
6495	5274	4306	countrylanguage-country
6496	4546	4307	countrylanguage-country
6497	4759	4307	countrylanguage-country
6498	4909	4307	countrylanguage-country
6499	5027	4307	countrylanguage-country
6500	5119	4307	countrylanguage-country
6501	4547	4308	countrylanguage-country
6502	4760	4308	countrylanguage-country
6503	4910	4308	countrylanguage-country
6504	5028	4308	countrylanguage-country
6505	5120	4308	countrylanguage-country
6506	5189	4308	countrylanguage-country
6507	5227	4308	countrylanguage-country
6508	5257	4308	countrylanguage-country
6509	5275	4308	countrylanguage-country
6510	5290	4308	countrylanguage-country
6511	5297	4308	countrylanguage-country
6512	5302	4308	countrylanguage-country
6513	4548	4309	countrylanguage-country
6514	4761	4309	countrylanguage-country
6515	4911	4309	countrylanguage-country
6516	4549	4318	countrylanguage-country
6517	4550	4310	countrylanguage-country
6518	4762	4310	countrylanguage-country
6519	4912	4310	countrylanguage-country
6520	5029	4310	countrylanguage-country
6521	4551	4311	countrylanguage-country
6522	4763	4311	countrylanguage-country
\.


--
-- Data for Name: node; Type: TABLE DATA; Schema: public; Owner: radu
--

COPY public.node (id, label) FROM stdin;
1	city
2	city
3	city
4	city
5	city
6	city
7	city
8	city
9	city
10	city
11	city
12	city
13	city
14	city
15	city
16	city
17	city
18	city
19	city
20	city
21	city
22	city
23	city
24	city
25	city
26	city
27	city
28	city
29	city
30	city
31	city
32	city
33	city
34	city
35	city
36	city
37	city
38	city
39	city
40	city
41	city
42	city
43	city
44	city
45	city
46	city
47	city
48	city
49	city
50	city
51	city
52	city
53	city
54	city
55	city
56	city
57	city
58	city
59	city
60	city
61	city
62	city
63	city
64	city
65	city
66	city
67	city
68	city
69	city
70	city
71	city
72	city
73	city
74	city
75	city
76	city
77	city
78	city
79	city
80	city
81	city
82	city
83	city
84	city
85	city
86	city
87	city
88	city
89	city
90	city
91	city
92	city
93	city
94	city
95	city
96	city
97	city
98	city
99	city
100	city
101	city
102	city
103	city
104	city
105	city
106	city
107	city
108	city
109	city
110	city
111	city
112	city
113	city
114	city
115	city
116	city
117	city
118	city
119	city
120	city
121	city
122	city
123	city
124	city
125	city
126	city
127	city
128	city
129	city
130	city
131	city
132	city
133	city
134	city
135	city
136	city
137	city
138	city
139	city
140	city
141	city
142	city
143	city
144	city
145	city
146	city
147	city
148	city
149	city
150	city
151	city
152	city
153	city
154	city
155	city
156	city
157	city
158	city
159	city
160	city
161	city
162	city
163	city
164	city
165	city
166	city
167	city
168	city
169	city
170	city
171	city
172	city
173	city
174	city
175	city
176	city
177	city
178	city
179	city
180	city
181	city
182	city
183	city
184	city
185	city
186	city
187	city
188	city
189	city
190	city
191	city
192	city
193	city
194	city
195	city
196	city
197	city
198	city
199	city
200	city
201	city
202	city
203	city
204	city
205	city
206	city
207	city
208	city
209	city
210	city
211	city
212	city
213	city
214	city
215	city
216	city
217	city
218	city
219	city
220	city
221	city
222	city
223	city
224	city
225	city
226	city
227	city
228	city
229	city
230	city
231	city
232	city
233	city
234	city
235	city
236	city
237	city
238	city
239	city
240	city
241	city
242	city
243	city
244	city
245	city
246	city
247	city
248	city
249	city
250	city
251	city
252	city
253	city
254	city
255	city
256	city
257	city
258	city
259	city
260	city
261	city
262	city
263	city
264	city
265	city
266	city
267	city
268	city
269	city
270	city
271	city
272	city
273	city
274	city
275	city
276	city
277	city
278	city
279	city
280	city
281	city
282	city
283	city
284	city
285	city
286	city
287	city
288	city
289	city
290	city
291	city
292	city
293	city
294	city
295	city
296	city
297	city
298	city
299	city
300	city
301	city
302	city
303	city
304	city
305	city
306	city
307	city
308	city
309	city
310	city
311	city
312	city
313	city
314	city
315	city
316	city
317	city
318	city
319	city
320	city
321	city
322	city
323	city
324	city
325	city
326	city
327	city
328	city
329	city
330	city
331	city
332	city
333	city
334	city
335	city
336	city
337	city
338	city
339	city
340	city
341	city
342	city
343	city
344	city
345	city
346	city
347	city
348	city
349	city
350	city
351	city
352	city
353	city
354	city
355	city
356	city
357	city
358	city
359	city
360	city
361	city
362	city
363	city
364	city
365	city
366	city
367	city
368	city
369	city
370	city
371	city
372	city
373	city
374	city
375	city
376	city
377	city
378	city
379	city
380	city
381	city
382	city
383	city
384	city
385	city
386	city
387	city
388	city
389	city
390	city
391	city
392	city
393	city
394	city
395	city
396	city
397	city
398	city
399	city
400	city
401	city
402	city
403	city
404	city
405	city
406	city
407	city
408	city
409	city
410	city
411	city
412	city
413	city
414	city
415	city
416	city
417	city
418	city
419	city
420	city
421	city
422	city
423	city
424	city
425	city
426	city
427	city
428	city
429	city
430	city
431	city
432	city
433	city
434	city
435	city
436	city
437	city
438	city
439	city
440	city
441	city
442	city
443	city
444	city
445	city
446	city
447	city
448	city
449	city
450	city
451	city
452	city
453	city
454	city
455	city
456	city
457	city
458	city
459	city
460	city
461	city
462	city
463	city
464	city
465	city
466	city
467	city
468	city
469	city
470	city
471	city
472	city
473	city
474	city
475	city
476	city
477	city
478	city
479	city
480	city
481	city
482	city
483	city
484	city
485	city
486	city
487	city
488	city
489	city
490	city
491	city
492	city
493	city
494	city
495	city
496	city
497	city
498	city
499	city
500	city
501	city
502	city
503	city
504	city
505	city
506	city
507	city
508	city
509	city
510	city
511	city
512	city
513	city
514	city
515	city
516	city
517	city
518	city
519	city
520	city
521	city
522	city
523	city
524	city
525	city
526	city
527	city
528	city
529	city
530	city
531	city
532	city
533	city
534	city
535	city
536	city
537	city
538	city
539	city
540	city
541	city
542	city
543	city
544	city
545	city
546	city
547	city
548	city
549	city
550	city
551	city
552	city
553	city
554	city
555	city
556	city
557	city
558	city
559	city
560	city
561	city
562	city
563	city
564	city
565	city
566	city
567	city
568	city
569	city
570	city
571	city
572	city
573	city
574	city
575	city
576	city
577	city
578	city
579	city
580	city
581	city
582	city
583	city
584	city
585	city
586	city
587	city
588	city
589	city
590	city
591	city
592	city
593	city
594	city
595	city
596	city
597	city
598	city
599	city
600	city
601	city
602	city
603	city
604	city
605	city
606	city
607	city
608	city
609	city
610	city
611	city
612	city
613	city
614	city
615	city
616	city
617	city
618	city
619	city
620	city
621	city
622	city
623	city
624	city
625	city
626	city
627	city
628	city
629	city
630	city
631	city
632	city
633	city
634	city
635	city
636	city
637	city
638	city
639	city
640	city
641	city
642	city
643	city
644	city
645	city
646	city
647	city
648	city
649	city
650	city
651	city
652	city
653	city
654	city
655	city
656	city
657	city
658	city
659	city
660	city
661	city
662	city
663	city
664	city
665	city
666	city
667	city
668	city
669	city
670	city
671	city
672	city
673	city
674	city
675	city
676	city
677	city
678	city
679	city
680	city
681	city
682	city
683	city
684	city
685	city
686	city
687	city
688	city
689	city
690	city
691	city
692	city
693	city
694	city
695	city
696	city
697	city
698	city
699	city
700	city
701	city
702	city
703	city
704	city
705	city
706	city
707	city
708	city
709	city
710	city
711	city
712	city
713	city
714	city
715	city
716	city
717	city
718	city
719	city
720	city
721	city
722	city
723	city
724	city
725	city
726	city
727	city
728	city
729	city
730	city
731	city
732	city
733	city
734	city
735	city
736	city
737	city
738	city
739	city
740	city
741	city
742	city
743	city
744	city
745	city
746	city
747	city
748	city
749	city
750	city
751	city
752	city
753	city
754	city
755	city
756	city
757	city
758	city
759	city
760	city
761	city
762	city
763	city
764	city
765	city
766	city
767	city
768	city
769	city
770	city
771	city
772	city
773	city
774	city
775	city
776	city
777	city
778	city
779	city
780	city
781	city
782	city
783	city
784	city
785	city
786	city
787	city
788	city
789	city
790	city
791	city
792	city
793	city
794	city
795	city
796	city
797	city
798	city
799	city
800	city
801	city
802	city
803	city
804	city
805	city
806	city
807	city
808	city
809	city
810	city
811	city
812	city
813	city
814	city
815	city
816	city
817	city
818	city
819	city
820	city
821	city
822	city
823	city
824	city
825	city
826	city
827	city
828	city
829	city
830	city
831	city
832	city
833	city
834	city
835	city
836	city
837	city
838	city
839	city
840	city
841	city
842	city
843	city
844	city
845	city
846	city
847	city
848	city
849	city
850	city
851	city
852	city
853	city
854	city
855	city
856	city
857	city
858	city
859	city
860	city
861	city
862	city
863	city
864	city
865	city
866	city
867	city
868	city
869	city
870	city
871	city
872	city
873	city
874	city
875	city
876	city
877	city
878	city
879	city
880	city
881	city
882	city
883	city
884	city
885	city
886	city
887	city
888	city
889	city
890	city
891	city
892	city
893	city
894	city
895	city
896	city
897	city
898	city
899	city
900	city
901	city
902	city
903	city
904	city
905	city
906	city
907	city
908	city
909	city
910	city
911	city
912	city
913	city
914	city
915	city
916	city
917	city
918	city
919	city
920	city
921	city
922	city
923	city
924	city
925	city
926	city
927	city
928	city
929	city
930	city
931	city
932	city
933	city
934	city
935	city
936	city
937	city
938	city
939	city
940	city
941	city
942	city
943	city
944	city
945	city
946	city
947	city
948	city
949	city
950	city
951	city
952	city
953	city
954	city
955	city
956	city
957	city
958	city
959	city
960	city
961	city
962	city
963	city
964	city
965	city
966	city
967	city
968	city
969	city
970	city
971	city
972	city
973	city
974	city
975	city
976	city
977	city
978	city
979	city
980	city
981	city
982	city
983	city
984	city
985	city
986	city
987	city
988	city
989	city
990	city
991	city
992	city
993	city
994	city
995	city
996	city
997	city
998	city
999	city
1000	city
1001	city
1002	city
1003	city
1004	city
1005	city
1006	city
1007	city
1008	city
1009	city
1010	city
1011	city
1012	city
1013	city
1014	city
1015	city
1016	city
1017	city
1018	city
1019	city
1020	city
1021	city
1022	city
1023	city
1024	city
1025	city
1026	city
1027	city
1028	city
1029	city
1030	city
1031	city
1032	city
1033	city
1034	city
1035	city
1036	city
1037	city
1038	city
1039	city
1040	city
1041	city
1042	city
1043	city
1044	city
1045	city
1046	city
1047	city
1048	city
1049	city
1050	city
1051	city
1052	city
1053	city
1054	city
1055	city
1056	city
1057	city
1058	city
1059	city
1060	city
1061	city
1062	city
1063	city
1064	city
1065	city
1066	city
1067	city
1068	city
1069	city
1070	city
1071	city
1072	city
1073	city
1074	city
1075	city
1076	city
1077	city
1078	city
1079	city
1080	city
1081	city
1082	city
1083	city
1084	city
1085	city
1086	city
1087	city
1088	city
1089	city
1090	city
1091	city
1092	city
1093	city
1094	city
1095	city
1096	city
1097	city
1098	city
1099	city
1100	city
1101	city
1102	city
1103	city
1104	city
1105	city
1106	city
1107	city
1108	city
1109	city
1110	city
1111	city
1112	city
1113	city
1114	city
1115	city
1116	city
1117	city
1118	city
1119	city
1120	city
1121	city
1122	city
1123	city
1124	city
1125	city
1126	city
1127	city
1128	city
1129	city
1130	city
1131	city
1132	city
1133	city
1134	city
1135	city
1136	city
1137	city
1138	city
1139	city
1140	city
1141	city
1142	city
1143	city
1144	city
1145	city
1146	city
1147	city
1148	city
1149	city
1150	city
1151	city
1152	city
1153	city
1154	city
1155	city
1156	city
1157	city
1158	city
1159	city
1160	city
1161	city
1162	city
1163	city
1164	city
1165	city
1166	city
1167	city
1168	city
1169	city
1170	city
1171	city
1172	city
1173	city
1174	city
1175	city
1176	city
1177	city
1178	city
1179	city
1180	city
1181	city
1182	city
1183	city
1184	city
1185	city
1186	city
1187	city
1188	city
1189	city
1190	city
1191	city
1192	city
1193	city
1194	city
1195	city
1196	city
1197	city
1198	city
1199	city
1200	city
1201	city
1202	city
1203	city
1204	city
1205	city
1206	city
1207	city
1208	city
1209	city
1210	city
1211	city
1212	city
1213	city
1214	city
1215	city
1216	city
1217	city
1218	city
1219	city
1220	city
1221	city
1222	city
1223	city
1224	city
1225	city
1226	city
1227	city
1228	city
1229	city
1230	city
1231	city
1232	city
1233	city
1234	city
1235	city
1236	city
1237	city
1238	city
1239	city
1240	city
1241	city
1242	city
1243	city
1244	city
1245	city
1246	city
1247	city
1248	city
1249	city
1250	city
1251	city
1252	city
1253	city
1254	city
1255	city
1256	city
1257	city
1258	city
1259	city
1260	city
1261	city
1262	city
1263	city
1264	city
1265	city
1266	city
1267	city
1268	city
1269	city
1270	city
1271	city
1272	city
1273	city
1274	city
1275	city
1276	city
1277	city
1278	city
1279	city
1280	city
1281	city
1282	city
1283	city
1284	city
1285	city
1286	city
1287	city
1288	city
1289	city
1290	city
1291	city
1292	city
1293	city
1294	city
1295	city
1296	city
1297	city
1298	city
1299	city
1300	city
1301	city
1302	city
1303	city
1304	city
1305	city
1306	city
1307	city
1308	city
1309	city
1310	city
1311	city
1312	city
1313	city
1314	city
1315	city
1316	city
1317	city
1318	city
1319	city
1320	city
1321	city
1322	city
1323	city
1324	city
1325	city
1326	city
1327	city
1328	city
1329	city
1330	city
1331	city
1332	city
1333	city
1334	city
1335	city
1336	city
1337	city
1338	city
1339	city
1340	city
1341	city
1342	city
1343	city
1344	city
1345	city
1346	city
1347	city
1348	city
1349	city
1350	city
1351	city
1352	city
1353	city
1354	city
1355	city
1356	city
1357	city
1358	city
1359	city
1360	city
1361	city
1362	city
1363	city
1364	city
1365	city
1366	city
1367	city
1368	city
1369	city
1370	city
1371	city
1372	city
1373	city
1374	city
1375	city
1376	city
1377	city
1378	city
1379	city
1380	city
1381	city
1382	city
1383	city
1384	city
1385	city
1386	city
1387	city
1388	city
1389	city
1390	city
1391	city
1392	city
1393	city
1394	city
1395	city
1396	city
1397	city
1398	city
1399	city
1400	city
1401	city
1402	city
1403	city
1404	city
1405	city
1406	city
1407	city
1408	city
1409	city
1410	city
1411	city
1412	city
1413	city
1414	city
1415	city
1416	city
1417	city
1418	city
1419	city
1420	city
1421	city
1422	city
1423	city
1424	city
1425	city
1426	city
1427	city
1428	city
1429	city
1430	city
1431	city
1432	city
1433	city
1434	city
1435	city
1436	city
1437	city
1438	city
1439	city
1440	city
1441	city
1442	city
1443	city
1444	city
1445	city
1446	city
1447	city
1448	city
1449	city
1450	city
1451	city
1452	city
1453	city
1454	city
1455	city
1456	city
1457	city
1458	city
1459	city
1460	city
1461	city
1462	city
1463	city
1464	city
1465	city
1466	city
1467	city
1468	city
1469	city
1470	city
1471	city
1472	city
1473	city
1474	city
1475	city
1476	city
1477	city
1478	city
1479	city
1480	city
1481	city
1482	city
1483	city
1484	city
1485	city
1486	city
1487	city
1488	city
1489	city
1490	city
1491	city
1492	city
1493	city
1494	city
1495	city
1496	city
1497	city
1498	city
1499	city
1500	city
1501	city
1502	city
1503	city
1504	city
1505	city
1506	city
1507	city
1508	city
1509	city
1510	city
1511	city
1512	city
1513	city
1514	city
1515	city
1516	city
1517	city
1518	city
1519	city
1520	city
1521	city
1522	city
1523	city
1524	city
1525	city
1526	city
1527	city
1528	city
1529	city
1530	city
1531	city
1532	city
1533	city
1534	city
1535	city
1536	city
1537	city
1538	city
1539	city
1540	city
1541	city
1542	city
1543	city
1544	city
1545	city
1546	city
1547	city
1548	city
1549	city
1550	city
1551	city
1552	city
1553	city
1554	city
1555	city
1556	city
1557	city
1558	city
1559	city
1560	city
1561	city
1562	city
1563	city
1564	city
1565	city
1566	city
1567	city
1568	city
1569	city
1570	city
1571	city
1572	city
1573	city
1574	city
1575	city
1576	city
1577	city
1578	city
1579	city
1580	city
1581	city
1582	city
1583	city
1584	city
1585	city
1586	city
1587	city
1588	city
1589	city
1590	city
1591	city
1592	city
1593	city
1594	city
1595	city
1596	city
1597	city
1598	city
1599	city
1600	city
1601	city
1602	city
1603	city
1604	city
1605	city
1606	city
1607	city
1608	city
1609	city
1610	city
1611	city
1612	city
1613	city
1614	city
1615	city
1616	city
1617	city
1618	city
1619	city
1620	city
1621	city
1622	city
1623	city
1624	city
1625	city
1626	city
1627	city
1628	city
1629	city
1630	city
1631	city
1632	city
1633	city
1634	city
1635	city
1636	city
1637	city
1638	city
1639	city
1640	city
1641	city
1642	city
1643	city
1644	city
1645	city
1646	city
1647	city
1648	city
1649	city
1650	city
1651	city
1652	city
1653	city
1654	city
1655	city
1656	city
1657	city
1658	city
1659	city
1660	city
1661	city
1662	city
1663	city
1664	city
1665	city
1666	city
1667	city
1668	city
1669	city
1670	city
1671	city
1672	city
1673	city
1674	city
1675	city
1676	city
1677	city
1678	city
1679	city
1680	city
1681	city
1682	city
1683	city
1684	city
1685	city
1686	city
1687	city
1688	city
1689	city
1690	city
1691	city
1692	city
1693	city
1694	city
1695	city
1696	city
1697	city
1698	city
1699	city
1700	city
1701	city
1702	city
1703	city
1704	city
1705	city
1706	city
1707	city
1708	city
1709	city
1710	city
1711	city
1712	city
1713	city
1714	city
1715	city
1716	city
1717	city
1718	city
1719	city
1720	city
1721	city
1722	city
1723	city
1724	city
1725	city
1726	city
1727	city
1728	city
1729	city
1730	city
1731	city
1732	city
1733	city
1734	city
1735	city
1736	city
1737	city
1738	city
1739	city
1740	city
1741	city
1742	city
1743	city
1744	city
1745	city
1746	city
1747	city
1748	city
1749	city
1750	city
1751	city
1752	city
1753	city
1754	city
1755	city
1756	city
1757	city
1758	city
1759	city
1760	city
1761	city
1762	city
1763	city
1764	city
1765	city
1766	city
1767	city
1768	city
1769	city
1770	city
1771	city
1772	city
1773	city
1774	city
1775	city
1776	city
1777	city
1778	city
1779	city
1780	city
1781	city
1782	city
1783	city
1784	city
1785	city
1786	city
1787	city
1788	city
1789	city
1790	city
1791	city
1792	city
1793	city
1794	city
1795	city
1796	city
1797	city
1798	city
1799	city
1800	city
1801	city
1802	city
1803	city
1804	city
1805	city
1806	city
1807	city
1808	city
1809	city
1810	city
1811	city
1812	city
1813	city
1814	city
1815	city
1816	city
1817	city
1818	city
1819	city
1820	city
1821	city
1822	city
1823	city
1824	city
1825	city
1826	city
1827	city
1828	city
1829	city
1830	city
1831	city
1832	city
1833	city
1834	city
1835	city
1836	city
1837	city
1838	city
1839	city
1840	city
1841	city
1842	city
1843	city
1844	city
1845	city
1846	city
1847	city
1848	city
1849	city
1850	city
1851	city
1852	city
1853	city
1854	city
1855	city
1856	city
1857	city
1858	city
1859	city
1860	city
1861	city
1862	city
1863	city
1864	city
1865	city
1866	city
1867	city
1868	city
1869	city
1870	city
1871	city
1872	city
1873	city
1874	city
1875	city
1876	city
1877	city
1878	city
1879	city
1880	city
1881	city
1882	city
1883	city
1884	city
1885	city
1886	city
1887	city
1888	city
1889	city
1890	city
1891	city
1892	city
1893	city
1894	city
1895	city
1896	city
1897	city
1898	city
1899	city
1900	city
1901	city
1902	city
1903	city
1904	city
1905	city
1906	city
1907	city
1908	city
1909	city
1910	city
1911	city
1912	city
1913	city
1914	city
1915	city
1916	city
1917	city
1918	city
1919	city
1920	city
1921	city
1922	city
1923	city
1924	city
1925	city
1926	city
1927	city
1928	city
1929	city
1930	city
1931	city
1932	city
1933	city
1934	city
1935	city
1936	city
1937	city
1938	city
1939	city
1940	city
1941	city
1942	city
1943	city
1944	city
1945	city
1946	city
1947	city
1948	city
1949	city
1950	city
1951	city
1952	city
1953	city
1954	city
1955	city
1956	city
1957	city
1958	city
1959	city
1960	city
1961	city
1962	city
1963	city
1964	city
1965	city
1966	city
1967	city
1968	city
1969	city
1970	city
1971	city
1972	city
1973	city
1974	city
1975	city
1976	city
1977	city
1978	city
1979	city
1980	city
1981	city
1982	city
1983	city
1984	city
1985	city
1986	city
1987	city
1988	city
1989	city
1990	city
1991	city
1992	city
1993	city
1994	city
1995	city
1996	city
1997	city
1998	city
1999	city
2000	city
2001	city
2002	city
2003	city
2004	city
2005	city
2006	city
2007	city
2008	city
2009	city
2010	city
2011	city
2012	city
2013	city
2014	city
2015	city
2016	city
2017	city
2018	city
2019	city
2020	city
2021	city
2022	city
2023	city
2024	city
2025	city
2026	city
2027	city
2028	city
2029	city
2030	city
2031	city
2032	city
2033	city
2034	city
2035	city
2036	city
2037	city
2038	city
2039	city
2040	city
2041	city
2042	city
2043	city
2044	city
2045	city
2046	city
2047	city
2048	city
2049	city
2050	city
2051	city
2052	city
2053	city
2054	city
2055	city
2056	city
2057	city
2058	city
2059	city
2060	city
2061	city
2062	city
2063	city
2064	city
2065	city
2066	city
2067	city
2068	city
2069	city
2070	city
2071	city
2072	city
2073	city
2074	city
2075	city
2076	city
2077	city
2078	city
2079	city
2080	city
2081	city
2082	city
2083	city
2084	city
2085	city
2086	city
2087	city
2088	city
2089	city
2090	city
2091	city
2092	city
2093	city
2094	city
2095	city
2096	city
2097	city
2098	city
2099	city
2100	city
2101	city
2102	city
2103	city
2104	city
2105	city
2106	city
2107	city
2108	city
2109	city
2110	city
2111	city
2112	city
2113	city
2114	city
2115	city
2116	city
2117	city
2118	city
2119	city
2120	city
2121	city
2122	city
2123	city
2124	city
2125	city
2126	city
2127	city
2128	city
2129	city
2130	city
2131	city
2132	city
2133	city
2134	city
2135	city
2136	city
2137	city
2138	city
2139	city
2140	city
2141	city
2142	city
2143	city
2144	city
2145	city
2146	city
2147	city
2148	city
2149	city
2150	city
2151	city
2152	city
2153	city
2154	city
2155	city
2156	city
2157	city
2158	city
2159	city
2160	city
2161	city
2162	city
2163	city
2164	city
2165	city
2166	city
2167	city
2168	city
2169	city
2170	city
2171	city
2172	city
2173	city
2174	city
2175	city
2176	city
2177	city
2178	city
2179	city
2180	city
2181	city
2182	city
2183	city
2184	city
2185	city
2186	city
2187	city
2188	city
2189	city
2190	city
2191	city
2192	city
2193	city
2194	city
2195	city
2196	city
2197	city
2198	city
2199	city
2200	city
2201	city
2202	city
2203	city
2204	city
2205	city
2206	city
2207	city
2208	city
2209	city
2210	city
2211	city
2212	city
2213	city
2214	city
2215	city
2216	city
2217	city
2218	city
2219	city
2220	city
2221	city
2222	city
2223	city
2224	city
2225	city
2226	city
2227	city
2228	city
2229	city
2230	city
2231	city
2232	city
2233	city
2234	city
2235	city
2236	city
2237	city
2238	city
2239	city
2240	city
2241	city
2242	city
2243	city
2244	city
2245	city
2246	city
2247	city
2248	city
2249	city
2250	city
2251	city
2252	city
2253	city
2254	city
2255	city
2256	city
2257	city
2258	city
2259	city
2260	city
2261	city
2262	city
2263	city
2264	city
2265	city
2266	city
2267	city
2268	city
2269	city
2270	city
2271	city
2272	city
2273	city
2274	city
2275	city
2276	city
2277	city
2278	city
2279	city
2280	city
2281	city
2282	city
2283	city
2284	city
2285	city
2286	city
2287	city
2288	city
2289	city
2290	city
2291	city
2292	city
2293	city
2294	city
2295	city
2296	city
2297	city
2298	city
2299	city
2300	city
2301	city
2302	city
2303	city
2304	city
2305	city
2306	city
2307	city
2308	city
2309	city
2310	city
2311	city
2312	city
2313	city
2314	city
2315	city
2316	city
2317	city
2318	city
2319	city
2320	city
2321	city
2322	city
2323	city
2324	city
2325	city
2326	city
2327	city
2328	city
2329	city
2330	city
2331	city
2332	city
2333	city
2334	city
2335	city
2336	city
2337	city
2338	city
2339	city
2340	city
2341	city
2342	city
2343	city
2344	city
2345	city
2346	city
2347	city
2348	city
2349	city
2350	city
2351	city
2352	city
2353	city
2354	city
2355	city
2356	city
2357	city
2358	city
2359	city
2360	city
2361	city
2362	city
2363	city
2364	city
2365	city
2366	city
2367	city
2368	city
2369	city
2370	city
2371	city
2372	city
2373	city
2374	city
2375	city
2376	city
2377	city
2378	city
2379	city
2380	city
2381	city
2382	city
2383	city
2384	city
2385	city
2386	city
2387	city
2388	city
2389	city
2390	city
2391	city
2392	city
2393	city
2394	city
2395	city
2396	city
2397	city
2398	city
2399	city
2400	city
2401	city
2402	city
2403	city
2404	city
2405	city
2406	city
2407	city
2408	city
2409	city
2410	city
2411	city
2412	city
2413	city
2414	city
2415	city
2416	city
2417	city
2418	city
2419	city
2420	city
2421	city
2422	city
2423	city
2424	city
2425	city
2426	city
2427	city
2428	city
2429	city
2430	city
2431	city
2432	city
2433	city
2434	city
2435	city
2436	city
2437	city
2438	city
2439	city
2440	city
2441	city
2442	city
2443	city
2444	city
2445	city
2446	city
2447	city
2448	city
2449	city
2450	city
2451	city
2452	city
2453	city
2454	city
2455	city
2456	city
2457	city
2458	city
2459	city
2460	city
2461	city
2462	city
2463	city
2464	city
2465	city
2466	city
2467	city
2468	city
2469	city
2470	city
2471	city
2472	city
2473	city
2474	city
2475	city
2476	city
2477	city
2478	city
2479	city
2480	city
2481	city
2482	city
2483	city
2484	city
2485	city
2486	city
2487	city
2488	city
2489	city
2490	city
2491	city
2492	city
2493	city
2494	city
2495	city
2496	city
2497	city
2498	city
2499	city
2500	city
2501	city
2502	city
2503	city
2504	city
2505	city
2506	city
2507	city
2508	city
2509	city
2510	city
2511	city
2512	city
2513	city
2514	city
2515	city
2516	city
2517	city
2518	city
2519	city
2520	city
2521	city
2522	city
2523	city
2524	city
2525	city
2526	city
2527	city
2528	city
2529	city
2530	city
2531	city
2532	city
2533	city
2534	city
2535	city
2536	city
2537	city
2538	city
2539	city
2540	city
2541	city
2542	city
2543	city
2544	city
2545	city
2546	city
2547	city
2548	city
2549	city
2550	city
2551	city
2552	city
2553	city
2554	city
2555	city
2556	city
2557	city
2558	city
2559	city
2560	city
2561	city
2562	city
2563	city
2564	city
2565	city
2566	city
2567	city
2568	city
2569	city
2570	city
2571	city
2572	city
2573	city
2574	city
2575	city
2576	city
2577	city
2578	city
2579	city
2580	city
2581	city
2582	city
2583	city
2584	city
2585	city
2586	city
2587	city
2588	city
2589	city
2590	city
2591	city
2592	city
2593	city
2594	city
2595	city
2596	city
2597	city
2598	city
2599	city
2600	city
2601	city
2602	city
2603	city
2604	city
2605	city
2606	city
2607	city
2608	city
2609	city
2610	city
2611	city
2612	city
2613	city
2614	city
2615	city
2616	city
2617	city
2618	city
2619	city
2620	city
2621	city
2622	city
2623	city
2624	city
2625	city
2626	city
2627	city
2628	city
2629	city
2630	city
2631	city
2632	city
2633	city
2634	city
2635	city
2636	city
2637	city
2638	city
2639	city
2640	city
2641	city
2642	city
2643	city
2644	city
2645	city
2646	city
2647	city
2648	city
2649	city
2650	city
2651	city
2652	city
2653	city
2654	city
2655	city
2656	city
2657	city
2658	city
2659	city
2660	city
2661	city
2662	city
2663	city
2664	city
2665	city
2666	city
2667	city
2668	city
2669	city
2670	city
2671	city
2672	city
2673	city
2674	city
2675	city
2676	city
2677	city
2678	city
2679	city
2680	city
2681	city
2682	city
2683	city
2684	city
2685	city
2686	city
2687	city
2688	city
2689	city
2690	city
2691	city
2692	city
2693	city
2694	city
2695	city
2696	city
2697	city
2698	city
2699	city
2700	city
2701	city
2702	city
2703	city
2704	city
2705	city
2706	city
2707	city
2708	city
2709	city
2710	city
2711	city
2712	city
2713	city
2714	city
2715	city
2716	city
2717	city
2718	city
2719	city
2720	city
2721	city
2722	city
2723	city
2724	city
2725	city
2726	city
2727	city
2728	city
2729	city
2730	city
2731	city
2732	city
2733	city
2734	city
2735	city
2736	city
2737	city
2738	city
2739	city
2740	city
2741	city
2742	city
2743	city
2744	city
2745	city
2746	city
2747	city
2748	city
2749	city
2750	city
2751	city
2752	city
2753	city
2754	city
2755	city
2756	city
2757	city
2758	city
2759	city
2760	city
2761	city
2762	city
2763	city
2764	city
2765	city
2766	city
2767	city
2768	city
2769	city
2770	city
2771	city
2772	city
2773	city
2774	city
2775	city
2776	city
2777	city
2778	city
2779	city
2780	city
2781	city
2782	city
2783	city
2784	city
2785	city
2786	city
2787	city
2788	city
2789	city
2790	city
2791	city
2792	city
2793	city
2794	city
2795	city
2796	city
2797	city
2798	city
2799	city
2800	city
2801	city
2802	city
2803	city
2804	city
2805	city
2806	city
2807	city
2808	city
2809	city
2810	city
2811	city
2812	city
2813	city
2814	city
2815	city
2816	city
2817	city
2818	city
2819	city
2820	city
2821	city
2822	city
2823	city
2824	city
2825	city
2826	city
2827	city
2828	city
2829	city
2830	city
2831	city
2832	city
2833	city
2834	city
2835	city
2836	city
2837	city
2838	city
2839	city
2840	city
2841	city
2842	city
2843	city
2844	city
2845	city
2846	city
2847	city
2848	city
2849	city
2850	city
2851	city
2852	city
2853	city
2854	city
2855	city
2856	city
2857	city
2858	city
2859	city
2860	city
2861	city
2862	city
2863	city
2864	city
2865	city
2866	city
2867	city
2868	city
2869	city
2870	city
2871	city
2872	city
2873	city
2874	city
2875	city
2876	city
2877	city
2878	city
2879	city
2880	city
2881	city
2882	city
2883	city
2884	city
2885	city
2886	city
2887	city
2888	city
2889	city
2890	city
2891	city
2892	city
2893	city
2894	city
2895	city
2896	city
2897	city
2898	city
2899	city
2900	city
2901	city
2902	city
2903	city
2904	city
2905	city
2906	city
2907	city
2908	city
2909	city
2910	city
2911	city
2912	city
2913	city
2914	city
2915	city
2916	city
2917	city
2918	city
2919	city
2920	city
2921	city
2922	city
2923	city
2924	city
2925	city
2926	city
2927	city
2928	city
2929	city
2930	city
2931	city
2932	city
2933	city
2934	city
2935	city
2936	city
2937	city
2938	city
2939	city
2940	city
2941	city
2942	city
2943	city
2944	city
2945	city
2946	city
2947	city
2948	city
2949	city
2950	city
2951	city
2952	city
2953	city
2954	city
2955	city
2956	city
2957	city
2958	city
2959	city
2960	city
2961	city
2962	city
2963	city
2964	city
2965	city
2966	city
2967	city
2968	city
2969	city
2970	city
2971	city
2972	city
2973	city
2974	city
2975	city
2976	city
2977	city
2978	city
2979	city
2980	city
2981	city
2982	city
2983	city
2984	city
2985	city
2986	city
2987	city
2988	city
2989	city
2990	city
2991	city
2992	city
2993	city
2994	city
2995	city
2996	city
2997	city
2998	city
2999	city
3000	city
3001	city
3002	city
3003	city
3004	city
3005	city
3006	city
3007	city
3008	city
3009	city
3010	city
3011	city
3012	city
3013	city
3014	city
3015	city
3016	city
3017	city
3018	city
3019	city
3020	city
3021	city
3022	city
3023	city
3024	city
3025	city
3026	city
3027	city
3028	city
3029	city
3030	city
3031	city
3032	city
3033	city
3034	city
3035	city
3036	city
3037	city
3038	city
3039	city
3040	city
3041	city
3042	city
3043	city
3044	city
3045	city
3046	city
3047	city
3048	city
3049	city
3050	city
3051	city
3052	city
3053	city
3054	city
3055	city
3056	city
3057	city
3058	city
3059	city
3060	city
3061	city
3062	city
3063	city
3064	city
3065	city
3066	city
3067	city
3068	city
3069	city
3070	city
3071	city
3072	city
3073	city
3074	city
3075	city
3076	city
3077	city
3078	city
3079	city
3080	city
3081	city
3082	city
3083	city
3084	city
3085	city
3086	city
3087	city
3088	city
3089	city
3090	city
3091	city
3092	city
3093	city
3094	city
3095	city
3096	city
3097	city
3098	city
3099	city
3100	city
3101	city
3102	city
3103	city
3104	city
3105	city
3106	city
3107	city
3108	city
3109	city
3110	city
3111	city
3112	city
3113	city
3114	city
3115	city
3116	city
3117	city
3118	city
3119	city
3120	city
3121	city
3122	city
3123	city
3124	city
3125	city
3126	city
3127	city
3128	city
3129	city
3130	city
3131	city
3132	city
3133	city
3134	city
3135	city
3136	city
3137	city
3138	city
3139	city
3140	city
3141	city
3142	city
3143	city
3144	city
3145	city
3146	city
3147	city
3148	city
3149	city
3150	city
3151	city
3152	city
3153	city
3154	city
3155	city
3156	city
3157	city
3158	city
3159	city
3160	city
3161	city
3162	city
3163	city
3164	city
3165	city
3166	city
3167	city
3168	city
3169	city
3170	city
3171	city
3172	city
3173	city
3174	city
3175	city
3176	city
3177	city
3178	city
3179	city
3180	city
3181	city
3182	city
3183	city
3184	city
3185	city
3186	city
3187	city
3188	city
3189	city
3190	city
3191	city
3192	city
3193	city
3194	city
3195	city
3196	city
3197	city
3198	city
3199	city
3200	city
3201	city
3202	city
3203	city
3204	city
3205	city
3206	city
3207	city
3208	city
3209	city
3210	city
3211	city
3212	city
3213	city
3214	city
3215	city
3216	city
3217	city
3218	city
3219	city
3220	city
3221	city
3222	city
3223	city
3224	city
3225	city
3226	city
3227	city
3228	city
3229	city
3230	city
3231	city
3232	city
3233	city
3234	city
3235	city
3236	city
3237	city
3238	city
3239	city
3240	city
3241	city
3242	city
3243	city
3244	city
3245	city
3246	city
3247	city
3248	city
3249	city
3250	city
3251	city
3252	city
3253	city
3254	city
3255	city
3256	city
3257	city
3258	city
3259	city
3260	city
3261	city
3262	city
3263	city
3264	city
3265	city
3266	city
3267	city
3268	city
3269	city
3270	city
3271	city
3272	city
3273	city
3274	city
3275	city
3276	city
3277	city
3278	city
3279	city
3280	city
3281	city
3282	city
3283	city
3284	city
3285	city
3286	city
3287	city
3288	city
3289	city
3290	city
3291	city
3292	city
3293	city
3294	city
3295	city
3296	city
3297	city
3298	city
3299	city
3300	city
3301	city
3302	city
3303	city
3304	city
3305	city
3306	city
3307	city
3308	city
3309	city
3310	city
3311	city
3312	city
3313	city
3314	city
3315	city
3316	city
3317	city
3318	city
3319	city
3320	city
3321	city
3322	city
3323	city
3324	city
3325	city
3326	city
3327	city
3328	city
3329	city
3330	city
3331	city
3332	city
3333	city
3334	city
3335	city
3336	city
3337	city
3338	city
3339	city
3340	city
3341	city
3342	city
3343	city
3344	city
3345	city
3346	city
3347	city
3348	city
3349	city
3350	city
3351	city
3352	city
3353	city
3354	city
3355	city
3356	city
3357	city
3358	city
3359	city
3360	city
3361	city
3362	city
3363	city
3364	city
3365	city
3366	city
3367	city
3368	city
3369	city
3370	city
3371	city
3372	city
3373	city
3374	city
3375	city
3376	city
3377	city
3378	city
3379	city
3380	city
3381	city
3382	city
3383	city
3384	city
3385	city
3386	city
3387	city
3388	city
3389	city
3390	city
3391	city
3392	city
3393	city
3394	city
3395	city
3396	city
3397	city
3398	city
3399	city
3400	city
3401	city
3402	city
3403	city
3404	city
3405	city
3406	city
3407	city
3408	city
3409	city
3410	city
3411	city
3412	city
3413	city
3414	city
3415	city
3416	city
3417	city
3418	city
3419	city
3420	city
3421	city
3422	city
3423	city
3424	city
3425	city
3426	city
3427	city
3428	city
3429	city
3430	city
3431	city
3432	city
3433	city
3434	city
3435	city
3436	city
3437	city
3438	city
3439	city
3440	city
3441	city
3442	city
3443	city
3444	city
3445	city
3446	city
3447	city
3448	city
3449	city
3450	city
3451	city
3452	city
3453	city
3454	city
3455	city
3456	city
3457	city
3458	city
3459	city
3460	city
3461	city
3462	city
3463	city
3464	city
3465	city
3466	city
3467	city
3468	city
3469	city
3470	city
3471	city
3472	city
3473	city
3474	city
3475	city
3476	city
3477	city
3478	city
3479	city
3480	city
3481	city
3482	city
3483	city
3484	city
3485	city
3486	city
3487	city
3488	city
3489	city
3490	city
3491	city
3492	city
3493	city
3494	city
3495	city
3496	city
3497	city
3498	city
3499	city
3500	city
3501	city
3502	city
3503	city
3504	city
3505	city
3506	city
3507	city
3508	city
3509	city
3510	city
3511	city
3512	city
3513	city
3514	city
3515	city
3516	city
3517	city
3518	city
3519	city
3520	city
3521	city
3522	city
3523	city
3524	city
3525	city
3526	city
3527	city
3528	city
3529	city
3530	city
3531	city
3532	city
3533	city
3534	city
3535	city
3536	city
3537	city
3538	city
3539	city
3540	city
3541	city
3542	city
3543	city
3544	city
3545	city
3546	city
3547	city
3548	city
3549	city
3550	city
3551	city
3552	city
3553	city
3554	city
3555	city
3556	city
3557	city
3558	city
3559	city
3560	city
3561	city
3562	city
3563	city
3564	city
3565	city
3566	city
3567	city
3568	city
3569	city
3570	city
3571	city
3572	city
3573	city
3574	city
3575	city
3576	city
3577	city
3578	city
3579	city
3580	city
3581	city
3582	city
3583	city
3584	city
3585	city
3586	city
3587	city
3588	city
3589	city
3590	city
3591	city
3592	city
3593	city
3594	city
3595	city
3596	city
3597	city
3598	city
3599	city
3600	city
3601	city
3602	city
3603	city
3604	city
3605	city
3606	city
3607	city
3608	city
3609	city
3610	city
3611	city
3612	city
3613	city
3614	city
3615	city
3616	city
3617	city
3618	city
3619	city
3620	city
3621	city
3622	city
3623	city
3624	city
3625	city
3626	city
3627	city
3628	city
3629	city
3630	city
3631	city
3632	city
3633	city
3634	city
3635	city
3636	city
3637	city
3638	city
3639	city
3640	city
3641	city
3642	city
3643	city
3644	city
3645	city
3646	city
3647	city
3648	city
3649	city
3650	city
3651	city
3652	city
3653	city
3654	city
3655	city
3656	city
3657	city
3658	city
3659	city
3660	city
3661	city
3662	city
3663	city
3664	city
3665	city
3666	city
3667	city
3668	city
3669	city
3670	city
3671	city
3672	city
3673	city
3674	city
3675	city
3676	city
3677	city
3678	city
3679	city
3680	city
3681	city
3682	city
3683	city
3684	city
3685	city
3686	city
3687	city
3688	city
3689	city
3690	city
3691	city
3692	city
3693	city
3694	city
3695	city
3696	city
3697	city
3698	city
3699	city
3700	city
3701	city
3702	city
3703	city
3704	city
3705	city
3706	city
3707	city
3708	city
3709	city
3710	city
3711	city
3712	city
3713	city
3714	city
3715	city
3716	city
3717	city
3718	city
3719	city
3720	city
3721	city
3722	city
3723	city
3724	city
3725	city
3726	city
3727	city
3728	city
3729	city
3730	city
3731	city
3732	city
3733	city
3734	city
3735	city
3736	city
3737	city
3738	city
3739	city
3740	city
3741	city
3742	city
3743	city
3744	city
3745	city
3746	city
3747	city
3748	city
3749	city
3750	city
3751	city
3752	city
3753	city
3754	city
3755	city
3756	city
3757	city
3758	city
3759	city
3760	city
3761	city
3762	city
3763	city
3764	city
3765	city
3766	city
3767	city
3768	city
3769	city
3770	city
3771	city
3772	city
3773	city
3774	city
3775	city
3776	city
3777	city
3778	city
3779	city
3780	city
3781	city
3782	city
3783	city
3784	city
3785	city
3786	city
3787	city
3788	city
3789	city
3790	city
3791	city
3792	city
3793	city
3794	city
3795	city
3796	city
3797	city
3798	city
3799	city
3800	city
3801	city
3802	city
3803	city
3804	city
3805	city
3806	city
3807	city
3808	city
3809	city
3810	city
3811	city
3812	city
3813	city
3814	city
3815	city
3816	city
3817	city
3818	city
3819	city
3820	city
3821	city
3822	city
3823	city
3824	city
3825	city
3826	city
3827	city
3828	city
3829	city
3830	city
3831	city
3832	city
3833	city
3834	city
3835	city
3836	city
3837	city
3838	city
3839	city
3840	city
3841	city
3842	city
3843	city
3844	city
3845	city
3846	city
3847	city
3848	city
3849	city
3850	city
3851	city
3852	city
3853	city
3854	city
3855	city
3856	city
3857	city
3858	city
3859	city
3860	city
3861	city
3862	city
3863	city
3864	city
3865	city
3866	city
3867	city
3868	city
3869	city
3870	city
3871	city
3872	city
3873	city
3874	city
3875	city
3876	city
3877	city
3878	city
3879	city
3880	city
3881	city
3882	city
3883	city
3884	city
3885	city
3886	city
3887	city
3888	city
3889	city
3890	city
3891	city
3892	city
3893	city
3894	city
3895	city
3896	city
3897	city
3898	city
3899	city
3900	city
3901	city
3902	city
3903	city
3904	city
3905	city
3906	city
3907	city
3908	city
3909	city
3910	city
3911	city
3912	city
3913	city
3914	city
3915	city
3916	city
3917	city
3918	city
3919	city
3920	city
3921	city
3922	city
3923	city
3924	city
3925	city
3926	city
3927	city
3928	city
3929	city
3930	city
3931	city
3932	city
3933	city
3934	city
3935	city
3936	city
3937	city
3938	city
3939	city
3940	city
3941	city
3942	city
3943	city
3944	city
3945	city
3946	city
3947	city
3948	city
3949	city
3950	city
3951	city
3952	city
3953	city
3954	city
3955	city
3956	city
3957	city
3958	city
3959	city
3960	city
3961	city
3962	city
3963	city
3964	city
3965	city
3966	city
3967	city
3968	city
3969	city
3970	city
3971	city
3972	city
3973	city
3974	city
3975	city
3976	city
3977	city
3978	city
3979	city
3980	city
3981	city
3982	city
3983	city
3984	city
3985	city
3986	city
3987	city
3988	city
3989	city
3990	city
3991	city
3992	city
3993	city
3994	city
3995	city
3996	city
3997	city
3998	city
3999	city
4000	city
4001	city
4002	city
4003	city
4004	city
4005	city
4006	city
4007	city
4008	city
4009	city
4010	city
4011	city
4012	city
4013	city
4014	city
4015	city
4016	city
4017	city
4018	city
4019	city
4020	city
4021	city
4022	city
4023	city
4024	city
4025	city
4026	city
4027	city
4028	city
4029	city
4030	city
4031	city
4032	city
4033	city
4034	city
4035	city
4036	city
4037	city
4038	city
4039	city
4040	city
4041	city
4042	city
4043	city
4044	city
4045	city
4046	city
4047	city
4048	city
4049	city
4050	city
4051	city
4052	city
4053	city
4054	city
4055	city
4056	city
4057	city
4058	city
4059	city
4060	city
4061	city
4062	city
4063	city
4064	city
4065	city
4066	city
4067	city
4068	city
4069	city
4070	city
4071	city
4072	city
4073	city
4074	city
4075	city
4076	city
4077	city
4078	city
4079	city
4080	country
4081	country
4082	country
4083	country
4084	country
4085	country
4086	country
4087	country
4088	country
4089	country
4090	country
4091	country
4092	country
4093	country
4094	country
4095	country
4096	country
4097	country
4098	country
4099	country
4100	country
4101	country
4102	country
4103	country
4104	country
4105	country
4106	country
4107	country
4108	country
4109	country
4110	country
4111	country
4112	country
4113	country
4114	country
4115	country
4116	country
4117	country
4118	country
4119	country
4120	country
4121	country
4122	country
4123	country
4124	country
4125	country
4126	country
4127	country
4128	country
4129	country
4130	country
4131	country
4132	country
4133	country
4134	country
4135	country
4136	country
4137	country
4138	country
4139	country
4140	country
4141	country
4142	country
4143	country
4144	country
4145	country
4146	country
4147	country
4148	country
4149	country
4150	country
4151	country
4152	country
4153	country
4154	country
4155	country
4156	country
4157	country
4158	country
4159	country
4160	country
4161	country
4162	country
4163	country
4164	country
4165	country
4166	country
4167	country
4168	country
4169	country
4170	country
4171	country
4172	country
4173	country
4174	country
4175	country
4176	country
4177	country
4178	country
4179	country
4180	country
4181	country
4182	country
4183	country
4184	country
4185	country
4186	country
4187	country
4188	country
4189	country
4190	country
4191	country
4192	country
4193	country
4194	country
4195	country
4196	country
4197	country
4198	country
4199	country
4200	country
4201	country
4202	country
4203	country
4204	country
4205	country
4206	country
4207	country
4208	country
4209	country
4210	country
4211	country
4212	country
4213	country
4214	country
4215	country
4216	country
4217	country
4218	country
4219	country
4220	country
4221	country
4222	country
4223	country
4224	country
4225	country
4226	country
4227	country
4228	country
4229	country
4230	country
4231	country
4232	country
4233	country
4234	country
4235	country
4236	country
4237	country
4238	country
4239	country
4240	country
4241	country
4242	country
4243	country
4244	country
4245	country
4246	country
4247	country
4248	country
4249	country
4250	country
4251	country
4252	country
4253	country
4254	country
4255	country
4256	country
4257	country
4258	country
4259	country
4260	country
4261	country
4262	country
4263	country
4264	country
4265	country
4266	country
4267	country
4268	country
4269	country
4270	country
4271	country
4272	country
4273	country
4274	country
4275	country
4276	country
4277	country
4278	country
4279	country
4280	country
4281	country
4282	country
4283	country
4284	country
4285	country
4286	country
4287	country
4288	country
4289	country
4290	country
4291	country
4292	country
4293	country
4294	country
4295	country
4296	country
4297	country
4298	country
4299	country
4300	country
4301	country
4302	country
4303	country
4304	country
4305	country
4306	country
4307	country
4308	country
4309	country
4310	country
4311	country
4312	country
4313	country
4314	country
4315	country
4316	country
4317	country
4318	country
4319	countrylanguage
4320	countrylanguage
4321	countrylanguage
4322	countrylanguage
4323	countrylanguage
4324	countrylanguage
4325	countrylanguage
4326	countrylanguage
4327	countrylanguage
4328	countrylanguage
4329	countrylanguage
4330	countrylanguage
4331	countrylanguage
4332	countrylanguage
4333	countrylanguage
4334	countrylanguage
4335	countrylanguage
4336	countrylanguage
4337	countrylanguage
4338	countrylanguage
4339	countrylanguage
4340	countrylanguage
4341	countrylanguage
4342	countrylanguage
4343	countrylanguage
4344	countrylanguage
4345	countrylanguage
4346	countrylanguage
4347	countrylanguage
4348	countrylanguage
4349	countrylanguage
4350	countrylanguage
4351	countrylanguage
4352	countrylanguage
4353	countrylanguage
4354	countrylanguage
4355	countrylanguage
4356	countrylanguage
4357	countrylanguage
4358	countrylanguage
4359	countrylanguage
4360	countrylanguage
4361	countrylanguage
4362	countrylanguage
4363	countrylanguage
4364	countrylanguage
4365	countrylanguage
4366	countrylanguage
4367	countrylanguage
4368	countrylanguage
4369	countrylanguage
4370	countrylanguage
4371	countrylanguage
4372	countrylanguage
4373	countrylanguage
4374	countrylanguage
4375	countrylanguage
4376	countrylanguage
4377	countrylanguage
4378	countrylanguage
4379	countrylanguage
4380	countrylanguage
4381	countrylanguage
4382	countrylanguage
4383	countrylanguage
4384	countrylanguage
4385	countrylanguage
4386	countrylanguage
4387	countrylanguage
4388	countrylanguage
4389	countrylanguage
4390	countrylanguage
4391	countrylanguage
4392	countrylanguage
4393	countrylanguage
4394	countrylanguage
4395	countrylanguage
4396	countrylanguage
4397	countrylanguage
4398	countrylanguage
4399	countrylanguage
4400	countrylanguage
4401	countrylanguage
4402	countrylanguage
4403	countrylanguage
4404	countrylanguage
4405	countrylanguage
4406	countrylanguage
4407	countrylanguage
4408	countrylanguage
4409	countrylanguage
4410	countrylanguage
4411	countrylanguage
4412	countrylanguage
4413	countrylanguage
4414	countrylanguage
4415	countrylanguage
4416	countrylanguage
4417	countrylanguage
4418	countrylanguage
4419	countrylanguage
4420	countrylanguage
4421	countrylanguage
4422	countrylanguage
4423	countrylanguage
4424	countrylanguage
4425	countrylanguage
4426	countrylanguage
4427	countrylanguage
4428	countrylanguage
4429	countrylanguage
4430	countrylanguage
4431	countrylanguage
4432	countrylanguage
4433	countrylanguage
4434	countrylanguage
4435	countrylanguage
4436	countrylanguage
4437	countrylanguage
4438	countrylanguage
4439	countrylanguage
4440	countrylanguage
4441	countrylanguage
4442	countrylanguage
4443	countrylanguage
4444	countrylanguage
4445	countrylanguage
4446	countrylanguage
4447	countrylanguage
4448	countrylanguage
4449	countrylanguage
4450	countrylanguage
4451	countrylanguage
4452	countrylanguage
4453	countrylanguage
4454	countrylanguage
4455	countrylanguage
4456	countrylanguage
4457	countrylanguage
4458	countrylanguage
4459	countrylanguage
4460	countrylanguage
4461	countrylanguage
4462	countrylanguage
4463	countrylanguage
4464	countrylanguage
4465	countrylanguage
4466	countrylanguage
4467	countrylanguage
4468	countrylanguage
4469	countrylanguage
4470	countrylanguage
4471	countrylanguage
4472	countrylanguage
4473	countrylanguage
4474	countrylanguage
4475	countrylanguage
4476	countrylanguage
4477	countrylanguage
4478	countrylanguage
4479	countrylanguage
4480	countrylanguage
4481	countrylanguage
4482	countrylanguage
4483	countrylanguage
4484	countrylanguage
4485	countrylanguage
4486	countrylanguage
4487	countrylanguage
4488	countrylanguage
4489	countrylanguage
4490	countrylanguage
4491	countrylanguage
4492	countrylanguage
4493	countrylanguage
4494	countrylanguage
4495	countrylanguage
4496	countrylanguage
4497	countrylanguage
4498	countrylanguage
4499	countrylanguage
4500	countrylanguage
4501	countrylanguage
4502	countrylanguage
4503	countrylanguage
4504	countrylanguage
4505	countrylanguage
4506	countrylanguage
4507	countrylanguage
4508	countrylanguage
4509	countrylanguage
4510	countrylanguage
4511	countrylanguage
4512	countrylanguage
4513	countrylanguage
4514	countrylanguage
4515	countrylanguage
4516	countrylanguage
4517	countrylanguage
4518	countrylanguage
4519	countrylanguage
4520	countrylanguage
4521	countrylanguage
4522	countrylanguage
4523	countrylanguage
4524	countrylanguage
4525	countrylanguage
4526	countrylanguage
4527	countrylanguage
4528	countrylanguage
4529	countrylanguage
4530	countrylanguage
4531	countrylanguage
4532	countrylanguage
4533	countrylanguage
4534	countrylanguage
4535	countrylanguage
4536	countrylanguage
4537	countrylanguage
4538	countrylanguage
4539	countrylanguage
4540	countrylanguage
4541	countrylanguage
4542	countrylanguage
4543	countrylanguage
4544	countrylanguage
4545	countrylanguage
4546	countrylanguage
4547	countrylanguage
4548	countrylanguage
4549	countrylanguage
4550	countrylanguage
4551	countrylanguage
4552	countrylanguage
4553	countrylanguage
4554	countrylanguage
4555	countrylanguage
4556	countrylanguage
4557	countrylanguage
4558	countrylanguage
4559	countrylanguage
4560	countrylanguage
4561	countrylanguage
4562	countrylanguage
4563	countrylanguage
4564	countrylanguage
4565	countrylanguage
4566	countrylanguage
4567	countrylanguage
4568	countrylanguage
4569	countrylanguage
4570	countrylanguage
4571	countrylanguage
4572	countrylanguage
4573	countrylanguage
4574	countrylanguage
4575	countrylanguage
4576	countrylanguage
4577	countrylanguage
4578	countrylanguage
4579	countrylanguage
4580	countrylanguage
4581	countrylanguage
4582	countrylanguage
4583	countrylanguage
4584	countrylanguage
4585	countrylanguage
4586	countrylanguage
4587	countrylanguage
4588	countrylanguage
4589	countrylanguage
4590	countrylanguage
4591	countrylanguage
4592	countrylanguage
4593	countrylanguage
4594	countrylanguage
4595	countrylanguage
4596	countrylanguage
4597	countrylanguage
4598	countrylanguage
4599	countrylanguage
4600	countrylanguage
4601	countrylanguage
4602	countrylanguage
4603	countrylanguage
4604	countrylanguage
4605	countrylanguage
4606	countrylanguage
4607	countrylanguage
4608	countrylanguage
4609	countrylanguage
4610	countrylanguage
4611	countrylanguage
4612	countrylanguage
4613	countrylanguage
4614	countrylanguage
4615	countrylanguage
4616	countrylanguage
4617	countrylanguage
4618	countrylanguage
4619	countrylanguage
4620	countrylanguage
4621	countrylanguage
4622	countrylanguage
4623	countrylanguage
4624	countrylanguage
4625	countrylanguage
4626	countrylanguage
4627	countrylanguage
4628	countrylanguage
4629	countrylanguage
4630	countrylanguage
4631	countrylanguage
4632	countrylanguage
4633	countrylanguage
4634	countrylanguage
4635	countrylanguage
4636	countrylanguage
4637	countrylanguage
4638	countrylanguage
4639	countrylanguage
4640	countrylanguage
4641	countrylanguage
4642	countrylanguage
4643	countrylanguage
4644	countrylanguage
4645	countrylanguage
4646	countrylanguage
4647	countrylanguage
4648	countrylanguage
4649	countrylanguage
4650	countrylanguage
4651	countrylanguage
4652	countrylanguage
4653	countrylanguage
4654	countrylanguage
4655	countrylanguage
4656	countrylanguage
4657	countrylanguage
4658	countrylanguage
4659	countrylanguage
4660	countrylanguage
4661	countrylanguage
4662	countrylanguage
4663	countrylanguage
4664	countrylanguage
4665	countrylanguage
4666	countrylanguage
4667	countrylanguage
4668	countrylanguage
4669	countrylanguage
4670	countrylanguage
4671	countrylanguage
4672	countrylanguage
4673	countrylanguage
4674	countrylanguage
4675	countrylanguage
4676	countrylanguage
4677	countrylanguage
4678	countrylanguage
4679	countrylanguage
4680	countrylanguage
4681	countrylanguage
4682	countrylanguage
4683	countrylanguage
4684	countrylanguage
4685	countrylanguage
4686	countrylanguage
4687	countrylanguage
4688	countrylanguage
4689	countrylanguage
4690	countrylanguage
4691	countrylanguage
4692	countrylanguage
4693	countrylanguage
4694	countrylanguage
4695	countrylanguage
4696	countrylanguage
4697	countrylanguage
4698	countrylanguage
4699	countrylanguage
4700	countrylanguage
4701	countrylanguage
4702	countrylanguage
4703	countrylanguage
4704	countrylanguage
4705	countrylanguage
4706	countrylanguage
4707	countrylanguage
4708	countrylanguage
4709	countrylanguage
4710	countrylanguage
4711	countrylanguage
4712	countrylanguage
4713	countrylanguage
4714	countrylanguage
4715	countrylanguage
4716	countrylanguage
4717	countrylanguage
4718	countrylanguage
4719	countrylanguage
4720	countrylanguage
4721	countrylanguage
4722	countrylanguage
4723	countrylanguage
4724	countrylanguage
4725	countrylanguage
4726	countrylanguage
4727	countrylanguage
4728	countrylanguage
4729	countrylanguage
4730	countrylanguage
4731	countrylanguage
4732	countrylanguage
4733	countrylanguage
4734	countrylanguage
4735	countrylanguage
4736	countrylanguage
4737	countrylanguage
4738	countrylanguage
4739	countrylanguage
4740	countrylanguage
4741	countrylanguage
4742	countrylanguage
4743	countrylanguage
4744	countrylanguage
4745	countrylanguage
4746	countrylanguage
4747	countrylanguage
4748	countrylanguage
4749	countrylanguage
4750	countrylanguage
4751	countrylanguage
4752	countrylanguage
4753	countrylanguage
4754	countrylanguage
4755	countrylanguage
4756	countrylanguage
4757	countrylanguage
4758	countrylanguage
4759	countrylanguage
4760	countrylanguage
4761	countrylanguage
4762	countrylanguage
4763	countrylanguage
4764	countrylanguage
4765	countrylanguage
4766	countrylanguage
4767	countrylanguage
4768	countrylanguage
4769	countrylanguage
4770	countrylanguage
4771	countrylanguage
4772	countrylanguage
4773	countrylanguage
4774	countrylanguage
4775	countrylanguage
4776	countrylanguage
4777	countrylanguage
4778	countrylanguage
4779	countrylanguage
4780	countrylanguage
4781	countrylanguage
4782	countrylanguage
4783	countrylanguage
4784	countrylanguage
4785	countrylanguage
4786	countrylanguage
4787	countrylanguage
4788	countrylanguage
4789	countrylanguage
4790	countrylanguage
4791	countrylanguage
4792	countrylanguage
4793	countrylanguage
4794	countrylanguage
4795	countrylanguage
4796	countrylanguage
4797	countrylanguage
4798	countrylanguage
4799	countrylanguage
4800	countrylanguage
4801	countrylanguage
4802	countrylanguage
4803	countrylanguage
4804	countrylanguage
4805	countrylanguage
4806	countrylanguage
4807	countrylanguage
4808	countrylanguage
4809	countrylanguage
4810	countrylanguage
4811	countrylanguage
4812	countrylanguage
4813	countrylanguage
4814	countrylanguage
4815	countrylanguage
4816	countrylanguage
4817	countrylanguage
4818	countrylanguage
4819	countrylanguage
4820	countrylanguage
4821	countrylanguage
4822	countrylanguage
4823	countrylanguage
4824	countrylanguage
4825	countrylanguage
4826	countrylanguage
4827	countrylanguage
4828	countrylanguage
4829	countrylanguage
4830	countrylanguage
4831	countrylanguage
4832	countrylanguage
4833	countrylanguage
4834	countrylanguage
4835	countrylanguage
4836	countrylanguage
4837	countrylanguage
4838	countrylanguage
4839	countrylanguage
4840	countrylanguage
4841	countrylanguage
4842	countrylanguage
4843	countrylanguage
4844	countrylanguage
4845	countrylanguage
4846	countrylanguage
4847	countrylanguage
4848	countrylanguage
4849	countrylanguage
4850	countrylanguage
4851	countrylanguage
4852	countrylanguage
4853	countrylanguage
4854	countrylanguage
4855	countrylanguage
4856	countrylanguage
4857	countrylanguage
4858	countrylanguage
4859	countrylanguage
4860	countrylanguage
4861	countrylanguage
4862	countrylanguage
4863	countrylanguage
4864	countrylanguage
4865	countrylanguage
4866	countrylanguage
4867	countrylanguage
4868	countrylanguage
4869	countrylanguage
4870	countrylanguage
4871	countrylanguage
4872	countrylanguage
4873	countrylanguage
4874	countrylanguage
4875	countrylanguage
4876	countrylanguage
4877	countrylanguage
4878	countrylanguage
4879	countrylanguage
4880	countrylanguage
4881	countrylanguage
4882	countrylanguage
4883	countrylanguage
4884	countrylanguage
4885	countrylanguage
4886	countrylanguage
4887	countrylanguage
4888	countrylanguage
4889	countrylanguage
4890	countrylanguage
4891	countrylanguage
4892	countrylanguage
4893	countrylanguage
4894	countrylanguage
4895	countrylanguage
4896	countrylanguage
4897	countrylanguage
4898	countrylanguage
4899	countrylanguage
4900	countrylanguage
4901	countrylanguage
4902	countrylanguage
4903	countrylanguage
4904	countrylanguage
4905	countrylanguage
4906	countrylanguage
4907	countrylanguage
4908	countrylanguage
4909	countrylanguage
4910	countrylanguage
4911	countrylanguage
4912	countrylanguage
4913	countrylanguage
4914	countrylanguage
4915	countrylanguage
4916	countrylanguage
4917	countrylanguage
4918	countrylanguage
4919	countrylanguage
4920	countrylanguage
4921	countrylanguage
4922	countrylanguage
4923	countrylanguage
4924	countrylanguage
4925	countrylanguage
4926	countrylanguage
4927	countrylanguage
4928	countrylanguage
4929	countrylanguage
4930	countrylanguage
4931	countrylanguage
4932	countrylanguage
4933	countrylanguage
4934	countrylanguage
4935	countrylanguage
4936	countrylanguage
4937	countrylanguage
4938	countrylanguage
4939	countrylanguage
4940	countrylanguage
4941	countrylanguage
4942	countrylanguage
4943	countrylanguage
4944	countrylanguage
4945	countrylanguage
4946	countrylanguage
4947	countrylanguage
4948	countrylanguage
4949	countrylanguage
4950	countrylanguage
4951	countrylanguage
4952	countrylanguage
4953	countrylanguage
4954	countrylanguage
4955	countrylanguage
4956	countrylanguage
4957	countrylanguage
4958	countrylanguage
4959	countrylanguage
4960	countrylanguage
4961	countrylanguage
4962	countrylanguage
4963	countrylanguage
4964	countrylanguage
4965	countrylanguage
4966	countrylanguage
4967	countrylanguage
4968	countrylanguage
4969	countrylanguage
4970	countrylanguage
4971	countrylanguage
4972	countrylanguage
4973	countrylanguage
4974	countrylanguage
4975	countrylanguage
4976	countrylanguage
4977	countrylanguage
4978	countrylanguage
4979	countrylanguage
4980	countrylanguage
4981	countrylanguage
4982	countrylanguage
4983	countrylanguage
4984	countrylanguage
4985	countrylanguage
4986	countrylanguage
4987	countrylanguage
4988	countrylanguage
4989	countrylanguage
4990	countrylanguage
4991	countrylanguage
4992	countrylanguage
4993	countrylanguage
4994	countrylanguage
4995	countrylanguage
4996	countrylanguage
4997	countrylanguage
4998	countrylanguage
4999	countrylanguage
5000	countrylanguage
5001	countrylanguage
5002	countrylanguage
5003	countrylanguage
5004	countrylanguage
5005	countrylanguage
5006	countrylanguage
5007	countrylanguage
5008	countrylanguage
5009	countrylanguage
5010	countrylanguage
5011	countrylanguage
5012	countrylanguage
5013	countrylanguage
5014	countrylanguage
5015	countrylanguage
5016	countrylanguage
5017	countrylanguage
5018	countrylanguage
5019	countrylanguage
5020	countrylanguage
5021	countrylanguage
5022	countrylanguage
5023	countrylanguage
5024	countrylanguage
5025	countrylanguage
5026	countrylanguage
5027	countrylanguage
5028	countrylanguage
5029	countrylanguage
5030	countrylanguage
5031	countrylanguage
5032	countrylanguage
5033	countrylanguage
5034	countrylanguage
5035	countrylanguage
5036	countrylanguage
5037	countrylanguage
5038	countrylanguage
5039	countrylanguage
5040	countrylanguage
5041	countrylanguage
5042	countrylanguage
5043	countrylanguage
5044	countrylanguage
5045	countrylanguage
5046	countrylanguage
5047	countrylanguage
5048	countrylanguage
5049	countrylanguage
5050	countrylanguage
5051	countrylanguage
5052	countrylanguage
5053	countrylanguage
5054	countrylanguage
5055	countrylanguage
5056	countrylanguage
5057	countrylanguage
5058	countrylanguage
5059	countrylanguage
5060	countrylanguage
5061	countrylanguage
5062	countrylanguage
5063	countrylanguage
5064	countrylanguage
5065	countrylanguage
5066	countrylanguage
5067	countrylanguage
5068	countrylanguage
5069	countrylanguage
5070	countrylanguage
5071	countrylanguage
5072	countrylanguage
5073	countrylanguage
5074	countrylanguage
5075	countrylanguage
5076	countrylanguage
5077	countrylanguage
5078	countrylanguage
5079	countrylanguage
5080	countrylanguage
5081	countrylanguage
5082	countrylanguage
5083	countrylanguage
5084	countrylanguage
5085	countrylanguage
5086	countrylanguage
5087	countrylanguage
5088	countrylanguage
5089	countrylanguage
5090	countrylanguage
5091	countrylanguage
5092	countrylanguage
5093	countrylanguage
5094	countrylanguage
5095	countrylanguage
5096	countrylanguage
5097	countrylanguage
5098	countrylanguage
5099	countrylanguage
5100	countrylanguage
5101	countrylanguage
5102	countrylanguage
5103	countrylanguage
5104	countrylanguage
5105	countrylanguage
5106	countrylanguage
5107	countrylanguage
5108	countrylanguage
5109	countrylanguage
5110	countrylanguage
5111	countrylanguage
5112	countrylanguage
5113	countrylanguage
5114	countrylanguage
5115	countrylanguage
5116	countrylanguage
5117	countrylanguage
5118	countrylanguage
5119	countrylanguage
5120	countrylanguage
5121	countrylanguage
5122	countrylanguage
5123	countrylanguage
5124	countrylanguage
5125	countrylanguage
5126	countrylanguage
5127	countrylanguage
5128	countrylanguage
5129	countrylanguage
5130	countrylanguage
5131	countrylanguage
5132	countrylanguage
5133	countrylanguage
5134	countrylanguage
5135	countrylanguage
5136	countrylanguage
5137	countrylanguage
5138	countrylanguage
5139	countrylanguage
5140	countrylanguage
5141	countrylanguage
5142	countrylanguage
5143	countrylanguage
5144	countrylanguage
5145	countrylanguage
5146	countrylanguage
5147	countrylanguage
5148	countrylanguage
5149	countrylanguage
5150	countrylanguage
5151	countrylanguage
5152	countrylanguage
5153	countrylanguage
5154	countrylanguage
5155	countrylanguage
5156	countrylanguage
5157	countrylanguage
5158	countrylanguage
5159	countrylanguage
5160	countrylanguage
5161	countrylanguage
5162	countrylanguage
5163	countrylanguage
5164	countrylanguage
5165	countrylanguage
5166	countrylanguage
5167	countrylanguage
5168	countrylanguage
5169	countrylanguage
5170	countrylanguage
5171	countrylanguage
5172	countrylanguage
5173	countrylanguage
5174	countrylanguage
5175	countrylanguage
5176	countrylanguage
5177	countrylanguage
5178	countrylanguage
5179	countrylanguage
5180	countrylanguage
5181	countrylanguage
5182	countrylanguage
5183	countrylanguage
5184	countrylanguage
5185	countrylanguage
5186	countrylanguage
5187	countrylanguage
5188	countrylanguage
5189	countrylanguage
5190	countrylanguage
5191	countrylanguage
5192	countrylanguage
5193	countrylanguage
5194	countrylanguage
5195	countrylanguage
5196	countrylanguage
5197	countrylanguage
5198	countrylanguage
5199	countrylanguage
5200	countrylanguage
5201	countrylanguage
5202	countrylanguage
5203	countrylanguage
5204	countrylanguage
5205	countrylanguage
5206	countrylanguage
5207	countrylanguage
5208	countrylanguage
5209	countrylanguage
5210	countrylanguage
5211	countrylanguage
5212	countrylanguage
5213	countrylanguage
5214	countrylanguage
5215	countrylanguage
5216	countrylanguage
5217	countrylanguage
5218	countrylanguage
5219	countrylanguage
5220	countrylanguage
5221	countrylanguage
5222	countrylanguage
5223	countrylanguage
5224	countrylanguage
5225	countrylanguage
5226	countrylanguage
5227	countrylanguage
5228	countrylanguage
5229	countrylanguage
5230	countrylanguage
5231	countrylanguage
5232	countrylanguage
5233	countrylanguage
5234	countrylanguage
5235	countrylanguage
5236	countrylanguage
5237	countrylanguage
5238	countrylanguage
5239	countrylanguage
5240	countrylanguage
5241	countrylanguage
5242	countrylanguage
5243	countrylanguage
5244	countrylanguage
5245	countrylanguage
5246	countrylanguage
5247	countrylanguage
5248	countrylanguage
5249	countrylanguage
5250	countrylanguage
5251	countrylanguage
5252	countrylanguage
5253	countrylanguage
5254	countrylanguage
5255	countrylanguage
5256	countrylanguage
5257	countrylanguage
5258	countrylanguage
5259	countrylanguage
5260	countrylanguage
5261	countrylanguage
5262	countrylanguage
5263	countrylanguage
5264	countrylanguage
5265	countrylanguage
5266	countrylanguage
5267	countrylanguage
5268	countrylanguage
5269	countrylanguage
5270	countrylanguage
5271	countrylanguage
5272	countrylanguage
5273	countrylanguage
5274	countrylanguage
5275	countrylanguage
5276	countrylanguage
5277	countrylanguage
5278	countrylanguage
5279	countrylanguage
5280	countrylanguage
5281	countrylanguage
5282	countrylanguage
5283	countrylanguage
5284	countrylanguage
5285	countrylanguage
5286	countrylanguage
5287	countrylanguage
5288	countrylanguage
5289	countrylanguage
5290	countrylanguage
5291	countrylanguage
5292	countrylanguage
5293	countrylanguage
5294	countrylanguage
5295	countrylanguage
5296	countrylanguage
5297	countrylanguage
5298	countrylanguage
5299	countrylanguage
5300	countrylanguage
5301	countrylanguage
5302	countrylanguage
\.


--
-- Data for Name: property; Type: TABLE DATA; Schema: public; Owner: radu
--

COPY public.property (id, key, value) FROM stdin;
1	id	1
1	name	Kabul
1	countrycode	AFG
1	district	Kabol
1	population	1780000
2	id	2
2	name	Qandahar
2	countrycode	AFG
2	district	Qandahar
2	population	237500
3	id	3
3	name	Herat
3	countrycode	AFG
3	district	Herat
3	population	186800
4	id	4
4	name	Mazar-e-Sharif
4	countrycode	AFG
4	district	Balkh
4	population	127800
5	id	5
5	name	Amsterdam
5	countrycode	NLD
5	district	Noord-Holland
5	population	731200
6	id	6
6	name	Rotterdam
6	countrycode	NLD
6	district	Zuid-Holland
6	population	593321
7	id	7
7	name	Haag
7	countrycode	NLD
7	district	Zuid-Holland
7	population	440900
8	id	8
8	name	Utrecht
8	countrycode	NLD
8	district	Utrecht
8	population	234323
9	id	9
9	name	Eindhoven
9	countrycode	NLD
9	district	Noord-Brabant
9	population	201843
10	id	10
10	name	Tilburg
10	countrycode	NLD
10	district	Noord-Brabant
10	population	193238
11	id	11
11	name	Groningen
11	countrycode	NLD
11	district	Groningen
11	population	172701
12	id	12
12	name	Breda
12	countrycode	NLD
12	district	Noord-Brabant
12	population	160398
13	id	13
13	name	Apeldoorn
13	countrycode	NLD
13	district	Gelderland
13	population	153491
14	id	14
14	name	Nijmegen
14	countrycode	NLD
14	district	Gelderland
14	population	152463
15	id	15
15	name	Enschede
15	countrycode	NLD
15	district	Overijssel
15	population	149544
16	id	16
16	name	Haarlem
16	countrycode	NLD
16	district	Noord-Holland
16	population	148772
17	id	17
17	name	Almere
17	countrycode	NLD
17	district	Flevoland
17	population	142465
18	id	18
18	name	Arnhem
18	countrycode	NLD
18	district	Gelderland
18	population	138020
19	id	19
19	name	Zaanstad
19	countrycode	NLD
19	district	Noord-Holland
19	population	135621
20	id	20
20	name	´s-Hertogenbosch
20	countrycode	NLD
20	district	Noord-Brabant
20	population	129170
21	id	21
21	name	Amersfoort
21	countrycode	NLD
21	district	Utrecht
21	population	126270
22	id	22
22	name	Maastricht
22	countrycode	NLD
22	district	Limburg
22	population	122087
23	id	23
23	name	Dordrecht
23	countrycode	NLD
23	district	Zuid-Holland
23	population	119811
24	id	24
24	name	Leiden
24	countrycode	NLD
24	district	Zuid-Holland
24	population	117196
25	id	25
25	name	Haarlemmermeer
25	countrycode	NLD
25	district	Noord-Holland
25	population	110722
26	id	26
26	name	Zoetermeer
26	countrycode	NLD
26	district	Zuid-Holland
26	population	110214
27	id	27
27	name	Emmen
27	countrycode	NLD
27	district	Drenthe
27	population	105853
28	id	28
28	name	Zwolle
28	countrycode	NLD
28	district	Overijssel
28	population	105819
29	id	29
29	name	Ede
29	countrycode	NLD
29	district	Gelderland
29	population	101574
30	id	30
30	name	Delft
30	countrycode	NLD
30	district	Zuid-Holland
30	population	95268
31	id	31
31	name	Heerlen
31	countrycode	NLD
31	district	Limburg
31	population	95052
32	id	32
32	name	Alkmaar
32	countrycode	NLD
32	district	Noord-Holland
32	population	92713
33	id	33
33	name	Willemstad
33	countrycode	ANT
33	district	Curaçao
33	population	2345
34	id	34
34	name	Tirana
34	countrycode	ALB
34	district	Tirana
34	population	270000
35	id	35
35	name	Alger
35	countrycode	DZA
35	district	Alger
35	population	2168000
36	id	36
36	name	Oran
36	countrycode	DZA
36	district	Oran
36	population	609823
37	id	37
37	name	Constantine
37	countrycode	DZA
37	district	Constantine
37	population	443727
38	id	38
38	name	Annaba
38	countrycode	DZA
38	district	Annaba
38	population	222518
39	id	39
39	name	Batna
39	countrycode	DZA
39	district	Batna
39	population	183377
40	id	40
40	name	Sétif
40	countrycode	DZA
40	district	Sétif
40	population	179055
41	id	41
41	name	Sidi Bel Abbès
41	countrycode	DZA
41	district	Sidi Bel Abbès
41	population	153106
42	id	42
42	name	Skikda
42	countrycode	DZA
42	district	Skikda
42	population	128747
43	id	43
43	name	Biskra
43	countrycode	DZA
43	district	Biskra
43	population	128281
44	id	44
44	name	Blida (el-Boulaida)
44	countrycode	DZA
44	district	Blida
44	population	127284
45	id	45
45	name	Béjaïa
45	countrycode	DZA
45	district	Béjaïa
45	population	117162
46	id	46
46	name	Mostaganem
46	countrycode	DZA
46	district	Mostaganem
46	population	115212
47	id	47
47	name	Tébessa
47	countrycode	DZA
47	district	Tébessa
47	population	112007
48	id	48
48	name	Tlemcen (Tilimsen)
48	countrycode	DZA
48	district	Tlemcen
48	population	110242
49	id	49
49	name	Béchar
49	countrycode	DZA
49	district	Béchar
49	population	107311
50	id	50
50	name	Tiaret
50	countrycode	DZA
50	district	Tiaret
50	population	100118
51	id	51
51	name	Ech-Chleff (el-Asnam)
51	countrycode	DZA
51	district	Chlef
51	population	96794
52	id	52
52	name	Ghardaïa
52	countrycode	DZA
52	district	Ghardaïa
52	population	89415
53	id	53
53	name	Tafuna
53	countrycode	ASM
53	district	Tutuila
53	population	5200
54	id	54
54	name	Fagatogo
54	countrycode	ASM
54	district	Tutuila
54	population	2323
55	id	55
55	name	Andorra la Vella
55	countrycode	AND
55	district	Andorra la Vella
55	population	21189
56	id	56
56	name	Luanda
56	countrycode	AGO
56	district	Luanda
56	population	2022000
57	id	57
57	name	Huambo
57	countrycode	AGO
57	district	Huambo
57	population	163100
58	id	58
58	name	Lobito
58	countrycode	AGO
58	district	Benguela
58	population	130000
59	id	59
59	name	Benguela
59	countrycode	AGO
59	district	Benguela
59	population	128300
60	id	60
60	name	Namibe
60	countrycode	AGO
60	district	Namibe
60	population	118200
61	id	61
61	name	South Hill
61	countrycode	AIA
61	district	
61	population	961
62	id	62
62	name	The Valley
62	countrycode	AIA
62	district	
62	population	595
63	id	63
63	name	Saint John´s
63	countrycode	ATG
63	district	St John
63	population	24000
64	id	64
64	name	Dubai
64	countrycode	ARE
64	district	Dubai
64	population	669181
65	id	65
65	name	Abu Dhabi
65	countrycode	ARE
65	district	Abu Dhabi
65	population	398695
66	id	66
66	name	Sharja
66	countrycode	ARE
66	district	Sharja
66	population	320095
67	id	67
67	name	al-Ayn
67	countrycode	ARE
67	district	Abu Dhabi
67	population	225970
68	id	68
68	name	Ajman
68	countrycode	ARE
68	district	Ajman
68	population	114395
69	id	69
69	name	Buenos Aires
69	countrycode	ARG
69	district	Distrito Federal
69	population	2982146
70	id	70
70	name	La Matanza
70	countrycode	ARG
70	district	Buenos Aires
70	population	1266461
71	id	71
71	name	Córdoba
71	countrycode	ARG
71	district	Córdoba
71	population	1157507
72	id	72
72	name	Rosario
72	countrycode	ARG
72	district	Santa Fé
72	population	907718
73	id	73
73	name	Lomas de Zamora
73	countrycode	ARG
73	district	Buenos Aires
73	population	622013
74	id	74
74	name	Quilmes
74	countrycode	ARG
74	district	Buenos Aires
74	population	559249
75	id	75
75	name	Almirante Brown
75	countrycode	ARG
75	district	Buenos Aires
75	population	538918
76	id	76
76	name	La Plata
76	countrycode	ARG
76	district	Buenos Aires
76	population	521936
77	id	77
77	name	Mar del Plata
77	countrycode	ARG
77	district	Buenos Aires
77	population	512880
78	id	78
78	name	San Miguel de Tucumán
78	countrycode	ARG
78	district	Tucumán
78	population	470809
79	id	79
79	name	Lanús
79	countrycode	ARG
79	district	Buenos Aires
79	population	469735
80	id	80
80	name	Merlo
80	countrycode	ARG
80	district	Buenos Aires
80	population	463846
81	id	81
81	name	General San Martín
81	countrycode	ARG
81	district	Buenos Aires
81	population	422542
82	id	82
82	name	Salta
82	countrycode	ARG
82	district	Salta
82	population	367550
83	id	83
83	name	Moreno
83	countrycode	ARG
83	district	Buenos Aires
83	population	356993
84	id	84
84	name	Santa Fé
84	countrycode	ARG
84	district	Santa Fé
84	population	353063
85	id	85
85	name	Avellaneda
85	countrycode	ARG
85	district	Buenos Aires
85	population	353046
86	id	86
86	name	Tres de Febrero
86	countrycode	ARG
86	district	Buenos Aires
86	population	352311
87	id	87
87	name	Morón
87	countrycode	ARG
87	district	Buenos Aires
87	population	349246
88	id	88
88	name	Florencio Varela
88	countrycode	ARG
88	district	Buenos Aires
88	population	315432
89	id	89
89	name	San Isidro
89	countrycode	ARG
89	district	Buenos Aires
89	population	306341
90	id	90
90	name	Tigre
90	countrycode	ARG
90	district	Buenos Aires
90	population	296226
91	id	91
91	name	Malvinas Argentinas
91	countrycode	ARG
91	district	Buenos Aires
91	population	290335
92	id	92
92	name	Vicente López
92	countrycode	ARG
92	district	Buenos Aires
92	population	288341
93	id	93
93	name	Berazategui
93	countrycode	ARG
93	district	Buenos Aires
93	population	276916
94	id	94
94	name	Corrientes
94	countrycode	ARG
94	district	Corrientes
94	population	258103
95	id	95
95	name	San Miguel
95	countrycode	ARG
95	district	Buenos Aires
95	population	248700
96	id	96
96	name	Bahía Blanca
96	countrycode	ARG
96	district	Buenos Aires
96	population	239810
97	id	97
97	name	Esteban Echeverría
97	countrycode	ARG
97	district	Buenos Aires
97	population	235760
98	id	98
98	name	Resistencia
98	countrycode	ARG
98	district	Chaco
98	population	229212
99	id	99
99	name	José C. Paz
99	countrycode	ARG
99	district	Buenos Aires
99	population	221754
100	id	100
100	name	Paraná
100	countrycode	ARG
100	district	Entre Rios
100	population	207041
101	id	101
101	name	Godoy Cruz
101	countrycode	ARG
101	district	Mendoza
101	population	206998
102	id	102
102	name	Posadas
102	countrycode	ARG
102	district	Misiones
102	population	201273
103	id	103
103	name	Guaymallén
103	countrycode	ARG
103	district	Mendoza
103	population	200595
104	id	104
104	name	Santiago del Estero
104	countrycode	ARG
104	district	Santiago del Estero
104	population	189947
105	id	105
105	name	San Salvador de Jujuy
105	countrycode	ARG
105	district	Jujuy
105	population	178748
106	id	106
106	name	Hurlingham
106	countrycode	ARG
106	district	Buenos Aires
106	population	170028
107	id	107
107	name	Neuquén
107	countrycode	ARG
107	district	Neuquén
107	population	167296
108	id	108
108	name	Ituzaingó
108	countrycode	ARG
108	district	Buenos Aires
108	population	158197
109	id	109
109	name	San Fernando
109	countrycode	ARG
109	district	Buenos Aires
109	population	153036
110	id	110
110	name	Formosa
110	countrycode	ARG
110	district	Formosa
110	population	147636
111	id	111
111	name	Las Heras
111	countrycode	ARG
111	district	Mendoza
111	population	145823
112	id	112
112	name	La Rioja
112	countrycode	ARG
112	district	La Rioja
112	population	138117
113	id	113
113	name	San Fernando del Valle de Cata
113	countrycode	ARG
113	district	Catamarca
113	population	134935
114	id	114
114	name	Río Cuarto
114	countrycode	ARG
114	district	Córdoba
114	population	134355
115	id	115
115	name	Comodoro Rivadavia
115	countrycode	ARG
115	district	Chubut
115	population	124104
116	id	116
116	name	Mendoza
116	countrycode	ARG
116	district	Mendoza
116	population	123027
117	id	117
117	name	San Nicolás de los Arroyos
117	countrycode	ARG
117	district	Buenos Aires
117	population	119302
118	id	118
118	name	San Juan
118	countrycode	ARG
118	district	San Juan
118	population	119152
119	id	119
119	name	Escobar
119	countrycode	ARG
119	district	Buenos Aires
119	population	116675
120	id	120
120	name	Concordia
120	countrycode	ARG
120	district	Entre Rios
120	population	116485
121	id	121
121	name	Pilar
121	countrycode	ARG
121	district	Buenos Aires
121	population	113428
122	id	122
122	name	San Luis
122	countrycode	ARG
122	district	San Luis
122	population	110136
123	id	123
123	name	Ezeiza
123	countrycode	ARG
123	district	Buenos Aires
123	population	99578
124	id	124
124	name	San Rafael
124	countrycode	ARG
124	district	Mendoza
124	population	94651
125	id	125
125	name	Tandil
125	countrycode	ARG
125	district	Buenos Aires
125	population	91101
126	id	126
126	name	Yerevan
126	countrycode	ARM
126	district	Yerevan
126	population	1248700
127	id	127
127	name	Gjumri
127	countrycode	ARM
127	district	irak
127	population	211700
128	id	128
128	name	Vanadzor
128	countrycode	ARM
128	district	Lori
128	population	172700
129	id	129
129	name	Oranjestad
129	countrycode	ABW
129	district	
129	population	29034
130	id	130
130	name	Sydney
130	countrycode	AUS
130	district	New South Wales
130	population	3276207
131	id	131
131	name	Melbourne
131	countrycode	AUS
131	district	Victoria
131	population	2865329
132	id	132
132	name	Brisbane
132	countrycode	AUS
132	district	Queensland
132	population	1291117
133	id	133
133	name	Perth
133	countrycode	AUS
133	district	West Australia
133	population	1096829
134	id	134
134	name	Adelaide
134	countrycode	AUS
134	district	South Australia
134	population	978100
135	id	135
135	name	Canberra
135	countrycode	AUS
135	district	Capital Region
135	population	322723
136	id	136
136	name	Gold Coast
136	countrycode	AUS
136	district	Queensland
136	population	311932
137	id	137
137	name	Newcastle
137	countrycode	AUS
137	district	New South Wales
137	population	270324
138	id	138
138	name	Central Coast
138	countrycode	AUS
138	district	New South Wales
138	population	227657
139	id	139
139	name	Wollongong
139	countrycode	AUS
139	district	New South Wales
139	population	219761
140	id	140
140	name	Hobart
140	countrycode	AUS
140	district	Tasmania
140	population	126118
141	id	141
141	name	Geelong
141	countrycode	AUS
141	district	Victoria
141	population	125382
142	id	142
142	name	Townsville
142	countrycode	AUS
142	district	Queensland
142	population	109914
143	id	143
143	name	Cairns
143	countrycode	AUS
143	district	Queensland
143	population	92273
144	id	144
144	name	Baku
144	countrycode	AZE
144	district	Baki
144	population	1787800
145	id	145
145	name	Gäncä
145	countrycode	AZE
145	district	Gäncä
145	population	299300
146	id	146
146	name	Sumqayit
146	countrycode	AZE
146	district	Sumqayit
146	population	283000
147	id	147
147	name	Mingäçevir
147	countrycode	AZE
147	district	Mingäçevir
147	population	93900
148	id	148
148	name	Nassau
148	countrycode	BHS
148	district	New Providence
148	population	172000
149	id	149
149	name	al-Manama
149	countrycode	BHR
149	district	al-Manama
149	population	148000
150	id	150
150	name	Dhaka
150	countrycode	BGD
150	district	Dhaka
150	population	3612850
151	id	151
151	name	Chittagong
151	countrycode	BGD
151	district	Chittagong
151	population	1392860
152	id	152
152	name	Khulna
152	countrycode	BGD
152	district	Khulna
152	population	663340
153	id	153
153	name	Rajshahi
153	countrycode	BGD
153	district	Rajshahi
153	population	294056
154	id	154
154	name	Narayanganj
154	countrycode	BGD
154	district	Dhaka
154	population	202134
155	id	155
155	name	Rangpur
155	countrycode	BGD
155	district	Rajshahi
155	population	191398
156	id	156
156	name	Mymensingh
156	countrycode	BGD
156	district	Dhaka
156	population	188713
157	id	157
157	name	Barisal
157	countrycode	BGD
157	district	Barisal
157	population	170232
158	id	158
158	name	Tungi
158	countrycode	BGD
158	district	Dhaka
158	population	168702
159	id	159
159	name	Jessore
159	countrycode	BGD
159	district	Khulna
159	population	139710
160	id	160
160	name	Comilla
160	countrycode	BGD
160	district	Chittagong
160	population	135313
161	id	161
161	name	Nawabganj
161	countrycode	BGD
161	district	Rajshahi
161	population	130577
162	id	162
162	name	Dinajpur
162	countrycode	BGD
162	district	Rajshahi
162	population	127815
163	id	163
163	name	Bogra
163	countrycode	BGD
163	district	Rajshahi
163	population	120170
164	id	164
164	name	Sylhet
164	countrycode	BGD
164	district	Sylhet
164	population	117396
165	id	165
165	name	Brahmanbaria
165	countrycode	BGD
165	district	Chittagong
165	population	109032
166	id	166
166	name	Tangail
166	countrycode	BGD
166	district	Dhaka
166	population	106004
167	id	167
167	name	Jamalpur
167	countrycode	BGD
167	district	Dhaka
167	population	103556
168	id	168
168	name	Pabna
168	countrycode	BGD
168	district	Rajshahi
168	population	103277
169	id	169
169	name	Naogaon
169	countrycode	BGD
169	district	Rajshahi
169	population	101266
170	id	170
170	name	Sirajganj
170	countrycode	BGD
170	district	Rajshahi
170	population	99669
171	id	171
171	name	Narsinghdi
171	countrycode	BGD
171	district	Dhaka
171	population	98342
172	id	172
172	name	Saidpur
172	countrycode	BGD
172	district	Rajshahi
172	population	96777
173	id	173
173	name	Gazipur
173	countrycode	BGD
173	district	Dhaka
173	population	96717
174	id	174
174	name	Bridgetown
174	countrycode	BRB
174	district	St Michael
174	population	6070
175	id	175
175	name	Antwerpen
175	countrycode	BEL
175	district	Antwerpen
175	population	446525
176	id	176
176	name	Gent
176	countrycode	BEL
176	district	East Flanderi
176	population	224180
177	id	177
177	name	Charleroi
177	countrycode	BEL
177	district	Hainaut
177	population	200827
178	id	178
178	name	Liège
178	countrycode	BEL
178	district	Liège
178	population	185639
179	id	179
179	name	Bruxelles [Brussel]
179	countrycode	BEL
179	district	Bryssel
179	population	133859
180	id	180
180	name	Brugge
180	countrycode	BEL
180	district	West Flanderi
180	population	116246
181	id	181
181	name	Schaerbeek
181	countrycode	BEL
181	district	Bryssel
181	population	105692
182	id	182
182	name	Namur
182	countrycode	BEL
182	district	Namur
182	population	105419
183	id	183
183	name	Mons
183	countrycode	BEL
183	district	Hainaut
183	population	90935
184	id	184
184	name	Belize City
184	countrycode	BLZ
184	district	Belize City
184	population	55810
185	id	185
185	name	Belmopan
185	countrycode	BLZ
185	district	Cayo
185	population	7105
186	id	186
186	name	Cotonou
186	countrycode	BEN
186	district	Atlantique
186	population	536827
187	id	187
187	name	Porto-Novo
187	countrycode	BEN
187	district	Ouémé
187	population	194000
188	id	188
188	name	Djougou
188	countrycode	BEN
188	district	Atacora
188	population	134099
189	id	189
189	name	Parakou
189	countrycode	BEN
189	district	Borgou
189	population	103577
190	id	190
190	name	Saint George
190	countrycode	BMU
190	district	Saint George´s
190	population	1800
191	id	191
191	name	Hamilton
191	countrycode	BMU
191	district	Hamilton
191	population	1200
192	id	192
192	name	Thimphu
192	countrycode	BTN
192	district	Thimphu
192	population	22000
193	id	193
193	name	Santa Cruz de la Sierra
193	countrycode	BOL
193	district	Santa Cruz
193	population	935361
194	id	194
194	name	La Paz
194	countrycode	BOL
194	district	La Paz
194	population	758141
195	id	195
195	name	El Alto
195	countrycode	BOL
195	district	La Paz
195	population	534466
196	id	196
196	name	Cochabamba
196	countrycode	BOL
196	district	Cochabamba
196	population	482800
197	id	197
197	name	Oruro
197	countrycode	BOL
197	district	Oruro
197	population	223553
198	id	198
198	name	Sucre
198	countrycode	BOL
198	district	Chuquisaca
198	population	178426
199	id	199
199	name	Potosí
199	countrycode	BOL
199	district	Potosí
199	population	140642
200	id	200
200	name	Tarija
200	countrycode	BOL
200	district	Tarija
200	population	125255
201	id	201
201	name	Sarajevo
201	countrycode	BIH
201	district	Federaatio
201	population	360000
202	id	202
202	name	Banja Luka
202	countrycode	BIH
202	district	Republika Srpska
202	population	143079
203	id	203
203	name	Zenica
203	countrycode	BIH
203	district	Federaatio
203	population	96027
204	id	204
204	name	Gaborone
204	countrycode	BWA
204	district	Gaborone
204	population	213017
205	id	205
205	name	Francistown
205	countrycode	BWA
205	district	Francistown
205	population	101805
206	id	206
206	name	São Paulo
206	countrycode	BRA
206	district	São Paulo
206	population	9968485
207	id	207
207	name	Rio de Janeiro
207	countrycode	BRA
207	district	Rio de Janeiro
207	population	5598953
208	id	208
208	name	Salvador
208	countrycode	BRA
208	district	Bahia
208	population	2302832
209	id	209
209	name	Belo Horizonte
209	countrycode	BRA
209	district	Minas Gerais
209	population	2139125
210	id	210
210	name	Fortaleza
210	countrycode	BRA
210	district	Ceará
210	population	2097757
211	id	211
211	name	Brasília
211	countrycode	BRA
211	district	Distrito Federal
211	population	1969868
212	id	212
212	name	Curitiba
212	countrycode	BRA
212	district	Paraná
212	population	1584232
213	id	213
213	name	Recife
213	countrycode	BRA
213	district	Pernambuco
213	population	1378087
214	id	214
214	name	Porto Alegre
214	countrycode	BRA
214	district	Rio Grande do Sul
214	population	1314032
215	id	215
215	name	Manaus
215	countrycode	BRA
215	district	Amazonas
215	population	1255049
216	id	216
216	name	Belém
216	countrycode	BRA
216	district	Pará
216	population	1186926
217	id	217
217	name	Guarulhos
217	countrycode	BRA
217	district	São Paulo
217	population	1095874
218	id	218
218	name	Goiânia
218	countrycode	BRA
218	district	Goiás
218	population	1056330
219	id	219
219	name	Campinas
219	countrycode	BRA
219	district	São Paulo
219	population	950043
220	id	220
220	name	São Gonçalo
220	countrycode	BRA
220	district	Rio de Janeiro
220	population	869254
221	id	221
221	name	Nova Iguaçu
221	countrycode	BRA
221	district	Rio de Janeiro
221	population	862225
222	id	222
222	name	São Luís
222	countrycode	BRA
222	district	Maranhão
222	population	837588
223	id	223
223	name	Maceió
223	countrycode	BRA
223	district	Alagoas
223	population	786288
224	id	224
224	name	Duque de Caxias
224	countrycode	BRA
224	district	Rio de Janeiro
224	population	746758
225	id	225
225	name	São Bernardo do Campo
225	countrycode	BRA
225	district	São Paulo
225	population	723132
226	id	226
226	name	Teresina
226	countrycode	BRA
226	district	Piauí
226	population	691942
227	id	227
227	name	Natal
227	countrycode	BRA
227	district	Rio Grande do Norte
227	population	688955
228	id	228
228	name	Osasco
228	countrycode	BRA
228	district	São Paulo
228	population	659604
229	id	229
229	name	Campo Grande
229	countrycode	BRA
229	district	Mato Grosso do Sul
229	population	649593
230	id	230
230	name	Santo André
230	countrycode	BRA
230	district	São Paulo
230	population	630073
231	id	231
231	name	João Pessoa
231	countrycode	BRA
231	district	Paraíba
231	population	584029
232	id	232
232	name	Jaboatão dos Guararapes
232	countrycode	BRA
232	district	Pernambuco
232	population	558680
233	id	233
233	name	Contagem
233	countrycode	BRA
233	district	Minas Gerais
233	population	520801
234	id	234
234	name	São José dos Campos
234	countrycode	BRA
234	district	São Paulo
234	population	515553
235	id	235
235	name	Uberlândia
235	countrycode	BRA
235	district	Minas Gerais
235	population	487222
236	id	236
236	name	Feira de Santana
236	countrycode	BRA
236	district	Bahia
236	population	479992
237	id	237
237	name	Ribeirão Preto
237	countrycode	BRA
237	district	São Paulo
237	population	473276
238	id	238
238	name	Sorocaba
238	countrycode	BRA
238	district	São Paulo
238	population	466823
239	id	239
239	name	Niterói
239	countrycode	BRA
239	district	Rio de Janeiro
239	population	459884
240	id	240
240	name	Cuiabá
240	countrycode	BRA
240	district	Mato Grosso
240	population	453813
241	id	241
241	name	Juiz de Fora
241	countrycode	BRA
241	district	Minas Gerais
241	population	450288
242	id	242
242	name	Aracaju
242	countrycode	BRA
242	district	Sergipe
242	population	445555
243	id	243
243	name	São João de Meriti
243	countrycode	BRA
243	district	Rio de Janeiro
243	population	440052
244	id	244
244	name	Londrina
244	countrycode	BRA
244	district	Paraná
244	population	432257
245	id	245
245	name	Joinville
245	countrycode	BRA
245	district	Santa Catarina
245	population	428011
246	id	246
246	name	Belford Roxo
246	countrycode	BRA
246	district	Rio de Janeiro
246	population	425194
247	id	247
247	name	Santos
247	countrycode	BRA
247	district	São Paulo
247	population	408748
248	id	248
248	name	Ananindeua
248	countrycode	BRA
248	district	Pará
248	population	400940
249	id	249
249	name	Campos dos Goytacazes
249	countrycode	BRA
249	district	Rio de Janeiro
249	population	398418
250	id	250
250	name	Mauá
250	countrycode	BRA
250	district	São Paulo
250	population	375055
251	id	251
251	name	Carapicuíba
251	countrycode	BRA
251	district	São Paulo
251	population	357552
252	id	252
252	name	Olinda
252	countrycode	BRA
252	district	Pernambuco
252	population	354732
253	id	253
253	name	Campina Grande
253	countrycode	BRA
253	district	Paraíba
253	population	352497
254	id	254
254	name	São José do Rio Preto
254	countrycode	BRA
254	district	São Paulo
254	population	351944
255	id	255
255	name	Caxias do Sul
255	countrycode	BRA
255	district	Rio Grande do Sul
255	population	349581
256	id	256
256	name	Moji das Cruzes
256	countrycode	BRA
256	district	São Paulo
256	population	339194
257	id	257
257	name	Diadema
257	countrycode	BRA
257	district	São Paulo
257	population	335078
258	id	258
258	name	Aparecida de Goiânia
258	countrycode	BRA
258	district	Goiás
258	population	324662
259	id	259
259	name	Piracicaba
259	countrycode	BRA
259	district	São Paulo
259	population	319104
260	id	260
260	name	Cariacica
260	countrycode	BRA
260	district	Espírito Santo
260	population	319033
261	id	261
261	name	Vila Velha
261	countrycode	BRA
261	district	Espírito Santo
261	population	318758
262	id	262
262	name	Pelotas
262	countrycode	BRA
262	district	Rio Grande do Sul
262	population	315415
263	id	263
263	name	Bauru
263	countrycode	BRA
263	district	São Paulo
263	population	313670
264	id	264
264	name	Porto Velho
264	countrycode	BRA
264	district	Rondônia
264	population	309750
265	id	265
265	name	Serra
265	countrycode	BRA
265	district	Espírito Santo
265	population	302666
266	id	266
266	name	Betim
266	countrycode	BRA
266	district	Minas Gerais
266	population	302108
267	id	267
267	name	Jundíaí
267	countrycode	BRA
267	district	São Paulo
267	population	296127
268	id	268
268	name	Canoas
268	countrycode	BRA
268	district	Rio Grande do Sul
268	population	294125
269	id	269
269	name	Franca
269	countrycode	BRA
269	district	São Paulo
269	population	290139
270	id	270
270	name	São Vicente
270	countrycode	BRA
270	district	São Paulo
270	population	286848
271	id	271
271	name	Maringá
271	countrycode	BRA
271	district	Paraná
271	population	286461
272	id	272
272	name	Montes Claros
272	countrycode	BRA
272	district	Minas Gerais
272	population	286058
273	id	273
273	name	Anápolis
273	countrycode	BRA
273	district	Goiás
273	population	282197
274	id	274
274	name	Florianópolis
274	countrycode	BRA
274	district	Santa Catarina
274	population	281928
275	id	275
275	name	Petrópolis
275	countrycode	BRA
275	district	Rio de Janeiro
275	population	279183
276	id	276
276	name	Itaquaquecetuba
276	countrycode	BRA
276	district	São Paulo
276	population	270874
277	id	277
277	name	Vitória
277	countrycode	BRA
277	district	Espírito Santo
277	population	270626
278	id	278
278	name	Ponta Grossa
278	countrycode	BRA
278	district	Paraná
278	population	268013
279	id	279
279	name	Rio Branco
279	countrycode	BRA
279	district	Acre
279	population	259537
280	id	280
280	name	Foz do Iguaçu
280	countrycode	BRA
280	district	Paraná
280	population	259425
281	id	281
281	name	Macapá
281	countrycode	BRA
281	district	Amapá
281	population	256033
282	id	282
282	name	Ilhéus
282	countrycode	BRA
282	district	Bahia
282	population	254970
283	id	283
283	name	Vitória da Conquista
283	countrycode	BRA
283	district	Bahia
283	population	253587
284	id	284
284	name	Uberaba
284	countrycode	BRA
284	district	Minas Gerais
284	population	249225
285	id	285
285	name	Paulista
285	countrycode	BRA
285	district	Pernambuco
285	population	248473
286	id	286
286	name	Limeira
286	countrycode	BRA
286	district	São Paulo
286	population	245497
287	id	287
287	name	Blumenau
287	countrycode	BRA
287	district	Santa Catarina
287	population	244379
288	id	288
288	name	Caruaru
288	countrycode	BRA
288	district	Pernambuco
288	population	244247
289	id	289
289	name	Santarém
289	countrycode	BRA
289	district	Pará
289	population	241771
290	id	290
290	name	Volta Redonda
290	countrycode	BRA
290	district	Rio de Janeiro
290	population	240315
291	id	291
291	name	Novo Hamburgo
291	countrycode	BRA
291	district	Rio Grande do Sul
291	population	239940
292	id	292
292	name	Caucaia
292	countrycode	BRA
292	district	Ceará
292	population	238738
293	id	293
293	name	Santa Maria
293	countrycode	BRA
293	district	Rio Grande do Sul
293	population	238473
294	id	294
294	name	Cascavel
294	countrycode	BRA
294	district	Paraná
294	population	237510
295	id	295
295	name	Guarujá
295	countrycode	BRA
295	district	São Paulo
295	population	237206
296	id	296
296	name	Ribeirão das Neves
296	countrycode	BRA
296	district	Minas Gerais
296	population	232685
297	id	297
297	name	Governador Valadares
297	countrycode	BRA
297	district	Minas Gerais
297	population	231724
298	id	298
298	name	Taubaté
298	countrycode	BRA
298	district	São Paulo
298	population	229130
299	id	299
299	name	Imperatriz
299	countrycode	BRA
299	district	Maranhão
299	population	224564
300	id	300
300	name	Gravataí
300	countrycode	BRA
300	district	Rio Grande do Sul
300	population	223011
301	id	301
301	name	Embu
301	countrycode	BRA
301	district	São Paulo
301	population	222223
302	id	302
302	name	Mossoró
302	countrycode	BRA
302	district	Rio Grande do Norte
302	population	214901
303	id	303
303	name	Várzea Grande
303	countrycode	BRA
303	district	Mato Grosso
303	population	214435
304	id	304
304	name	Petrolina
304	countrycode	BRA
304	district	Pernambuco
304	population	210540
305	id	305
305	name	Barueri
305	countrycode	BRA
305	district	São Paulo
305	population	208426
306	id	306
306	name	Viamão
306	countrycode	BRA
306	district	Rio Grande do Sul
306	population	207557
307	id	307
307	name	Ipatinga
307	countrycode	BRA
307	district	Minas Gerais
307	population	206338
308	id	308
308	name	Juazeiro
308	countrycode	BRA
308	district	Bahia
308	population	201073
309	id	309
309	name	Juazeiro do Norte
309	countrycode	BRA
309	district	Ceará
309	population	199636
310	id	310
310	name	Taboão da Serra
310	countrycode	BRA
310	district	São Paulo
310	population	197550
311	id	311
311	name	São José dos Pinhais
311	countrycode	BRA
311	district	Paraná
311	population	196884
312	id	312
312	name	Magé
312	countrycode	BRA
312	district	Rio de Janeiro
312	population	196147
313	id	313
313	name	Suzano
313	countrycode	BRA
313	district	São Paulo
313	population	195434
314	id	314
314	name	São Leopoldo
314	countrycode	BRA
314	district	Rio Grande do Sul
314	population	189258
315	id	315
315	name	Marília
315	countrycode	BRA
315	district	São Paulo
315	population	188691
316	id	316
316	name	São Carlos
316	countrycode	BRA
316	district	São Paulo
316	population	187122
317	id	317
317	name	Sumaré
317	countrycode	BRA
317	district	São Paulo
317	population	186205
318	id	318
318	name	Presidente Prudente
318	countrycode	BRA
318	district	São Paulo
318	population	185340
319	id	319
319	name	Divinópolis
319	countrycode	BRA
319	district	Minas Gerais
319	population	185047
320	id	320
320	name	Sete Lagoas
320	countrycode	BRA
320	district	Minas Gerais
320	population	182984
321	id	321
321	name	Rio Grande
321	countrycode	BRA
321	district	Rio Grande do Sul
321	population	182222
322	id	322
322	name	Itabuna
322	countrycode	BRA
322	district	Bahia
322	population	182148
323	id	323
323	name	Jequié
323	countrycode	BRA
323	district	Bahia
323	population	179128
324	id	324
324	name	Arapiraca
324	countrycode	BRA
324	district	Alagoas
324	population	178988
325	id	325
325	name	Colombo
325	countrycode	BRA
325	district	Paraná
325	population	177764
326	id	326
326	name	Americana
326	countrycode	BRA
326	district	São Paulo
326	population	177409
327	id	327
327	name	Alvorada
327	countrycode	BRA
327	district	Rio Grande do Sul
327	population	175574
328	id	328
328	name	Araraquara
328	countrycode	BRA
328	district	São Paulo
328	population	174381
329	id	329
329	name	Itaboraí
329	countrycode	BRA
329	district	Rio de Janeiro
329	population	173977
330	id	330
330	name	Santa Bárbara d´Oeste
330	countrycode	BRA
330	district	São Paulo
330	population	171657
331	id	331
331	name	Nova Friburgo
331	countrycode	BRA
331	district	Rio de Janeiro
331	population	170697
332	id	332
332	name	Jacareí
332	countrycode	BRA
332	district	São Paulo
332	population	170356
333	id	333
333	name	Araçatuba
333	countrycode	BRA
333	district	São Paulo
333	population	169303
334	id	334
334	name	Barra Mansa
334	countrycode	BRA
334	district	Rio de Janeiro
334	population	168953
335	id	335
335	name	Praia Grande
335	countrycode	BRA
335	district	São Paulo
335	population	168434
336	id	336
336	name	Marabá
336	countrycode	BRA
336	district	Pará
336	population	167795
337	id	337
337	name	Criciúma
337	countrycode	BRA
337	district	Santa Catarina
337	population	167661
338	id	338
338	name	Boa Vista
338	countrycode	BRA
338	district	Roraima
338	population	167185
339	id	339
339	name	Passo Fundo
339	countrycode	BRA
339	district	Rio Grande do Sul
339	population	166343
340	id	340
340	name	Dourados
340	countrycode	BRA
340	district	Mato Grosso do Sul
340	population	164716
341	id	341
341	name	Santa Luzia
341	countrycode	BRA
341	district	Minas Gerais
341	population	164704
342	id	342
342	name	Rio Claro
342	countrycode	BRA
342	district	São Paulo
342	population	163551
343	id	343
343	name	Maracanaú
343	countrycode	BRA
343	district	Ceará
343	population	162022
344	id	344
344	name	Guarapuava
344	countrycode	BRA
344	district	Paraná
344	population	160510
345	id	345
345	name	Rondonópolis
345	countrycode	BRA
345	district	Mato Grosso
345	population	155115
346	id	346
346	name	São José
346	countrycode	BRA
346	district	Santa Catarina
346	population	155105
347	id	347
347	name	Cachoeiro de Itapemirim
347	countrycode	BRA
347	district	Espírito Santo
347	population	155024
348	id	348
348	name	Nilópolis
348	countrycode	BRA
348	district	Rio de Janeiro
348	population	153383
349	id	349
349	name	Itapevi
349	countrycode	BRA
349	district	São Paulo
349	population	150664
350	id	350
350	name	Cabo de Santo Agostinho
350	countrycode	BRA
350	district	Pernambuco
350	population	149964
351	id	351
351	name	Camaçari
351	countrycode	BRA
351	district	Bahia
351	population	149146
352	id	352
352	name	Sobral
352	countrycode	BRA
352	district	Ceará
352	population	146005
353	id	353
353	name	Itajaí
353	countrycode	BRA
353	district	Santa Catarina
353	population	145197
354	id	354
354	name	Chapecó
354	countrycode	BRA
354	district	Santa Catarina
354	population	144158
355	id	355
355	name	Cotia
355	countrycode	BRA
355	district	São Paulo
355	population	140042
356	id	356
356	name	Lages
356	countrycode	BRA
356	district	Santa Catarina
356	population	139570
357	id	357
357	name	Ferraz de Vasconcelos
357	countrycode	BRA
357	district	São Paulo
357	population	139283
358	id	358
358	name	Indaiatuba
358	countrycode	BRA
358	district	São Paulo
358	population	135968
359	id	359
359	name	Hortolândia
359	countrycode	BRA
359	district	São Paulo
359	population	135755
360	id	360
360	name	Caxias
360	countrycode	BRA
360	district	Maranhão
360	population	133980
361	id	361
361	name	São Caetano do Sul
361	countrycode	BRA
361	district	São Paulo
361	population	133321
362	id	362
362	name	Itu
362	countrycode	BRA
362	district	São Paulo
362	population	132736
363	id	363
363	name	Nossa Senhora do Socorro
363	countrycode	BRA
363	district	Sergipe
363	population	131351
364	id	364
364	name	Parnaíba
364	countrycode	BRA
364	district	Piauí
364	population	129756
365	id	365
365	name	Poços de Caldas
365	countrycode	BRA
365	district	Minas Gerais
365	population	129683
366	id	366
366	name	Teresópolis
366	countrycode	BRA
366	district	Rio de Janeiro
366	population	128079
367	id	367
367	name	Barreiras
367	countrycode	BRA
367	district	Bahia
367	population	127801
368	id	368
368	name	Castanhal
368	countrycode	BRA
368	district	Pará
368	population	127634
369	id	369
369	name	Alagoinhas
369	countrycode	BRA
369	district	Bahia
369	population	126820
370	id	370
370	name	Itapecerica da Serra
370	countrycode	BRA
370	district	São Paulo
370	population	126672
371	id	371
371	name	Uruguaiana
371	countrycode	BRA
371	district	Rio Grande do Sul
371	population	126305
372	id	372
372	name	Paranaguá
372	countrycode	BRA
372	district	Paraná
372	population	126076
373	id	373
373	name	Ibirité
373	countrycode	BRA
373	district	Minas Gerais
373	population	125982
374	id	374
374	name	Timon
374	countrycode	BRA
374	district	Maranhão
374	population	125812
375	id	375
375	name	Luziânia
375	countrycode	BRA
375	district	Goiás
375	population	125597
376	id	376
376	name	Macaé
376	countrycode	BRA
376	district	Rio de Janeiro
376	population	125597
377	id	377
377	name	Teófilo Otoni
377	countrycode	BRA
377	district	Minas Gerais
377	population	124489
378	id	378
378	name	Moji-Guaçu
378	countrycode	BRA
378	district	São Paulo
378	population	123782
379	id	379
379	name	Palmas
379	countrycode	BRA
379	district	Tocantins
379	population	121919
380	id	380
380	name	Pindamonhangaba
380	countrycode	BRA
380	district	São Paulo
380	population	121904
381	id	381
381	name	Francisco Morato
381	countrycode	BRA
381	district	São Paulo
381	population	121197
382	id	382
382	name	Bagé
382	countrycode	BRA
382	district	Rio Grande do Sul
382	population	120793
383	id	383
383	name	Sapucaia do Sul
383	countrycode	BRA
383	district	Rio Grande do Sul
383	population	120217
384	id	384
384	name	Cabo Frio
384	countrycode	BRA
384	district	Rio de Janeiro
384	population	119503
385	id	385
385	name	Itapetininga
385	countrycode	BRA
385	district	São Paulo
385	population	119391
386	id	386
386	name	Patos de Minas
386	countrycode	BRA
386	district	Minas Gerais
386	population	119262
387	id	387
387	name	Camaragibe
387	countrycode	BRA
387	district	Pernambuco
387	population	118968
388	id	388
388	name	Bragança Paulista
388	countrycode	BRA
388	district	São Paulo
388	population	116929
389	id	389
389	name	Queimados
389	countrycode	BRA
389	district	Rio de Janeiro
389	population	115020
390	id	390
390	name	Araguaína
390	countrycode	BRA
390	district	Tocantins
390	population	114948
391	id	391
391	name	Garanhuns
391	countrycode	BRA
391	district	Pernambuco
391	population	114603
392	id	392
392	name	Vitória de Santo Antão
392	countrycode	BRA
392	district	Pernambuco
392	population	113595
393	id	393
393	name	Santa Rita
393	countrycode	BRA
393	district	Paraíba
393	population	113135
394	id	394
394	name	Barbacena
394	countrycode	BRA
394	district	Minas Gerais
394	population	113079
395	id	395
395	name	Abaetetuba
395	countrycode	BRA
395	district	Pará
395	population	111258
396	id	396
396	name	Jaú
396	countrycode	BRA
396	district	São Paulo
396	population	109965
397	id	397
397	name	Lauro de Freitas
397	countrycode	BRA
397	district	Bahia
397	population	109236
398	id	398
398	name	Franco da Rocha
398	countrycode	BRA
398	district	São Paulo
398	population	108964
399	id	399
399	name	Teixeira de Freitas
399	countrycode	BRA
399	district	Bahia
399	population	108441
400	id	400
400	name	Varginha
400	countrycode	BRA
400	district	Minas Gerais
400	population	108314
401	id	401
401	name	Ribeirão Pires
401	countrycode	BRA
401	district	São Paulo
401	population	108121
402	id	402
402	name	Sabará
402	countrycode	BRA
402	district	Minas Gerais
402	population	107781
403	id	403
403	name	Catanduva
403	countrycode	BRA
403	district	São Paulo
403	population	107761
404	id	404
404	name	Rio Verde
404	countrycode	BRA
404	district	Goiás
404	population	107755
405	id	405
405	name	Botucatu
405	countrycode	BRA
405	district	São Paulo
405	population	107663
406	id	406
406	name	Colatina
406	countrycode	BRA
406	district	Espírito Santo
406	population	107354
407	id	407
407	name	Santa Cruz do Sul
407	countrycode	BRA
407	district	Rio Grande do Sul
407	population	106734
408	id	408
408	name	Linhares
408	countrycode	BRA
408	district	Espírito Santo
408	population	106278
409	id	409
409	name	Apucarana
409	countrycode	BRA
409	district	Paraná
409	population	105114
410	id	410
410	name	Barretos
410	countrycode	BRA
410	district	São Paulo
410	population	104156
411	id	411
411	name	Guaratinguetá
411	countrycode	BRA
411	district	São Paulo
411	population	103433
412	id	412
412	name	Cachoeirinha
412	countrycode	BRA
412	district	Rio Grande do Sul
412	population	103240
413	id	413
413	name	Codó
413	countrycode	BRA
413	district	Maranhão
413	population	103153
414	id	414
414	name	Jaraguá do Sul
414	countrycode	BRA
414	district	Santa Catarina
414	population	102580
415	id	415
415	name	Cubatão
415	countrycode	BRA
415	district	São Paulo
415	population	102372
416	id	416
416	name	Itabira
416	countrycode	BRA
416	district	Minas Gerais
416	population	102217
417	id	417
417	name	Itaituba
417	countrycode	BRA
417	district	Pará
417	population	101320
418	id	418
418	name	Araras
418	countrycode	BRA
418	district	São Paulo
418	population	101046
419	id	419
419	name	Resende
419	countrycode	BRA
419	district	Rio de Janeiro
419	population	100627
420	id	420
420	name	Atibaia
420	countrycode	BRA
420	district	São Paulo
420	population	100356
421	id	421
421	name	Pouso Alegre
421	countrycode	BRA
421	district	Minas Gerais
421	population	100028
422	id	422
422	name	Toledo
422	countrycode	BRA
422	district	Paraná
422	population	99387
423	id	423
423	name	Crato
423	countrycode	BRA
423	district	Ceará
423	population	98965
424	id	424
424	name	Passos
424	countrycode	BRA
424	district	Minas Gerais
424	population	98570
425	id	425
425	name	Araguari
425	countrycode	BRA
425	district	Minas Gerais
425	population	98399
426	id	426
426	name	São José de Ribamar
426	countrycode	BRA
426	district	Maranhão
426	population	98318
427	id	427
427	name	Pinhais
427	countrycode	BRA
427	district	Paraná
427	population	98198
428	id	428
428	name	Sertãozinho
428	countrycode	BRA
428	district	São Paulo
428	population	98140
429	id	429
429	name	Conselheiro Lafaiete
429	countrycode	BRA
429	district	Minas Gerais
429	population	97507
430	id	430
430	name	Paulo Afonso
430	countrycode	BRA
430	district	Bahia
430	population	97291
431	id	431
431	name	Angra dos Reis
431	countrycode	BRA
431	district	Rio de Janeiro
431	population	96864
432	id	432
432	name	Eunápolis
432	countrycode	BRA
432	district	Bahia
432	population	96610
433	id	433
433	name	Salto
433	countrycode	BRA
433	district	São Paulo
433	population	96348
434	id	434
434	name	Ourinhos
434	countrycode	BRA
434	district	São Paulo
434	population	96291
435	id	435
435	name	Parnamirim
435	countrycode	BRA
435	district	Rio Grande do Norte
435	population	96210
436	id	436
436	name	Jacobina
436	countrycode	BRA
436	district	Bahia
436	population	96131
437	id	437
437	name	Coronel Fabriciano
437	countrycode	BRA
437	district	Minas Gerais
437	population	95933
438	id	438
438	name	Birigui
438	countrycode	BRA
438	district	São Paulo
438	population	94685
439	id	439
439	name	Tatuí
439	countrycode	BRA
439	district	São Paulo
439	population	93897
440	id	440
440	name	Ji-Paraná
440	countrycode	BRA
440	district	Rondônia
440	population	93346
441	id	441
441	name	Bacabal
441	countrycode	BRA
441	district	Maranhão
441	population	93121
442	id	442
442	name	Cametá
442	countrycode	BRA
442	district	Pará
442	population	92779
443	id	443
443	name	Guaíba
443	countrycode	BRA
443	district	Rio Grande do Sul
443	population	92224
444	id	444
444	name	São Lourenço da Mata
444	countrycode	BRA
444	district	Pernambuco
444	population	91999
445	id	445
445	name	Santana do Livramento
445	countrycode	BRA
445	district	Rio Grande do Sul
445	population	91779
446	id	446
446	name	Votorantim
446	countrycode	BRA
446	district	São Paulo
446	population	91777
447	id	447
447	name	Campo Largo
447	countrycode	BRA
447	district	Paraná
447	population	91203
448	id	448
448	name	Patos
448	countrycode	BRA
448	district	Paraíba
448	population	90519
449	id	449
449	name	Ituiutaba
449	countrycode	BRA
449	district	Minas Gerais
449	population	90507
450	id	450
450	name	Corumbá
450	countrycode	BRA
450	district	Mato Grosso do Sul
450	population	90111
451	id	451
451	name	Palhoça
451	countrycode	BRA
451	district	Santa Catarina
451	population	89465
452	id	452
452	name	Barra do Piraí
452	countrycode	BRA
452	district	Rio de Janeiro
452	population	89388
453	id	453
453	name	Bento Gonçalves
453	countrycode	BRA
453	district	Rio Grande do Sul
453	population	89254
454	id	454
454	name	Poá
454	countrycode	BRA
454	district	São Paulo
454	population	89236
455	id	455
455	name	Águas Lindas de Goiás
455	countrycode	BRA
455	district	Goiás
455	population	89200
456	id	456
456	name	London
456	countrycode	GBR
456	district	England
456	population	7285000
457	id	457
457	name	Birmingham
457	countrycode	GBR
457	district	England
457	population	1013000
458	id	458
458	name	Glasgow
458	countrycode	GBR
458	district	Scotland
458	population	619680
459	id	459
459	name	Liverpool
459	countrycode	GBR
459	district	England
459	population	461000
460	id	460
460	name	Edinburgh
460	countrycode	GBR
460	district	Scotland
460	population	450180
461	id	461
461	name	Sheffield
461	countrycode	GBR
461	district	England
461	population	431607
462	id	462
462	name	Manchester
462	countrycode	GBR
462	district	England
462	population	430000
463	id	463
463	name	Leeds
463	countrycode	GBR
463	district	England
463	population	424194
464	id	464
464	name	Bristol
464	countrycode	GBR
464	district	England
464	population	402000
465	id	465
465	name	Cardiff
465	countrycode	GBR
465	district	Wales
465	population	321000
466	id	466
466	name	Coventry
466	countrycode	GBR
466	district	England
466	population	304000
467	id	467
467	name	Leicester
467	countrycode	GBR
467	district	England
467	population	294000
468	id	468
468	name	Bradford
468	countrycode	GBR
468	district	England
468	population	289376
469	id	469
469	name	Belfast
469	countrycode	GBR
469	district	North Ireland
469	population	287500
470	id	470
470	name	Nottingham
470	countrycode	GBR
470	district	England
470	population	287000
471	id	471
471	name	Kingston upon Hull
471	countrycode	GBR
471	district	England
471	population	262000
472	id	472
472	name	Plymouth
472	countrycode	GBR
472	district	England
472	population	253000
473	id	473
473	name	Stoke-on-Trent
473	countrycode	GBR
473	district	England
473	population	252000
474	id	474
474	name	Wolverhampton
474	countrycode	GBR
474	district	England
474	population	242000
475	id	475
475	name	Derby
475	countrycode	GBR
475	district	England
475	population	236000
476	id	476
476	name	Swansea
476	countrycode	GBR
476	district	Wales
476	population	230000
477	id	477
477	name	Southampton
477	countrycode	GBR
477	district	England
477	population	216000
478	id	478
478	name	Aberdeen
478	countrycode	GBR
478	district	Scotland
478	population	213070
479	id	479
479	name	Northampton
479	countrycode	GBR
479	district	England
479	population	196000
480	id	480
480	name	Dudley
480	countrycode	GBR
480	district	England
480	population	192171
481	id	481
481	name	Portsmouth
481	countrycode	GBR
481	district	England
481	population	190000
482	id	482
482	name	Newcastle upon Tyne
482	countrycode	GBR
482	district	England
482	population	189150
483	id	483
483	name	Sunderland
483	countrycode	GBR
483	district	England
483	population	183310
484	id	484
484	name	Luton
484	countrycode	GBR
484	district	England
484	population	183000
485	id	485
485	name	Swindon
485	countrycode	GBR
485	district	England
485	population	180000
486	id	486
486	name	Southend-on-Sea
486	countrycode	GBR
486	district	England
486	population	176000
487	id	487
487	name	Walsall
487	countrycode	GBR
487	district	England
487	population	174739
488	id	488
488	name	Bournemouth
488	countrycode	GBR
488	district	England
488	population	162000
489	id	489
489	name	Peterborough
489	countrycode	GBR
489	district	England
489	population	156000
490	id	490
490	name	Brighton
490	countrycode	GBR
490	district	England
490	population	156124
491	id	491
491	name	Blackpool
491	countrycode	GBR
491	district	England
491	population	151000
492	id	492
492	name	Dundee
492	countrycode	GBR
492	district	Scotland
492	population	146690
493	id	493
493	name	West Bromwich
493	countrycode	GBR
493	district	England
493	population	146386
494	id	494
494	name	Reading
494	countrycode	GBR
494	district	England
494	population	148000
495	id	495
495	name	Oldbury/Smethwick (Warley)
495	countrycode	GBR
495	district	England
495	population	145542
496	id	496
496	name	Middlesbrough
496	countrycode	GBR
496	district	England
496	population	145000
497	id	497
497	name	Huddersfield
497	countrycode	GBR
497	district	England
497	population	143726
498	id	498
498	name	Oxford
498	countrycode	GBR
498	district	England
498	population	144000
499	id	499
499	name	Poole
499	countrycode	GBR
499	district	England
499	population	141000
500	id	500
500	name	Bolton
500	countrycode	GBR
500	district	England
500	population	139020
501	id	501
501	name	Blackburn
501	countrycode	GBR
501	district	England
501	population	140000
502	id	502
502	name	Newport
502	countrycode	GBR
502	district	Wales
502	population	139000
503	id	503
503	name	Preston
503	countrycode	GBR
503	district	England
503	population	135000
504	id	504
504	name	Stockport
504	countrycode	GBR
504	district	England
504	population	132813
505	id	505
505	name	Norwich
505	countrycode	GBR
505	district	England
505	population	124000
506	id	506
506	name	Rotherham
506	countrycode	GBR
506	district	England
506	population	121380
507	id	507
507	name	Cambridge
507	countrycode	GBR
507	district	England
507	population	121000
508	id	508
508	name	Watford
508	countrycode	GBR
508	district	England
508	population	113080
509	id	509
509	name	Ipswich
509	countrycode	GBR
509	district	England
509	population	114000
510	id	510
510	name	Slough
510	countrycode	GBR
510	district	England
510	population	112000
511	id	511
511	name	Exeter
511	countrycode	GBR
511	district	England
511	population	111000
512	id	512
512	name	Cheltenham
512	countrycode	GBR
512	district	England
512	population	106000
513	id	513
513	name	Gloucester
513	countrycode	GBR
513	district	England
513	population	107000
514	id	514
514	name	Saint Helens
514	countrycode	GBR
514	district	England
514	population	106293
515	id	515
515	name	Sutton Coldfield
515	countrycode	GBR
515	district	England
515	population	106001
516	id	516
516	name	York
516	countrycode	GBR
516	district	England
516	population	104425
517	id	517
517	name	Oldham
517	countrycode	GBR
517	district	England
517	population	103931
518	id	518
518	name	Basildon
518	countrycode	GBR
518	district	England
518	population	100924
519	id	519
519	name	Worthing
519	countrycode	GBR
519	district	England
519	population	100000
520	id	520
520	name	Chelmsford
520	countrycode	GBR
520	district	England
520	population	97451
521	id	521
521	name	Colchester
521	countrycode	GBR
521	district	England
521	population	96063
522	id	522
522	name	Crawley
522	countrycode	GBR
522	district	England
522	population	97000
523	id	523
523	name	Gillingham
523	countrycode	GBR
523	district	England
523	population	92000
524	id	524
524	name	Solihull
524	countrycode	GBR
524	district	England
524	population	94531
525	id	525
525	name	Rochdale
525	countrycode	GBR
525	district	England
525	population	94313
526	id	526
526	name	Birkenhead
526	countrycode	GBR
526	district	England
526	population	93087
527	id	527
527	name	Worcester
527	countrycode	GBR
527	district	England
527	population	95000
528	id	528
528	name	Hartlepool
528	countrycode	GBR
528	district	England
528	population	92000
529	id	529
529	name	Halifax
529	countrycode	GBR
529	district	England
529	population	91069
530	id	530
530	name	Woking/Byfleet
530	countrycode	GBR
530	district	England
530	population	92000
531	id	531
531	name	Southport
531	countrycode	GBR
531	district	England
531	population	90959
532	id	532
532	name	Maidstone
532	countrycode	GBR
532	district	England
532	population	90878
533	id	533
533	name	Eastbourne
533	countrycode	GBR
533	district	England
533	population	90000
534	id	534
534	name	Grimsby
534	countrycode	GBR
534	district	England
534	population	89000
535	id	535
535	name	Saint Helier
535	countrycode	GBR
535	district	Jersey
535	population	27523
536	id	536
536	name	Douglas
536	countrycode	GBR
536	district	
536	population	23487
537	id	537
537	name	Road Town
537	countrycode	VGB
537	district	Tortola
537	population	8000
538	id	538
538	name	Bandar Seri Begawan
538	countrycode	BRN
538	district	Brunei and Muara
538	population	21484
539	id	539
539	name	Sofija
539	countrycode	BGR
539	district	Grad Sofija
539	population	1122302
540	id	540
540	name	Plovdiv
540	countrycode	BGR
540	district	Plovdiv
540	population	342584
541	id	541
541	name	Varna
541	countrycode	BGR
541	district	Varna
541	population	299801
542	id	542
542	name	Burgas
542	countrycode	BGR
542	district	Burgas
542	population	195255
543	id	543
543	name	Ruse
543	countrycode	BGR
543	district	Ruse
543	population	166467
544	id	544
544	name	Stara Zagora
544	countrycode	BGR
544	district	Haskovo
544	population	147939
545	id	545
545	name	Pleven
545	countrycode	BGR
545	district	Lovec
545	population	121952
546	id	546
546	name	Sliven
546	countrycode	BGR
546	district	Burgas
546	population	105530
547	id	547
547	name	Dobric
547	countrycode	BGR
547	district	Varna
547	population	100399
548	id	548
548	name	umen
548	countrycode	BGR
548	district	Varna
548	population	94686
549	id	549
549	name	Ouagadougou
549	countrycode	BFA
549	district	Kadiogo
549	population	824000
550	id	550
550	name	Bobo-Dioulasso
550	countrycode	BFA
550	district	Houet
550	population	300000
551	id	551
551	name	Koudougou
551	countrycode	BFA
551	district	Boulkiemdé
551	population	105000
552	id	552
552	name	Bujumbura
552	countrycode	BDI
552	district	Bujumbura
552	population	300000
553	id	553
553	name	George Town
553	countrycode	CYM
553	district	Grand Cayman
553	population	19600
554	id	554
554	name	Santiago de Chile
554	countrycode	CHL
554	district	Santiago
554	population	4703954
555	id	555
555	name	Puente Alto
555	countrycode	CHL
555	district	Santiago
555	population	386236
556	id	556
556	name	Viña del Mar
556	countrycode	CHL
556	district	Valparaíso
556	population	312493
557	id	557
557	name	Valparaíso
557	countrycode	CHL
557	district	Valparaíso
557	population	293800
558	id	558
558	name	Talcahuano
558	countrycode	CHL
558	district	Bíobío
558	population	277752
559	id	559
559	name	Antofagasta
559	countrycode	CHL
559	district	Antofagasta
559	population	251429
560	id	560
560	name	San Bernardo
560	countrycode	CHL
560	district	Santiago
560	population	241910
561	id	561
561	name	Temuco
561	countrycode	CHL
561	district	La Araucanía
561	population	233041
562	id	562
562	name	Concepción
562	countrycode	CHL
562	district	Bíobío
562	population	217664
563	id	563
563	name	Rancagua
563	countrycode	CHL
563	district	O´Higgins
563	population	212977
564	id	564
564	name	Arica
564	countrycode	CHL
564	district	Tarapacá
564	population	189036
565	id	565
565	name	Talca
565	countrycode	CHL
565	district	Maule
565	population	187557
566	id	566
566	name	Chillán
566	countrycode	CHL
566	district	Bíobío
566	population	178182
567	id	567
567	name	Iquique
567	countrycode	CHL
567	district	Tarapacá
567	population	177892
568	id	568
568	name	Los Angeles
568	countrycode	CHL
568	district	Bíobío
568	population	158215
569	id	569
569	name	Puerto Montt
569	countrycode	CHL
569	district	Los Lagos
569	population	152194
570	id	570
570	name	Coquimbo
570	countrycode	CHL
570	district	Coquimbo
570	population	143353
571	id	571
571	name	Osorno
571	countrycode	CHL
571	district	Los Lagos
571	population	141468
572	id	572
572	name	La Serena
572	countrycode	CHL
572	district	Coquimbo
572	population	137409
573	id	573
573	name	Calama
573	countrycode	CHL
573	district	Antofagasta
573	population	137265
574	id	574
574	name	Valdivia
574	countrycode	CHL
574	district	Los Lagos
574	population	133106
575	id	575
575	name	Punta Arenas
575	countrycode	CHL
575	district	Magallanes
575	population	125631
576	id	576
576	name	Copiapó
576	countrycode	CHL
576	district	Atacama
576	population	120128
577	id	577
577	name	Quilpué
577	countrycode	CHL
577	district	Valparaíso
577	population	118857
578	id	578
578	name	Curicó
578	countrycode	CHL
578	district	Maule
578	population	115766
579	id	579
579	name	Ovalle
579	countrycode	CHL
579	district	Coquimbo
579	population	94854
580	id	580
580	name	Coronel
580	countrycode	CHL
580	district	Bíobío
580	population	93061
581	id	581
581	name	San Pedro de la Paz
581	countrycode	CHL
581	district	Bíobío
581	population	91684
582	id	582
582	name	Melipilla
582	countrycode	CHL
582	district	Santiago
582	population	91056
583	id	583
583	name	Avarua
583	countrycode	COK
583	district	Rarotonga
583	population	11900
584	id	584
584	name	San José
584	countrycode	CRI
584	district	San José
584	population	339131
585	id	585
585	name	Djibouti
585	countrycode	DJI
585	district	Djibouti
585	population	383000
586	id	586
586	name	Roseau
586	countrycode	DMA
586	district	St George
586	population	16243
587	id	587
587	name	Santo Domingo de Guzmán
587	countrycode	DOM
587	district	Distrito Nacional
587	population	1609966
588	id	588
588	name	Santiago de los Caballeros
588	countrycode	DOM
588	district	Santiago
588	population	365463
589	id	589
589	name	La Romana
589	countrycode	DOM
589	district	La Romana
589	population	140204
590	id	590
590	name	San Pedro de Macorís
590	countrycode	DOM
590	district	San Pedro de Macorís
590	population	124735
591	id	591
591	name	San Francisco de Macorís
591	countrycode	DOM
591	district	Duarte
591	population	108485
592	id	592
592	name	San Felipe de Puerto Plata
592	countrycode	DOM
592	district	Puerto Plata
592	population	89423
593	id	593
593	name	Guayaquil
593	countrycode	ECU
593	district	Guayas
593	population	2070040
594	id	594
594	name	Quito
594	countrycode	ECU
594	district	Pichincha
594	population	1573458
595	id	595
595	name	Cuenca
595	countrycode	ECU
595	district	Azuay
595	population	270353
596	id	596
596	name	Machala
596	countrycode	ECU
596	district	El Oro
596	population	210368
597	id	597
597	name	Santo Domingo de los Colorados
597	countrycode	ECU
597	district	Pichincha
597	population	202111
598	id	598
598	name	Portoviejo
598	countrycode	ECU
598	district	Manabí
598	population	176413
599	id	599
599	name	Ambato
599	countrycode	ECU
599	district	Tungurahua
599	population	169612
600	id	600
600	name	Manta
600	countrycode	ECU
600	district	Manabí
600	population	164739
601	id	601
601	name	Duran [Eloy Alfaro]
601	countrycode	ECU
601	district	Guayas
601	population	152514
602	id	602
602	name	Ibarra
602	countrycode	ECU
602	district	Imbabura
602	population	130643
603	id	603
603	name	Quevedo
603	countrycode	ECU
603	district	Los Ríos
603	population	129631
604	id	604
604	name	Milagro
604	countrycode	ECU
604	district	Guayas
604	population	124177
605	id	605
605	name	Loja
605	countrycode	ECU
605	district	Loja
605	population	123875
606	id	606
606	name	Ríobamba
606	countrycode	ECU
606	district	Chimborazo
606	population	123163
607	id	607
607	name	Esmeraldas
607	countrycode	ECU
607	district	Esmeraldas
607	population	123045
608	id	608
608	name	Cairo
608	countrycode	EGY
608	district	Kairo
608	population	6789479
609	id	609
609	name	Alexandria
609	countrycode	EGY
609	district	Aleksandria
609	population	3328196
610	id	610
610	name	Giza
610	countrycode	EGY
610	district	Giza
610	population	2221868
611	id	611
611	name	Shubra al-Khayma
611	countrycode	EGY
611	district	al-Qalyubiya
611	population	870716
612	id	612
612	name	Port Said
612	countrycode	EGY
612	district	Port Said
612	population	469533
613	id	613
613	name	Suez
613	countrycode	EGY
613	district	Suez
613	population	417610
614	id	614
614	name	al-Mahallat al-Kubra
614	countrycode	EGY
614	district	al-Gharbiya
614	population	395402
615	id	615
615	name	Tanta
615	countrycode	EGY
615	district	al-Gharbiya
615	population	371010
616	id	616
616	name	al-Mansura
616	countrycode	EGY
616	district	al-Daqahliya
616	population	369621
617	id	617
617	name	Luxor
617	countrycode	EGY
617	district	Luxor
617	population	360503
618	id	618
618	name	Asyut
618	countrycode	EGY
618	district	Asyut
618	population	343498
619	id	619
619	name	Bahtim
619	countrycode	EGY
619	district	al-Qalyubiya
619	population	275807
620	id	620
620	name	Zagazig
620	countrycode	EGY
620	district	al-Sharqiya
620	population	267351
621	id	621
621	name	al-Faiyum
621	countrycode	EGY
621	district	al-Faiyum
621	population	260964
622	id	622
622	name	Ismailia
622	countrycode	EGY
622	district	Ismailia
622	population	254477
623	id	623
623	name	Kafr al-Dawwar
623	countrycode	EGY
623	district	al-Buhayra
623	population	231978
624	id	624
624	name	Assuan
624	countrycode	EGY
624	district	Assuan
624	population	219017
625	id	625
625	name	Damanhur
625	countrycode	EGY
625	district	al-Buhayra
625	population	212203
626	id	626
626	name	al-Minya
626	countrycode	EGY
626	district	al-Minya
626	population	201360
627	id	627
627	name	Bani Suwayf
627	countrycode	EGY
627	district	Bani Suwayf
627	population	172032
628	id	628
628	name	Qina
628	countrycode	EGY
628	district	Qina
628	population	171275
629	id	629
629	name	Sawhaj
629	countrycode	EGY
629	district	Sawhaj
629	population	170125
630	id	630
630	name	Shibin al-Kawm
630	countrycode	EGY
630	district	al-Minufiya
630	population	159909
631	id	631
631	name	Bulaq al-Dakrur
631	countrycode	EGY
631	district	Giza
631	population	148787
632	id	632
632	name	Banha
632	countrycode	EGY
632	district	al-Qalyubiya
632	population	145792
633	id	633
633	name	Warraq al-Arab
633	countrycode	EGY
633	district	Giza
633	population	127108
634	id	634
634	name	Kafr al-Shaykh
634	countrycode	EGY
634	district	Kafr al-Shaykh
634	population	124819
635	id	635
635	name	Mallawi
635	countrycode	EGY
635	district	al-Minya
635	population	119283
636	id	636
636	name	Bilbays
636	countrycode	EGY
636	district	al-Sharqiya
636	population	113608
637	id	637
637	name	Mit Ghamr
637	countrycode	EGY
637	district	al-Daqahliya
637	population	101801
638	id	638
638	name	al-Arish
638	countrycode	EGY
638	district	Shamal Sina
638	population	100447
639	id	639
639	name	Talkha
639	countrycode	EGY
639	district	al-Daqahliya
639	population	97700
640	id	640
640	name	Qalyub
640	countrycode	EGY
640	district	al-Qalyubiya
640	population	97200
641	id	641
641	name	Jirja
641	countrycode	EGY
641	district	Sawhaj
641	population	95400
642	id	642
642	name	Idfu
642	countrycode	EGY
642	district	Qina
642	population	94200
643	id	643
643	name	al-Hawamidiya
643	countrycode	EGY
643	district	Giza
643	population	91700
644	id	644
644	name	Disuq
644	countrycode	EGY
644	district	Kafr al-Shaykh
644	population	91300
645	id	645
645	name	San Salvador
645	countrycode	SLV
645	district	San Salvador
645	population	415346
646	id	646
646	name	Santa Ana
646	countrycode	SLV
646	district	Santa Ana
646	population	139389
647	id	647
647	name	Mejicanos
647	countrycode	SLV
647	district	San Salvador
647	population	138800
648	id	648
648	name	Soyapango
648	countrycode	SLV
648	district	San Salvador
648	population	129800
649	id	649
649	name	San Miguel
649	countrycode	SLV
649	district	San Miguel
649	population	127696
650	id	650
650	name	Nueva San Salvador
650	countrycode	SLV
650	district	La Libertad
650	population	98400
651	id	651
651	name	Apopa
651	countrycode	SLV
651	district	San Salvador
651	population	88800
652	id	652
652	name	Asmara
652	countrycode	ERI
652	district	Maekel
652	population	431000
653	id	653
653	name	Madrid
653	countrycode	ESP
653	district	Madrid
653	population	2879052
654	id	654
654	name	Barcelona
654	countrycode	ESP
654	district	Katalonia
654	population	1503451
655	id	655
655	name	Valencia
655	countrycode	ESP
655	district	Valencia
655	population	739412
656	id	656
656	name	Sevilla
656	countrycode	ESP
656	district	Andalusia
656	population	701927
657	id	657
657	name	Zaragoza
657	countrycode	ESP
657	district	Aragonia
657	population	603367
658	id	658
658	name	Málaga
658	countrycode	ESP
658	district	Andalusia
658	population	530553
659	id	659
659	name	Bilbao
659	countrycode	ESP
659	district	Baskimaa
659	population	357589
660	id	660
660	name	Las Palmas de Gran Canaria
660	countrycode	ESP
660	district	Canary Islands
660	population	354757
661	id	661
661	name	Murcia
661	countrycode	ESP
661	district	Murcia
661	population	353504
662	id	662
662	name	Palma de Mallorca
662	countrycode	ESP
662	district	Balears
662	population	326993
663	id	663
663	name	Valladolid
663	countrycode	ESP
663	district	Castilla and León
663	population	319998
664	id	664
664	name	Córdoba
664	countrycode	ESP
664	district	Andalusia
664	population	311708
665	id	665
665	name	Vigo
665	countrycode	ESP
665	district	Galicia
665	population	283670
666	id	666
666	name	Alicante [Alacant]
666	countrycode	ESP
666	district	Valencia
666	population	272432
667	id	667
667	name	Gijón
667	countrycode	ESP
667	district	Asturia
667	population	267980
668	id	668
668	name	L´Hospitalet de Llobregat
668	countrycode	ESP
668	district	Katalonia
668	population	247986
669	id	669
669	name	Granada
669	countrycode	ESP
669	district	Andalusia
669	population	244767
670	id	670
670	name	A Coruña (La Coruña)
670	countrycode	ESP
670	district	Galicia
670	population	243402
671	id	671
671	name	Vitoria-Gasteiz
671	countrycode	ESP
671	district	Baskimaa
671	population	217154
672	id	672
672	name	Santa Cruz de Tenerife
672	countrycode	ESP
672	district	Canary Islands
672	population	213050
673	id	673
673	name	Badalona
673	countrycode	ESP
673	district	Katalonia
673	population	209635
674	id	674
674	name	Oviedo
674	countrycode	ESP
674	district	Asturia
674	population	200453
675	id	675
675	name	Móstoles
675	countrycode	ESP
675	district	Madrid
675	population	195351
676	id	676
676	name	Elche [Elx]
676	countrycode	ESP
676	district	Valencia
676	population	193174
677	id	677
677	name	Sabadell
677	countrycode	ESP
677	district	Katalonia
677	population	184859
678	id	678
678	name	Santander
678	countrycode	ESP
678	district	Cantabria
678	population	184165
679	id	679
679	name	Jerez de la Frontera
679	countrycode	ESP
679	district	Andalusia
679	population	182660
680	id	680
680	name	Pamplona [Iruña]
680	countrycode	ESP
680	district	Navarra
680	population	180483
681	id	681
681	name	Donostia-San Sebastián
681	countrycode	ESP
681	district	Baskimaa
681	population	179208
682	id	682
682	name	Cartagena
682	countrycode	ESP
682	district	Murcia
682	population	177709
683	id	683
683	name	Leganés
683	countrycode	ESP
683	district	Madrid
683	population	173163
684	id	684
684	name	Fuenlabrada
684	countrycode	ESP
684	district	Madrid
684	population	171173
685	id	685
685	name	Almería
685	countrycode	ESP
685	district	Andalusia
685	population	169027
686	id	686
686	name	Terrassa
686	countrycode	ESP
686	district	Katalonia
686	population	168695
687	id	687
687	name	Alcalá de Henares
687	countrycode	ESP
687	district	Madrid
687	population	164463
688	id	688
688	name	Burgos
688	countrycode	ESP
688	district	Castilla and León
688	population	162802
689	id	689
689	name	Salamanca
689	countrycode	ESP
689	district	Castilla and León
689	population	158720
690	id	690
690	name	Albacete
690	countrycode	ESP
690	district	Kastilia-La Mancha
690	population	147527
691	id	691
691	name	Getafe
691	countrycode	ESP
691	district	Madrid
691	population	145371
692	id	692
692	name	Cádiz
692	countrycode	ESP
692	district	Andalusia
692	population	142449
693	id	693
693	name	Alcorcón
693	countrycode	ESP
693	district	Madrid
693	population	142048
694	id	694
694	name	Huelva
694	countrycode	ESP
694	district	Andalusia
694	population	140583
695	id	695
695	name	León
695	countrycode	ESP
695	district	Castilla and León
695	population	139809
696	id	696
696	name	Castellón de la Plana [Castell
696	countrycode	ESP
696	district	Valencia
696	population	139712
697	id	697
697	name	Badajoz
697	countrycode	ESP
697	district	Extremadura
697	population	136613
698	id	698
698	name	[San Cristóbal de] la Laguna
698	countrycode	ESP
698	district	Canary Islands
698	population	127945
699	id	699
699	name	Logroño
699	countrycode	ESP
699	district	La Rioja
699	population	127093
700	id	700
700	name	Santa Coloma de Gramenet
700	countrycode	ESP
700	district	Katalonia
700	population	120802
701	id	701
701	name	Tarragona
701	countrycode	ESP
701	district	Katalonia
701	population	113016
702	id	702
702	name	Lleida (Lérida)
702	countrycode	ESP
702	district	Katalonia
702	population	112207
703	id	703
703	name	Jaén
703	countrycode	ESP
703	district	Andalusia
703	population	109247
704	id	704
704	name	Ourense (Orense)
704	countrycode	ESP
704	district	Galicia
704	population	109120
705	id	705
705	name	Mataró
705	countrycode	ESP
705	district	Katalonia
705	population	104095
706	id	706
706	name	Algeciras
706	countrycode	ESP
706	district	Andalusia
706	population	103106
707	id	707
707	name	Marbella
707	countrycode	ESP
707	district	Andalusia
707	population	101144
708	id	708
708	name	Barakaldo
708	countrycode	ESP
708	district	Baskimaa
708	population	98212
709	id	709
709	name	Dos Hermanas
709	countrycode	ESP
709	district	Andalusia
709	population	94591
710	id	710
710	name	Santiago de Compostela
710	countrycode	ESP
710	district	Galicia
710	population	93745
711	id	711
711	name	Torrejón de Ardoz
711	countrycode	ESP
711	district	Madrid
711	population	92262
712	id	712
712	name	Cape Town
712	countrycode	ZAF
712	district	Western Cape
712	population	2352121
713	id	713
713	name	Soweto
713	countrycode	ZAF
713	district	Gauteng
713	population	904165
714	id	714
714	name	Johannesburg
714	countrycode	ZAF
714	district	Gauteng
714	population	756653
715	id	715
715	name	Port Elizabeth
715	countrycode	ZAF
715	district	Eastern Cape
715	population	752319
716	id	716
716	name	Pretoria
716	countrycode	ZAF
716	district	Gauteng
716	population	658630
717	id	717
717	name	Inanda
717	countrycode	ZAF
717	district	KwaZulu-Natal
717	population	634065
718	id	718
718	name	Durban
718	countrycode	ZAF
718	district	KwaZulu-Natal
718	population	566120
719	id	719
719	name	Vanderbijlpark
719	countrycode	ZAF
719	district	Gauteng
719	population	468931
720	id	720
720	name	Kempton Park
720	countrycode	ZAF
720	district	Gauteng
720	population	442633
721	id	721
721	name	Alberton
721	countrycode	ZAF
721	district	Gauteng
721	population	410102
722	id	722
722	name	Pinetown
722	countrycode	ZAF
722	district	KwaZulu-Natal
722	population	378810
723	id	723
723	name	Pietermaritzburg
723	countrycode	ZAF
723	district	KwaZulu-Natal
723	population	370190
724	id	724
724	name	Benoni
724	countrycode	ZAF
724	district	Gauteng
724	population	365467
725	id	725
725	name	Randburg
725	countrycode	ZAF
725	district	Gauteng
725	population	341288
726	id	726
726	name	Umlazi
726	countrycode	ZAF
726	district	KwaZulu-Natal
726	population	339233
727	id	727
727	name	Bloemfontein
727	countrycode	ZAF
727	district	Free State
727	population	334341
728	id	728
728	name	Vereeniging
728	countrycode	ZAF
728	district	Gauteng
728	population	328535
729	id	729
729	name	Wonderboom
729	countrycode	ZAF
729	district	Gauteng
729	population	283289
730	id	730
730	name	Roodepoort
730	countrycode	ZAF
730	district	Gauteng
730	population	279340
731	id	731
731	name	Boksburg
731	countrycode	ZAF
731	district	Gauteng
731	population	262648
732	id	732
732	name	Klerksdorp
732	countrycode	ZAF
732	district	North West
732	population	261911
733	id	733
733	name	Soshanguve
733	countrycode	ZAF
733	district	Gauteng
733	population	242727
734	id	734
734	name	Newcastle
734	countrycode	ZAF
734	district	KwaZulu-Natal
734	population	222993
735	id	735
735	name	East London
735	countrycode	ZAF
735	district	Eastern Cape
735	population	221047
736	id	736
736	name	Welkom
736	countrycode	ZAF
736	district	Free State
736	population	203296
737	id	737
737	name	Kimberley
737	countrycode	ZAF
737	district	Northern Cape
737	population	197254
738	id	738
738	name	Uitenhage
738	countrycode	ZAF
738	district	Eastern Cape
738	population	192120
739	id	739
739	name	Chatsworth
739	countrycode	ZAF
739	district	KwaZulu-Natal
739	population	189885
740	id	740
740	name	Mdantsane
740	countrycode	ZAF
740	district	Eastern Cape
740	population	182639
741	id	741
741	name	Krugersdorp
741	countrycode	ZAF
741	district	Gauteng
741	population	181503
742	id	742
742	name	Botshabelo
742	countrycode	ZAF
742	district	Free State
742	population	177971
743	id	743
743	name	Brakpan
743	countrycode	ZAF
743	district	Gauteng
743	population	171363
744	id	744
744	name	Witbank
744	countrycode	ZAF
744	district	Mpumalanga
744	population	167183
745	id	745
745	name	Oberholzer
745	countrycode	ZAF
745	district	Gauteng
745	population	164367
746	id	746
746	name	Germiston
746	countrycode	ZAF
746	district	Gauteng
746	population	164252
747	id	747
747	name	Springs
747	countrycode	ZAF
747	district	Gauteng
747	population	162072
748	id	748
748	name	Westonaria
748	countrycode	ZAF
748	district	Gauteng
748	population	159632
749	id	749
749	name	Randfontein
749	countrycode	ZAF
749	district	Gauteng
749	population	120838
750	id	750
750	name	Paarl
750	countrycode	ZAF
750	district	Western Cape
750	population	105768
751	id	751
751	name	Potchefstroom
751	countrycode	ZAF
751	district	North West
751	population	101817
752	id	752
752	name	Rustenburg
752	countrycode	ZAF
752	district	North West
752	population	97008
753	id	753
753	name	Nigel
753	countrycode	ZAF
753	district	Gauteng
753	population	96734
754	id	754
754	name	George
754	countrycode	ZAF
754	district	Western Cape
754	population	93818
755	id	755
755	name	Ladysmith
755	countrycode	ZAF
755	district	KwaZulu-Natal
755	population	89292
756	id	756
756	name	Addis Abeba
756	countrycode	ETH
756	district	Addis Abeba
756	population	2495000
757	id	757
757	name	Dire Dawa
757	countrycode	ETH
757	district	Dire Dawa
757	population	164851
758	id	758
758	name	Nazret
758	countrycode	ETH
758	district	Oromia
758	population	127842
759	id	759
759	name	Gonder
759	countrycode	ETH
759	district	Amhara
759	population	112249
760	id	760
760	name	Dese
760	countrycode	ETH
760	district	Amhara
760	population	97314
761	id	761
761	name	Mekele
761	countrycode	ETH
761	district	Tigray
761	population	96938
762	id	762
762	name	Bahir Dar
762	countrycode	ETH
762	district	Amhara
762	population	96140
763	id	763
763	name	Stanley
763	countrycode	FLK
763	district	East Falkland
763	population	1636
764	id	764
764	name	Suva
764	countrycode	FJI
764	district	Central
764	population	77366
765	id	765
765	name	Quezon
765	countrycode	PHL
765	district	National Capital Reg
765	population	2173831
766	id	766
766	name	Manila
766	countrycode	PHL
766	district	National Capital Reg
766	population	1581082
767	id	767
767	name	Kalookan
767	countrycode	PHL
767	district	National Capital Reg
767	population	1177604
768	id	768
768	name	Davao
768	countrycode	PHL
768	district	Southern Mindanao
768	population	1147116
769	id	769
769	name	Cebu
769	countrycode	PHL
769	district	Central Visayas
769	population	718821
770	id	770
770	name	Zamboanga
770	countrycode	PHL
770	district	Western Mindanao
770	population	601794
771	id	771
771	name	Pasig
771	countrycode	PHL
771	district	National Capital Reg
771	population	505058
772	id	772
772	name	Valenzuela
772	countrycode	PHL
772	district	National Capital Reg
772	population	485433
773	id	773
773	name	Las Piñas
773	countrycode	PHL
773	district	National Capital Reg
773	population	472780
774	id	774
774	name	Antipolo
774	countrycode	PHL
774	district	Southern Tagalog
774	population	470866
775	id	775
775	name	Taguig
775	countrycode	PHL
775	district	National Capital Reg
775	population	467375
776	id	776
776	name	Cagayan de Oro
776	countrycode	PHL
776	district	Northern Mindanao
776	population	461877
777	id	777
777	name	Parañaque
777	countrycode	PHL
777	district	National Capital Reg
777	population	449811
778	id	778
778	name	Makati
778	countrycode	PHL
778	district	National Capital Reg
778	population	444867
779	id	779
779	name	Bacolod
779	countrycode	PHL
779	district	Western Visayas
779	population	429076
780	id	780
780	name	General Santos
780	countrycode	PHL
780	district	Southern Mindanao
780	population	411822
781	id	781
781	name	Marikina
781	countrycode	PHL
781	district	National Capital Reg
781	population	391170
782	id	782
782	name	Dasmariñas
782	countrycode	PHL
782	district	Southern Tagalog
782	population	379520
783	id	783
783	name	Muntinlupa
783	countrycode	PHL
783	district	National Capital Reg
783	population	379310
784	id	784
784	name	Iloilo
784	countrycode	PHL
784	district	Western Visayas
784	population	365820
785	id	785
785	name	Pasay
785	countrycode	PHL
785	district	National Capital Reg
785	population	354908
786	id	786
786	name	Malabon
786	countrycode	PHL
786	district	National Capital Reg
786	population	338855
787	id	787
787	name	San José del Monte
787	countrycode	PHL
787	district	Central Luzon
787	population	315807
788	id	788
788	name	Bacoor
788	countrycode	PHL
788	district	Southern Tagalog
788	population	305699
789	id	789
789	name	Iligan
789	countrycode	PHL
789	district	Central Mindanao
789	population	285061
790	id	790
790	name	Calamba
790	countrycode	PHL
790	district	Southern Tagalog
790	population	281146
791	id	791
791	name	Mandaluyong
791	countrycode	PHL
791	district	National Capital Reg
791	population	278474
792	id	792
792	name	Butuan
792	countrycode	PHL
792	district	Caraga
792	population	267279
793	id	793
793	name	Angeles
793	countrycode	PHL
793	district	Central Luzon
793	population	263971
794	id	794
794	name	Tarlac
794	countrycode	PHL
794	district	Central Luzon
794	population	262481
795	id	795
795	name	Mandaue
795	countrycode	PHL
795	district	Central Visayas
795	population	259728
796	id	796
796	name	Baguio
796	countrycode	PHL
796	district	CAR
796	population	252386
797	id	797
797	name	Batangas
797	countrycode	PHL
797	district	Southern Tagalog
797	population	247588
798	id	798
798	name	Cainta
798	countrycode	PHL
798	district	Southern Tagalog
798	population	242511
799	id	799
799	name	San Pedro
799	countrycode	PHL
799	district	Southern Tagalog
799	population	231403
800	id	800
800	name	Navotas
800	countrycode	PHL
800	district	National Capital Reg
800	population	230403
801	id	801
801	name	Cabanatuan
801	countrycode	PHL
801	district	Central Luzon
801	population	222859
802	id	802
802	name	San Fernando
802	countrycode	PHL
802	district	Central Luzon
802	population	221857
803	id	803
803	name	Lipa
803	countrycode	PHL
803	district	Southern Tagalog
803	population	218447
804	id	804
804	name	Lapu-Lapu
804	countrycode	PHL
804	district	Central Visayas
804	population	217019
805	id	805
805	name	San Pablo
805	countrycode	PHL
805	district	Southern Tagalog
805	population	207927
806	id	806
806	name	Biñan
806	countrycode	PHL
806	district	Southern Tagalog
806	population	201186
807	id	807
807	name	Taytay
807	countrycode	PHL
807	district	Southern Tagalog
807	population	198183
808	id	808
808	name	Lucena
808	countrycode	PHL
808	district	Southern Tagalog
808	population	196075
809	id	809
809	name	Imus
809	countrycode	PHL
809	district	Southern Tagalog
809	population	195482
810	id	810
810	name	Olongapo
810	countrycode	PHL
810	district	Central Luzon
810	population	194260
811	id	811
811	name	Binangonan
811	countrycode	PHL
811	district	Southern Tagalog
811	population	187691
812	id	812
812	name	Santa Rosa
812	countrycode	PHL
812	district	Southern Tagalog
812	population	185633
813	id	813
813	name	Tagum
813	countrycode	PHL
813	district	Southern Mindanao
813	population	179531
814	id	814
814	name	Tacloban
814	countrycode	PHL
814	district	Eastern Visayas
814	population	178639
815	id	815
815	name	Malolos
815	countrycode	PHL
815	district	Central Luzon
815	population	175291
816	id	816
816	name	Mabalacat
816	countrycode	PHL
816	district	Central Luzon
816	population	171045
817	id	817
817	name	Cotabato
817	countrycode	PHL
817	district	Central Mindanao
817	population	163849
818	id	818
818	name	Meycauayan
818	countrycode	PHL
818	district	Central Luzon
818	population	163037
819	id	819
819	name	Puerto Princesa
819	countrycode	PHL
819	district	Southern Tagalog
819	population	161912
820	id	820
820	name	Legazpi
820	countrycode	PHL
820	district	Bicol
820	population	157010
821	id	821
821	name	Silang
821	countrycode	PHL
821	district	Southern Tagalog
821	population	156137
822	id	822
822	name	Ormoc
822	countrycode	PHL
822	district	Eastern Visayas
822	population	154297
823	id	823
823	name	San Carlos
823	countrycode	PHL
823	district	Ilocos
823	population	154264
824	id	824
824	name	Kabankalan
824	countrycode	PHL
824	district	Western Visayas
824	population	149769
825	id	825
825	name	Talisay
825	countrycode	PHL
825	district	Central Visayas
825	population	148110
826	id	826
826	name	Valencia
826	countrycode	PHL
826	district	Northern Mindanao
826	population	147924
827	id	827
827	name	Calbayog
827	countrycode	PHL
827	district	Eastern Visayas
827	population	147187
828	id	828
828	name	Santa Maria
828	countrycode	PHL
828	district	Central Luzon
828	population	144282
829	id	829
829	name	Pagadian
829	countrycode	PHL
829	district	Western Mindanao
829	population	142515
830	id	830
830	name	Cadiz
830	countrycode	PHL
830	district	Western Visayas
830	population	141954
831	id	831
831	name	Bago
831	countrycode	PHL
831	district	Western Visayas
831	population	141721
832	id	832
832	name	Toledo
832	countrycode	PHL
832	district	Central Visayas
832	population	141174
833	id	833
833	name	Naga
833	countrycode	PHL
833	district	Bicol
833	population	137810
834	id	834
834	name	San Mateo
834	countrycode	PHL
834	district	Southern Tagalog
834	population	135603
835	id	835
835	name	Panabo
835	countrycode	PHL
835	district	Southern Mindanao
835	population	133950
836	id	836
836	name	Koronadal
836	countrycode	PHL
836	district	Southern Mindanao
836	population	133786
837	id	837
837	name	Marawi
837	countrycode	PHL
837	district	Central Mindanao
837	population	131090
838	id	838
838	name	Dagupan
838	countrycode	PHL
838	district	Ilocos
838	population	130328
839	id	839
839	name	Sagay
839	countrycode	PHL
839	district	Western Visayas
839	population	129765
840	id	840
840	name	Roxas
840	countrycode	PHL
840	district	Western Visayas
840	population	126352
841	id	841
841	name	Lubao
841	countrycode	PHL
841	district	Central Luzon
841	population	125699
842	id	842
842	name	Digos
842	countrycode	PHL
842	district	Southern Mindanao
842	population	125171
843	id	843
843	name	San Miguel
843	countrycode	PHL
843	district	Central Luzon
843	population	123824
844	id	844
844	name	Malaybalay
844	countrycode	PHL
844	district	Northern Mindanao
844	population	123672
845	id	845
845	name	Tuguegarao
845	countrycode	PHL
845	district	Cagayan Valley
845	population	120645
846	id	846
846	name	Ilagan
846	countrycode	PHL
846	district	Cagayan Valley
846	population	119990
847	id	847
847	name	Baliuag
847	countrycode	PHL
847	district	Central Luzon
847	population	119675
848	id	848
848	name	Surigao
848	countrycode	PHL
848	district	Caraga
848	population	118534
849	id	849
849	name	San Carlos
849	countrycode	PHL
849	district	Western Visayas
849	population	118259
850	id	850
850	name	San Juan del Monte
850	countrycode	PHL
850	district	National Capital Reg
850	population	117680
851	id	851
851	name	Tanauan
851	countrycode	PHL
851	district	Southern Tagalog
851	population	117539
852	id	852
852	name	Concepcion
852	countrycode	PHL
852	district	Central Luzon
852	population	115171
853	id	853
853	name	Rodriguez (Montalban)
853	countrycode	PHL
853	district	Southern Tagalog
853	population	115167
854	id	854
854	name	Sariaya
854	countrycode	PHL
854	district	Southern Tagalog
854	population	114568
855	id	855
855	name	Malasiqui
855	countrycode	PHL
855	district	Ilocos
855	population	113190
856	id	856
856	name	General Mariano Alvarez
856	countrycode	PHL
856	district	Southern Tagalog
856	population	112446
857	id	857
857	name	Urdaneta
857	countrycode	PHL
857	district	Ilocos
857	population	111582
858	id	858
858	name	Hagonoy
858	countrycode	PHL
858	district	Central Luzon
858	population	111425
859	id	859
859	name	San Jose
859	countrycode	PHL
859	district	Southern Tagalog
859	population	111009
860	id	860
860	name	Polomolok
860	countrycode	PHL
860	district	Southern Mindanao
860	population	110709
861	id	861
861	name	Santiago
861	countrycode	PHL
861	district	Cagayan Valley
861	population	110531
862	id	862
862	name	Tanza
862	countrycode	PHL
862	district	Southern Tagalog
862	population	110517
863	id	863
863	name	Ozamis
863	countrycode	PHL
863	district	Northern Mindanao
863	population	110420
864	id	864
864	name	Mexico
864	countrycode	PHL
864	district	Central Luzon
864	population	109481
865	id	865
865	name	San Jose
865	countrycode	PHL
865	district	Central Luzon
865	population	108254
866	id	866
866	name	Silay
866	countrycode	PHL
866	district	Western Visayas
866	population	107722
867	id	867
867	name	General Trias
867	countrycode	PHL
867	district	Southern Tagalog
867	population	107691
868	id	868
868	name	Tabaco
868	countrycode	PHL
868	district	Bicol
868	population	107166
869	id	869
869	name	Cabuyao
869	countrycode	PHL
869	district	Southern Tagalog
869	population	106630
870	id	870
870	name	Calapan
870	countrycode	PHL
870	district	Southern Tagalog
870	population	105910
871	id	871
871	name	Mati
871	countrycode	PHL
871	district	Southern Mindanao
871	population	105908
872	id	872
872	name	Midsayap
872	countrycode	PHL
872	district	Central Mindanao
872	population	105760
873	id	873
873	name	Cauayan
873	countrycode	PHL
873	district	Cagayan Valley
873	population	103952
874	id	874
874	name	Gingoog
874	countrycode	PHL
874	district	Northern Mindanao
874	population	102379
875	id	875
875	name	Dumaguete
875	countrycode	PHL
875	district	Central Visayas
875	population	102265
876	id	876
876	name	San Fernando
876	countrycode	PHL
876	district	Ilocos
876	population	102082
877	id	877
877	name	Arayat
877	countrycode	PHL
877	district	Central Luzon
877	population	101792
878	id	878
878	name	Bayawan (Tulong)
878	countrycode	PHL
878	district	Central Visayas
878	population	101391
879	id	879
879	name	Kidapawan
879	countrycode	PHL
879	district	Central Mindanao
879	population	101205
880	id	880
880	name	Daraga (Locsin)
880	countrycode	PHL
880	district	Bicol
880	population	101031
881	id	881
881	name	Marilao
881	countrycode	PHL
881	district	Central Luzon
881	population	101017
882	id	882
882	name	Malita
882	countrycode	PHL
882	district	Southern Mindanao
882	population	100000
883	id	883
883	name	Dipolog
883	countrycode	PHL
883	district	Western Mindanao
883	population	99862
884	id	884
884	name	Cavite
884	countrycode	PHL
884	district	Southern Tagalog
884	population	99367
885	id	885
885	name	Danao
885	countrycode	PHL
885	district	Central Visayas
885	population	98781
886	id	886
886	name	Bislig
886	countrycode	PHL
886	district	Caraga
886	population	97860
887	id	887
887	name	Talavera
887	countrycode	PHL
887	district	Central Luzon
887	population	97329
888	id	888
888	name	Guagua
888	countrycode	PHL
888	district	Central Luzon
888	population	96858
889	id	889
889	name	Bayambang
889	countrycode	PHL
889	district	Ilocos
889	population	96609
890	id	890
890	name	Nasugbu
890	countrycode	PHL
890	district	Southern Tagalog
890	population	96113
891	id	891
891	name	Baybay
891	countrycode	PHL
891	district	Eastern Visayas
891	population	95630
892	id	892
892	name	Capas
892	countrycode	PHL
892	district	Central Luzon
892	population	95219
893	id	893
893	name	Sultan Kudarat
893	countrycode	PHL
893	district	ARMM
893	population	94861
894	id	894
894	name	Laoag
894	countrycode	PHL
894	district	Ilocos
894	population	94466
895	id	895
895	name	Bayugan
895	countrycode	PHL
895	district	Caraga
895	population	93623
896	id	896
896	name	Malungon
896	countrycode	PHL
896	district	Southern Mindanao
896	population	93232
897	id	897
897	name	Santa Cruz
897	countrycode	PHL
897	district	Southern Tagalog
897	population	92694
898	id	898
898	name	Sorsogon
898	countrycode	PHL
898	district	Bicol
898	population	92512
899	id	899
899	name	Candelaria
899	countrycode	PHL
899	district	Southern Tagalog
899	population	92429
900	id	900
900	name	Ligao
900	countrycode	PHL
900	district	Bicol
900	population	90603
901	id	901
901	name	Tórshavn
901	countrycode	FRO
901	district	Streymoyar
901	population	14542
902	id	902
902	name	Libreville
902	countrycode	GAB
902	district	Estuaire
902	population	419000
903	id	903
903	name	Serekunda
903	countrycode	GMB
903	district	Kombo St Mary
903	population	102600
904	id	904
904	name	Banjul
904	countrycode	GMB
904	district	Banjul
904	population	42326
905	id	905
905	name	Tbilisi
905	countrycode	GEO
905	district	Tbilisi
905	population	1235200
906	id	906
906	name	Kutaisi
906	countrycode	GEO
906	district	Imereti
906	population	240900
907	id	907
907	name	Rustavi
907	countrycode	GEO
907	district	Kvemo Kartli
907	population	155400
908	id	908
908	name	Batumi
908	countrycode	GEO
908	district	Adzaria [Atara]
908	population	137700
909	id	909
909	name	Sohumi
909	countrycode	GEO
909	district	Abhasia [Aphazeti]
909	population	111700
910	id	910
910	name	Accra
910	countrycode	GHA
910	district	Greater Accra
910	population	1070000
911	id	911
911	name	Kumasi
911	countrycode	GHA
911	district	Ashanti
911	population	385192
912	id	912
912	name	Tamale
912	countrycode	GHA
912	district	Northern
912	population	151069
913	id	913
913	name	Tema
913	countrycode	GHA
913	district	Greater Accra
913	population	109975
914	id	914
914	name	Sekondi-Takoradi
914	countrycode	GHA
914	district	Western
914	population	103653
915	id	915
915	name	Gibraltar
915	countrycode	GIB
915	district	
915	population	27025
916	id	916
916	name	Saint George´s
916	countrycode	GRD
916	district	St George
916	population	4621
917	id	917
917	name	Nuuk
917	countrycode	GRL
917	district	Kitaa
917	population	13445
918	id	918
918	name	Les Abymes
918	countrycode	GLP
918	district	Grande-Terre
918	population	62947
919	id	919
919	name	Basse-Terre
919	countrycode	GLP
919	district	Basse-Terre
919	population	12433
920	id	920
920	name	Tamuning
920	countrycode	GUM
920	district	
920	population	9500
921	id	921
921	name	Agaña
921	countrycode	GUM
921	district	
921	population	1139
922	id	922
922	name	Ciudad de Guatemala
922	countrycode	GTM
922	district	Guatemala
922	population	823301
923	id	923
923	name	Mixco
923	countrycode	GTM
923	district	Guatemala
923	population	209791
924	id	924
924	name	Villa Nueva
924	countrycode	GTM
924	district	Guatemala
924	population	101295
925	id	925
925	name	Quetzaltenango
925	countrycode	GTM
925	district	Quetzaltenango
925	population	90801
926	id	926
926	name	Conakry
926	countrycode	GIN
926	district	Conakry
926	population	1090610
927	id	927
927	name	Bissau
927	countrycode	GNB
927	district	Bissau
927	population	241000
928	id	928
928	name	Georgetown
928	countrycode	GUY
928	district	Georgetown
928	population	254000
929	id	929
929	name	Port-au-Prince
929	countrycode	HTI
929	district	Ouest
929	population	884472
930	id	930
930	name	Carrefour
930	countrycode	HTI
930	district	Ouest
930	population	290204
931	id	931
931	name	Delmas
931	countrycode	HTI
931	district	Ouest
931	population	240429
932	id	932
932	name	Le-Cap-Haïtien
932	countrycode	HTI
932	district	Nord
932	population	102233
933	id	933
933	name	Tegucigalpa
933	countrycode	HND
933	district	Distrito Central
933	population	813900
934	id	934
934	name	San Pedro Sula
934	countrycode	HND
934	district	Cortés
934	population	383900
935	id	935
935	name	La Ceiba
935	countrycode	HND
935	district	Atlántida
935	population	89200
936	id	936
936	name	Kowloon and New Kowloon
936	countrycode	HKG
936	district	Kowloon and New Kowl
936	population	1987996
937	id	937
937	name	Victoria
937	countrycode	HKG
937	district	Hongkong
937	population	1312637
938	id	938
938	name	Longyearbyen
938	countrycode	SJM
938	district	Länsimaa
938	population	1438
939	id	939
939	name	Jakarta
939	countrycode	IDN
939	district	Jakarta Raya
939	population	9604900
940	id	940
940	name	Surabaya
940	countrycode	IDN
940	district	East Java
940	population	2663820
941	id	941
941	name	Bandung
941	countrycode	IDN
941	district	West Java
941	population	2429000
942	id	942
942	name	Medan
942	countrycode	IDN
942	district	Sumatera Utara
942	population	1843919
943	id	943
943	name	Palembang
943	countrycode	IDN
943	district	Sumatera Selatan
943	population	1222764
944	id	944
944	name	Tangerang
944	countrycode	IDN
944	district	West Java
944	population	1198300
945	id	945
945	name	Semarang
945	countrycode	IDN
945	district	Central Java
945	population	1104405
946	id	946
946	name	Ujung Pandang
946	countrycode	IDN
946	district	Sulawesi Selatan
946	population	1060257
947	id	947
947	name	Malang
947	countrycode	IDN
947	district	East Java
947	population	716862
948	id	948
948	name	Bandar Lampung
948	countrycode	IDN
948	district	Lampung
948	population	680332
949	id	949
949	name	Bekasi
949	countrycode	IDN
949	district	West Java
949	population	644300
950	id	950
950	name	Padang
950	countrycode	IDN
950	district	Sumatera Barat
950	population	534474
951	id	951
951	name	Surakarta
951	countrycode	IDN
951	district	Central Java
951	population	518600
952	id	952
952	name	Banjarmasin
952	countrycode	IDN
952	district	Kalimantan Selatan
952	population	482931
953	id	953
953	name	Pekan Baru
953	countrycode	IDN
953	district	Riau
953	population	438638
954	id	954
954	name	Denpasar
954	countrycode	IDN
954	district	Bali
954	population	435000
955	id	955
955	name	Yogyakarta
955	countrycode	IDN
955	district	Yogyakarta
955	population	418944
956	id	956
956	name	Pontianak
956	countrycode	IDN
956	district	Kalimantan Barat
956	population	409632
957	id	957
957	name	Samarinda
957	countrycode	IDN
957	district	Kalimantan Timur
957	population	399175
958	id	958
958	name	Jambi
958	countrycode	IDN
958	district	Jambi
958	population	385201
959	id	959
959	name	Depok
959	countrycode	IDN
959	district	West Java
959	population	365200
960	id	960
960	name	Cimahi
960	countrycode	IDN
960	district	West Java
960	population	344600
961	id	961
961	name	Balikpapan
961	countrycode	IDN
961	district	Kalimantan Timur
961	population	338752
962	id	962
962	name	Manado
962	countrycode	IDN
962	district	Sulawesi Utara
962	population	332288
963	id	963
963	name	Mataram
963	countrycode	IDN
963	district	Nusa Tenggara Barat
963	population	306600
964	id	964
964	name	Pekalongan
964	countrycode	IDN
964	district	Central Java
964	population	301504
965	id	965
965	name	Tegal
965	countrycode	IDN
965	district	Central Java
965	population	289744
966	id	966
966	name	Bogor
966	countrycode	IDN
966	district	West Java
966	population	285114
967	id	967
967	name	Ciputat
967	countrycode	IDN
967	district	West Java
967	population	270800
968	id	968
968	name	Pondokgede
968	countrycode	IDN
968	district	West Java
968	population	263200
969	id	969
969	name	Cirebon
969	countrycode	IDN
969	district	West Java
969	population	254406
970	id	970
970	name	Kediri
970	countrycode	IDN
970	district	East Java
970	population	253760
971	id	971
971	name	Ambon
971	countrycode	IDN
971	district	Molukit
971	population	249312
972	id	972
972	name	Jember
972	countrycode	IDN
972	district	East Java
972	population	218500
973	id	973
973	name	Cilacap
973	countrycode	IDN
973	district	Central Java
973	population	206900
974	id	974
974	name	Cimanggis
974	countrycode	IDN
974	district	West Java
974	population	205100
975	id	975
975	name	Pematang Siantar
975	countrycode	IDN
975	district	Sumatera Utara
975	population	203056
976	id	976
976	name	Purwokerto
976	countrycode	IDN
976	district	Central Java
976	population	202500
977	id	977
977	name	Ciomas
977	countrycode	IDN
977	district	West Java
977	population	187400
978	id	978
978	name	Tasikmalaya
978	countrycode	IDN
978	district	West Java
978	population	179800
979	id	979
979	name	Madiun
979	countrycode	IDN
979	district	East Java
979	population	171532
980	id	980
980	name	Bengkulu
980	countrycode	IDN
980	district	Bengkulu
980	population	146439
981	id	981
981	name	Karawang
981	countrycode	IDN
981	district	West Java
981	population	145000
982	id	982
982	name	Banda Aceh
982	countrycode	IDN
982	district	Aceh
982	population	143409
983	id	983
983	name	Palu
983	countrycode	IDN
983	district	Sulawesi Tengah
983	population	142800
984	id	984
984	name	Pasuruan
984	countrycode	IDN
984	district	East Java
984	population	134019
985	id	985
985	name	Kupang
985	countrycode	IDN
985	district	Nusa Tenggara Timur
985	population	129300
986	id	986
986	name	Tebing Tinggi
986	countrycode	IDN
986	district	Sumatera Utara
986	population	129300
987	id	987
987	name	Percut Sei Tuan
987	countrycode	IDN
987	district	Sumatera Utara
987	population	129000
988	id	988
988	name	Binjai
988	countrycode	IDN
988	district	Sumatera Utara
988	population	127222
989	id	989
989	name	Sukabumi
989	countrycode	IDN
989	district	West Java
989	population	125766
990	id	990
990	name	Waru
990	countrycode	IDN
990	district	East Java
990	population	124300
991	id	991
991	name	Pangkal Pinang
991	countrycode	IDN
991	district	Sumatera Selatan
991	population	124000
992	id	992
992	name	Magelang
992	countrycode	IDN
992	district	Central Java
992	population	123800
993	id	993
993	name	Blitar
993	countrycode	IDN
993	district	East Java
993	population	122600
994	id	994
994	name	Serang
994	countrycode	IDN
994	district	West Java
994	population	122400
995	id	995
995	name	Probolinggo
995	countrycode	IDN
995	district	East Java
995	population	120770
996	id	996
996	name	Cilegon
996	countrycode	IDN
996	district	West Java
996	population	117000
997	id	997
997	name	Cianjur
997	countrycode	IDN
997	district	West Java
997	population	114300
998	id	998
998	name	Ciparay
998	countrycode	IDN
998	district	West Java
998	population	111500
999	id	999
999	name	Lhokseumawe
999	countrycode	IDN
999	district	Aceh
999	population	109600
1000	id	1000
1000	name	Taman
1000	countrycode	IDN
1000	district	East Java
1000	population	107000
1001	id	1001
1001	name	Depok
1001	countrycode	IDN
1001	district	Yogyakarta
1001	population	106800
1002	id	1002
1002	name	Citeureup
1002	countrycode	IDN
1002	district	West Java
1002	population	105100
1003	id	1003
1003	name	Pemalang
1003	countrycode	IDN
1003	district	Central Java
1003	population	103500
1004	id	1004
1004	name	Klaten
1004	countrycode	IDN
1004	district	Central Java
1004	population	103300
1005	id	1005
1005	name	Salatiga
1005	countrycode	IDN
1005	district	Central Java
1005	population	103000
1006	id	1006
1006	name	Cibinong
1006	countrycode	IDN
1006	district	West Java
1006	population	101300
1007	id	1007
1007	name	Palangka Raya
1007	countrycode	IDN
1007	district	Kalimantan Tengah
1007	population	99693
1008	id	1008
1008	name	Mojokerto
1008	countrycode	IDN
1008	district	East Java
1008	population	96626
1009	id	1009
1009	name	Purwakarta
1009	countrycode	IDN
1009	district	West Java
1009	population	95900
1010	id	1010
1010	name	Garut
1010	countrycode	IDN
1010	district	West Java
1010	population	95800
1011	id	1011
1011	name	Kudus
1011	countrycode	IDN
1011	district	Central Java
1011	population	95300
1012	id	1012
1012	name	Kendari
1012	countrycode	IDN
1012	district	Sulawesi Tenggara
1012	population	94800
1013	id	1013
1013	name	Jaya Pura
1013	countrycode	IDN
1013	district	West Irian
1013	population	94700
1014	id	1014
1014	name	Gorontalo
1014	countrycode	IDN
1014	district	Sulawesi Utara
1014	population	94058
1015	id	1015
1015	name	Majalaya
1015	countrycode	IDN
1015	district	West Java
1015	population	93200
1016	id	1016
1016	name	Pondok Aren
1016	countrycode	IDN
1016	district	West Java
1016	population	92700
1017	id	1017
1017	name	Jombang
1017	countrycode	IDN
1017	district	East Java
1017	population	92600
1018	id	1018
1018	name	Sunggal
1018	countrycode	IDN
1018	district	Sumatera Utara
1018	population	92300
1019	id	1019
1019	name	Batam
1019	countrycode	IDN
1019	district	Riau
1019	population	91871
1020	id	1020
1020	name	Padang Sidempuan
1020	countrycode	IDN
1020	district	Sumatera Utara
1020	population	91200
1021	id	1021
1021	name	Sawangan
1021	countrycode	IDN
1021	district	West Java
1021	population	91100
1022	id	1022
1022	name	Banyuwangi
1022	countrycode	IDN
1022	district	East Java
1022	population	89900
1023	id	1023
1023	name	Tanjung Pinang
1023	countrycode	IDN
1023	district	Riau
1023	population	89900
1024	id	1024
1024	name	Mumbai (Bombay)
1024	countrycode	IND
1024	district	Maharashtra
1024	population	10500000
1025	id	1025
1025	name	Delhi
1025	countrycode	IND
1025	district	Delhi
1025	population	7206704
1026	id	1026
1026	name	Calcutta [Kolkata]
1026	countrycode	IND
1026	district	West Bengali
1026	population	4399819
1027	id	1027
1027	name	Chennai (Madras)
1027	countrycode	IND
1027	district	Tamil Nadu
1027	population	3841396
1028	id	1028
1028	name	Hyderabad
1028	countrycode	IND
1028	district	Andhra Pradesh
1028	population	2964638
1029	id	1029
1029	name	Ahmedabad
1029	countrycode	IND
1029	district	Gujarat
1029	population	2876710
1030	id	1030
1030	name	Bangalore
1030	countrycode	IND
1030	district	Karnataka
1030	population	2660088
1031	id	1031
1031	name	Kanpur
1031	countrycode	IND
1031	district	Uttar Pradesh
1031	population	1874409
1032	id	1032
1032	name	Nagpur
1032	countrycode	IND
1032	district	Maharashtra
1032	population	1624752
1033	id	1033
1033	name	Lucknow
1033	countrycode	IND
1033	district	Uttar Pradesh
1033	population	1619115
1034	id	1034
1034	name	Pune
1034	countrycode	IND
1034	district	Maharashtra
1034	population	1566651
1035	id	1035
1035	name	Surat
1035	countrycode	IND
1035	district	Gujarat
1035	population	1498817
1036	id	1036
1036	name	Jaipur
1036	countrycode	IND
1036	district	Rajasthan
1036	population	1458483
1037	id	1037
1037	name	Indore
1037	countrycode	IND
1037	district	Madhya Pradesh
1037	population	1091674
1038	id	1038
1038	name	Bhopal
1038	countrycode	IND
1038	district	Madhya Pradesh
1038	population	1062771
1039	id	1039
1039	name	Ludhiana
1039	countrycode	IND
1039	district	Punjab
1039	population	1042740
1040	id	1040
1040	name	Vadodara (Baroda)
1040	countrycode	IND
1040	district	Gujarat
1040	population	1031346
1041	id	1041
1041	name	Kalyan
1041	countrycode	IND
1041	district	Maharashtra
1041	population	1014557
1042	id	1042
1042	name	Madurai
1042	countrycode	IND
1042	district	Tamil Nadu
1042	population	977856
1043	id	1043
1043	name	Haora (Howrah)
1043	countrycode	IND
1043	district	West Bengali
1043	population	950435
1044	id	1044
1044	name	Varanasi (Benares)
1044	countrycode	IND
1044	district	Uttar Pradesh
1044	population	929270
1045	id	1045
1045	name	Patna
1045	countrycode	IND
1045	district	Bihar
1045	population	917243
1046	id	1046
1046	name	Srinagar
1046	countrycode	IND
1046	district	Jammu and Kashmir
1046	population	892506
1047	id	1047
1047	name	Agra
1047	countrycode	IND
1047	district	Uttar Pradesh
1047	population	891790
1048	id	1048
1048	name	Coimbatore
1048	countrycode	IND
1048	district	Tamil Nadu
1048	population	816321
1049	id	1049
1049	name	Thane (Thana)
1049	countrycode	IND
1049	district	Maharashtra
1049	population	803389
1050	id	1050
1050	name	Allahabad
1050	countrycode	IND
1050	district	Uttar Pradesh
1050	population	792858
1051	id	1051
1051	name	Meerut
1051	countrycode	IND
1051	district	Uttar Pradesh
1051	population	753778
1052	id	1052
1052	name	Vishakhapatnam
1052	countrycode	IND
1052	district	Andhra Pradesh
1052	population	752037
1053	id	1053
1053	name	Jabalpur
1053	countrycode	IND
1053	district	Madhya Pradesh
1053	population	741927
1054	id	1054
1054	name	Amritsar
1054	countrycode	IND
1054	district	Punjab
1054	population	708835
1055	id	1055
1055	name	Faridabad
1055	countrycode	IND
1055	district	Haryana
1055	population	703592
1056	id	1056
1056	name	Vijayawada
1056	countrycode	IND
1056	district	Andhra Pradesh
1056	population	701827
1057	id	1057
1057	name	Gwalior
1057	countrycode	IND
1057	district	Madhya Pradesh
1057	population	690765
1058	id	1058
1058	name	Jodhpur
1058	countrycode	IND
1058	district	Rajasthan
1058	population	666279
1059	id	1059
1059	name	Nashik (Nasik)
1059	countrycode	IND
1059	district	Maharashtra
1059	population	656925
1060	id	1060
1060	name	Hubli-Dharwad
1060	countrycode	IND
1060	district	Karnataka
1060	population	648298
1061	id	1061
1061	name	Solapur (Sholapur)
1061	countrycode	IND
1061	district	Maharashtra
1061	population	604215
1062	id	1062
1062	name	Ranchi
1062	countrycode	IND
1062	district	Jharkhand
1062	population	599306
1063	id	1063
1063	name	Bareilly
1063	countrycode	IND
1063	district	Uttar Pradesh
1063	population	587211
1064	id	1064
1064	name	Guwahati (Gauhati)
1064	countrycode	IND
1064	district	Assam
1064	population	584342
1065	id	1065
1065	name	Shambajinagar (Aurangabad)
1065	countrycode	IND
1065	district	Maharashtra
1065	population	573272
1066	id	1066
1066	name	Cochin (Kochi)
1066	countrycode	IND
1066	district	Kerala
1066	population	564589
1067	id	1067
1067	name	Rajkot
1067	countrycode	IND
1067	district	Gujarat
1067	population	559407
1068	id	1068
1068	name	Kota
1068	countrycode	IND
1068	district	Rajasthan
1068	population	537371
1069	id	1069
1069	name	Thiruvananthapuram (Trivandrum
1069	countrycode	IND
1069	district	Kerala
1069	population	524006
1070	id	1070
1070	name	Pimpri-Chinchwad
1070	countrycode	IND
1070	district	Maharashtra
1070	population	517083
1071	id	1071
1071	name	Jalandhar (Jullundur)
1071	countrycode	IND
1071	district	Punjab
1071	population	509510
1072	id	1072
1072	name	Gorakhpur
1072	countrycode	IND
1072	district	Uttar Pradesh
1072	population	505566
1073	id	1073
1073	name	Chandigarh
1073	countrycode	IND
1073	district	Chandigarh
1073	population	504094
1074	id	1074
1074	name	Mysore
1074	countrycode	IND
1074	district	Karnataka
1074	population	480692
1075	id	1075
1075	name	Aligarh
1075	countrycode	IND
1075	district	Uttar Pradesh
1075	population	480520
1076	id	1076
1076	name	Guntur
1076	countrycode	IND
1076	district	Andhra Pradesh
1076	population	471051
1077	id	1077
1077	name	Jamshedpur
1077	countrycode	IND
1077	district	Jharkhand
1077	population	460577
1078	id	1078
1078	name	Ghaziabad
1078	countrycode	IND
1078	district	Uttar Pradesh
1078	population	454156
1079	id	1079
1079	name	Warangal
1079	countrycode	IND
1079	district	Andhra Pradesh
1079	population	447657
1080	id	1080
1080	name	Raipur
1080	countrycode	IND
1080	district	Chhatisgarh
1080	population	438639
1081	id	1081
1081	name	Moradabad
1081	countrycode	IND
1081	district	Uttar Pradesh
1081	population	429214
1082	id	1082
1082	name	Durgapur
1082	countrycode	IND
1082	district	West Bengali
1082	population	425836
1083	id	1083
1083	name	Amravati
1083	countrycode	IND
1083	district	Maharashtra
1083	population	421576
1084	id	1084
1084	name	Calicut (Kozhikode)
1084	countrycode	IND
1084	district	Kerala
1084	population	419831
1085	id	1085
1085	name	Bikaner
1085	countrycode	IND
1085	district	Rajasthan
1085	population	416289
1086	id	1086
1086	name	Bhubaneswar
1086	countrycode	IND
1086	district	Orissa
1086	population	411542
1087	id	1087
1087	name	Kolhapur
1087	countrycode	IND
1087	district	Maharashtra
1087	population	406370
1088	id	1088
1088	name	Kataka (Cuttack)
1088	countrycode	IND
1088	district	Orissa
1088	population	403418
1089	id	1089
1089	name	Ajmer
1089	countrycode	IND
1089	district	Rajasthan
1089	population	402700
1090	id	1090
1090	name	Bhavnagar
1090	countrycode	IND
1090	district	Gujarat
1090	population	402338
1091	id	1091
1091	name	Tiruchirapalli
1091	countrycode	IND
1091	district	Tamil Nadu
1091	population	387223
1092	id	1092
1092	name	Bhilai
1092	countrycode	IND
1092	district	Chhatisgarh
1092	population	386159
1093	id	1093
1093	name	Bhiwandi
1093	countrycode	IND
1093	district	Maharashtra
1093	population	379070
1094	id	1094
1094	name	Saharanpur
1094	countrycode	IND
1094	district	Uttar Pradesh
1094	population	374945
1095	id	1095
1095	name	Ulhasnagar
1095	countrycode	IND
1095	district	Maharashtra
1095	population	369077
1096	id	1096
1096	name	Salem
1096	countrycode	IND
1096	district	Tamil Nadu
1096	population	366712
1097	id	1097
1097	name	Ujjain
1097	countrycode	IND
1097	district	Madhya Pradesh
1097	population	362266
1098	id	1098
1098	name	Malegaon
1098	countrycode	IND
1098	district	Maharashtra
1098	population	342595
1099	id	1099
1099	name	Jamnagar
1099	countrycode	IND
1099	district	Gujarat
1099	population	341637
1100	id	1100
1100	name	Bokaro Steel City
1100	countrycode	IND
1100	district	Jharkhand
1100	population	333683
1101	id	1101
1101	name	Akola
1101	countrycode	IND
1101	district	Maharashtra
1101	population	328034
1102	id	1102
1102	name	Belgaum
1102	countrycode	IND
1102	district	Karnataka
1102	population	326399
1103	id	1103
1103	name	Rajahmundry
1103	countrycode	IND
1103	district	Andhra Pradesh
1103	population	324851
1104	id	1104
1104	name	Nellore
1104	countrycode	IND
1104	district	Andhra Pradesh
1104	population	316606
1105	id	1105
1105	name	Udaipur
1105	countrycode	IND
1105	district	Rajasthan
1105	population	308571
1106	id	1106
1106	name	New Bombay
1106	countrycode	IND
1106	district	Maharashtra
1106	population	307297
1107	id	1107
1107	name	Bhatpara
1107	countrycode	IND
1107	district	West Bengali
1107	population	304952
1108	id	1108
1108	name	Gulbarga
1108	countrycode	IND
1108	district	Karnataka
1108	population	304099
1109	id	1109
1109	name	New Delhi
1109	countrycode	IND
1109	district	Delhi
1109	population	301297
1110	id	1110
1110	name	Jhansi
1110	countrycode	IND
1110	district	Uttar Pradesh
1110	population	300850
1111	id	1111
1111	name	Gaya
1111	countrycode	IND
1111	district	Bihar
1111	population	291675
1112	id	1112
1112	name	Kakinada
1112	countrycode	IND
1112	district	Andhra Pradesh
1112	population	279980
1113	id	1113
1113	name	Dhule (Dhulia)
1113	countrycode	IND
1113	district	Maharashtra
1113	population	278317
1114	id	1114
1114	name	Panihati
1114	countrycode	IND
1114	district	West Bengali
1114	population	275990
1115	id	1115
1115	name	Nanded (Nander)
1115	countrycode	IND
1115	district	Maharashtra
1115	population	275083
1116	id	1116
1116	name	Mangalore
1116	countrycode	IND
1116	district	Karnataka
1116	population	273304
1117	id	1117
1117	name	Dehra Dun
1117	countrycode	IND
1117	district	Uttaranchal
1117	population	270159
1118	id	1118
1118	name	Kamarhati
1118	countrycode	IND
1118	district	West Bengali
1118	population	266889
1119	id	1119
1119	name	Davangere
1119	countrycode	IND
1119	district	Karnataka
1119	population	266082
1120	id	1120
1120	name	Asansol
1120	countrycode	IND
1120	district	West Bengali
1120	population	262188
1121	id	1121
1121	name	Bhagalpur
1121	countrycode	IND
1121	district	Bihar
1121	population	253225
1122	id	1122
1122	name	Bellary
1122	countrycode	IND
1122	district	Karnataka
1122	population	245391
1123	id	1123
1123	name	Barddhaman (Burdwan)
1123	countrycode	IND
1123	district	West Bengali
1123	population	245079
1124	id	1124
1124	name	Rampur
1124	countrycode	IND
1124	district	Uttar Pradesh
1124	population	243742
1125	id	1125
1125	name	Jalgaon
1125	countrycode	IND
1125	district	Maharashtra
1125	population	242193
1126	id	1126
1126	name	Muzaffarpur
1126	countrycode	IND
1126	district	Bihar
1126	population	241107
1127	id	1127
1127	name	Nizamabad
1127	countrycode	IND
1127	district	Andhra Pradesh
1127	population	241034
1128	id	1128
1128	name	Muzaffarnagar
1128	countrycode	IND
1128	district	Uttar Pradesh
1128	population	240609
1129	id	1129
1129	name	Patiala
1129	countrycode	IND
1129	district	Punjab
1129	population	238368
1130	id	1130
1130	name	Shahjahanpur
1130	countrycode	IND
1130	district	Uttar Pradesh
1130	population	237713
1131	id	1131
1131	name	Kurnool
1131	countrycode	IND
1131	district	Andhra Pradesh
1131	population	236800
1132	id	1132
1132	name	Tiruppur (Tirupper)
1132	countrycode	IND
1132	district	Tamil Nadu
1132	population	235661
1133	id	1133
1133	name	Rohtak
1133	countrycode	IND
1133	district	Haryana
1133	population	233400
1134	id	1134
1134	name	South Dum Dum
1134	countrycode	IND
1134	district	West Bengali
1134	population	232811
1135	id	1135
1135	name	Mathura
1135	countrycode	IND
1135	district	Uttar Pradesh
1135	population	226691
1136	id	1136
1136	name	Chandrapur
1136	countrycode	IND
1136	district	Maharashtra
1136	population	226105
1137	id	1137
1137	name	Barahanagar (Baranagar)
1137	countrycode	IND
1137	district	West Bengali
1137	population	224821
1138	id	1138
1138	name	Darbhanga
1138	countrycode	IND
1138	district	Bihar
1138	population	218391
1139	id	1139
1139	name	Siliguri (Shiliguri)
1139	countrycode	IND
1139	district	West Bengali
1139	population	216950
1140	id	1140
1140	name	Raurkela
1140	countrycode	IND
1140	district	Orissa
1140	population	215489
1141	id	1141
1141	name	Ambattur
1141	countrycode	IND
1141	district	Tamil Nadu
1141	population	215424
1142	id	1142
1142	name	Panipat
1142	countrycode	IND
1142	district	Haryana
1142	population	215218
1143	id	1143
1143	name	Firozabad
1143	countrycode	IND
1143	district	Uttar Pradesh
1143	population	215128
1144	id	1144
1144	name	Ichalkaranji
1144	countrycode	IND
1144	district	Maharashtra
1144	population	214950
1145	id	1145
1145	name	Jammu
1145	countrycode	IND
1145	district	Jammu and Kashmir
1145	population	214737
1146	id	1146
1146	name	Ramagundam
1146	countrycode	IND
1146	district	Andhra Pradesh
1146	population	214384
1147	id	1147
1147	name	Eluru
1147	countrycode	IND
1147	district	Andhra Pradesh
1147	population	212866
1148	id	1148
1148	name	Brahmapur
1148	countrycode	IND
1148	district	Orissa
1148	population	210418
1149	id	1149
1149	name	Alwar
1149	countrycode	IND
1149	district	Rajasthan
1149	population	205086
1150	id	1150
1150	name	Pondicherry
1150	countrycode	IND
1150	district	Pondicherry
1150	population	203065
1151	id	1151
1151	name	Thanjavur
1151	countrycode	IND
1151	district	Tamil Nadu
1151	population	202013
1152	id	1152
1152	name	Bihar Sharif
1152	countrycode	IND
1152	district	Bihar
1152	population	201323
1153	id	1153
1153	name	Tuticorin
1153	countrycode	IND
1153	district	Tamil Nadu
1153	population	199854
1154	id	1154
1154	name	Imphal
1154	countrycode	IND
1154	district	Manipur
1154	population	198535
1155	id	1155
1155	name	Latur
1155	countrycode	IND
1155	district	Maharashtra
1155	population	197408
1156	id	1156
1156	name	Sagar
1156	countrycode	IND
1156	district	Madhya Pradesh
1156	population	195346
1157	id	1157
1157	name	Farrukhabad-cum-Fatehgarh
1157	countrycode	IND
1157	district	Uttar Pradesh
1157	population	194567
1158	id	1158
1158	name	Sangli
1158	countrycode	IND
1158	district	Maharashtra
1158	population	193197
1159	id	1159
1159	name	Parbhani
1159	countrycode	IND
1159	district	Maharashtra
1159	population	190255
1160	id	1160
1160	name	Nagar Coil
1160	countrycode	IND
1160	district	Tamil Nadu
1160	population	190084
1161	id	1161
1161	name	Bijapur
1161	countrycode	IND
1161	district	Karnataka
1161	population	186939
1162	id	1162
1162	name	Kukatpalle
1162	countrycode	IND
1162	district	Andhra Pradesh
1162	population	185378
1163	id	1163
1163	name	Bally
1163	countrycode	IND
1163	district	West Bengali
1163	population	184474
1164	id	1164
1164	name	Bhilwara
1164	countrycode	IND
1164	district	Rajasthan
1164	population	183965
1165	id	1165
1165	name	Ratlam
1165	countrycode	IND
1165	district	Madhya Pradesh
1165	population	183375
1166	id	1166
1166	name	Avadi
1166	countrycode	IND
1166	district	Tamil Nadu
1166	population	183215
1167	id	1167
1167	name	Dindigul
1167	countrycode	IND
1167	district	Tamil Nadu
1167	population	182477
1168	id	1168
1168	name	Ahmadnagar
1168	countrycode	IND
1168	district	Maharashtra
1168	population	181339
1169	id	1169
1169	name	Bilaspur
1169	countrycode	IND
1169	district	Chhatisgarh
1169	population	179833
1170	id	1170
1170	name	Shimoga
1170	countrycode	IND
1170	district	Karnataka
1170	population	179258
1171	id	1171
1171	name	Kharagpur
1171	countrycode	IND
1171	district	West Bengali
1171	population	177989
1172	id	1172
1172	name	Mira Bhayandar
1172	countrycode	IND
1172	district	Maharashtra
1172	population	175372
1173	id	1173
1173	name	Vellore
1173	countrycode	IND
1173	district	Tamil Nadu
1173	population	175061
1174	id	1174
1174	name	Jalna
1174	countrycode	IND
1174	district	Maharashtra
1174	population	174985
1175	id	1175
1175	name	Burnpur
1175	countrycode	IND
1175	district	West Bengali
1175	population	174933
1176	id	1176
1176	name	Anantapur
1176	countrycode	IND
1176	district	Andhra Pradesh
1176	population	174924
1177	id	1177
1177	name	Allappuzha (Alleppey)
1177	countrycode	IND
1177	district	Kerala
1177	population	174666
1178	id	1178
1178	name	Tirupati
1178	countrycode	IND
1178	district	Andhra Pradesh
1178	population	174369
1179	id	1179
1179	name	Karnal
1179	countrycode	IND
1179	district	Haryana
1179	population	173751
1180	id	1180
1180	name	Burhanpur
1180	countrycode	IND
1180	district	Madhya Pradesh
1180	population	172710
1181	id	1181
1181	name	Hisar (Hissar)
1181	countrycode	IND
1181	district	Haryana
1181	population	172677
1182	id	1182
1182	name	Tiruvottiyur
1182	countrycode	IND
1182	district	Tamil Nadu
1182	population	172562
1183	id	1183
1183	name	Mirzapur-cum-Vindhyachal
1183	countrycode	IND
1183	district	Uttar Pradesh
1183	population	169336
1184	id	1184
1184	name	Secunderabad
1184	countrycode	IND
1184	district	Andhra Pradesh
1184	population	167461
1185	id	1185
1185	name	Nadiad
1185	countrycode	IND
1185	district	Gujarat
1185	population	167051
1186	id	1186
1186	name	Dewas
1186	countrycode	IND
1186	district	Madhya Pradesh
1186	population	164364
1187	id	1187
1187	name	Murwara (Katni)
1187	countrycode	IND
1187	district	Madhya Pradesh
1187	population	163431
1188	id	1188
1188	name	Ganganagar
1188	countrycode	IND
1188	district	Rajasthan
1188	population	161482
1189	id	1189
1189	name	Vizianagaram
1189	countrycode	IND
1189	district	Andhra Pradesh
1189	population	160359
1190	id	1190
1190	name	Erode
1190	countrycode	IND
1190	district	Tamil Nadu
1190	population	159232
1191	id	1191
1191	name	Machilipatnam (Masulipatam)
1191	countrycode	IND
1191	district	Andhra Pradesh
1191	population	159110
1192	id	1192
1192	name	Bhatinda (Bathinda)
1192	countrycode	IND
1192	district	Punjab
1192	population	159042
1193	id	1193
1193	name	Raichur
1193	countrycode	IND
1193	district	Karnataka
1193	population	157551
1194	id	1194
1194	name	Agartala
1194	countrycode	IND
1194	district	Tripura
1194	population	157358
1195	id	1195
1195	name	Arrah (Ara)
1195	countrycode	IND
1195	district	Bihar
1195	population	157082
1196	id	1196
1196	name	Satna
1196	countrycode	IND
1196	district	Madhya Pradesh
1196	population	156630
1197	id	1197
1197	name	Lalbahadur Nagar
1197	countrycode	IND
1197	district	Andhra Pradesh
1197	population	155500
1198	id	1198
1198	name	Aizawl
1198	countrycode	IND
1198	district	Mizoram
1198	population	155240
1199	id	1199
1199	name	Uluberia
1199	countrycode	IND
1199	district	West Bengali
1199	population	155172
1200	id	1200
1200	name	Katihar
1200	countrycode	IND
1200	district	Bihar
1200	population	154367
1201	id	1201
1201	name	Cuddalore
1201	countrycode	IND
1201	district	Tamil Nadu
1201	population	153086
1202	id	1202
1202	name	Hugli-Chinsurah
1202	countrycode	IND
1202	district	West Bengali
1202	population	151806
1203	id	1203
1203	name	Dhanbad
1203	countrycode	IND
1203	district	Jharkhand
1203	population	151789
1204	id	1204
1204	name	Raiganj
1204	countrycode	IND
1204	district	West Bengali
1204	population	151045
1205	id	1205
1205	name	Sambhal
1205	countrycode	IND
1205	district	Uttar Pradesh
1205	population	150869
1206	id	1206
1206	name	Durg
1206	countrycode	IND
1206	district	Chhatisgarh
1206	population	150645
1207	id	1207
1207	name	Munger (Monghyr)
1207	countrycode	IND
1207	district	Bihar
1207	population	150112
1208	id	1208
1208	name	Kanchipuram
1208	countrycode	IND
1208	district	Tamil Nadu
1208	population	150100
1209	id	1209
1209	name	North Dum Dum
1209	countrycode	IND
1209	district	West Bengali
1209	population	149965
1210	id	1210
1210	name	Karimnagar
1210	countrycode	IND
1210	district	Andhra Pradesh
1210	population	148583
1211	id	1211
1211	name	Bharatpur
1211	countrycode	IND
1211	district	Rajasthan
1211	population	148519
1212	id	1212
1212	name	Sikar
1212	countrycode	IND
1212	district	Rajasthan
1212	population	148272
1213	id	1213
1213	name	Hardwar (Haridwar)
1213	countrycode	IND
1213	district	Uttaranchal
1213	population	147305
1214	id	1214
1214	name	Dabgram
1214	countrycode	IND
1214	district	West Bengali
1214	population	147217
1215	id	1215
1215	name	Morena
1215	countrycode	IND
1215	district	Madhya Pradesh
1215	population	147124
1216	id	1216
1216	name	Noida
1216	countrycode	IND
1216	district	Uttar Pradesh
1216	population	146514
1217	id	1217
1217	name	Hapur
1217	countrycode	IND
1217	district	Uttar Pradesh
1217	population	146262
1218	id	1218
1218	name	Bhusawal
1218	countrycode	IND
1218	district	Maharashtra
1218	population	145143
1219	id	1219
1219	name	Khandwa
1219	countrycode	IND
1219	district	Madhya Pradesh
1219	population	145133
1220	id	1220
1220	name	Yamuna Nagar
1220	countrycode	IND
1220	district	Haryana
1220	population	144346
1221	id	1221
1221	name	Sonipat (Sonepat)
1221	countrycode	IND
1221	district	Haryana
1221	population	143922
1222	id	1222
1222	name	Tenali
1222	countrycode	IND
1222	district	Andhra Pradesh
1222	population	143726
1223	id	1223
1223	name	Raurkela Civil Township
1223	countrycode	IND
1223	district	Orissa
1223	population	140408
1224	id	1224
1224	name	Kollam (Quilon)
1224	countrycode	IND
1224	district	Kerala
1224	population	139852
1225	id	1225
1225	name	Kumbakonam
1225	countrycode	IND
1225	district	Tamil Nadu
1225	population	139483
1226	id	1226
1226	name	Ingraj Bazar (English Bazar)
1226	countrycode	IND
1226	district	West Bengali
1226	population	139204
1227	id	1227
1227	name	Timkur
1227	countrycode	IND
1227	district	Karnataka
1227	population	138903
1228	id	1228
1228	name	Amroha
1228	countrycode	IND
1228	district	Uttar Pradesh
1228	population	137061
1229	id	1229
1229	name	Serampore
1229	countrycode	IND
1229	district	West Bengali
1229	population	137028
1230	id	1230
1230	name	Chapra
1230	countrycode	IND
1230	district	Bihar
1230	population	136877
1231	id	1231
1231	name	Pali
1231	countrycode	IND
1231	district	Rajasthan
1231	population	136842
1232	id	1232
1232	name	Maunath Bhanjan
1232	countrycode	IND
1232	district	Uttar Pradesh
1232	population	136697
1233	id	1233
1233	name	Adoni
1233	countrycode	IND
1233	district	Andhra Pradesh
1233	population	136182
1234	id	1234
1234	name	Jaunpur
1234	countrycode	IND
1234	district	Uttar Pradesh
1234	population	136062
1235	id	1235
1235	name	Tirunelveli
1235	countrycode	IND
1235	district	Tamil Nadu
1235	population	135825
1236	id	1236
1236	name	Bahraich
1236	countrycode	IND
1236	district	Uttar Pradesh
1236	population	135400
1237	id	1237
1237	name	Gadag Betigeri
1237	countrycode	IND
1237	district	Karnataka
1237	population	134051
1238	id	1238
1238	name	Proddatur
1238	countrycode	IND
1238	district	Andhra Pradesh
1238	population	133914
1239	id	1239
1239	name	Chittoor
1239	countrycode	IND
1239	district	Andhra Pradesh
1239	population	133462
1240	id	1240
1240	name	Barrackpur
1240	countrycode	IND
1240	district	West Bengali
1240	population	133265
1241	id	1241
1241	name	Bharuch (Broach)
1241	countrycode	IND
1241	district	Gujarat
1241	population	133102
1242	id	1242
1242	name	Naihati
1242	countrycode	IND
1242	district	West Bengali
1242	population	132701
1243	id	1243
1243	name	Shillong
1243	countrycode	IND
1243	district	Meghalaya
1243	population	131719
1244	id	1244
1244	name	Sambalpur
1244	countrycode	IND
1244	district	Orissa
1244	population	131138
1245	id	1245
1245	name	Junagadh
1245	countrycode	IND
1245	district	Gujarat
1245	population	130484
1246	id	1246
1246	name	Rae Bareli
1246	countrycode	IND
1246	district	Uttar Pradesh
1246	population	129904
1247	id	1247
1247	name	Rewa
1247	countrycode	IND
1247	district	Madhya Pradesh
1247	population	128981
1248	id	1248
1248	name	Gurgaon
1248	countrycode	IND
1248	district	Haryana
1248	population	128608
1249	id	1249
1249	name	Khammam
1249	countrycode	IND
1249	district	Andhra Pradesh
1249	population	127992
1250	id	1250
1250	name	Bulandshahr
1250	countrycode	IND
1250	district	Uttar Pradesh
1250	population	127201
1251	id	1251
1251	name	Navsari
1251	countrycode	IND
1251	district	Gujarat
1251	population	126089
1252	id	1252
1252	name	Malkajgiri
1252	countrycode	IND
1252	district	Andhra Pradesh
1252	population	126066
1253	id	1253
1253	name	Midnapore (Medinipur)
1253	countrycode	IND
1253	district	West Bengali
1253	population	125498
1254	id	1254
1254	name	Miraj
1254	countrycode	IND
1254	district	Maharashtra
1254	population	125407
1255	id	1255
1255	name	Raj Nandgaon
1255	countrycode	IND
1255	district	Chhatisgarh
1255	population	125371
1256	id	1256
1256	name	Alandur
1256	countrycode	IND
1256	district	Tamil Nadu
1256	population	125244
1257	id	1257
1257	name	Puri
1257	countrycode	IND
1257	district	Orissa
1257	population	125199
1258	id	1258
1258	name	Navadwip
1258	countrycode	IND
1258	district	West Bengali
1258	population	125037
1259	id	1259
1259	name	Sirsa
1259	countrycode	IND
1259	district	Haryana
1259	population	125000
1260	id	1260
1260	name	Korba
1260	countrycode	IND
1260	district	Chhatisgarh
1260	population	124501
1261	id	1261
1261	name	Faizabad
1261	countrycode	IND
1261	district	Uttar Pradesh
1261	population	124437
1262	id	1262
1262	name	Etawah
1262	countrycode	IND
1262	district	Uttar Pradesh
1262	population	124072
1263	id	1263
1263	name	Pathankot
1263	countrycode	IND
1263	district	Punjab
1263	population	123930
1264	id	1264
1264	name	Gandhinagar
1264	countrycode	IND
1264	district	Gujarat
1264	population	123359
1265	id	1265
1265	name	Palghat (Palakkad)
1265	countrycode	IND
1265	district	Kerala
1265	population	123289
1266	id	1266
1266	name	Veraval
1266	countrycode	IND
1266	district	Gujarat
1266	population	123000
1267	id	1267
1267	name	Hoshiarpur
1267	countrycode	IND
1267	district	Punjab
1267	population	122705
1268	id	1268
1268	name	Ambala
1268	countrycode	IND
1268	district	Haryana
1268	population	122596
1269	id	1269
1269	name	Sitapur
1269	countrycode	IND
1269	district	Uttar Pradesh
1269	population	121842
1270	id	1270
1270	name	Bhiwani
1270	countrycode	IND
1270	district	Haryana
1270	population	121629
1271	id	1271
1271	name	Cuddapah
1271	countrycode	IND
1271	district	Andhra Pradesh
1271	population	121463
1272	id	1272
1272	name	Bhimavaram
1272	countrycode	IND
1272	district	Andhra Pradesh
1272	population	121314
1273	id	1273
1273	name	Krishnanagar
1273	countrycode	IND
1273	district	West Bengali
1273	population	121110
1274	id	1274
1274	name	Chandannagar
1274	countrycode	IND
1274	district	West Bengali
1274	population	120378
1275	id	1275
1275	name	Mandya
1275	countrycode	IND
1275	district	Karnataka
1275	population	120265
1276	id	1276
1276	name	Dibrugarh
1276	countrycode	IND
1276	district	Assam
1276	population	120127
1277	id	1277
1277	name	Nandyal
1277	countrycode	IND
1277	district	Andhra Pradesh
1277	population	119813
1278	id	1278
1278	name	Balurghat
1278	countrycode	IND
1278	district	West Bengali
1278	population	119796
1279	id	1279
1279	name	Neyveli
1279	countrycode	IND
1279	district	Tamil Nadu
1279	population	118080
1280	id	1280
1280	name	Fatehpur
1280	countrycode	IND
1280	district	Uttar Pradesh
1280	population	117675
1281	id	1281
1281	name	Mahbubnagar
1281	countrycode	IND
1281	district	Andhra Pradesh
1281	population	116833
1282	id	1282
1282	name	Budaun
1282	countrycode	IND
1282	district	Uttar Pradesh
1282	population	116695
1283	id	1283
1283	name	Porbandar
1283	countrycode	IND
1283	district	Gujarat
1283	population	116671
1284	id	1284
1284	name	Silchar
1284	countrycode	IND
1284	district	Assam
1284	population	115483
1285	id	1285
1285	name	Berhampore (Baharampur)
1285	countrycode	IND
1285	district	West Bengali
1285	population	115144
1286	id	1286
1286	name	Purnea (Purnia)
1286	countrycode	IND
1286	district	Jharkhand
1286	population	114912
1287	id	1287
1287	name	Bankura
1287	countrycode	IND
1287	district	West Bengali
1287	population	114876
1288	id	1288
1288	name	Rajapalaiyam
1288	countrycode	IND
1288	district	Tamil Nadu
1288	population	114202
1289	id	1289
1289	name	Titagarh
1289	countrycode	IND
1289	district	West Bengali
1289	population	114085
1290	id	1290
1290	name	Halisahar
1290	countrycode	IND
1290	district	West Bengali
1290	population	114028
1291	id	1291
1291	name	Hathras
1291	countrycode	IND
1291	district	Uttar Pradesh
1291	population	113285
1292	id	1292
1292	name	Bhir (Bid)
1292	countrycode	IND
1292	district	Maharashtra
1292	population	112434
1293	id	1293
1293	name	Pallavaram
1293	countrycode	IND
1293	district	Tamil Nadu
1293	population	111866
1294	id	1294
1294	name	Anand
1294	countrycode	IND
1294	district	Gujarat
1294	population	110266
1295	id	1295
1295	name	Mango
1295	countrycode	IND
1295	district	Jharkhand
1295	population	110024
1296	id	1296
1296	name	Santipur
1296	countrycode	IND
1296	district	West Bengali
1296	population	109956
1297	id	1297
1297	name	Bhind
1297	countrycode	IND
1297	district	Madhya Pradesh
1297	population	109755
1298	id	1298
1298	name	Gondiya
1298	countrycode	IND
1298	district	Maharashtra
1298	population	109470
1299	id	1299
1299	name	Tiruvannamalai
1299	countrycode	IND
1299	district	Tamil Nadu
1299	population	109196
1300	id	1300
1300	name	Yeotmal (Yavatmal)
1300	countrycode	IND
1300	district	Maharashtra
1300	population	108578
1301	id	1301
1301	name	Kulti-Barakar
1301	countrycode	IND
1301	district	West Bengali
1301	population	108518
1302	id	1302
1302	name	Moga
1302	countrycode	IND
1302	district	Punjab
1302	population	108304
1303	id	1303
1303	name	Shivapuri
1303	countrycode	IND
1303	district	Madhya Pradesh
1303	population	108277
1304	id	1304
1304	name	Bidar
1304	countrycode	IND
1304	district	Karnataka
1304	population	108016
1305	id	1305
1305	name	Guntakal
1305	countrycode	IND
1305	district	Andhra Pradesh
1305	population	107592
1306	id	1306
1306	name	Unnao
1306	countrycode	IND
1306	district	Uttar Pradesh
1306	population	107425
1307	id	1307
1307	name	Barasat
1307	countrycode	IND
1307	district	West Bengali
1307	population	107365
1308	id	1308
1308	name	Tambaram
1308	countrycode	IND
1308	district	Tamil Nadu
1308	population	107187
1309	id	1309
1309	name	Abohar
1309	countrycode	IND
1309	district	Punjab
1309	population	107163
1310	id	1310
1310	name	Pilibhit
1310	countrycode	IND
1310	district	Uttar Pradesh
1310	population	106605
1311	id	1311
1311	name	Valparai
1311	countrycode	IND
1311	district	Tamil Nadu
1311	population	106523
1312	id	1312
1312	name	Gonda
1312	countrycode	IND
1312	district	Uttar Pradesh
1312	population	106078
1313	id	1313
1313	name	Surendranagar
1313	countrycode	IND
1313	district	Gujarat
1313	population	105973
1314	id	1314
1314	name	Qutubullapur
1314	countrycode	IND
1314	district	Andhra Pradesh
1314	population	105380
1315	id	1315
1315	name	Beawar
1315	countrycode	IND
1315	district	Rajasthan
1315	population	105363
1316	id	1316
1316	name	Hindupur
1316	countrycode	IND
1316	district	Andhra Pradesh
1316	population	104651
1317	id	1317
1317	name	Gandhidham
1317	countrycode	IND
1317	district	Gujarat
1317	population	104585
1318	id	1318
1318	name	Haldwani-cum-Kathgodam
1318	countrycode	IND
1318	district	Uttaranchal
1318	population	104195
1319	id	1319
1319	name	Tellicherry (Thalassery)
1319	countrycode	IND
1319	district	Kerala
1319	population	103579
1320	id	1320
1320	name	Wardha
1320	countrycode	IND
1320	district	Maharashtra
1320	population	102985
1321	id	1321
1321	name	Rishra
1321	countrycode	IND
1321	district	West Bengali
1321	population	102649
1322	id	1322
1322	name	Bhuj
1322	countrycode	IND
1322	district	Gujarat
1322	population	102176
1323	id	1323
1323	name	Modinagar
1323	countrycode	IND
1323	district	Uttar Pradesh
1323	population	101660
1324	id	1324
1324	name	Gudivada
1324	countrycode	IND
1324	district	Andhra Pradesh
1324	population	101656
1325	id	1325
1325	name	Basirhat
1325	countrycode	IND
1325	district	West Bengali
1325	population	101409
1326	id	1326
1326	name	Uttarpara-Kotrung
1326	countrycode	IND
1326	district	West Bengali
1326	population	100867
1327	id	1327
1327	name	Ongole
1327	countrycode	IND
1327	district	Andhra Pradesh
1327	population	100836
1328	id	1328
1328	name	North Barrackpur
1328	countrycode	IND
1328	district	West Bengali
1328	population	100513
1329	id	1329
1329	name	Guna
1329	countrycode	IND
1329	district	Madhya Pradesh
1329	population	100490
1330	id	1330
1330	name	Haldia
1330	countrycode	IND
1330	district	West Bengali
1330	population	100347
1331	id	1331
1331	name	Habra
1331	countrycode	IND
1331	district	West Bengali
1331	population	100223
1332	id	1332
1332	name	Kanchrapara
1332	countrycode	IND
1332	district	West Bengali
1332	population	100194
1333	id	1333
1333	name	Tonk
1333	countrycode	IND
1333	district	Rajasthan
1333	population	100079
1334	id	1334
1334	name	Champdani
1334	countrycode	IND
1334	district	West Bengali
1334	population	98818
1335	id	1335
1335	name	Orai
1335	countrycode	IND
1335	district	Uttar Pradesh
1335	population	98640
1336	id	1336
1336	name	Pudukkottai
1336	countrycode	IND
1336	district	Tamil Nadu
1336	population	98619
1337	id	1337
1337	name	Sasaram
1337	countrycode	IND
1337	district	Bihar
1337	population	98220
1338	id	1338
1338	name	Hazaribag
1338	countrycode	IND
1338	district	Jharkhand
1338	population	97712
1339	id	1339
1339	name	Palayankottai
1339	countrycode	IND
1339	district	Tamil Nadu
1339	population	97662
1340	id	1340
1340	name	Banda
1340	countrycode	IND
1340	district	Uttar Pradesh
1340	population	97227
1341	id	1341
1341	name	Godhra
1341	countrycode	IND
1341	district	Gujarat
1341	population	96813
1342	id	1342
1342	name	Hospet
1342	countrycode	IND
1342	district	Karnataka
1342	population	96322
1343	id	1343
1343	name	Ashoknagar-Kalyangarh
1343	countrycode	IND
1343	district	West Bengali
1343	population	96315
1344	id	1344
1344	name	Achalpur
1344	countrycode	IND
1344	district	Maharashtra
1344	population	96216
1345	id	1345
1345	name	Patan
1345	countrycode	IND
1345	district	Gujarat
1345	population	96109
1346	id	1346
1346	name	Mandasor
1346	countrycode	IND
1346	district	Madhya Pradesh
1346	population	95758
1347	id	1347
1347	name	Damoh
1347	countrycode	IND
1347	district	Madhya Pradesh
1347	population	95661
1348	id	1348
1348	name	Satara
1348	countrycode	IND
1348	district	Maharashtra
1348	population	95133
1349	id	1349
1349	name	Meerut Cantonment
1349	countrycode	IND
1349	district	Uttar Pradesh
1349	population	94876
1350	id	1350
1350	name	Dehri
1350	countrycode	IND
1350	district	Bihar
1350	population	94526
1351	id	1351
1351	name	Delhi Cantonment
1351	countrycode	IND
1351	district	Delhi
1351	population	94326
1352	id	1352
1352	name	Chhindwara
1352	countrycode	IND
1352	district	Madhya Pradesh
1352	population	93731
1353	id	1353
1353	name	Bansberia
1353	countrycode	IND
1353	district	West Bengali
1353	population	93447
1354	id	1354
1354	name	Nagaon
1354	countrycode	IND
1354	district	Assam
1354	population	93350
1355	id	1355
1355	name	Kanpur Cantonment
1355	countrycode	IND
1355	district	Uttar Pradesh
1355	population	93109
1356	id	1356
1356	name	Vidisha
1356	countrycode	IND
1356	district	Madhya Pradesh
1356	population	92917
1357	id	1357
1357	name	Bettiah
1357	countrycode	IND
1357	district	Bihar
1357	population	92583
1358	id	1358
1358	name	Purulia
1358	countrycode	IND
1358	district	Jharkhand
1358	population	92574
1359	id	1359
1359	name	Hassan
1359	countrycode	IND
1359	district	Karnataka
1359	population	90803
1360	id	1360
1360	name	Ambala Sadar
1360	countrycode	IND
1360	district	Haryana
1360	population	90712
1361	id	1361
1361	name	Baidyabati
1361	countrycode	IND
1361	district	West Bengali
1361	population	90601
1362	id	1362
1362	name	Morvi
1362	countrycode	IND
1362	district	Gujarat
1362	population	90357
1363	id	1363
1363	name	Raigarh
1363	countrycode	IND
1363	district	Chhatisgarh
1363	population	89166
1364	id	1364
1364	name	Vejalpur
1364	countrycode	IND
1364	district	Gujarat
1364	population	89053
1365	id	1365
1365	name	Baghdad
1365	countrycode	IRQ
1365	district	Baghdad
1365	population	4336000
1366	id	1366
1366	name	Mosul
1366	countrycode	IRQ
1366	district	Ninawa
1366	population	879000
1367	id	1367
1367	name	Irbil
1367	countrycode	IRQ
1367	district	Irbil
1367	population	485968
1368	id	1368
1368	name	Kirkuk
1368	countrycode	IRQ
1368	district	al-Tamim
1368	population	418624
1369	id	1369
1369	name	Basra
1369	countrycode	IRQ
1369	district	Basra
1369	population	406296
1370	id	1370
1370	name	al-Sulaymaniya
1370	countrycode	IRQ
1370	district	al-Sulaymaniya
1370	population	364096
1371	id	1371
1371	name	al-Najaf
1371	countrycode	IRQ
1371	district	al-Najaf
1371	population	309010
1372	id	1372
1372	name	Karbala
1372	countrycode	IRQ
1372	district	Karbala
1372	population	296705
1373	id	1373
1373	name	al-Hilla
1373	countrycode	IRQ
1373	district	Babil
1373	population	268834
1374	id	1374
1374	name	al-Nasiriya
1374	countrycode	IRQ
1374	district	DhiQar
1374	population	265937
1375	id	1375
1375	name	al-Amara
1375	countrycode	IRQ
1375	district	Maysan
1375	population	208797
1376	id	1376
1376	name	al-Diwaniya
1376	countrycode	IRQ
1376	district	al-Qadisiya
1376	population	196519
1377	id	1377
1377	name	al-Ramadi
1377	countrycode	IRQ
1377	district	al-Anbar
1377	population	192556
1378	id	1378
1378	name	al-Kut
1378	countrycode	IRQ
1378	district	Wasit
1378	population	183183
1379	id	1379
1379	name	Baquba
1379	countrycode	IRQ
1379	district	Diyala
1379	population	114516
1380	id	1380
1380	name	Teheran
1380	countrycode	IRN
1380	district	Teheran
1380	population	6758845
1381	id	1381
1381	name	Mashhad
1381	countrycode	IRN
1381	district	Khorasan
1381	population	1887405
1382	id	1382
1382	name	Esfahan
1382	countrycode	IRN
1382	district	Esfahan
1382	population	1266072
1383	id	1383
1383	name	Tabriz
1383	countrycode	IRN
1383	district	East Azerbaidzan
1383	population	1191043
1384	id	1384
1384	name	Shiraz
1384	countrycode	IRN
1384	district	Fars
1384	population	1053025
1385	id	1385
1385	name	Karaj
1385	countrycode	IRN
1385	district	Teheran
1385	population	940968
1386	id	1386
1386	name	Ahvaz
1386	countrycode	IRN
1386	district	Khuzestan
1386	population	804980
1387	id	1387
1387	name	Qom
1387	countrycode	IRN
1387	district	Qom
1387	population	777677
1388	id	1388
1388	name	Kermanshah
1388	countrycode	IRN
1388	district	Kermanshah
1388	population	692986
1389	id	1389
1389	name	Urmia
1389	countrycode	IRN
1389	district	West Azerbaidzan
1389	population	435200
1390	id	1390
1390	name	Zahedan
1390	countrycode	IRN
1390	district	Sistan va Baluchesta
1390	population	419518
1391	id	1391
1391	name	Rasht
1391	countrycode	IRN
1391	district	Gilan
1391	population	417748
1392	id	1392
1392	name	Hamadan
1392	countrycode	IRN
1392	district	Hamadan
1392	population	401281
1393	id	1393
1393	name	Kerman
1393	countrycode	IRN
1393	district	Kerman
1393	population	384991
1394	id	1394
1394	name	Arak
1394	countrycode	IRN
1394	district	Markazi
1394	population	380755
1395	id	1395
1395	name	Ardebil
1395	countrycode	IRN
1395	district	Ardebil
1395	population	340386
1396	id	1396
1396	name	Yazd
1396	countrycode	IRN
1396	district	Yazd
1396	population	326776
1397	id	1397
1397	name	Qazvin
1397	countrycode	IRN
1397	district	Qazvin
1397	population	291117
1398	id	1398
1398	name	Zanjan
1398	countrycode	IRN
1398	district	Zanjan
1398	population	286295
1399	id	1399
1399	name	Sanandaj
1399	countrycode	IRN
1399	district	Kordestan
1399	population	277808
1400	id	1400
1400	name	Bandar-e-Abbas
1400	countrycode	IRN
1400	district	Hormozgan
1400	population	273578
1401	id	1401
1401	name	Khorramabad
1401	countrycode	IRN
1401	district	Lorestan
1401	population	272815
1402	id	1402
1402	name	Eslamshahr
1402	countrycode	IRN
1402	district	Teheran
1402	population	265450
1403	id	1403
1403	name	Borujerd
1403	countrycode	IRN
1403	district	Lorestan
1403	population	217804
1404	id	1404
1404	name	Abadan
1404	countrycode	IRN
1404	district	Khuzestan
1404	population	206073
1405	id	1405
1405	name	Dezful
1405	countrycode	IRN
1405	district	Khuzestan
1405	population	202639
1406	id	1406
1406	name	Kashan
1406	countrycode	IRN
1406	district	Esfahan
1406	population	201372
1407	id	1407
1407	name	Sari
1407	countrycode	IRN
1407	district	Mazandaran
1407	population	195882
1408	id	1408
1408	name	Gorgan
1408	countrycode	IRN
1408	district	Golestan
1408	population	188710
1409	id	1409
1409	name	Najafabad
1409	countrycode	IRN
1409	district	Esfahan
1409	population	178498
1410	id	1410
1410	name	Sabzevar
1410	countrycode	IRN
1410	district	Khorasan
1410	population	170738
1411	id	1411
1411	name	Khomeynishahr
1411	countrycode	IRN
1411	district	Esfahan
1411	population	165888
1412	id	1412
1412	name	Amol
1412	countrycode	IRN
1412	district	Mazandaran
1412	population	159092
1413	id	1413
1413	name	Neyshabur
1413	countrycode	IRN
1413	district	Khorasan
1413	population	158847
1414	id	1414
1414	name	Babol
1414	countrycode	IRN
1414	district	Mazandaran
1414	population	158346
1415	id	1415
1415	name	Khoy
1415	countrycode	IRN
1415	district	West Azerbaidzan
1415	population	148944
1416	id	1416
1416	name	Malayer
1416	countrycode	IRN
1416	district	Hamadan
1416	population	144373
1417	id	1417
1417	name	Bushehr
1417	countrycode	IRN
1417	district	Bushehr
1417	population	143641
1418	id	1418
1418	name	Qaemshahr
1418	countrycode	IRN
1418	district	Mazandaran
1418	population	143286
1419	id	1419
1419	name	Qarchak
1419	countrycode	IRN
1419	district	Teheran
1419	population	142690
1420	id	1420
1420	name	Qods
1420	countrycode	IRN
1420	district	Teheran
1420	population	138278
1421	id	1421
1421	name	Sirjan
1421	countrycode	IRN
1421	district	Kerman
1421	population	135024
1422	id	1422
1422	name	Bojnurd
1422	countrycode	IRN
1422	district	Khorasan
1422	population	134835
1423	id	1423
1423	name	Maragheh
1423	countrycode	IRN
1423	district	East Azerbaidzan
1423	population	132318
1424	id	1424
1424	name	Birjand
1424	countrycode	IRN
1424	district	Khorasan
1424	population	127608
1425	id	1425
1425	name	Ilam
1425	countrycode	IRN
1425	district	Ilam
1425	population	126346
1426	id	1426
1426	name	Bukan
1426	countrycode	IRN
1426	district	West Azerbaidzan
1426	population	120020
1427	id	1427
1427	name	Masjed-e-Soleyman
1427	countrycode	IRN
1427	district	Khuzestan
1427	population	116883
1428	id	1428
1428	name	Saqqez
1428	countrycode	IRN
1428	district	Kordestan
1428	population	115394
1429	id	1429
1429	name	Gonbad-e Qabus
1429	countrycode	IRN
1429	district	Mazandaran
1429	population	111253
1430	id	1430
1430	name	Saveh
1430	countrycode	IRN
1430	district	Qom
1430	population	111245
1431	id	1431
1431	name	Mahabad
1431	countrycode	IRN
1431	district	West Azerbaidzan
1431	population	107799
1432	id	1432
1432	name	Varamin
1432	countrycode	IRN
1432	district	Teheran
1432	population	107233
1433	id	1433
1433	name	Andimeshk
1433	countrycode	IRN
1433	district	Khuzestan
1433	population	106923
1434	id	1434
1434	name	Khorramshahr
1434	countrycode	IRN
1434	district	Khuzestan
1434	population	105636
1435	id	1435
1435	name	Shahrud
1435	countrycode	IRN
1435	district	Semnan
1435	population	104765
1436	id	1436
1436	name	Marv Dasht
1436	countrycode	IRN
1436	district	Fars
1436	population	103579
1437	id	1437
1437	name	Zabol
1437	countrycode	IRN
1437	district	Sistan va Baluchesta
1437	population	100887
1438	id	1438
1438	name	Shahr-e Kord
1438	countrycode	IRN
1438	district	Chaharmahal va Bakht
1438	population	100477
1439	id	1439
1439	name	Bandar-e Anzali
1439	countrycode	IRN
1439	district	Gilan
1439	population	98500
1440	id	1440
1440	name	Rafsanjan
1440	countrycode	IRN
1440	district	Kerman
1440	population	98300
1441	id	1441
1441	name	Marand
1441	countrycode	IRN
1441	district	East Azerbaidzan
1441	population	96400
1442	id	1442
1442	name	Torbat-e Heydariyeh
1442	countrycode	IRN
1442	district	Khorasan
1442	population	94600
1443	id	1443
1443	name	Jahrom
1443	countrycode	IRN
1443	district	Fars
1443	population	94200
1444	id	1444
1444	name	Semnan
1444	countrycode	IRN
1444	district	Semnan
1444	population	91045
1445	id	1445
1445	name	Miandoab
1445	countrycode	IRN
1445	district	West Azerbaidzan
1445	population	90100
1446	id	1446
1446	name	Qomsheh
1446	countrycode	IRN
1446	district	Esfahan
1446	population	89800
1447	id	1447
1447	name	Dublin
1447	countrycode	IRL
1447	district	Leinster
1447	population	481854
1448	id	1448
1448	name	Cork
1448	countrycode	IRL
1448	district	Munster
1448	population	127187
1449	id	1449
1449	name	Reykjavík
1449	countrycode	ISL
1449	district	Höfuðborgarsvæði
1449	population	109184
1450	id	1450
1450	name	Jerusalem
1450	countrycode	ISR
1450	district	Jerusalem
1450	population	633700
1451	id	1451
1451	name	Tel Aviv-Jaffa
1451	countrycode	ISR
1451	district	Tel Aviv
1451	population	348100
1452	id	1452
1452	name	Haifa
1452	countrycode	ISR
1452	district	Haifa
1452	population	265700
1453	id	1453
1453	name	Rishon Le Ziyyon
1453	countrycode	ISR
1453	district	Ha Merkaz
1453	population	188200
1454	id	1454
1454	name	Beerseba
1454	countrycode	ISR
1454	district	Ha Darom
1454	population	163700
1455	id	1455
1455	name	Holon
1455	countrycode	ISR
1455	district	Tel Aviv
1455	population	163100
1456	id	1456
1456	name	Petah Tiqwa
1456	countrycode	ISR
1456	district	Ha Merkaz
1456	population	159400
1457	id	1457
1457	name	Ashdod
1457	countrycode	ISR
1457	district	Ha Darom
1457	population	155800
1458	id	1458
1458	name	Netanya
1458	countrycode	ISR
1458	district	Ha Merkaz
1458	population	154900
1459	id	1459
1459	name	Bat Yam
1459	countrycode	ISR
1459	district	Tel Aviv
1459	population	137000
1460	id	1460
1460	name	Bene Beraq
1460	countrycode	ISR
1460	district	Tel Aviv
1460	population	133900
1461	id	1461
1461	name	Ramat Gan
1461	countrycode	ISR
1461	district	Tel Aviv
1461	population	126900
1462	id	1462
1462	name	Ashqelon
1462	countrycode	ISR
1462	district	Ha Darom
1462	population	92300
1463	id	1463
1463	name	Rehovot
1463	countrycode	ISR
1463	district	Ha Merkaz
1463	population	90300
1464	id	1464
1464	name	Roma
1464	countrycode	ITA
1464	district	Latium
1464	population	2643581
1465	id	1465
1465	name	Milano
1465	countrycode	ITA
1465	district	Lombardia
1465	population	1300977
1466	id	1466
1466	name	Napoli
1466	countrycode	ITA
1466	district	Campania
1466	population	1002619
1467	id	1467
1467	name	Torino
1467	countrycode	ITA
1467	district	Piemonte
1467	population	903705
1468	id	1468
1468	name	Palermo
1468	countrycode	ITA
1468	district	Sisilia
1468	population	683794
1469	id	1469
1469	name	Genova
1469	countrycode	ITA
1469	district	Liguria
1469	population	636104
1470	id	1470
1470	name	Bologna
1470	countrycode	ITA
1470	district	Emilia-Romagna
1470	population	381161
1471	id	1471
1471	name	Firenze
1471	countrycode	ITA
1471	district	Toscana
1471	population	376662
1472	id	1472
1472	name	Catania
1472	countrycode	ITA
1472	district	Sisilia
1472	population	337862
1473	id	1473
1473	name	Bari
1473	countrycode	ITA
1473	district	Apulia
1473	population	331848
1474	id	1474
1474	name	Venezia
1474	countrycode	ITA
1474	district	Veneto
1474	population	277305
1475	id	1475
1475	name	Messina
1475	countrycode	ITA
1475	district	Sisilia
1475	population	259156
1476	id	1476
1476	name	Verona
1476	countrycode	ITA
1476	district	Veneto
1476	population	255268
1477	id	1477
1477	name	Trieste
1477	countrycode	ITA
1477	district	Friuli-Venezia Giuli
1477	population	216459
1478	id	1478
1478	name	Padova
1478	countrycode	ITA
1478	district	Veneto
1478	population	211391
1479	id	1479
1479	name	Taranto
1479	countrycode	ITA
1479	district	Apulia
1479	population	208214
1480	id	1480
1480	name	Brescia
1480	countrycode	ITA
1480	district	Lombardia
1480	population	191317
1481	id	1481
1481	name	Reggio di Calabria
1481	countrycode	ITA
1481	district	Calabria
1481	population	179617
1482	id	1482
1482	name	Modena
1482	countrycode	ITA
1482	district	Emilia-Romagna
1482	population	176022
1483	id	1483
1483	name	Prato
1483	countrycode	ITA
1483	district	Toscana
1483	population	172473
1484	id	1484
1484	name	Parma
1484	countrycode	ITA
1484	district	Emilia-Romagna
1484	population	168717
1485	id	1485
1485	name	Cagliari
1485	countrycode	ITA
1485	district	Sardinia
1485	population	165926
1486	id	1486
1486	name	Livorno
1486	countrycode	ITA
1486	district	Toscana
1486	population	161673
1487	id	1487
1487	name	Perugia
1487	countrycode	ITA
1487	district	Umbria
1487	population	156673
1488	id	1488
1488	name	Foggia
1488	countrycode	ITA
1488	district	Apulia
1488	population	154891
1489	id	1489
1489	name	Reggio nell´ Emilia
1489	countrycode	ITA
1489	district	Emilia-Romagna
1489	population	143664
1490	id	1490
1490	name	Salerno
1490	countrycode	ITA
1490	district	Campania
1490	population	142055
1491	id	1491
1491	name	Ravenna
1491	countrycode	ITA
1491	district	Emilia-Romagna
1491	population	138418
1492	id	1492
1492	name	Ferrara
1492	countrycode	ITA
1492	district	Emilia-Romagna
1492	population	132127
1493	id	1493
1493	name	Rimini
1493	countrycode	ITA
1493	district	Emilia-Romagna
1493	population	131062
1494	id	1494
1494	name	Syrakusa
1494	countrycode	ITA
1494	district	Sisilia
1494	population	126282
1495	id	1495
1495	name	Sassari
1495	countrycode	ITA
1495	district	Sardinia
1495	population	120803
1496	id	1496
1496	name	Monza
1496	countrycode	ITA
1496	district	Lombardia
1496	population	119516
1497	id	1497
1497	name	Bergamo
1497	countrycode	ITA
1497	district	Lombardia
1497	population	117837
1498	id	1498
1498	name	Pescara
1498	countrycode	ITA
1498	district	Abruzzit
1498	population	115698
1499	id	1499
1499	name	Latina
1499	countrycode	ITA
1499	district	Latium
1499	population	114099
1500	id	1500
1500	name	Vicenza
1500	countrycode	ITA
1500	district	Veneto
1500	population	109738
1501	id	1501
1501	name	Terni
1501	countrycode	ITA
1501	district	Umbria
1501	population	107770
1502	id	1502
1502	name	Forlì
1502	countrycode	ITA
1502	district	Emilia-Romagna
1502	population	107475
1503	id	1503
1503	name	Trento
1503	countrycode	ITA
1503	district	Trentino-Alto Adige
1503	population	104906
1504	id	1504
1504	name	Novara
1504	countrycode	ITA
1504	district	Piemonte
1504	population	102037
1505	id	1505
1505	name	Piacenza
1505	countrycode	ITA
1505	district	Emilia-Romagna
1505	population	98384
1506	id	1506
1506	name	Ancona
1506	countrycode	ITA
1506	district	Marche
1506	population	98329
1507	id	1507
1507	name	Lecce
1507	countrycode	ITA
1507	district	Apulia
1507	population	98208
1508	id	1508
1508	name	Bolzano
1508	countrycode	ITA
1508	district	Trentino-Alto Adige
1508	population	97232
1509	id	1509
1509	name	Catanzaro
1509	countrycode	ITA
1509	district	Calabria
1509	population	96700
1510	id	1510
1510	name	La Spezia
1510	countrycode	ITA
1510	district	Liguria
1510	population	95504
1511	id	1511
1511	name	Udine
1511	countrycode	ITA
1511	district	Friuli-Venezia Giuli
1511	population	94932
1512	id	1512
1512	name	Torre del Greco
1512	countrycode	ITA
1512	district	Campania
1512	population	94505
1513	id	1513
1513	name	Andria
1513	countrycode	ITA
1513	district	Apulia
1513	population	94443
1514	id	1514
1514	name	Brindisi
1514	countrycode	ITA
1514	district	Apulia
1514	population	93454
1515	id	1515
1515	name	Giugliano in Campania
1515	countrycode	ITA
1515	district	Campania
1515	population	93286
1516	id	1516
1516	name	Pisa
1516	countrycode	ITA
1516	district	Toscana
1516	population	92379
1517	id	1517
1517	name	Barletta
1517	countrycode	ITA
1517	district	Apulia
1517	population	91904
1518	id	1518
1518	name	Arezzo
1518	countrycode	ITA
1518	district	Toscana
1518	population	91729
1519	id	1519
1519	name	Alessandria
1519	countrycode	ITA
1519	district	Piemonte
1519	population	90289
1520	id	1520
1520	name	Cesena
1520	countrycode	ITA
1520	district	Emilia-Romagna
1520	population	89852
1521	id	1521
1521	name	Pesaro
1521	countrycode	ITA
1521	district	Marche
1521	population	88987
1522	id	1522
1522	name	Dili
1522	countrycode	TMP
1522	district	Dili
1522	population	47900
1523	id	1523
1523	name	Wien
1523	countrycode	AUT
1523	district	Wien
1523	population	1608144
1524	id	1524
1524	name	Graz
1524	countrycode	AUT
1524	district	Steiermark
1524	population	240967
1525	id	1525
1525	name	Linz
1525	countrycode	AUT
1525	district	North Austria
1525	population	188022
1526	id	1526
1526	name	Salzburg
1526	countrycode	AUT
1526	district	Salzburg
1526	population	144247
1527	id	1527
1527	name	Innsbruck
1527	countrycode	AUT
1527	district	Tiroli
1527	population	111752
1528	id	1528
1528	name	Klagenfurt
1528	countrycode	AUT
1528	district	Kärnten
1528	population	91141
1529	id	1529
1529	name	Spanish Town
1529	countrycode	JAM
1529	district	St. Catherine
1529	population	110379
1530	id	1530
1530	name	Kingston
1530	countrycode	JAM
1530	district	St. Andrew
1530	population	103962
1531	id	1531
1531	name	Portmore
1531	countrycode	JAM
1531	district	St. Andrew
1531	population	99799
1532	id	1532
1532	name	Tokyo
1532	countrycode	JPN
1532	district	Tokyo-to
1532	population	7980230
1533	id	1533
1533	name	Jokohama [Yokohama]
1533	countrycode	JPN
1533	district	Kanagawa
1533	population	3339594
1534	id	1534
1534	name	Osaka
1534	countrycode	JPN
1534	district	Osaka
1534	population	2595674
1535	id	1535
1535	name	Nagoya
1535	countrycode	JPN
1535	district	Aichi
1535	population	2154376
1536	id	1536
1536	name	Sapporo
1536	countrycode	JPN
1536	district	Hokkaido
1536	population	1790886
1537	id	1537
1537	name	Kioto
1537	countrycode	JPN
1537	district	Kyoto
1537	population	1461974
1538	id	1538
1538	name	Kobe
1538	countrycode	JPN
1538	district	Hyogo
1538	population	1425139
1539	id	1539
1539	name	Fukuoka
1539	countrycode	JPN
1539	district	Fukuoka
1539	population	1308379
1540	id	1540
1540	name	Kawasaki
1540	countrycode	JPN
1540	district	Kanagawa
1540	population	1217359
1541	id	1541
1541	name	Hiroshima
1541	countrycode	JPN
1541	district	Hiroshima
1541	population	1119117
1542	id	1542
1542	name	Kitakyushu
1542	countrycode	JPN
1542	district	Fukuoka
1542	population	1016264
1543	id	1543
1543	name	Sendai
1543	countrycode	JPN
1543	district	Miyagi
1543	population	989975
1544	id	1544
1544	name	Chiba
1544	countrycode	JPN
1544	district	Chiba
1544	population	863930
1545	id	1545
1545	name	Sakai
1545	countrycode	JPN
1545	district	Osaka
1545	population	797735
1546	id	1546
1546	name	Kumamoto
1546	countrycode	JPN
1546	district	Kumamoto
1546	population	656734
1547	id	1547
1547	name	Okayama
1547	countrycode	JPN
1547	district	Okayama
1547	population	624269
1548	id	1548
1548	name	Sagamihara
1548	countrycode	JPN
1548	district	Kanagawa
1548	population	586300
1549	id	1549
1549	name	Hamamatsu
1549	countrycode	JPN
1549	district	Shizuoka
1549	population	568796
1550	id	1550
1550	name	Kagoshima
1550	countrycode	JPN
1550	district	Kagoshima
1550	population	549977
1551	id	1551
1551	name	Funabashi
1551	countrycode	JPN
1551	district	Chiba
1551	population	545299
1552	id	1552
1552	name	Higashiosaka
1552	countrycode	JPN
1552	district	Osaka
1552	population	517785
1553	id	1553
1553	name	Hachioji
1553	countrycode	JPN
1553	district	Tokyo-to
1553	population	513451
1554	id	1554
1554	name	Niigata
1554	countrycode	JPN
1554	district	Niigata
1554	population	497464
1555	id	1555
1555	name	Amagasaki
1555	countrycode	JPN
1555	district	Hyogo
1555	population	481434
1556	id	1556
1556	name	Himeji
1556	countrycode	JPN
1556	district	Hyogo
1556	population	475167
1557	id	1557
1557	name	Shizuoka
1557	countrycode	JPN
1557	district	Shizuoka
1557	population	473854
1558	id	1558
1558	name	Urawa
1558	countrycode	JPN
1558	district	Saitama
1558	population	469675
1559	id	1559
1559	name	Matsuyama
1559	countrycode	JPN
1559	district	Ehime
1559	population	466133
1560	id	1560
1560	name	Matsudo
1560	countrycode	JPN
1560	district	Chiba
1560	population	461126
1561	id	1561
1561	name	Kanazawa
1561	countrycode	JPN
1561	district	Ishikawa
1561	population	455386
1562	id	1562
1562	name	Kawaguchi
1562	countrycode	JPN
1562	district	Saitama
1562	population	452155
1563	id	1563
1563	name	Ichikawa
1563	countrycode	JPN
1563	district	Chiba
1563	population	441893
1564	id	1564
1564	name	Omiya
1564	countrycode	JPN
1564	district	Saitama
1564	population	441649
1565	id	1565
1565	name	Utsunomiya
1565	countrycode	JPN
1565	district	Tochigi
1565	population	440353
1566	id	1566
1566	name	Oita
1566	countrycode	JPN
1566	district	Oita
1566	population	433401
1567	id	1567
1567	name	Nagasaki
1567	countrycode	JPN
1567	district	Nagasaki
1567	population	432759
1568	id	1568
1568	name	Yokosuka
1568	countrycode	JPN
1568	district	Kanagawa
1568	population	430200
1569	id	1569
1569	name	Kurashiki
1569	countrycode	JPN
1569	district	Okayama
1569	population	425103
1570	id	1570
1570	name	Gifu
1570	countrycode	JPN
1570	district	Gifu
1570	population	408007
1571	id	1571
1571	name	Hirakata
1571	countrycode	JPN
1571	district	Osaka
1571	population	403151
1572	id	1572
1572	name	Nishinomiya
1572	countrycode	JPN
1572	district	Hyogo
1572	population	397618
1573	id	1573
1573	name	Toyonaka
1573	countrycode	JPN
1573	district	Osaka
1573	population	396689
1574	id	1574
1574	name	Wakayama
1574	countrycode	JPN
1574	district	Wakayama
1574	population	391233
1575	id	1575
1575	name	Fukuyama
1575	countrycode	JPN
1575	district	Hiroshima
1575	population	376921
1576	id	1576
1576	name	Fujisawa
1576	countrycode	JPN
1576	district	Kanagawa
1576	population	372840
1577	id	1577
1577	name	Asahikawa
1577	countrycode	JPN
1577	district	Hokkaido
1577	population	364813
1578	id	1578
1578	name	Machida
1578	countrycode	JPN
1578	district	Tokyo-to
1578	population	364197
1579	id	1579
1579	name	Nara
1579	countrycode	JPN
1579	district	Nara
1579	population	362812
1580	id	1580
1580	name	Takatsuki
1580	countrycode	JPN
1580	district	Osaka
1580	population	361747
1581	id	1581
1581	name	Iwaki
1581	countrycode	JPN
1581	district	Fukushima
1581	population	361737
1582	id	1582
1582	name	Nagano
1582	countrycode	JPN
1582	district	Nagano
1582	population	361391
1583	id	1583
1583	name	Toyohashi
1583	countrycode	JPN
1583	district	Aichi
1583	population	360066
1584	id	1584
1584	name	Toyota
1584	countrycode	JPN
1584	district	Aichi
1584	population	346090
1585	id	1585
1585	name	Suita
1585	countrycode	JPN
1585	district	Osaka
1585	population	345750
1586	id	1586
1586	name	Takamatsu
1586	countrycode	JPN
1586	district	Kagawa
1586	population	332471
1587	id	1587
1587	name	Koriyama
1587	countrycode	JPN
1587	district	Fukushima
1587	population	330335
1588	id	1588
1588	name	Okazaki
1588	countrycode	JPN
1588	district	Aichi
1588	population	328711
1589	id	1589
1589	name	Kawagoe
1589	countrycode	JPN
1589	district	Saitama
1589	population	327211
1590	id	1590
1590	name	Tokorozawa
1590	countrycode	JPN
1590	district	Saitama
1590	population	325809
1591	id	1591
1591	name	Toyama
1591	countrycode	JPN
1591	district	Toyama
1591	population	325790
1592	id	1592
1592	name	Kochi
1592	countrycode	JPN
1592	district	Kochi
1592	population	324710
1593	id	1593
1593	name	Kashiwa
1593	countrycode	JPN
1593	district	Chiba
1593	population	320296
1594	id	1594
1594	name	Akita
1594	countrycode	JPN
1594	district	Akita
1594	population	314440
1595	id	1595
1595	name	Miyazaki
1595	countrycode	JPN
1595	district	Miyazaki
1595	population	303784
1596	id	1596
1596	name	Koshigaya
1596	countrycode	JPN
1596	district	Saitama
1596	population	301446
1597	id	1597
1597	name	Naha
1597	countrycode	JPN
1597	district	Okinawa
1597	population	299851
1598	id	1598
1598	name	Aomori
1598	countrycode	JPN
1598	district	Aomori
1598	population	295969
1599	id	1599
1599	name	Hakodate
1599	countrycode	JPN
1599	district	Hokkaido
1599	population	294788
1600	id	1600
1600	name	Akashi
1600	countrycode	JPN
1600	district	Hyogo
1600	population	292253
1601	id	1601
1601	name	Yokkaichi
1601	countrycode	JPN
1601	district	Mie
1601	population	288173
1602	id	1602
1602	name	Fukushima
1602	countrycode	JPN
1602	district	Fukushima
1602	population	287525
1603	id	1603
1603	name	Morioka
1603	countrycode	JPN
1603	district	Iwate
1603	population	287353
1604	id	1604
1604	name	Maebashi
1604	countrycode	JPN
1604	district	Gumma
1604	population	284473
1605	id	1605
1605	name	Kasugai
1605	countrycode	JPN
1605	district	Aichi
1605	population	282348
1606	id	1606
1606	name	Otsu
1606	countrycode	JPN
1606	district	Shiga
1606	population	282070
1607	id	1607
1607	name	Ichihara
1607	countrycode	JPN
1607	district	Chiba
1607	population	279280
1608	id	1608
1608	name	Yao
1608	countrycode	JPN
1608	district	Osaka
1608	population	276421
1609	id	1609
1609	name	Ichinomiya
1609	countrycode	JPN
1609	district	Aichi
1609	population	270828
1610	id	1610
1610	name	Tokushima
1610	countrycode	JPN
1610	district	Tokushima
1610	population	269649
1611	id	1611
1611	name	Kakogawa
1611	countrycode	JPN
1611	district	Hyogo
1611	population	266281
1612	id	1612
1612	name	Ibaraki
1612	countrycode	JPN
1612	district	Osaka
1612	population	261020
1613	id	1613
1613	name	Neyagawa
1613	countrycode	JPN
1613	district	Osaka
1613	population	257315
1614	id	1614
1614	name	Shimonoseki
1614	countrycode	JPN
1614	district	Yamaguchi
1614	population	257263
1615	id	1615
1615	name	Yamagata
1615	countrycode	JPN
1615	district	Yamagata
1615	population	255617
1616	id	1616
1616	name	Fukui
1616	countrycode	JPN
1616	district	Fukui
1616	population	254818
1617	id	1617
1617	name	Hiratsuka
1617	countrycode	JPN
1617	district	Kanagawa
1617	population	254207
1618	id	1618
1618	name	Mito
1618	countrycode	JPN
1618	district	Ibaragi
1618	population	246559
1619	id	1619
1619	name	Sasebo
1619	countrycode	JPN
1619	district	Nagasaki
1619	population	244240
1620	id	1620
1620	name	Hachinohe
1620	countrycode	JPN
1620	district	Aomori
1620	population	242979
1621	id	1621
1621	name	Takasaki
1621	countrycode	JPN
1621	district	Gumma
1621	population	239124
1622	id	1622
1622	name	Shimizu
1622	countrycode	JPN
1622	district	Shizuoka
1622	population	239123
1623	id	1623
1623	name	Kurume
1623	countrycode	JPN
1623	district	Fukuoka
1623	population	235611
1624	id	1624
1624	name	Fuji
1624	countrycode	JPN
1624	district	Shizuoka
1624	population	231527
1625	id	1625
1625	name	Soka
1625	countrycode	JPN
1625	district	Saitama
1625	population	222768
1626	id	1626
1626	name	Fuchu
1626	countrycode	JPN
1626	district	Tokyo-to
1626	population	220576
1627	id	1627
1627	name	Chigasaki
1627	countrycode	JPN
1627	district	Kanagawa
1627	population	216015
1628	id	1628
1628	name	Atsugi
1628	countrycode	JPN
1628	district	Kanagawa
1628	population	212407
1629	id	1629
1629	name	Numazu
1629	countrycode	JPN
1629	district	Shizuoka
1629	population	211382
1630	id	1630
1630	name	Ageo
1630	countrycode	JPN
1630	district	Saitama
1630	population	209442
1631	id	1631
1631	name	Yamato
1631	countrycode	JPN
1631	district	Kanagawa
1631	population	208234
1632	id	1632
1632	name	Matsumoto
1632	countrycode	JPN
1632	district	Nagano
1632	population	206801
1633	id	1633
1633	name	Kure
1633	countrycode	JPN
1633	district	Hiroshima
1633	population	206504
1634	id	1634
1634	name	Takarazuka
1634	countrycode	JPN
1634	district	Hyogo
1634	population	205993
1635	id	1635
1635	name	Kasukabe
1635	countrycode	JPN
1635	district	Saitama
1635	population	201838
1636	id	1636
1636	name	Chofu
1636	countrycode	JPN
1636	district	Tokyo-to
1636	population	201585
1637	id	1637
1637	name	Odawara
1637	countrycode	JPN
1637	district	Kanagawa
1637	population	200171
1638	id	1638
1638	name	Kofu
1638	countrycode	JPN
1638	district	Yamanashi
1638	population	199753
1639	id	1639
1639	name	Kushiro
1639	countrycode	JPN
1639	district	Hokkaido
1639	population	197608
1640	id	1640
1640	name	Kishiwada
1640	countrycode	JPN
1640	district	Osaka
1640	population	197276
1641	id	1641
1641	name	Hitachi
1641	countrycode	JPN
1641	district	Ibaragi
1641	population	196622
1642	id	1642
1642	name	Nagaoka
1642	countrycode	JPN
1642	district	Niigata
1642	population	192407
1643	id	1643
1643	name	Itami
1643	countrycode	JPN
1643	district	Hyogo
1643	population	190886
1644	id	1644
1644	name	Uji
1644	countrycode	JPN
1644	district	Kyoto
1644	population	188735
1645	id	1645
1645	name	Suzuka
1645	countrycode	JPN
1645	district	Mie
1645	population	184061
1646	id	1646
1646	name	Hirosaki
1646	countrycode	JPN
1646	district	Aomori
1646	population	177522
1647	id	1647
1647	name	Ube
1647	countrycode	JPN
1647	district	Yamaguchi
1647	population	175206
1648	id	1648
1648	name	Kodaira
1648	countrycode	JPN
1648	district	Tokyo-to
1648	population	174984
1649	id	1649
1649	name	Takaoka
1649	countrycode	JPN
1649	district	Toyama
1649	population	174380
1650	id	1650
1650	name	Obihiro
1650	countrycode	JPN
1650	district	Hokkaido
1650	population	173685
1651	id	1651
1651	name	Tomakomai
1651	countrycode	JPN
1651	district	Hokkaido
1651	population	171958
1652	id	1652
1652	name	Saga
1652	countrycode	JPN
1652	district	Saga
1652	population	170034
1653	id	1653
1653	name	Sakura
1653	countrycode	JPN
1653	district	Chiba
1653	population	168072
1654	id	1654
1654	name	Kamakura
1654	countrycode	JPN
1654	district	Kanagawa
1654	population	167661
1655	id	1655
1655	name	Mitaka
1655	countrycode	JPN
1655	district	Tokyo-to
1655	population	167268
1656	id	1656
1656	name	Izumi
1656	countrycode	JPN
1656	district	Osaka
1656	population	166979
1657	id	1657
1657	name	Hino
1657	countrycode	JPN
1657	district	Tokyo-to
1657	population	166770
1658	id	1658
1658	name	Hadano
1658	countrycode	JPN
1658	district	Kanagawa
1658	population	166512
1659	id	1659
1659	name	Ashikaga
1659	countrycode	JPN
1659	district	Tochigi
1659	population	165243
1660	id	1660
1660	name	Tsu
1660	countrycode	JPN
1660	district	Mie
1660	population	164543
1661	id	1661
1661	name	Sayama
1661	countrycode	JPN
1661	district	Saitama
1661	population	162472
1662	id	1662
1662	name	Yachiyo
1662	countrycode	JPN
1662	district	Chiba
1662	population	161222
1663	id	1663
1663	name	Tsukuba
1663	countrycode	JPN
1663	district	Ibaragi
1663	population	160768
1664	id	1664
1664	name	Tachikawa
1664	countrycode	JPN
1664	district	Tokyo-to
1664	population	159430
1665	id	1665
1665	name	Kumagaya
1665	countrycode	JPN
1665	district	Saitama
1665	population	157171
1666	id	1666
1666	name	Moriguchi
1666	countrycode	JPN
1666	district	Osaka
1666	population	155941
1667	id	1667
1667	name	Otaru
1667	countrycode	JPN
1667	district	Hokkaido
1667	population	155784
1668	id	1668
1668	name	Anjo
1668	countrycode	JPN
1668	district	Aichi
1668	population	153823
1669	id	1669
1669	name	Narashino
1669	countrycode	JPN
1669	district	Chiba
1669	population	152849
1670	id	1670
1670	name	Oyama
1670	countrycode	JPN
1670	district	Tochigi
1670	population	152820
1671	id	1671
1671	name	Ogaki
1671	countrycode	JPN
1671	district	Gifu
1671	population	151758
1672	id	1672
1672	name	Matsue
1672	countrycode	JPN
1672	district	Shimane
1672	population	149821
1673	id	1673
1673	name	Kawanishi
1673	countrycode	JPN
1673	district	Hyogo
1673	population	149794
1674	id	1674
1674	name	Hitachinaka
1674	countrycode	JPN
1674	district	Tokyo-to
1674	population	148006
1675	id	1675
1675	name	Niiza
1675	countrycode	JPN
1675	district	Saitama
1675	population	147744
1676	id	1676
1676	name	Nagareyama
1676	countrycode	JPN
1676	district	Chiba
1676	population	147738
1677	id	1677
1677	name	Tottori
1677	countrycode	JPN
1677	district	Tottori
1677	population	147523
1678	id	1678
1678	name	Tama
1678	countrycode	JPN
1678	district	Ibaragi
1678	population	146712
1679	id	1679
1679	name	Iruma
1679	countrycode	JPN
1679	district	Saitama
1679	population	145922
1680	id	1680
1680	name	Ota
1680	countrycode	JPN
1680	district	Gumma
1680	population	145317
1681	id	1681
1681	name	Omuta
1681	countrycode	JPN
1681	district	Fukuoka
1681	population	142889
1682	id	1682
1682	name	Komaki
1682	countrycode	JPN
1682	district	Aichi
1682	population	139827
1683	id	1683
1683	name	Ome
1683	countrycode	JPN
1683	district	Tokyo-to
1683	population	139216
1684	id	1684
1684	name	Kadoma
1684	countrycode	JPN
1684	district	Osaka
1684	population	138953
1685	id	1685
1685	name	Yamaguchi
1685	countrycode	JPN
1685	district	Yamaguchi
1685	population	138210
1686	id	1686
1686	name	Higashimurayama
1686	countrycode	JPN
1686	district	Tokyo-to
1686	population	136970
1687	id	1687
1687	name	Yonago
1687	countrycode	JPN
1687	district	Tottori
1687	population	136461
1688	id	1688
1688	name	Matsubara
1688	countrycode	JPN
1688	district	Osaka
1688	population	135010
1689	id	1689
1689	name	Musashino
1689	countrycode	JPN
1689	district	Tokyo-to
1689	population	134426
1690	id	1690
1690	name	Tsuchiura
1690	countrycode	JPN
1690	district	Ibaragi
1690	population	134072
1691	id	1691
1691	name	Joetsu
1691	countrycode	JPN
1691	district	Niigata
1691	population	133505
1692	id	1692
1692	name	Miyakonojo
1692	countrycode	JPN
1692	district	Miyazaki
1692	population	133183
1693	id	1693
1693	name	Misato
1693	countrycode	JPN
1693	district	Saitama
1693	population	132957
1694	id	1694
1694	name	Kakamigahara
1694	countrycode	JPN
1694	district	Gifu
1694	population	131831
1695	id	1695
1695	name	Daito
1695	countrycode	JPN
1695	district	Osaka
1695	population	130594
1696	id	1696
1696	name	Seto
1696	countrycode	JPN
1696	district	Aichi
1696	population	130470
1697	id	1697
1697	name	Kariya
1697	countrycode	JPN
1697	district	Aichi
1697	population	127969
1698	id	1698
1698	name	Urayasu
1698	countrycode	JPN
1698	district	Chiba
1698	population	127550
1699	id	1699
1699	name	Beppu
1699	countrycode	JPN
1699	district	Oita
1699	population	127486
1700	id	1700
1700	name	Niihama
1700	countrycode	JPN
1700	district	Ehime
1700	population	127207
1701	id	1701
1701	name	Minoo
1701	countrycode	JPN
1701	district	Osaka
1701	population	127026
1702	id	1702
1702	name	Fujieda
1702	countrycode	JPN
1702	district	Shizuoka
1702	population	126897
1703	id	1703
1703	name	Abiko
1703	countrycode	JPN
1703	district	Chiba
1703	population	126670
1704	id	1704
1704	name	Nobeoka
1704	countrycode	JPN
1704	district	Miyazaki
1704	population	125547
1705	id	1705
1705	name	Tondabayashi
1705	countrycode	JPN
1705	district	Osaka
1705	population	125094
1706	id	1706
1706	name	Ueda
1706	countrycode	JPN
1706	district	Nagano
1706	population	124217
1707	id	1707
1707	name	Kashihara
1707	countrycode	JPN
1707	district	Nara
1707	population	124013
1708	id	1708
1708	name	Matsusaka
1708	countrycode	JPN
1708	district	Mie
1708	population	123582
1709	id	1709
1709	name	Isesaki
1709	countrycode	JPN
1709	district	Gumma
1709	population	123285
1710	id	1710
1710	name	Zama
1710	countrycode	JPN
1710	district	Kanagawa
1710	population	122046
1711	id	1711
1711	name	Kisarazu
1711	countrycode	JPN
1711	district	Chiba
1711	population	121967
1712	id	1712
1712	name	Noda
1712	countrycode	JPN
1712	district	Chiba
1712	population	121030
1713	id	1713
1713	name	Ishinomaki
1713	countrycode	JPN
1713	district	Miyagi
1713	population	120963
1714	id	1714
1714	name	Fujinomiya
1714	countrycode	JPN
1714	district	Shizuoka
1714	population	119714
1715	id	1715
1715	name	Kawachinagano
1715	countrycode	JPN
1715	district	Osaka
1715	population	119666
1716	id	1716
1716	name	Imabari
1716	countrycode	JPN
1716	district	Ehime
1716	population	119357
1717	id	1717
1717	name	Aizuwakamatsu
1717	countrycode	JPN
1717	district	Fukushima
1717	population	119287
1718	id	1718
1718	name	Higashihiroshima
1718	countrycode	JPN
1718	district	Hiroshima
1718	population	119166
1719	id	1719
1719	name	Habikino
1719	countrycode	JPN
1719	district	Osaka
1719	population	118968
1720	id	1720
1720	name	Ebetsu
1720	countrycode	JPN
1720	district	Hokkaido
1720	population	118805
1721	id	1721
1721	name	Hofu
1721	countrycode	JPN
1721	district	Yamaguchi
1721	population	118751
1722	id	1722
1722	name	Kiryu
1722	countrycode	JPN
1722	district	Gumma
1722	population	118326
1723	id	1723
1723	name	Okinawa
1723	countrycode	JPN
1723	district	Okinawa
1723	population	117748
1724	id	1724
1724	name	Yaizu
1724	countrycode	JPN
1724	district	Shizuoka
1724	population	117258
1725	id	1725
1725	name	Toyokawa
1725	countrycode	JPN
1725	district	Aichi
1725	population	115781
1726	id	1726
1726	name	Ebina
1726	countrycode	JPN
1726	district	Kanagawa
1726	population	115571
1727	id	1727
1727	name	Asaka
1727	countrycode	JPN
1727	district	Saitama
1727	population	114815
1728	id	1728
1728	name	Higashikurume
1728	countrycode	JPN
1728	district	Tokyo-to
1728	population	111666
1729	id	1729
1729	name	Ikoma
1729	countrycode	JPN
1729	district	Nara
1729	population	111645
1730	id	1730
1730	name	Kitami
1730	countrycode	JPN
1730	district	Hokkaido
1730	population	111295
1731	id	1731
1731	name	Koganei
1731	countrycode	JPN
1731	district	Tokyo-to
1731	population	110969
1732	id	1732
1732	name	Iwatsuki
1732	countrycode	JPN
1732	district	Saitama
1732	population	110034
1733	id	1733
1733	name	Mishima
1733	countrycode	JPN
1733	district	Shizuoka
1733	population	109699
1734	id	1734
1734	name	Handa
1734	countrycode	JPN
1734	district	Aichi
1734	population	108600
1735	id	1735
1735	name	Muroran
1735	countrycode	JPN
1735	district	Hokkaido
1735	population	108275
1736	id	1736
1736	name	Komatsu
1736	countrycode	JPN
1736	district	Ishikawa
1736	population	107937
1737	id	1737
1737	name	Yatsushiro
1737	countrycode	JPN
1737	district	Kumamoto
1737	population	107661
1738	id	1738
1738	name	Iida
1738	countrycode	JPN
1738	district	Nagano
1738	population	107583
1739	id	1739
1739	name	Tokuyama
1739	countrycode	JPN
1739	district	Yamaguchi
1739	population	107078
1740	id	1740
1740	name	Kokubunji
1740	countrycode	JPN
1740	district	Tokyo-to
1740	population	106996
1741	id	1741
1741	name	Akishima
1741	countrycode	JPN
1741	district	Tokyo-to
1741	population	106914
1742	id	1742
1742	name	Iwakuni
1742	countrycode	JPN
1742	district	Yamaguchi
1742	population	106647
1743	id	1743
1743	name	Kusatsu
1743	countrycode	JPN
1743	district	Shiga
1743	population	106232
1744	id	1744
1744	name	Kuwana
1744	countrycode	JPN
1744	district	Mie
1744	population	106121
1745	id	1745
1745	name	Sanda
1745	countrycode	JPN
1745	district	Hyogo
1745	population	105643
1746	id	1746
1746	name	Hikone
1746	countrycode	JPN
1746	district	Shiga
1746	population	105508
1747	id	1747
1747	name	Toda
1747	countrycode	JPN
1747	district	Saitama
1747	population	103969
1748	id	1748
1748	name	Tajimi
1748	countrycode	JPN
1748	district	Gifu
1748	population	103171
1749	id	1749
1749	name	Ikeda
1749	countrycode	JPN
1749	district	Osaka
1749	population	102710
1750	id	1750
1750	name	Fukaya
1750	countrycode	JPN
1750	district	Saitama
1750	population	102156
1751	id	1751
1751	name	Ise
1751	countrycode	JPN
1751	district	Mie
1751	population	101732
1752	id	1752
1752	name	Sakata
1752	countrycode	JPN
1752	district	Yamagata
1752	population	101651
1753	id	1753
1753	name	Kasuga
1753	countrycode	JPN
1753	district	Fukuoka
1753	population	101344
1754	id	1754
1754	name	Kamagaya
1754	countrycode	JPN
1754	district	Chiba
1754	population	100821
1755	id	1755
1755	name	Tsuruoka
1755	countrycode	JPN
1755	district	Yamagata
1755	population	100713
1756	id	1756
1756	name	Hoya
1756	countrycode	JPN
1756	district	Tokyo-to
1756	population	100313
1757	id	1757
1757	name	Nishio
1757	countrycode	JPN
1757	district	Chiba
1757	population	100032
1758	id	1758
1758	name	Tokai
1758	countrycode	JPN
1758	district	Aichi
1758	population	99738
1759	id	1759
1759	name	Inazawa
1759	countrycode	JPN
1759	district	Aichi
1759	population	98746
1760	id	1760
1760	name	Sakado
1760	countrycode	JPN
1760	district	Saitama
1760	population	98221
1761	id	1761
1761	name	Isehara
1761	countrycode	JPN
1761	district	Kanagawa
1761	population	98123
1762	id	1762
1762	name	Takasago
1762	countrycode	JPN
1762	district	Hyogo
1762	population	97632
1763	id	1763
1763	name	Fujimi
1763	countrycode	JPN
1763	district	Saitama
1763	population	96972
1764	id	1764
1764	name	Urasoe
1764	countrycode	JPN
1764	district	Okinawa
1764	population	96002
1765	id	1765
1765	name	Yonezawa
1765	countrycode	JPN
1765	district	Yamagata
1765	population	95592
1766	id	1766
1766	name	Konan
1766	countrycode	JPN
1766	district	Aichi
1766	population	95521
1767	id	1767
1767	name	Yamatokoriyama
1767	countrycode	JPN
1767	district	Nara
1767	population	95165
1768	id	1768
1768	name	Maizuru
1768	countrycode	JPN
1768	district	Kyoto
1768	population	94784
1769	id	1769
1769	name	Onomichi
1769	countrycode	JPN
1769	district	Hiroshima
1769	population	93756
1770	id	1770
1770	name	Higashimatsuyama
1770	countrycode	JPN
1770	district	Saitama
1770	population	93342
1771	id	1771
1771	name	Kimitsu
1771	countrycode	JPN
1771	district	Chiba
1771	population	93216
1772	id	1772
1772	name	Isahaya
1772	countrycode	JPN
1772	district	Nagasaki
1772	population	93058
1773	id	1773
1773	name	Kanuma
1773	countrycode	JPN
1773	district	Tochigi
1773	population	93053
1774	id	1774
1774	name	Izumisano
1774	countrycode	JPN
1774	district	Osaka
1774	population	92583
1775	id	1775
1775	name	Kameoka
1775	countrycode	JPN
1775	district	Kyoto
1775	population	92398
1776	id	1776
1776	name	Mobara
1776	countrycode	JPN
1776	district	Chiba
1776	population	91664
1777	id	1777
1777	name	Narita
1777	countrycode	JPN
1777	district	Chiba
1777	population	91470
1778	id	1778
1778	name	Kashiwazaki
1778	countrycode	JPN
1778	district	Niigata
1778	population	91229
1779	id	1779
1779	name	Tsuyama
1779	countrycode	JPN
1779	district	Okayama
1779	population	91170
1780	id	1780
1780	name	Sanaa
1780	countrycode	YEM
1780	district	Sanaa
1780	population	503600
1781	id	1781
1781	name	Aden
1781	countrycode	YEM
1781	district	Aden
1781	population	398300
1782	id	1782
1782	name	Taizz
1782	countrycode	YEM
1782	district	Taizz
1782	population	317600
1783	id	1783
1783	name	Hodeida
1783	countrycode	YEM
1783	district	Hodeida
1783	population	298500
1784	id	1784
1784	name	al-Mukalla
1784	countrycode	YEM
1784	district	Hadramawt
1784	population	122400
1785	id	1785
1785	name	Ibb
1785	countrycode	YEM
1785	district	Ibb
1785	population	103300
1786	id	1786
1786	name	Amman
1786	countrycode	JOR
1786	district	Amman
1786	population	1000000
1787	id	1787
1787	name	al-Zarqa
1787	countrycode	JOR
1787	district	al-Zarqa
1787	population	389815
1788	id	1788
1788	name	Irbid
1788	countrycode	JOR
1788	district	Irbid
1788	population	231511
1789	id	1789
1789	name	al-Rusayfa
1789	countrycode	JOR
1789	district	al-Zarqa
1789	population	137247
1790	id	1790
1790	name	Wadi al-Sir
1790	countrycode	JOR
1790	district	Amman
1790	population	89104
1791	id	1791
1791	name	Flying Fish Cove
1791	countrycode	CXR
1791	district	
1791	population	700
1792	id	1792
1792	name	Beograd
1792	countrycode	YUG
1792	district	Central Serbia
1792	population	1204000
1793	id	1793
1793	name	Novi Sad
1793	countrycode	YUG
1793	district	Vojvodina
1793	population	179626
1794	id	1794
1794	name	Ni
1794	countrycode	YUG
1794	district	Central Serbia
1794	population	175391
1795	id	1795
1795	name	Pritina
1795	countrycode	YUG
1795	district	Kosovo and Metohija
1795	population	155496
1796	id	1796
1796	name	Kragujevac
1796	countrycode	YUG
1796	district	Central Serbia
1796	population	147305
1797	id	1797
1797	name	Podgorica
1797	countrycode	YUG
1797	district	Montenegro
1797	population	135000
1798	id	1798
1798	name	Subotica
1798	countrycode	YUG
1798	district	Vojvodina
1798	population	100386
1799	id	1799
1799	name	Prizren
1799	countrycode	YUG
1799	district	Kosovo and Metohija
1799	population	92303
1800	id	1800
1800	name	Phnom Penh
1800	countrycode	KHM
1800	district	Phnom Penh
1800	population	570155
1801	id	1801
1801	name	Battambang
1801	countrycode	KHM
1801	district	Battambang
1801	population	129800
1802	id	1802
1802	name	Siem Reap
1802	countrycode	KHM
1802	district	Siem Reap
1802	population	105100
1803	id	1803
1803	name	Douala
1803	countrycode	CMR
1803	district	Littoral
1803	population	1448300
1804	id	1804
1804	name	Yaoundé
1804	countrycode	CMR
1804	district	Centre
1804	population	1372800
1805	id	1805
1805	name	Garoua
1805	countrycode	CMR
1805	district	Nord
1805	population	177000
1806	id	1806
1806	name	Maroua
1806	countrycode	CMR
1806	district	Extrême-Nord
1806	population	143000
1807	id	1807
1807	name	Bamenda
1807	countrycode	CMR
1807	district	Nord-Ouest
1807	population	138000
1808	id	1808
1808	name	Bafoussam
1808	countrycode	CMR
1808	district	Ouest
1808	population	131000
1809	id	1809
1809	name	Nkongsamba
1809	countrycode	CMR
1809	district	Littoral
1809	population	112454
1810	id	1810
1810	name	Montréal
1810	countrycode	CAN
1810	district	Québec
1810	population	1016376
1811	id	1811
1811	name	Calgary
1811	countrycode	CAN
1811	district	Alberta
1811	population	768082
1812	id	1812
1812	name	Toronto
1812	countrycode	CAN
1812	district	Ontario
1812	population	688275
1813	id	1813
1813	name	North York
1813	countrycode	CAN
1813	district	Ontario
1813	population	622632
1814	id	1814
1814	name	Winnipeg
1814	countrycode	CAN
1814	district	Manitoba
1814	population	618477
1815	id	1815
1815	name	Edmonton
1815	countrycode	CAN
1815	district	Alberta
1815	population	616306
1816	id	1816
1816	name	Mississauga
1816	countrycode	CAN
1816	district	Ontario
1816	population	608072
1817	id	1817
1817	name	Scarborough
1817	countrycode	CAN
1817	district	Ontario
1817	population	594501
1818	id	1818
1818	name	Vancouver
1818	countrycode	CAN
1818	district	British Colombia
1818	population	514008
1819	id	1819
1819	name	Etobicoke
1819	countrycode	CAN
1819	district	Ontario
1819	population	348845
1820	id	1820
1820	name	London
1820	countrycode	CAN
1820	district	Ontario
1820	population	339917
1821	id	1821
1821	name	Hamilton
1821	countrycode	CAN
1821	district	Ontario
1821	population	335614
1822	id	1822
1822	name	Ottawa
1822	countrycode	CAN
1822	district	Ontario
1822	population	335277
1823	id	1823
1823	name	Laval
1823	countrycode	CAN
1823	district	Québec
1823	population	330393
1824	id	1824
1824	name	Surrey
1824	countrycode	CAN
1824	district	British Colombia
1824	population	304477
1825	id	1825
1825	name	Brampton
1825	countrycode	CAN
1825	district	Ontario
1825	population	296711
1826	id	1826
1826	name	Windsor
1826	countrycode	CAN
1826	district	Ontario
1826	population	207588
1827	id	1827
1827	name	Saskatoon
1827	countrycode	CAN
1827	district	Saskatchewan
1827	population	193647
1828	id	1828
1828	name	Kitchener
1828	countrycode	CAN
1828	district	Ontario
1828	population	189959
1829	id	1829
1829	name	Markham
1829	countrycode	CAN
1829	district	Ontario
1829	population	189098
1830	id	1830
1830	name	Regina
1830	countrycode	CAN
1830	district	Saskatchewan
1830	population	180400
1831	id	1831
1831	name	Burnaby
1831	countrycode	CAN
1831	district	British Colombia
1831	population	179209
1832	id	1832
1832	name	Québec
1832	countrycode	CAN
1832	district	Québec
1832	population	167264
1833	id	1833
1833	name	York
1833	countrycode	CAN
1833	district	Ontario
1833	population	154980
1834	id	1834
1834	name	Richmond
1834	countrycode	CAN
1834	district	British Colombia
1834	population	148867
1835	id	1835
1835	name	Vaughan
1835	countrycode	CAN
1835	district	Ontario
1835	population	147889
1836	id	1836
1836	name	Burlington
1836	countrycode	CAN
1836	district	Ontario
1836	population	145150
1837	id	1837
1837	name	Oshawa
1837	countrycode	CAN
1837	district	Ontario
1837	population	140173
1838	id	1838
1838	name	Oakville
1838	countrycode	CAN
1838	district	Ontario
1838	population	139192
1839	id	1839
1839	name	Saint Catharines
1839	countrycode	CAN
1839	district	Ontario
1839	population	136216
1840	id	1840
1840	name	Longueuil
1840	countrycode	CAN
1840	district	Québec
1840	population	127977
1841	id	1841
1841	name	Richmond Hill
1841	countrycode	CAN
1841	district	Ontario
1841	population	116428
1842	id	1842
1842	name	Thunder Bay
1842	countrycode	CAN
1842	district	Ontario
1842	population	115913
1843	id	1843
1843	name	Nepean
1843	countrycode	CAN
1843	district	Ontario
1843	population	115100
1844	id	1844
1844	name	Cape Breton
1844	countrycode	CAN
1844	district	Nova Scotia
1844	population	114733
1845	id	1845
1845	name	East York
1845	countrycode	CAN
1845	district	Ontario
1845	population	114034
1846	id	1846
1846	name	Halifax
1846	countrycode	CAN
1846	district	Nova Scotia
1846	population	113910
1847	id	1847
1847	name	Cambridge
1847	countrycode	CAN
1847	district	Ontario
1847	population	109186
1848	id	1848
1848	name	Gloucester
1848	countrycode	CAN
1848	district	Ontario
1848	population	107314
1849	id	1849
1849	name	Abbotsford
1849	countrycode	CAN
1849	district	British Colombia
1849	population	105403
1850	id	1850
1850	name	Guelph
1850	countrycode	CAN
1850	district	Ontario
1850	population	103593
1851	id	1851
1851	name	Saint John´s
1851	countrycode	CAN
1851	district	Newfoundland
1851	population	101936
1852	id	1852
1852	name	Coquitlam
1852	countrycode	CAN
1852	district	British Colombia
1852	population	101820
1853	id	1853
1853	name	Saanich
1853	countrycode	CAN
1853	district	British Colombia
1853	population	101388
1854	id	1854
1854	name	Gatineau
1854	countrycode	CAN
1854	district	Québec
1854	population	100702
1855	id	1855
1855	name	Delta
1855	countrycode	CAN
1855	district	British Colombia
1855	population	95411
1856	id	1856
1856	name	Sudbury
1856	countrycode	CAN
1856	district	Ontario
1856	population	92686
1857	id	1857
1857	name	Kelowna
1857	countrycode	CAN
1857	district	British Colombia
1857	population	89442
1858	id	1858
1858	name	Barrie
1858	countrycode	CAN
1858	district	Ontario
1858	population	89269
1859	id	1859
1859	name	Praia
1859	countrycode	CPV
1859	district	São Tiago
1859	population	94800
1860	id	1860
1860	name	Almaty
1860	countrycode	KAZ
1860	district	Almaty Qalasy
1860	population	1129400
1861	id	1861
1861	name	Qaraghandy
1861	countrycode	KAZ
1861	district	Qaraghandy
1861	population	436900
1862	id	1862
1862	name	Shymkent
1862	countrycode	KAZ
1862	district	South Kazakstan
1862	population	360100
1863	id	1863
1863	name	Taraz
1863	countrycode	KAZ
1863	district	Taraz
1863	population	330100
1864	id	1864
1864	name	Astana
1864	countrycode	KAZ
1864	district	Astana
1864	population	311200
1865	id	1865
1865	name	Öskemen
1865	countrycode	KAZ
1865	district	East Kazakstan
1865	population	311000
1866	id	1866
1866	name	Pavlodar
1866	countrycode	KAZ
1866	district	Pavlodar
1866	population	300500
1867	id	1867
1867	name	Semey
1867	countrycode	KAZ
1867	district	East Kazakstan
1867	population	269600
1868	id	1868
1868	name	Aqtöbe
1868	countrycode	KAZ
1868	district	Aqtöbe
1868	population	253100
1869	id	1869
1869	name	Qostanay
1869	countrycode	KAZ
1869	district	Qostanay
1869	population	221400
1870	id	1870
1870	name	Petropavl
1870	countrycode	KAZ
1870	district	North Kazakstan
1870	population	203500
1871	id	1871
1871	name	Oral
1871	countrycode	KAZ
1871	district	West Kazakstan
1871	population	195500
1872	id	1872
1872	name	Temirtau
1872	countrycode	KAZ
1872	district	Qaraghandy
1872	population	170500
1873	id	1873
1873	name	Qyzylorda
1873	countrycode	KAZ
1873	district	Qyzylorda
1873	population	157400
1874	id	1874
1874	name	Aqtau
1874	countrycode	KAZ
1874	district	Mangghystau
1874	population	143400
1875	id	1875
1875	name	Atyrau
1875	countrycode	KAZ
1875	district	Atyrau
1875	population	142500
1876	id	1876
1876	name	Ekibastuz
1876	countrycode	KAZ
1876	district	Pavlodar
1876	population	127200
1877	id	1877
1877	name	Kökshetau
1877	countrycode	KAZ
1877	district	North Kazakstan
1877	population	123400
1878	id	1878
1878	name	Rudnyy
1878	countrycode	KAZ
1878	district	Qostanay
1878	population	109500
1879	id	1879
1879	name	Taldyqorghan
1879	countrycode	KAZ
1879	district	Almaty
1879	population	98000
1880	id	1880
1880	name	Zhezqazghan
1880	countrycode	KAZ
1880	district	Qaraghandy
1880	population	90000
1881	id	1881
1881	name	Nairobi
1881	countrycode	KEN
1881	district	Nairobi
1881	population	2290000
1882	id	1882
1882	name	Mombasa
1882	countrycode	KEN
1882	district	Coast
1882	population	461753
1883	id	1883
1883	name	Kisumu
1883	countrycode	KEN
1883	district	Nyanza
1883	population	192733
1884	id	1884
1884	name	Nakuru
1884	countrycode	KEN
1884	district	Rift Valley
1884	population	163927
1885	id	1885
1885	name	Machakos
1885	countrycode	KEN
1885	district	Eastern
1885	population	116293
1886	id	1886
1886	name	Eldoret
1886	countrycode	KEN
1886	district	Rift Valley
1886	population	111882
1887	id	1887
1887	name	Meru
1887	countrycode	KEN
1887	district	Eastern
1887	population	94947
1888	id	1888
1888	name	Nyeri
1888	countrycode	KEN
1888	district	Central
1888	population	91258
1889	id	1889
1889	name	Bangui
1889	countrycode	CAF
1889	district	Bangui
1889	population	524000
1890	id	1890
1890	name	Shanghai
1890	countrycode	CHN
1890	district	Shanghai
1890	population	9696300
1891	id	1891
1891	name	Peking
1891	countrycode	CHN
1891	district	Peking
1891	population	7472000
1892	id	1892
1892	name	Chongqing
1892	countrycode	CHN
1892	district	Chongqing
1892	population	6351600
1893	id	1893
1893	name	Tianjin
1893	countrycode	CHN
1893	district	Tianjin
1893	population	5286800
1894	id	1894
1894	name	Wuhan
1894	countrycode	CHN
1894	district	Hubei
1894	population	4344600
1895	id	1895
1895	name	Harbin
1895	countrycode	CHN
1895	district	Heilongjiang
1895	population	4289800
1896	id	1896
1896	name	Shenyang
1896	countrycode	CHN
1896	district	Liaoning
1896	population	4265200
1897	id	1897
1897	name	Kanton [Guangzhou]
1897	countrycode	CHN
1897	district	Guangdong
1897	population	4256300
1898	id	1898
1898	name	Chengdu
1898	countrycode	CHN
1898	district	Sichuan
1898	population	3361500
1899	id	1899
1899	name	Nanking [Nanjing]
1899	countrycode	CHN
1899	district	Jiangsu
1899	population	2870300
1900	id	1900
1900	name	Changchun
1900	countrycode	CHN
1900	district	Jilin
1900	population	2812000
1901	id	1901
1901	name	Xi´an
1901	countrycode	CHN
1901	district	Shaanxi
1901	population	2761400
1902	id	1902
1902	name	Dalian
1902	countrycode	CHN
1902	district	Liaoning
1902	population	2697000
1903	id	1903
1903	name	Qingdao
1903	countrycode	CHN
1903	district	Shandong
1903	population	2596000
1904	id	1904
1904	name	Jinan
1904	countrycode	CHN
1904	district	Shandong
1904	population	2278100
1905	id	1905
1905	name	Hangzhou
1905	countrycode	CHN
1905	district	Zhejiang
1905	population	2190500
1906	id	1906
1906	name	Zhengzhou
1906	countrycode	CHN
1906	district	Henan
1906	population	2107200
1907	id	1907
1907	name	Shijiazhuang
1907	countrycode	CHN
1907	district	Hebei
1907	population	2041500
1908	id	1908
1908	name	Taiyuan
1908	countrycode	CHN
1908	district	Shanxi
1908	population	1968400
1909	id	1909
1909	name	Kunming
1909	countrycode	CHN
1909	district	Yunnan
1909	population	1829500
1910	id	1910
1910	name	Changsha
1910	countrycode	CHN
1910	district	Hunan
1910	population	1809800
1911	id	1911
1911	name	Nanchang
1911	countrycode	CHN
1911	district	Jiangxi
1911	population	1691600
1912	id	1912
1912	name	Fuzhou
1912	countrycode	CHN
1912	district	Fujian
1912	population	1593800
1913	id	1913
1913	name	Lanzhou
1913	countrycode	CHN
1913	district	Gansu
1913	population	1565800
1914	id	1914
1914	name	Guiyang
1914	countrycode	CHN
1914	district	Guizhou
1914	population	1465200
1915	id	1915
1915	name	Ningbo
1915	countrycode	CHN
1915	district	Zhejiang
1915	population	1371200
1916	id	1916
1916	name	Hefei
1916	countrycode	CHN
1916	district	Anhui
1916	population	1369100
1917	id	1917
1917	name	Urumti [Ürümqi]
1917	countrycode	CHN
1917	district	Xinxiang
1917	population	1310100
1918	id	1918
1918	name	Anshan
1918	countrycode	CHN
1918	district	Liaoning
1918	population	1200000
1919	id	1919
1919	name	Fushun
1919	countrycode	CHN
1919	district	Liaoning
1919	population	1200000
1920	id	1920
1920	name	Nanning
1920	countrycode	CHN
1920	district	Guangxi
1920	population	1161800
1921	id	1921
1921	name	Zibo
1921	countrycode	CHN
1921	district	Shandong
1921	population	1140000
1922	id	1922
1922	name	Qiqihar
1922	countrycode	CHN
1922	district	Heilongjiang
1922	population	1070000
1923	id	1923
1923	name	Jilin
1923	countrycode	CHN
1923	district	Jilin
1923	population	1040000
1924	id	1924
1924	name	Tangshan
1924	countrycode	CHN
1924	district	Hebei
1924	population	1040000
1925	id	1925
1925	name	Baotou
1925	countrycode	CHN
1925	district	Inner Mongolia
1925	population	980000
1926	id	1926
1926	name	Shenzhen
1926	countrycode	CHN
1926	district	Guangdong
1926	population	950500
1927	id	1927
1927	name	Hohhot
1927	countrycode	CHN
1927	district	Inner Mongolia
1927	population	916700
1928	id	1928
1928	name	Handan
1928	countrycode	CHN
1928	district	Hebei
1928	population	840000
1929	id	1929
1929	name	Wuxi
1929	countrycode	CHN
1929	district	Jiangsu
1929	population	830000
1930	id	1930
1930	name	Xuzhou
1930	countrycode	CHN
1930	district	Jiangsu
1930	population	810000
1931	id	1931
1931	name	Datong
1931	countrycode	CHN
1931	district	Shanxi
1931	population	800000
1932	id	1932
1932	name	Yichun
1932	countrycode	CHN
1932	district	Heilongjiang
1932	population	800000
1933	id	1933
1933	name	Benxi
1933	countrycode	CHN
1933	district	Liaoning
1933	population	770000
1934	id	1934
1934	name	Luoyang
1934	countrycode	CHN
1934	district	Henan
1934	population	760000
1935	id	1935
1935	name	Suzhou
1935	countrycode	CHN
1935	district	Jiangsu
1935	population	710000
1936	id	1936
1936	name	Xining
1936	countrycode	CHN
1936	district	Qinghai
1936	population	700200
1937	id	1937
1937	name	Huainan
1937	countrycode	CHN
1937	district	Anhui
1937	population	700000
1938	id	1938
1938	name	Jixi
1938	countrycode	CHN
1938	district	Heilongjiang
1938	population	683885
1939	id	1939
1939	name	Daqing
1939	countrycode	CHN
1939	district	Heilongjiang
1939	population	660000
1940	id	1940
1940	name	Fuxin
1940	countrycode	CHN
1940	district	Liaoning
1940	population	640000
1941	id	1941
1941	name	Amoy [Xiamen]
1941	countrycode	CHN
1941	district	Fujian
1941	population	627500
1942	id	1942
1942	name	Liuzhou
1942	countrycode	CHN
1942	district	Guangxi
1942	population	610000
1943	id	1943
1943	name	Shantou
1943	countrycode	CHN
1943	district	Guangdong
1943	population	580000
1944	id	1944
1944	name	Jinzhou
1944	countrycode	CHN
1944	district	Liaoning
1944	population	570000
1945	id	1945
1945	name	Mudanjiang
1945	countrycode	CHN
1945	district	Heilongjiang
1945	population	570000
1946	id	1946
1946	name	Yinchuan
1946	countrycode	CHN
1946	district	Ningxia
1946	population	544500
1947	id	1947
1947	name	Changzhou
1947	countrycode	CHN
1947	district	Jiangsu
1947	population	530000
1948	id	1948
1948	name	Zhangjiakou
1948	countrycode	CHN
1948	district	Hebei
1948	population	530000
1949	id	1949
1949	name	Dandong
1949	countrycode	CHN
1949	district	Liaoning
1949	population	520000
1950	id	1950
1950	name	Hegang
1950	countrycode	CHN
1950	district	Heilongjiang
1950	population	520000
1951	id	1951
1951	name	Kaifeng
1951	countrycode	CHN
1951	district	Henan
1951	population	510000
1952	id	1952
1952	name	Jiamusi
1952	countrycode	CHN
1952	district	Heilongjiang
1952	population	493409
1953	id	1953
1953	name	Liaoyang
1953	countrycode	CHN
1953	district	Liaoning
1953	population	492559
1954	id	1954
1954	name	Hengyang
1954	countrycode	CHN
1954	district	Hunan
1954	population	487148
1955	id	1955
1955	name	Baoding
1955	countrycode	CHN
1955	district	Hebei
1955	population	483155
1956	id	1956
1956	name	Hunjiang
1956	countrycode	CHN
1956	district	Jilin
1956	population	482043
1957	id	1957
1957	name	Xinxiang
1957	countrycode	CHN
1957	district	Henan
1957	population	473762
1958	id	1958
1958	name	Huangshi
1958	countrycode	CHN
1958	district	Hubei
1958	population	457601
1959	id	1959
1959	name	Haikou
1959	countrycode	CHN
1959	district	Hainan
1959	population	454300
1960	id	1960
1960	name	Yantai
1960	countrycode	CHN
1960	district	Shandong
1960	population	452127
1961	id	1961
1961	name	Bengbu
1961	countrycode	CHN
1961	district	Anhui
1961	population	449245
1962	id	1962
1962	name	Xiangtan
1962	countrycode	CHN
1962	district	Hunan
1962	population	441968
1963	id	1963
1963	name	Weifang
1963	countrycode	CHN
1963	district	Shandong
1963	population	428522
1964	id	1964
1964	name	Wuhu
1964	countrycode	CHN
1964	district	Anhui
1964	population	425740
1965	id	1965
1965	name	Pingxiang
1965	countrycode	CHN
1965	district	Jiangxi
1965	population	425579
1966	id	1966
1966	name	Yingkou
1966	countrycode	CHN
1966	district	Liaoning
1966	population	421589
1967	id	1967
1967	name	Anyang
1967	countrycode	CHN
1967	district	Henan
1967	population	420332
1968	id	1968
1968	name	Panzhihua
1968	countrycode	CHN
1968	district	Sichuan
1968	population	415466
1969	id	1969
1969	name	Pingdingshan
1969	countrycode	CHN
1969	district	Henan
1969	population	410775
1970	id	1970
1970	name	Xiangfan
1970	countrycode	CHN
1970	district	Hubei
1970	population	410407
1971	id	1971
1971	name	Zhuzhou
1971	countrycode	CHN
1971	district	Hunan
1971	population	409924
1972	id	1972
1972	name	Jiaozuo
1972	countrycode	CHN
1972	district	Henan
1972	population	409100
1973	id	1973
1973	name	Wenzhou
1973	countrycode	CHN
1973	district	Zhejiang
1973	population	401871
1974	id	1974
1974	name	Zhangjiang
1974	countrycode	CHN
1974	district	Guangdong
1974	population	400997
1975	id	1975
1975	name	Zigong
1975	countrycode	CHN
1975	district	Sichuan
1975	population	393184
1976	id	1976
1976	name	Shuangyashan
1976	countrycode	CHN
1976	district	Heilongjiang
1976	population	386081
1977	id	1977
1977	name	Zaozhuang
1977	countrycode	CHN
1977	district	Shandong
1977	population	380846
1978	id	1978
1978	name	Yakeshi
1978	countrycode	CHN
1978	district	Inner Mongolia
1978	population	377869
1979	id	1979
1979	name	Yichang
1979	countrycode	CHN
1979	district	Hubei
1979	population	371601
1980	id	1980
1980	name	Zhenjiang
1980	countrycode	CHN
1980	district	Jiangsu
1980	population	368316
1981	id	1981
1981	name	Huaibei
1981	countrycode	CHN
1981	district	Anhui
1981	population	366549
1982	id	1982
1982	name	Qinhuangdao
1982	countrycode	CHN
1982	district	Hebei
1982	population	364972
1983	id	1983
1983	name	Guilin
1983	countrycode	CHN
1983	district	Guangxi
1983	population	364130
1984	id	1984
1984	name	Liupanshui
1984	countrycode	CHN
1984	district	Guizhou
1984	population	363954
1985	id	1985
1985	name	Panjin
1985	countrycode	CHN
1985	district	Liaoning
1985	population	362773
1986	id	1986
1986	name	Yangquan
1986	countrycode	CHN
1986	district	Shanxi
1986	population	362268
1987	id	1987
1987	name	Jinxi
1987	countrycode	CHN
1987	district	Liaoning
1987	population	357052
1988	id	1988
1988	name	Liaoyuan
1988	countrycode	CHN
1988	district	Jilin
1988	population	354141
1989	id	1989
1989	name	Lianyungang
1989	countrycode	CHN
1989	district	Jiangsu
1989	population	354139
1990	id	1990
1990	name	Xianyang
1990	countrycode	CHN
1990	district	Shaanxi
1990	population	352125
1991	id	1991
1991	name	Tai´an
1991	countrycode	CHN
1991	district	Shandong
1991	population	350696
1992	id	1992
1992	name	Chifeng
1992	countrycode	CHN
1992	district	Inner Mongolia
1992	population	350077
1993	id	1993
1993	name	Shaoguan
1993	countrycode	CHN
1993	district	Guangdong
1993	population	350043
1994	id	1994
1994	name	Nantong
1994	countrycode	CHN
1994	district	Jiangsu
1994	population	343341
1995	id	1995
1995	name	Leshan
1995	countrycode	CHN
1995	district	Sichuan
1995	population	341128
1996	id	1996
1996	name	Baoji
1996	countrycode	CHN
1996	district	Shaanxi
1996	population	337765
1997	id	1997
1997	name	Linyi
1997	countrycode	CHN
1997	district	Shandong
1997	population	324720
1998	id	1998
1998	name	Tonghua
1998	countrycode	CHN
1998	district	Jilin
1998	population	324600
1999	id	1999
1999	name	Siping
1999	countrycode	CHN
1999	district	Jilin
1999	population	317223
2000	id	2000
2000	name	Changzhi
2000	countrycode	CHN
2000	district	Shanxi
2000	population	317144
2001	id	2001
2001	name	Tengzhou
2001	countrycode	CHN
2001	district	Shandong
2001	population	315083
2002	id	2002
2002	name	Chaozhou
2002	countrycode	CHN
2002	district	Guangdong
2002	population	313469
2003	id	2003
2003	name	Yangzhou
2003	countrycode	CHN
2003	district	Jiangsu
2003	population	312892
2004	id	2004
2004	name	Dongwan
2004	countrycode	CHN
2004	district	Guangdong
2004	population	308669
2005	id	2005
2005	name	Ma´anshan
2005	countrycode	CHN
2005	district	Anhui
2005	population	305421
2006	id	2006
2006	name	Foshan
2006	countrycode	CHN
2006	district	Guangdong
2006	population	303160
2007	id	2007
2007	name	Yueyang
2007	countrycode	CHN
2007	district	Hunan
2007	population	302800
2008	id	2008
2008	name	Xingtai
2008	countrycode	CHN
2008	district	Hebei
2008	population	302789
2009	id	2009
2009	name	Changde
2009	countrycode	CHN
2009	district	Hunan
2009	population	301276
2010	id	2010
2010	name	Shihezi
2010	countrycode	CHN
2010	district	Xinxiang
2010	population	299676
2011	id	2011
2011	name	Yancheng
2011	countrycode	CHN
2011	district	Jiangsu
2011	population	296831
2012	id	2012
2012	name	Jiujiang
2012	countrycode	CHN
2012	district	Jiangxi
2012	population	291187
2013	id	2013
2013	name	Dongying
2013	countrycode	CHN
2013	district	Shandong
2013	population	281728
2014	id	2014
2014	name	Shashi
2014	countrycode	CHN
2014	district	Hubei
2014	population	281352
2015	id	2015
2015	name	Xintai
2015	countrycode	CHN
2015	district	Shandong
2015	population	281248
2016	id	2016
2016	name	Jingdezhen
2016	countrycode	CHN
2016	district	Jiangxi
2016	population	281183
2017	id	2017
2017	name	Tongchuan
2017	countrycode	CHN
2017	district	Shaanxi
2017	population	280657
2018	id	2018
2018	name	Zhongshan
2018	countrycode	CHN
2018	district	Guangdong
2018	population	278829
2019	id	2019
2019	name	Shiyan
2019	countrycode	CHN
2019	district	Hubei
2019	population	273786
2020	id	2020
2020	name	Tieli
2020	countrycode	CHN
2020	district	Heilongjiang
2020	population	265683
2021	id	2021
2021	name	Jining
2021	countrycode	CHN
2021	district	Shandong
2021	population	265248
2022	id	2022
2022	name	Wuhai
2022	countrycode	CHN
2022	district	Inner Mongolia
2022	population	264081
2023	id	2023
2023	name	Mianyang
2023	countrycode	CHN
2023	district	Sichuan
2023	population	262947
2024	id	2024
2024	name	Luzhou
2024	countrycode	CHN
2024	district	Sichuan
2024	population	262892
2025	id	2025
2025	name	Zunyi
2025	countrycode	CHN
2025	district	Guizhou
2025	population	261862
2026	id	2026
2026	name	Shizuishan
2026	countrycode	CHN
2026	district	Ningxia
2026	population	257862
2027	id	2027
2027	name	Neijiang
2027	countrycode	CHN
2027	district	Sichuan
2027	population	256012
2028	id	2028
2028	name	Tongliao
2028	countrycode	CHN
2028	district	Inner Mongolia
2028	population	255129
2029	id	2029
2029	name	Tieling
2029	countrycode	CHN
2029	district	Liaoning
2029	population	254842
2030	id	2030
2030	name	Wafangdian
2030	countrycode	CHN
2030	district	Liaoning
2030	population	251733
2031	id	2031
2031	name	Anqing
2031	countrycode	CHN
2031	district	Anhui
2031	population	250718
2032	id	2032
2032	name	Shaoyang
2032	countrycode	CHN
2032	district	Hunan
2032	population	247227
2033	id	2033
2033	name	Laiwu
2033	countrycode	CHN
2033	district	Shandong
2033	population	246833
2034	id	2034
2034	name	Chengde
2034	countrycode	CHN
2034	district	Hebei
2034	population	246799
2035	id	2035
2035	name	Tianshui
2035	countrycode	CHN
2035	district	Gansu
2035	population	244974
2036	id	2036
2036	name	Nanyang
2036	countrycode	CHN
2036	district	Henan
2036	population	243303
2037	id	2037
2037	name	Cangzhou
2037	countrycode	CHN
2037	district	Hebei
2037	population	242708
2038	id	2038
2038	name	Yibin
2038	countrycode	CHN
2038	district	Sichuan
2038	population	241019
2039	id	2039
2039	name	Huaiyin
2039	countrycode	CHN
2039	district	Jiangsu
2039	population	239675
2040	id	2040
2040	name	Dunhua
2040	countrycode	CHN
2040	district	Jilin
2040	population	235100
2041	id	2041
2041	name	Yanji
2041	countrycode	CHN
2041	district	Jilin
2041	population	230892
2042	id	2042
2042	name	Jiangmen
2042	countrycode	CHN
2042	district	Guangdong
2042	population	230587
2043	id	2043
2043	name	Tongling
2043	countrycode	CHN
2043	district	Anhui
2043	population	228017
2044	id	2044
2044	name	Suihua
2044	countrycode	CHN
2044	district	Heilongjiang
2044	population	227881
2045	id	2045
2045	name	Gongziling
2045	countrycode	CHN
2045	district	Jilin
2045	population	226569
2046	id	2046
2046	name	Xiantao
2046	countrycode	CHN
2046	district	Hubei
2046	population	222884
2047	id	2047
2047	name	Chaoyang
2047	countrycode	CHN
2047	district	Liaoning
2047	population	222394
2048	id	2048
2048	name	Ganzhou
2048	countrycode	CHN
2048	district	Jiangxi
2048	population	220129
2049	id	2049
2049	name	Huzhou
2049	countrycode	CHN
2049	district	Zhejiang
2049	population	218071
2050	id	2050
2050	name	Baicheng
2050	countrycode	CHN
2050	district	Jilin
2050	population	217987
2051	id	2051
2051	name	Shangzi
2051	countrycode	CHN
2051	district	Heilongjiang
2051	population	215373
2052	id	2052
2052	name	Yangjiang
2052	countrycode	CHN
2052	district	Guangdong
2052	population	215196
2053	id	2053
2053	name	Qitaihe
2053	countrycode	CHN
2053	district	Heilongjiang
2053	population	214957
2054	id	2054
2054	name	Gejiu
2054	countrycode	CHN
2054	district	Yunnan
2054	population	214294
2055	id	2055
2055	name	Jiangyin
2055	countrycode	CHN
2055	district	Jiangsu
2055	population	213659
2056	id	2056
2056	name	Hebi
2056	countrycode	CHN
2056	district	Henan
2056	population	212976
2057	id	2057
2057	name	Jiaxing
2057	countrycode	CHN
2057	district	Zhejiang
2057	population	211526
2058	id	2058
2058	name	Wuzhou
2058	countrycode	CHN
2058	district	Guangxi
2058	population	210452
2059	id	2059
2059	name	Meihekou
2059	countrycode	CHN
2059	district	Jilin
2059	population	209038
2060	id	2060
2060	name	Xuchang
2060	countrycode	CHN
2060	district	Henan
2060	population	208815
2061	id	2061
2061	name	Liaocheng
2061	countrycode	CHN
2061	district	Shandong
2061	population	207844
2062	id	2062
2062	name	Haicheng
2062	countrycode	CHN
2062	district	Liaoning
2062	population	205560
2063	id	2063
2063	name	Qianjiang
2063	countrycode	CHN
2063	district	Hubei
2063	population	205504
2064	id	2064
2064	name	Baiyin
2064	countrycode	CHN
2064	district	Gansu
2064	population	204970
2065	id	2065
2065	name	Bei´an
2065	countrycode	CHN
2065	district	Heilongjiang
2065	population	204899
2066	id	2066
2066	name	Yixing
2066	countrycode	CHN
2066	district	Jiangsu
2066	population	200824
2067	id	2067
2067	name	Laizhou
2067	countrycode	CHN
2067	district	Shandong
2067	population	198664
2068	id	2068
2068	name	Qaramay
2068	countrycode	CHN
2068	district	Xinxiang
2068	population	197602
2069	id	2069
2069	name	Acheng
2069	countrycode	CHN
2069	district	Heilongjiang
2069	population	197595
2070	id	2070
2070	name	Dezhou
2070	countrycode	CHN
2070	district	Shandong
2070	population	195485
2071	id	2071
2071	name	Nanping
2071	countrycode	CHN
2071	district	Fujian
2071	population	195064
2072	id	2072
2072	name	Zhaoqing
2072	countrycode	CHN
2072	district	Guangdong
2072	population	194784
2073	id	2073
2073	name	Beipiao
2073	countrycode	CHN
2073	district	Liaoning
2073	population	194301
2074	id	2074
2074	name	Fengcheng
2074	countrycode	CHN
2074	district	Jiangxi
2074	population	193784
2075	id	2075
2075	name	Fuyu
2075	countrycode	CHN
2075	district	Jilin
2075	population	192981
2076	id	2076
2076	name	Xinyang
2076	countrycode	CHN
2076	district	Henan
2076	population	192509
2077	id	2077
2077	name	Dongtai
2077	countrycode	CHN
2077	district	Jiangsu
2077	population	192247
2078	id	2078
2078	name	Yuci
2078	countrycode	CHN
2078	district	Shanxi
2078	population	191356
2079	id	2079
2079	name	Honghu
2079	countrycode	CHN
2079	district	Hubei
2079	population	190772
2080	id	2080
2080	name	Ezhou
2080	countrycode	CHN
2080	district	Hubei
2080	population	190123
2081	id	2081
2081	name	Heze
2081	countrycode	CHN
2081	district	Shandong
2081	population	189293
2082	id	2082
2082	name	Daxian
2082	countrycode	CHN
2082	district	Sichuan
2082	population	188101
2083	id	2083
2083	name	Linfen
2083	countrycode	CHN
2083	district	Shanxi
2083	population	187309
2084	id	2084
2084	name	Tianmen
2084	countrycode	CHN
2084	district	Hubei
2084	population	186332
2085	id	2085
2085	name	Yiyang
2085	countrycode	CHN
2085	district	Hunan
2085	population	185818
2086	id	2086
2086	name	Quanzhou
2086	countrycode	CHN
2086	district	Fujian
2086	population	185154
2087	id	2087
2087	name	Rizhao
2087	countrycode	CHN
2087	district	Shandong
2087	population	185048
2088	id	2088
2088	name	Deyang
2088	countrycode	CHN
2088	district	Sichuan
2088	population	182488
2089	id	2089
2089	name	Guangyuan
2089	countrycode	CHN
2089	district	Sichuan
2089	population	182241
2090	id	2090
2090	name	Changshu
2090	countrycode	CHN
2090	district	Jiangsu
2090	population	181805
2091	id	2091
2091	name	Zhangzhou
2091	countrycode	CHN
2091	district	Fujian
2091	population	181424
2092	id	2092
2092	name	Hailar
2092	countrycode	CHN
2092	district	Inner Mongolia
2092	population	180650
2093	id	2093
2093	name	Nanchong
2093	countrycode	CHN
2093	district	Sichuan
2093	population	180273
2094	id	2094
2094	name	Jiutai
2094	countrycode	CHN
2094	district	Jilin
2094	population	180130
2095	id	2095
2095	name	Zhaodong
2095	countrycode	CHN
2095	district	Heilongjiang
2095	population	179976
2096	id	2096
2096	name	Shaoxing
2096	countrycode	CHN
2096	district	Zhejiang
2096	population	179818
2097	id	2097
2097	name	Fuyang
2097	countrycode	CHN
2097	district	Anhui
2097	population	179572
2098	id	2098
2098	name	Maoming
2098	countrycode	CHN
2098	district	Guangdong
2098	population	178683
2099	id	2099
2099	name	Qujing
2099	countrycode	CHN
2099	district	Yunnan
2099	population	178669
2100	id	2100
2100	name	Ghulja
2100	countrycode	CHN
2100	district	Xinxiang
2100	population	177193
2101	id	2101
2101	name	Jiaohe
2101	countrycode	CHN
2101	district	Jilin
2101	population	176367
2102	id	2102
2102	name	Puyang
2102	countrycode	CHN
2102	district	Henan
2102	population	175988
2103	id	2103
2103	name	Huadian
2103	countrycode	CHN
2103	district	Jilin
2103	population	175873
2104	id	2104
2104	name	Jiangyou
2104	countrycode	CHN
2104	district	Sichuan
2104	population	175753
2105	id	2105
2105	name	Qashqar
2105	countrycode	CHN
2105	district	Xinxiang
2105	population	174570
2106	id	2106
2106	name	Anshun
2106	countrycode	CHN
2106	district	Guizhou
2106	population	174142
2107	id	2107
2107	name	Fuling
2107	countrycode	CHN
2107	district	Sichuan
2107	population	173878
2108	id	2108
2108	name	Xinyu
2108	countrycode	CHN
2108	district	Jiangxi
2108	population	173524
2109	id	2109
2109	name	Hanzhong
2109	countrycode	CHN
2109	district	Shaanxi
2109	population	169930
2110	id	2110
2110	name	Danyang
2110	countrycode	CHN
2110	district	Jiangsu
2110	population	169603
2111	id	2111
2111	name	Chenzhou
2111	countrycode	CHN
2111	district	Hunan
2111	population	169400
2112	id	2112
2112	name	Xiaogan
2112	countrycode	CHN
2112	district	Hubei
2112	population	166280
2113	id	2113
2113	name	Shangqiu
2113	countrycode	CHN
2113	district	Henan
2113	population	164880
2114	id	2114
2114	name	Zhuhai
2114	countrycode	CHN
2114	district	Guangdong
2114	population	164747
2115	id	2115
2115	name	Qingyuan
2115	countrycode	CHN
2115	district	Guangdong
2115	population	164641
2116	id	2116
2116	name	Aqsu
2116	countrycode	CHN
2116	district	Xinxiang
2116	population	164092
2117	id	2117
2117	name	Jining
2117	countrycode	CHN
2117	district	Inner Mongolia
2117	population	163552
2118	id	2118
2118	name	Xiaoshan
2118	countrycode	CHN
2118	district	Zhejiang
2118	population	162930
2119	id	2119
2119	name	Zaoyang
2119	countrycode	CHN
2119	district	Hubei
2119	population	162198
2120	id	2120
2120	name	Xinghua
2120	countrycode	CHN
2120	district	Jiangsu
2120	population	161910
2121	id	2121
2121	name	Hami
2121	countrycode	CHN
2121	district	Xinxiang
2121	population	161315
2122	id	2122
2122	name	Huizhou
2122	countrycode	CHN
2122	district	Guangdong
2122	population	161023
2123	id	2123
2123	name	Jinmen
2123	countrycode	CHN
2123	district	Hubei
2123	population	160794
2124	id	2124
2124	name	Sanming
2124	countrycode	CHN
2124	district	Fujian
2124	population	160691
2125	id	2125
2125	name	Ulanhot
2125	countrycode	CHN
2125	district	Inner Mongolia
2125	population	159538
2126	id	2126
2126	name	Korla
2126	countrycode	CHN
2126	district	Xinxiang
2126	population	159344
2127	id	2127
2127	name	Wanxian
2127	countrycode	CHN
2127	district	Sichuan
2127	population	156823
2128	id	2128
2128	name	Rui´an
2128	countrycode	CHN
2128	district	Zhejiang
2128	population	156468
2129	id	2129
2129	name	Zhoushan
2129	countrycode	CHN
2129	district	Zhejiang
2129	population	156317
2130	id	2130
2130	name	Liangcheng
2130	countrycode	CHN
2130	district	Shandong
2130	population	156307
2131	id	2131
2131	name	Jiaozhou
2131	countrycode	CHN
2131	district	Shandong
2131	population	153364
2132	id	2132
2132	name	Taizhou
2132	countrycode	CHN
2132	district	Jiangsu
2132	population	152442
2133	id	2133
2133	name	Suzhou
2133	countrycode	CHN
2133	district	Anhui
2133	population	151862
2134	id	2134
2134	name	Yichun
2134	countrycode	CHN
2134	district	Jiangxi
2134	population	151585
2135	id	2135
2135	name	Taonan
2135	countrycode	CHN
2135	district	Jilin
2135	population	150168
2136	id	2136
2136	name	Pingdu
2136	countrycode	CHN
2136	district	Shandong
2136	population	150123
2137	id	2137
2137	name	Ji´an
2137	countrycode	CHN
2137	district	Jiangxi
2137	population	148583
2138	id	2138
2138	name	Longkou
2138	countrycode	CHN
2138	district	Shandong
2138	population	148362
2139	id	2139
2139	name	Langfang
2139	countrycode	CHN
2139	district	Hebei
2139	population	148105
2140	id	2140
2140	name	Zhoukou
2140	countrycode	CHN
2140	district	Henan
2140	population	146288
2141	id	2141
2141	name	Suining
2141	countrycode	CHN
2141	district	Sichuan
2141	population	146086
2142	id	2142
2142	name	Yulin
2142	countrycode	CHN
2142	district	Guangxi
2142	population	144467
2143	id	2143
2143	name	Jinhua
2143	countrycode	CHN
2143	district	Zhejiang
2143	population	144280
2144	id	2144
2144	name	Liu´an
2144	countrycode	CHN
2144	district	Anhui
2144	population	144248
2145	id	2145
2145	name	Shuangcheng
2145	countrycode	CHN
2145	district	Heilongjiang
2145	population	142659
2146	id	2146
2146	name	Suizhou
2146	countrycode	CHN
2146	district	Hubei
2146	population	142302
2147	id	2147
2147	name	Ankang
2147	countrycode	CHN
2147	district	Shaanxi
2147	population	142170
2148	id	2148
2148	name	Weinan
2148	countrycode	CHN
2148	district	Shaanxi
2148	population	140169
2149	id	2149
2149	name	Longjing
2149	countrycode	CHN
2149	district	Jilin
2149	population	139417
2150	id	2150
2150	name	Da´an
2150	countrycode	CHN
2150	district	Jilin
2150	population	138963
2151	id	2151
2151	name	Lengshuijiang
2151	countrycode	CHN
2151	district	Hunan
2151	population	137994
2152	id	2152
2152	name	Laiyang
2152	countrycode	CHN
2152	district	Shandong
2152	population	137080
2153	id	2153
2153	name	Xianning
2153	countrycode	CHN
2153	district	Hubei
2153	population	136811
2154	id	2154
2154	name	Dali
2154	countrycode	CHN
2154	district	Yunnan
2154	population	136554
2155	id	2155
2155	name	Anda
2155	countrycode	CHN
2155	district	Heilongjiang
2155	population	136446
2156	id	2156
2156	name	Jincheng
2156	countrycode	CHN
2156	district	Shanxi
2156	population	136396
2157	id	2157
2157	name	Longyan
2157	countrycode	CHN
2157	district	Fujian
2157	population	134481
2158	id	2158
2158	name	Xichang
2158	countrycode	CHN
2158	district	Sichuan
2158	population	134419
2159	id	2159
2159	name	Wendeng
2159	countrycode	CHN
2159	district	Shandong
2159	population	133910
2160	id	2160
2160	name	Hailun
2160	countrycode	CHN
2160	district	Heilongjiang
2160	population	133565
2161	id	2161
2161	name	Binzhou
2161	countrycode	CHN
2161	district	Shandong
2161	population	133555
2162	id	2162
2162	name	Linhe
2162	countrycode	CHN
2162	district	Inner Mongolia
2162	population	133183
2163	id	2163
2163	name	Wuwei
2163	countrycode	CHN
2163	district	Gansu
2163	population	133101
2164	id	2164
2164	name	Duyun
2164	countrycode	CHN
2164	district	Guizhou
2164	population	132971
2165	id	2165
2165	name	Mishan
2165	countrycode	CHN
2165	district	Heilongjiang
2165	population	132744
2166	id	2166
2166	name	Shangrao
2166	countrycode	CHN
2166	district	Jiangxi
2166	population	132455
2167	id	2167
2167	name	Changji
2167	countrycode	CHN
2167	district	Xinxiang
2167	population	132260
2168	id	2168
2168	name	Meixian
2168	countrycode	CHN
2168	district	Guangdong
2168	population	132156
2169	id	2169
2169	name	Yushu
2169	countrycode	CHN
2169	district	Jilin
2169	population	131861
2170	id	2170
2170	name	Tiefa
2170	countrycode	CHN
2170	district	Liaoning
2170	population	131807
2171	id	2171
2171	name	Huai´an
2171	countrycode	CHN
2171	district	Jiangsu
2171	population	131149
2172	id	2172
2172	name	Leiyang
2172	countrycode	CHN
2172	district	Hunan
2172	population	130115
2173	id	2173
2173	name	Zalantun
2173	countrycode	CHN
2173	district	Inner Mongolia
2173	population	130031
2174	id	2174
2174	name	Weihai
2174	countrycode	CHN
2174	district	Shandong
2174	population	128888
2175	id	2175
2175	name	Loudi
2175	countrycode	CHN
2175	district	Hunan
2175	population	128418
2176	id	2176
2176	name	Qingzhou
2176	countrycode	CHN
2176	district	Shandong
2176	population	128258
2177	id	2177
2177	name	Qidong
2177	countrycode	CHN
2177	district	Jiangsu
2177	population	126872
2178	id	2178
2178	name	Huaihua
2178	countrycode	CHN
2178	district	Hunan
2178	population	126785
2179	id	2179
2179	name	Luohe
2179	countrycode	CHN
2179	district	Henan
2179	population	126438
2180	id	2180
2180	name	Chuzhou
2180	countrycode	CHN
2180	district	Anhui
2180	population	125341
2181	id	2181
2181	name	Kaiyuan
2181	countrycode	CHN
2181	district	Liaoning
2181	population	124219
2182	id	2182
2182	name	Linqing
2182	countrycode	CHN
2182	district	Shandong
2182	population	123958
2183	id	2183
2183	name	Chaohu
2183	countrycode	CHN
2183	district	Anhui
2183	population	123676
2184	id	2184
2184	name	Laohekou
2184	countrycode	CHN
2184	district	Hubei
2184	population	123366
2185	id	2185
2185	name	Dujiangyan
2185	countrycode	CHN
2185	district	Sichuan
2185	population	123357
2186	id	2186
2186	name	Zhumadian
2186	countrycode	CHN
2186	district	Henan
2186	population	123232
2187	id	2187
2187	name	Linchuan
2187	countrycode	CHN
2187	district	Jiangxi
2187	population	121949
2188	id	2188
2188	name	Jiaonan
2188	countrycode	CHN
2188	district	Shandong
2188	population	121397
2189	id	2189
2189	name	Sanmenxia
2189	countrycode	CHN
2189	district	Henan
2189	population	120523
2190	id	2190
2190	name	Heyuan
2190	countrycode	CHN
2190	district	Guangdong
2190	population	120101
2191	id	2191
2191	name	Manzhouli
2191	countrycode	CHN
2191	district	Inner Mongolia
2191	population	120023
2192	id	2192
2192	name	Lhasa
2192	countrycode	CHN
2192	district	Tibet
2192	population	120000
2193	id	2193
2193	name	Lianyuan
2193	countrycode	CHN
2193	district	Hunan
2193	population	118858
2194	id	2194
2194	name	Kuytun
2194	countrycode	CHN
2194	district	Xinxiang
2194	population	118553
2195	id	2195
2195	name	Puqi
2195	countrycode	CHN
2195	district	Hubei
2195	population	117264
2196	id	2196
2196	name	Hongjiang
2196	countrycode	CHN
2196	district	Hunan
2196	population	116188
2197	id	2197
2197	name	Qinzhou
2197	countrycode	CHN
2197	district	Guangxi
2197	population	114586
2198	id	2198
2198	name	Renqiu
2198	countrycode	CHN
2198	district	Hebei
2198	population	114256
2199	id	2199
2199	name	Yuyao
2199	countrycode	CHN
2199	district	Zhejiang
2199	population	114065
2200	id	2200
2200	name	Guigang
2200	countrycode	CHN
2200	district	Guangxi
2200	population	114025
2201	id	2201
2201	name	Kaili
2201	countrycode	CHN
2201	district	Guizhou
2201	population	113958
2202	id	2202
2202	name	Yan´an
2202	countrycode	CHN
2202	district	Shaanxi
2202	population	113277
2203	id	2203
2203	name	Beihai
2203	countrycode	CHN
2203	district	Guangxi
2203	population	112673
2204	id	2204
2204	name	Xuangzhou
2204	countrycode	CHN
2204	district	Anhui
2204	population	112673
2205	id	2205
2205	name	Quzhou
2205	countrycode	CHN
2205	district	Zhejiang
2205	population	112373
2206	id	2206
2206	name	Yong´an
2206	countrycode	CHN
2206	district	Fujian
2206	population	111762
2207	id	2207
2207	name	Zixing
2207	countrycode	CHN
2207	district	Hunan
2207	population	110048
2208	id	2208
2208	name	Liyang
2208	countrycode	CHN
2208	district	Jiangsu
2208	population	109520
2209	id	2209
2209	name	Yizheng
2209	countrycode	CHN
2209	district	Jiangsu
2209	population	109268
2210	id	2210
2210	name	Yumen
2210	countrycode	CHN
2210	district	Gansu
2210	population	109234
2211	id	2211
2211	name	Liling
2211	countrycode	CHN
2211	district	Hunan
2211	population	108504
2212	id	2212
2212	name	Yuncheng
2212	countrycode	CHN
2212	district	Shanxi
2212	population	108359
2213	id	2213
2213	name	Shanwei
2213	countrycode	CHN
2213	district	Guangdong
2213	population	107847
2214	id	2214
2214	name	Cixi
2214	countrycode	CHN
2214	district	Zhejiang
2214	population	107329
2215	id	2215
2215	name	Yuanjiang
2215	countrycode	CHN
2215	district	Hunan
2215	population	107004
2216	id	2216
2216	name	Bozhou
2216	countrycode	CHN
2216	district	Anhui
2216	population	106346
2217	id	2217
2217	name	Jinchang
2217	countrycode	CHN
2217	district	Gansu
2217	population	105287
2218	id	2218
2218	name	Fu´an
2218	countrycode	CHN
2218	district	Fujian
2218	population	105265
2219	id	2219
2219	name	Suqian
2219	countrycode	CHN
2219	district	Jiangsu
2219	population	105021
2220	id	2220
2220	name	Shishou
2220	countrycode	CHN
2220	district	Hubei
2220	population	104571
2221	id	2221
2221	name	Hengshui
2221	countrycode	CHN
2221	district	Hebei
2221	population	104269
2222	id	2222
2222	name	Danjiangkou
2222	countrycode	CHN
2222	district	Hubei
2222	population	103211
2223	id	2223
2223	name	Fujin
2223	countrycode	CHN
2223	district	Heilongjiang
2223	population	103104
2224	id	2224
2224	name	Sanya
2224	countrycode	CHN
2224	district	Hainan
2224	population	102820
2225	id	2225
2225	name	Guangshui
2225	countrycode	CHN
2225	district	Hubei
2225	population	102770
2226	id	2226
2226	name	Huangshan
2226	countrycode	CHN
2226	district	Anhui
2226	population	102628
2227	id	2227
2227	name	Xingcheng
2227	countrycode	CHN
2227	district	Liaoning
2227	population	102384
2228	id	2228
2228	name	Zhucheng
2228	countrycode	CHN
2228	district	Shandong
2228	population	102134
2229	id	2229
2229	name	Kunshan
2229	countrycode	CHN
2229	district	Jiangsu
2229	population	102052
2230	id	2230
2230	name	Haining
2230	countrycode	CHN
2230	district	Zhejiang
2230	population	100478
2231	id	2231
2231	name	Pingliang
2231	countrycode	CHN
2231	district	Gansu
2231	population	99265
2232	id	2232
2232	name	Fuqing
2232	countrycode	CHN
2232	district	Fujian
2232	population	99193
2233	id	2233
2233	name	Xinzhou
2233	countrycode	CHN
2233	district	Shanxi
2233	population	98667
2234	id	2234
2234	name	Jieyang
2234	countrycode	CHN
2234	district	Guangdong
2234	population	98531
2235	id	2235
2235	name	Zhangjiagang
2235	countrycode	CHN
2235	district	Jiangsu
2235	population	97994
2236	id	2236
2236	name	Tong Xian
2236	countrycode	CHN
2236	district	Peking
2236	population	97168
2237	id	2237
2237	name	Ya´an
2237	countrycode	CHN
2237	district	Sichuan
2237	population	95900
2238	id	2238
2238	name	Jinzhou
2238	countrycode	CHN
2238	district	Liaoning
2238	population	95761
2239	id	2239
2239	name	Emeishan
2239	countrycode	CHN
2239	district	Sichuan
2239	population	94000
2240	id	2240
2240	name	Enshi
2240	countrycode	CHN
2240	district	Hubei
2240	population	93056
2241	id	2241
2241	name	Bose
2241	countrycode	CHN
2241	district	Guangxi
2241	population	93009
2242	id	2242
2242	name	Yuzhou
2242	countrycode	CHN
2242	district	Henan
2242	population	92889
2243	id	2243
2243	name	Kaiyuan
2243	countrycode	CHN
2243	district	Yunnan
2243	population	91999
2244	id	2244
2244	name	Tumen
2244	countrycode	CHN
2244	district	Jilin
2244	population	91471
2245	id	2245
2245	name	Putian
2245	countrycode	CHN
2245	district	Fujian
2245	population	91030
2246	id	2246
2246	name	Linhai
2246	countrycode	CHN
2246	district	Zhejiang
2246	population	90870
2247	id	2247
2247	name	Xilin Hot
2247	countrycode	CHN
2247	district	Inner Mongolia
2247	population	90646
2248	id	2248
2248	name	Shaowu
2248	countrycode	CHN
2248	district	Fujian
2248	population	90286
2249	id	2249
2249	name	Junan
2249	countrycode	CHN
2249	district	Shandong
2249	population	90222
2250	id	2250
2250	name	Huaying
2250	countrycode	CHN
2250	district	Sichuan
2250	population	89400
2251	id	2251
2251	name	Pingyi
2251	countrycode	CHN
2251	district	Shandong
2251	population	89373
2252	id	2252
2252	name	Huangyan
2252	countrycode	CHN
2252	district	Zhejiang
2252	population	89288
2253	id	2253
2253	name	Bishkek
2253	countrycode	KGZ
2253	district	Bishkek shaary
2253	population	589400
2254	id	2254
2254	name	Osh
2254	countrycode	KGZ
2254	district	Osh
2254	population	222700
2255	id	2255
2255	name	Bikenibeu
2255	countrycode	KIR
2255	district	South Tarawa
2255	population	5055
2256	id	2256
2256	name	Bairiki
2256	countrycode	KIR
2256	district	South Tarawa
2256	population	2226
2257	id	2257
2257	name	Santafé de Bogotá
2257	countrycode	COL
2257	district	Santafé de Bogotá
2257	population	6260862
2258	id	2258
2258	name	Cali
2258	countrycode	COL
2258	district	Valle
2258	population	2077386
2259	id	2259
2259	name	Medellín
2259	countrycode	COL
2259	district	Antioquia
2259	population	1861265
2260	id	2260
2260	name	Barranquilla
2260	countrycode	COL
2260	district	Atlántico
2260	population	1223260
2261	id	2261
2261	name	Cartagena
2261	countrycode	COL
2261	district	Bolívar
2261	population	805757
2262	id	2262
2262	name	Cúcuta
2262	countrycode	COL
2262	district	Norte de Santander
2262	population	606932
2263	id	2263
2263	name	Bucaramanga
2263	countrycode	COL
2263	district	Santander
2263	population	515555
2264	id	2264
2264	name	Ibagué
2264	countrycode	COL
2264	district	Tolima
2264	population	393664
2265	id	2265
2265	name	Pereira
2265	countrycode	COL
2265	district	Risaralda
2265	population	381725
2266	id	2266
2266	name	Santa Marta
2266	countrycode	COL
2266	district	Magdalena
2266	population	359147
2267	id	2267
2267	name	Manizales
2267	countrycode	COL
2267	district	Caldas
2267	population	337580
2268	id	2268
2268	name	Bello
2268	countrycode	COL
2268	district	Antioquia
2268	population	333470
2269	id	2269
2269	name	Pasto
2269	countrycode	COL
2269	district	Nariño
2269	population	332396
2270	id	2270
2270	name	Neiva
2270	countrycode	COL
2270	district	Huila
2270	population	300052
2271	id	2271
2271	name	Soledad
2271	countrycode	COL
2271	district	Atlántico
2271	population	295058
2272	id	2272
2272	name	Armenia
2272	countrycode	COL
2272	district	Quindío
2272	population	288977
2273	id	2273
2273	name	Villavicencio
2273	countrycode	COL
2273	district	Meta
2273	population	273140
2274	id	2274
2274	name	Soacha
2274	countrycode	COL
2274	district	Cundinamarca
2274	population	272058
2275	id	2275
2275	name	Valledupar
2275	countrycode	COL
2275	district	Cesar
2275	population	263247
2276	id	2276
2276	name	Montería
2276	countrycode	COL
2276	district	Córdoba
2276	population	248245
2277	id	2277
2277	name	Itagüí
2277	countrycode	COL
2277	district	Antioquia
2277	population	228985
2278	id	2278
2278	name	Palmira
2278	countrycode	COL
2278	district	Valle
2278	population	226509
2279	id	2279
2279	name	Buenaventura
2279	countrycode	COL
2279	district	Valle
2279	population	224336
2280	id	2280
2280	name	Floridablanca
2280	countrycode	COL
2280	district	Santander
2280	population	221913
2281	id	2281
2281	name	Sincelejo
2281	countrycode	COL
2281	district	Sucre
2281	population	220704
2282	id	2282
2282	name	Popayán
2282	countrycode	COL
2282	district	Cauca
2282	population	200719
2283	id	2283
2283	name	Barrancabermeja
2283	countrycode	COL
2283	district	Santander
2283	population	178020
2284	id	2284
2284	name	Dos Quebradas
2284	countrycode	COL
2284	district	Risaralda
2284	population	159363
2285	id	2285
2285	name	Tuluá
2285	countrycode	COL
2285	district	Valle
2285	population	152488
2286	id	2286
2286	name	Envigado
2286	countrycode	COL
2286	district	Antioquia
2286	population	135848
2287	id	2287
2287	name	Cartago
2287	countrycode	COL
2287	district	Valle
2287	population	125884
2288	id	2288
2288	name	Girardot
2288	countrycode	COL
2288	district	Cundinamarca
2288	population	110963
2289	id	2289
2289	name	Buga
2289	countrycode	COL
2289	district	Valle
2289	population	110699
2290	id	2290
2290	name	Tunja
2290	countrycode	COL
2290	district	Boyacá
2290	population	109740
2291	id	2291
2291	name	Florencia
2291	countrycode	COL
2291	district	Caquetá
2291	population	108574
2292	id	2292
2292	name	Maicao
2292	countrycode	COL
2292	district	La Guajira
2292	population	108053
2293	id	2293
2293	name	Sogamoso
2293	countrycode	COL
2293	district	Boyacá
2293	population	107728
2294	id	2294
2294	name	Giron
2294	countrycode	COL
2294	district	Santander
2294	population	90688
2295	id	2295
2295	name	Moroni
2295	countrycode	COM
2295	district	Njazidja
2295	population	36000
2296	id	2296
2296	name	Brazzaville
2296	countrycode	COG
2296	district	Brazzaville
2296	population	950000
2297	id	2297
2297	name	Pointe-Noire
2297	countrycode	COG
2297	district	Kouilou
2297	population	500000
2298	id	2298
2298	name	Kinshasa
2298	countrycode	COD
2298	district	Kinshasa
2298	population	5064000
2299	id	2299
2299	name	Lubumbashi
2299	countrycode	COD
2299	district	Shaba
2299	population	851381
2300	id	2300
2300	name	Mbuji-Mayi
2300	countrycode	COD
2300	district	East Kasai
2300	population	806475
2301	id	2301
2301	name	Kolwezi
2301	countrycode	COD
2301	district	Shaba
2301	population	417810
2302	id	2302
2302	name	Kisangani
2302	countrycode	COD
2302	district	Haute-Zaïre
2302	population	417517
2303	id	2303
2303	name	Kananga
2303	countrycode	COD
2303	district	West Kasai
2303	population	393030
2304	id	2304
2304	name	Likasi
2304	countrycode	COD
2304	district	Shaba
2304	population	299118
2305	id	2305
2305	name	Bukavu
2305	countrycode	COD
2305	district	South Kivu
2305	population	201569
2306	id	2306
2306	name	Kikwit
2306	countrycode	COD
2306	district	Bandundu
2306	population	182142
2307	id	2307
2307	name	Tshikapa
2307	countrycode	COD
2307	district	West Kasai
2307	population	180860
2308	id	2308
2308	name	Matadi
2308	countrycode	COD
2308	district	Bas-Zaïre
2308	population	172730
2309	id	2309
2309	name	Mbandaka
2309	countrycode	COD
2309	district	Equateur
2309	population	169841
2310	id	2310
2310	name	Mwene-Ditu
2310	countrycode	COD
2310	district	East Kasai
2310	population	137459
2311	id	2311
2311	name	Boma
2311	countrycode	COD
2311	district	Bas-Zaïre
2311	population	135284
2312	id	2312
2312	name	Uvira
2312	countrycode	COD
2312	district	South Kivu
2312	population	115590
2313	id	2313
2313	name	Butembo
2313	countrycode	COD
2313	district	North Kivu
2313	population	109406
2314	id	2314
2314	name	Goma
2314	countrycode	COD
2314	district	North Kivu
2314	population	109094
2315	id	2315
2315	name	Kalemie
2315	countrycode	COD
2315	district	Shaba
2315	population	101309
2316	id	2316
2316	name	Bantam
2316	countrycode	CCK
2316	district	Home Island
2316	population	503
2317	id	2317
2317	name	West Island
2317	countrycode	CCK
2317	district	West Island
2317	population	167
2318	id	2318
2318	name	Pyongyang
2318	countrycode	PRK
2318	district	Pyongyang-si
2318	population	2484000
2319	id	2319
2319	name	Hamhung
2319	countrycode	PRK
2319	district	Hamgyong N
2319	population	709730
2320	id	2320
2320	name	Chongjin
2320	countrycode	PRK
2320	district	Hamgyong P
2320	population	582480
2321	id	2321
2321	name	Nampo
2321	countrycode	PRK
2321	district	Nampo-si
2321	population	566200
2322	id	2322
2322	name	Sinuiju
2322	countrycode	PRK
2322	district	Pyongan P
2322	population	326011
2323	id	2323
2323	name	Wonsan
2323	countrycode	PRK
2323	district	Kangwon
2323	population	300148
2324	id	2324
2324	name	Phyongsong
2324	countrycode	PRK
2324	district	Pyongan N
2324	population	272934
2325	id	2325
2325	name	Sariwon
2325	countrycode	PRK
2325	district	Hwanghae P
2325	population	254146
2326	id	2326
2326	name	Haeju
2326	countrycode	PRK
2326	district	Hwanghae N
2326	population	229172
2327	id	2327
2327	name	Kanggye
2327	countrycode	PRK
2327	district	Chagang
2327	population	223410
2328	id	2328
2328	name	Kimchaek
2328	countrycode	PRK
2328	district	Hamgyong P
2328	population	179000
2329	id	2329
2329	name	Hyesan
2329	countrycode	PRK
2329	district	Yanggang
2329	population	178020
2330	id	2330
2330	name	Kaesong
2330	countrycode	PRK
2330	district	Kaesong-si
2330	population	171500
2331	id	2331
2331	name	Seoul
2331	countrycode	KOR
2331	district	Seoul
2331	population	9981619
2332	id	2332
2332	name	Pusan
2332	countrycode	KOR
2332	district	Pusan
2332	population	3804522
2333	id	2333
2333	name	Inchon
2333	countrycode	KOR
2333	district	Inchon
2333	population	2559424
2334	id	2334
2334	name	Taegu
2334	countrycode	KOR
2334	district	Taegu
2334	population	2548568
2335	id	2335
2335	name	Taejon
2335	countrycode	KOR
2335	district	Taejon
2335	population	1425835
2336	id	2336
2336	name	Kwangju
2336	countrycode	KOR
2336	district	Kwangju
2336	population	1368341
2337	id	2337
2337	name	Ulsan
2337	countrycode	KOR
2337	district	Kyongsangnam
2337	population	1084891
2338	id	2338
2338	name	Songnam
2338	countrycode	KOR
2338	district	Kyonggi
2338	population	869094
2339	id	2339
2339	name	Puchon
2339	countrycode	KOR
2339	district	Kyonggi
2339	population	779412
2340	id	2340
2340	name	Suwon
2340	countrycode	KOR
2340	district	Kyonggi
2340	population	755550
2341	id	2341
2341	name	Anyang
2341	countrycode	KOR
2341	district	Kyonggi
2341	population	591106
2342	id	2342
2342	name	Chonju
2342	countrycode	KOR
2342	district	Chollabuk
2342	population	563153
2343	id	2343
2343	name	Chongju
2343	countrycode	KOR
2343	district	Chungchongbuk
2343	population	531376
2344	id	2344
2344	name	Koyang
2344	countrycode	KOR
2344	district	Kyonggi
2344	population	518282
2345	id	2345
2345	name	Ansan
2345	countrycode	KOR
2345	district	Kyonggi
2345	population	510314
2346	id	2346
2346	name	Pohang
2346	countrycode	KOR
2346	district	Kyongsangbuk
2346	population	508899
2347	id	2347
2347	name	Chang-won
2347	countrycode	KOR
2347	district	Kyongsangnam
2347	population	481694
2348	id	2348
2348	name	Masan
2348	countrycode	KOR
2348	district	Kyongsangnam
2348	population	441242
2349	id	2349
2349	name	Kwangmyong
2349	countrycode	KOR
2349	district	Kyonggi
2349	population	350914
2350	id	2350
2350	name	Chonan
2350	countrycode	KOR
2350	district	Chungchongnam
2350	population	330259
2351	id	2351
2351	name	Chinju
2351	countrycode	KOR
2351	district	Kyongsangnam
2351	population	329886
2352	id	2352
2352	name	Iksan
2352	countrycode	KOR
2352	district	Chollabuk
2352	population	322685
2353	id	2353
2353	name	Pyongtaek
2353	countrycode	KOR
2353	district	Kyonggi
2353	population	312927
2354	id	2354
2354	name	Kumi
2354	countrycode	KOR
2354	district	Kyongsangbuk
2354	population	311431
2355	id	2355
2355	name	Uijongbu
2355	countrycode	KOR
2355	district	Kyonggi
2355	population	276111
2356	id	2356
2356	name	Kyongju
2356	countrycode	KOR
2356	district	Kyongsangbuk
2356	population	272968
2357	id	2357
2357	name	Kunsan
2357	countrycode	KOR
2357	district	Chollabuk
2357	population	266569
2358	id	2358
2358	name	Cheju
2358	countrycode	KOR
2358	district	Cheju
2358	population	258511
2359	id	2359
2359	name	Kimhae
2359	countrycode	KOR
2359	district	Kyongsangnam
2359	population	256370
2360	id	2360
2360	name	Sunchon
2360	countrycode	KOR
2360	district	Chollanam
2360	population	249263
2361	id	2361
2361	name	Mokpo
2361	countrycode	KOR
2361	district	Chollanam
2361	population	247452
2362	id	2362
2362	name	Yong-in
2362	countrycode	KOR
2362	district	Kyonggi
2362	population	242643
2363	id	2363
2363	name	Wonju
2363	countrycode	KOR
2363	district	Kang-won
2363	population	237460
2364	id	2364
2364	name	Kunpo
2364	countrycode	KOR
2364	district	Kyonggi
2364	population	235233
2365	id	2365
2365	name	Chunchon
2365	countrycode	KOR
2365	district	Kang-won
2365	population	234528
2366	id	2366
2366	name	Namyangju
2366	countrycode	KOR
2366	district	Kyonggi
2366	population	229060
2367	id	2367
2367	name	Kangnung
2367	countrycode	KOR
2367	district	Kang-won
2367	population	220403
2368	id	2368
2368	name	Chungju
2368	countrycode	KOR
2368	district	Chungchongbuk
2368	population	205206
2369	id	2369
2369	name	Andong
2369	countrycode	KOR
2369	district	Kyongsangbuk
2369	population	188443
2370	id	2370
2370	name	Yosu
2370	countrycode	KOR
2370	district	Chollanam
2370	population	183596
2371	id	2371
2371	name	Kyongsan
2371	countrycode	KOR
2371	district	Kyongsangbuk
2371	population	173746
2372	id	2372
2372	name	Paju
2372	countrycode	KOR
2372	district	Kyonggi
2372	population	163379
2373	id	2373
2373	name	Yangsan
2373	countrycode	KOR
2373	district	Kyongsangnam
2373	population	163351
2374	id	2374
2374	name	Ichon
2374	countrycode	KOR
2374	district	Kyonggi
2374	population	155332
2375	id	2375
2375	name	Asan
2375	countrycode	KOR
2375	district	Chungchongnam
2375	population	154663
2376	id	2376
2376	name	Koje
2376	countrycode	KOR
2376	district	Kyongsangnam
2376	population	147562
2377	id	2377
2377	name	Kimchon
2377	countrycode	KOR
2377	district	Kyongsangbuk
2377	population	147027
2378	id	2378
2378	name	Nonsan
2378	countrycode	KOR
2378	district	Chungchongnam
2378	population	146619
2379	id	2379
2379	name	Kuri
2379	countrycode	KOR
2379	district	Kyonggi
2379	population	142173
2380	id	2380
2380	name	Chong-up
2380	countrycode	KOR
2380	district	Chollabuk
2380	population	139111
2381	id	2381
2381	name	Chechon
2381	countrycode	KOR
2381	district	Chungchongbuk
2381	population	137070
2382	id	2382
2382	name	Sosan
2382	countrycode	KOR
2382	district	Chungchongnam
2382	population	134746
2383	id	2383
2383	name	Shihung
2383	countrycode	KOR
2383	district	Kyonggi
2383	population	133443
2384	id	2384
2384	name	Tong-yong
2384	countrycode	KOR
2384	district	Kyongsangnam
2384	population	131717
2385	id	2385
2385	name	Kongju
2385	countrycode	KOR
2385	district	Chungchongnam
2385	population	131229
2386	id	2386
2386	name	Yongju
2386	countrycode	KOR
2386	district	Kyongsangbuk
2386	population	131097
2387	id	2387
2387	name	Chinhae
2387	countrycode	KOR
2387	district	Kyongsangnam
2387	population	125997
2388	id	2388
2388	name	Sangju
2388	countrycode	KOR
2388	district	Kyongsangbuk
2388	population	124116
2389	id	2389
2389	name	Poryong
2389	countrycode	KOR
2389	district	Chungchongnam
2389	population	122604
2390	id	2390
2390	name	Kwang-yang
2390	countrycode	KOR
2390	district	Chollanam
2390	population	122052
2391	id	2391
2391	name	Miryang
2391	countrycode	KOR
2391	district	Kyongsangnam
2391	population	121501
2392	id	2392
2392	name	Hanam
2392	countrycode	KOR
2392	district	Kyonggi
2392	population	115812
2393	id	2393
2393	name	Kimje
2393	countrycode	KOR
2393	district	Chollabuk
2393	population	115427
2394	id	2394
2394	name	Yongchon
2394	countrycode	KOR
2394	district	Kyongsangbuk
2394	population	113511
2395	id	2395
2395	name	Sachon
2395	countrycode	KOR
2395	district	Kyongsangnam
2395	population	113494
2396	id	2396
2396	name	Uiwang
2396	countrycode	KOR
2396	district	Kyonggi
2396	population	108788
2397	id	2397
2397	name	Naju
2397	countrycode	KOR
2397	district	Chollanam
2397	population	107831
2398	id	2398
2398	name	Namwon
2398	countrycode	KOR
2398	district	Chollabuk
2398	population	103544
2399	id	2399
2399	name	Tonghae
2399	countrycode	KOR
2399	district	Kang-won
2399	population	95472
2400	id	2400
2400	name	Mun-gyong
2400	countrycode	KOR
2400	district	Kyongsangbuk
2400	population	92239
2401	id	2401
2401	name	Athenai
2401	countrycode	GRC
2401	district	Attika
2401	population	772072
2402	id	2402
2402	name	Thessaloniki
2402	countrycode	GRC
2402	district	Central Macedonia
2402	population	383967
2403	id	2403
2403	name	Pireus
2403	countrycode	GRC
2403	district	Attika
2403	population	182671
2404	id	2404
2404	name	Patras
2404	countrycode	GRC
2404	district	West Greece
2404	population	153344
2405	id	2405
2405	name	Peristerion
2405	countrycode	GRC
2405	district	Attika
2405	population	137288
2406	id	2406
2406	name	Herakleion
2406	countrycode	GRC
2406	district	Crete
2406	population	116178
2407	id	2407
2407	name	Kallithea
2407	countrycode	GRC
2407	district	Attika
2407	population	114233
2408	id	2408
2408	name	Larisa
2408	countrycode	GRC
2408	district	Thessalia
2408	population	113090
2409	id	2409
2409	name	Zagreb
2409	countrycode	HRV
2409	district	Grad Zagreb
2409	population	706770
2410	id	2410
2410	name	Split
2410	countrycode	HRV
2410	district	Split-Dalmatia
2410	population	189388
2411	id	2411
2411	name	Rijeka
2411	countrycode	HRV
2411	district	Primorje-Gorski Kota
2411	population	167964
2412	id	2412
2412	name	Osijek
2412	countrycode	HRV
2412	district	Osijek-Baranja
2412	population	104761
2413	id	2413
2413	name	La Habana
2413	countrycode	CUB
2413	district	La Habana
2413	population	2256000
2414	id	2414
2414	name	Santiago de Cuba
2414	countrycode	CUB
2414	district	Santiago de Cuba
2414	population	433180
2415	id	2415
2415	name	Camagüey
2415	countrycode	CUB
2415	district	Camagüey
2415	population	298726
2416	id	2416
2416	name	Holguín
2416	countrycode	CUB
2416	district	Holguín
2416	population	249492
2417	id	2417
2417	name	Santa Clara
2417	countrycode	CUB
2417	district	Villa Clara
2417	population	207350
2418	id	2418
2418	name	Guantánamo
2418	countrycode	CUB
2418	district	Guantánamo
2418	population	205078
2419	id	2419
2419	name	Pinar del Río
2419	countrycode	CUB
2419	district	Pinar del Río
2419	population	142100
2420	id	2420
2420	name	Bayamo
2420	countrycode	CUB
2420	district	Granma
2420	population	141000
2421	id	2421
2421	name	Cienfuegos
2421	countrycode	CUB
2421	district	Cienfuegos
2421	population	132770
2422	id	2422
2422	name	Victoria de las Tunas
2422	countrycode	CUB
2422	district	Las Tunas
2422	population	132350
2423	id	2423
2423	name	Matanzas
2423	countrycode	CUB
2423	district	Matanzas
2423	population	123273
2424	id	2424
2424	name	Manzanillo
2424	countrycode	CUB
2424	district	Granma
2424	population	109350
2425	id	2425
2425	name	Sancti-Spíritus
2425	countrycode	CUB
2425	district	Sancti-Spíritus
2425	population	100751
2426	id	2426
2426	name	Ciego de Ávila
2426	countrycode	CUB
2426	district	Ciego de Ávila
2426	population	98505
2427	id	2427
2427	name	al-Salimiya
2427	countrycode	KWT
2427	district	Hawalli
2427	population	130215
2428	id	2428
2428	name	Jalib al-Shuyukh
2428	countrycode	KWT
2428	district	Hawalli
2428	population	102178
2429	id	2429
2429	name	Kuwait
2429	countrycode	KWT
2429	district	al-Asima
2429	population	28859
2430	id	2430
2430	name	Nicosia
2430	countrycode	CYP
2430	district	Nicosia
2430	population	195000
2431	id	2431
2431	name	Limassol
2431	countrycode	CYP
2431	district	Limassol
2431	population	154400
2432	id	2432
2432	name	Vientiane
2432	countrycode	LAO
2432	district	Viangchan
2432	population	531800
2433	id	2433
2433	name	Savannakhet
2433	countrycode	LAO
2433	district	Savannakhet
2433	population	96652
2434	id	2434
2434	name	Riga
2434	countrycode	LVA
2434	district	Riika
2434	population	764328
2435	id	2435
2435	name	Daugavpils
2435	countrycode	LVA
2435	district	Daugavpils
2435	population	114829
2436	id	2436
2436	name	Liepaja
2436	countrycode	LVA
2436	district	Liepaja
2436	population	89439
2437	id	2437
2437	name	Maseru
2437	countrycode	LSO
2437	district	Maseru
2437	population	297000
2438	id	2438
2438	name	Beirut
2438	countrycode	LBN
2438	district	Beirut
2438	population	1100000
2439	id	2439
2439	name	Tripoli
2439	countrycode	LBN
2439	district	al-Shamal
2439	population	240000
2440	id	2440
2440	name	Monrovia
2440	countrycode	LBR
2440	district	Montserrado
2440	population	850000
2441	id	2441
2441	name	Tripoli
2441	countrycode	LBY
2441	district	Tripoli
2441	population	1682000
2442	id	2442
2442	name	Bengasi
2442	countrycode	LBY
2442	district	Bengasi
2442	population	804000
2443	id	2443
2443	name	Misrata
2443	countrycode	LBY
2443	district	Misrata
2443	population	121669
2444	id	2444
2444	name	al-Zawiya
2444	countrycode	LBY
2444	district	al-Zawiya
2444	population	89338
2445	id	2445
2445	name	Schaan
2445	countrycode	LIE
2445	district	Schaan
2445	population	5346
2446	id	2446
2446	name	Vaduz
2446	countrycode	LIE
2446	district	Vaduz
2446	population	5043
2447	id	2447
2447	name	Vilnius
2447	countrycode	LTU
2447	district	Vilna
2447	population	577969
2448	id	2448
2448	name	Kaunas
2448	countrycode	LTU
2448	district	Kaunas
2448	population	412639
2449	id	2449
2449	name	Klaipeda
2449	countrycode	LTU
2449	district	Klaipeda
2449	population	202451
2450	id	2450
2450	name	iauliai
2450	countrycode	LTU
2450	district	iauliai
2450	population	146563
2451	id	2451
2451	name	Panevezys
2451	countrycode	LTU
2451	district	Panevezys
2451	population	133695
2452	id	2452
2452	name	Luxembourg [Luxemburg/Lëtzebuerg]
2452	countrycode	LUX
2452	district	Luxembourg
2452	population	80700
2453	id	2453
2453	name	El-Aaiún
2453	countrycode	ESH
2453	district	El-Aaiún
2453	population	169000
2454	id	2454
2454	name	Macao
2454	countrycode	MAC
2454	district	Macau
2454	population	437500
2455	id	2455
2455	name	Antananarivo
2455	countrycode	MDG
2455	district	Antananarivo
2455	population	675669
2456	id	2456
2456	name	Toamasina
2456	countrycode	MDG
2456	district	Toamasina
2456	population	127441
2457	id	2457
2457	name	Antsirabé
2457	countrycode	MDG
2457	district	Antananarivo
2457	population	120239
2458	id	2458
2458	name	Mahajanga
2458	countrycode	MDG
2458	district	Mahajanga
2458	population	100807
2459	id	2459
2459	name	Fianarantsoa
2459	countrycode	MDG
2459	district	Fianarantsoa
2459	population	99005
2460	id	2460
2460	name	Skopje
2460	countrycode	MKD
2460	district	Skopje
2460	population	444299
2461	id	2461
2461	name	Blantyre
2461	countrycode	MWI
2461	district	Blantyre
2461	population	478155
2462	id	2462
2462	name	Lilongwe
2462	countrycode	MWI
2462	district	Lilongwe
2462	population	435964
2463	id	2463
2463	name	Male
2463	countrycode	MDV
2463	district	Maale
2463	population	71000
2464	id	2464
2464	name	Kuala Lumpur
2464	countrycode	MYS
2464	district	Wilayah Persekutuan
2464	population	1297526
2465	id	2465
2465	name	Ipoh
2465	countrycode	MYS
2465	district	Perak
2465	population	382853
2466	id	2466
2466	name	Johor Baharu
2466	countrycode	MYS
2466	district	Johor
2466	population	328436
2467	id	2467
2467	name	Petaling Jaya
2467	countrycode	MYS
2467	district	Selangor
2467	population	254350
2468	id	2468
2468	name	Kelang
2468	countrycode	MYS
2468	district	Selangor
2468	population	243355
2469	id	2469
2469	name	Kuala Terengganu
2469	countrycode	MYS
2469	district	Terengganu
2469	population	228119
2470	id	2470
2470	name	Pinang
2470	countrycode	MYS
2470	district	Pulau Pinang
2470	population	219603
2471	id	2471
2471	name	Kota Bharu
2471	countrycode	MYS
2471	district	Kelantan
2471	population	219582
2472	id	2472
2472	name	Kuantan
2472	countrycode	MYS
2472	district	Pahang
2472	population	199484
2473	id	2473
2473	name	Taiping
2473	countrycode	MYS
2473	district	Perak
2473	population	183261
2474	id	2474
2474	name	Seremban
2474	countrycode	MYS
2474	district	Negeri Sembilan
2474	population	182869
2475	id	2475
2475	name	Kuching
2475	countrycode	MYS
2475	district	Sarawak
2475	population	148059
2476	id	2476
2476	name	Sibu
2476	countrycode	MYS
2476	district	Sarawak
2476	population	126381
2477	id	2477
2477	name	Sandakan
2477	countrycode	MYS
2477	district	Sabah
2477	population	125841
2478	id	2478
2478	name	Alor Setar
2478	countrycode	MYS
2478	district	Kedah
2478	population	124412
2479	id	2479
2479	name	Selayang Baru
2479	countrycode	MYS
2479	district	Selangor
2479	population	124228
2480	id	2480
2480	name	Sungai Petani
2480	countrycode	MYS
2480	district	Kedah
2480	population	114763
2481	id	2481
2481	name	Shah Alam
2481	countrycode	MYS
2481	district	Selangor
2481	population	102019
2482	id	2482
2482	name	Bamako
2482	countrycode	MLI
2482	district	Bamako
2482	population	809552
2483	id	2483
2483	name	Birkirkara
2483	countrycode	MLT
2483	district	Outer Harbour
2483	population	21445
2484	id	2484
2484	name	Valletta
2484	countrycode	MLT
2484	district	Inner Harbour
2484	population	7073
2485	id	2485
2485	name	Casablanca
2485	countrycode	MAR
2485	district	Casablanca
2485	population	2940623
2486	id	2486
2486	name	Rabat
2486	countrycode	MAR
2486	district	Rabat-Salé-Zammour-Z
2486	population	623457
2487	id	2487
2487	name	Marrakech
2487	countrycode	MAR
2487	district	Marrakech-Tensift-Al
2487	population	621914
2488	id	2488
2488	name	Fès
2488	countrycode	MAR
2488	district	Fès-Boulemane
2488	population	541162
2489	id	2489
2489	name	Tanger
2489	countrycode	MAR
2489	district	Tanger-Tétouan
2489	population	521735
2490	id	2490
2490	name	Salé
2490	countrycode	MAR
2490	district	Rabat-Salé-Zammour-Z
2490	population	504420
2491	id	2491
2491	name	Meknès
2491	countrycode	MAR
2491	district	Meknès-Tafilalet
2491	population	460000
2492	id	2492
2492	name	Oujda
2492	countrycode	MAR
2492	district	Oriental
2492	population	365382
2493	id	2493
2493	name	Kénitra
2493	countrycode	MAR
2493	district	Gharb-Chrarda-Béni H
2493	population	292600
2494	id	2494
2494	name	Tétouan
2494	countrycode	MAR
2494	district	Tanger-Tétouan
2494	population	277516
2495	id	2495
2495	name	Safi
2495	countrycode	MAR
2495	district	Doukkala-Abda
2495	population	262300
2496	id	2496
2496	name	Agadir
2496	countrycode	MAR
2496	district	Souss Massa-Draâ
2496	population	155244
2497	id	2497
2497	name	Mohammedia
2497	countrycode	MAR
2497	district	Casablanca
2497	population	154706
2498	id	2498
2498	name	Khouribga
2498	countrycode	MAR
2498	district	Chaouia-Ouardigha
2498	population	152090
2499	id	2499
2499	name	Beni-Mellal
2499	countrycode	MAR
2499	district	Tadla-Azilal
2499	population	140212
2500	id	2500
2500	name	Témara
2500	countrycode	MAR
2500	district	Rabat-Salé-Zammour-Z
2500	population	126303
2501	id	2501
2501	name	El Jadida
2501	countrycode	MAR
2501	district	Doukkala-Abda
2501	population	119083
2502	id	2502
2502	name	Nador
2502	countrycode	MAR
2502	district	Oriental
2502	population	112450
2503	id	2503
2503	name	Ksar el Kebir
2503	countrycode	MAR
2503	district	Tanger-Tétouan
2503	population	107065
2504	id	2504
2504	name	Settat
2504	countrycode	MAR
2504	district	Chaouia-Ouardigha
2504	population	96200
2505	id	2505
2505	name	Taza
2505	countrycode	MAR
2505	district	Taza-Al Hoceima-Taou
2505	population	92700
2506	id	2506
2506	name	El Araich
2506	countrycode	MAR
2506	district	Tanger-Tétouan
2506	population	90400
2507	id	2507
2507	name	Dalap-Uliga-Darrit
2507	countrycode	MHL
2507	district	Majuro
2507	population	28000
2508	id	2508
2508	name	Fort-de-France
2508	countrycode	MTQ
2508	district	Fort-de-France
2508	population	94050
2509	id	2509
2509	name	Nouakchott
2509	countrycode	MRT
2509	district	Nouakchott
2509	population	667300
2510	id	2510
2510	name	Nouâdhibou
2510	countrycode	MRT
2510	district	Dakhlet Nouâdhibou
2510	population	97600
2511	id	2511
2511	name	Port-Louis
2511	countrycode	MUS
2511	district	Port-Louis
2511	population	138200
2512	id	2512
2512	name	Beau Bassin-Rose Hill
2512	countrycode	MUS
2512	district	Plaines Wilhelms
2512	population	100616
2513	id	2513
2513	name	Vacoas-Phoenix
2513	countrycode	MUS
2513	district	Plaines Wilhelms
2513	population	98464
2514	id	2514
2514	name	Mamoutzou
2514	countrycode	MYT
2514	district	Mamoutzou
2514	population	12000
2515	id	2515
2515	name	Ciudad de México
2515	countrycode	MEX
2515	district	Distrito Federal
2515	population	8591309
2516	id	2516
2516	name	Guadalajara
2516	countrycode	MEX
2516	district	Jalisco
2516	population	1647720
2517	id	2517
2517	name	Ecatepec de Morelos
2517	countrycode	MEX
2517	district	México
2517	population	1620303
2518	id	2518
2518	name	Puebla
2518	countrycode	MEX
2518	district	Puebla
2518	population	1346176
2519	id	2519
2519	name	Nezahualcóyotl
2519	countrycode	MEX
2519	district	México
2519	population	1224924
2520	id	2520
2520	name	Juárez
2520	countrycode	MEX
2520	district	Chihuahua
2520	population	1217818
2521	id	2521
2521	name	Tijuana
2521	countrycode	MEX
2521	district	Baja California
2521	population	1212232
2522	id	2522
2522	name	León
2522	countrycode	MEX
2522	district	Guanajuato
2522	population	1133576
2523	id	2523
2523	name	Monterrey
2523	countrycode	MEX
2523	district	Nuevo León
2523	population	1108499
2524	id	2524
2524	name	Zapopan
2524	countrycode	MEX
2524	district	Jalisco
2524	population	1002239
2525	id	2525
2525	name	Naucalpan de Juárez
2525	countrycode	MEX
2525	district	México
2525	population	857511
2526	id	2526
2526	name	Mexicali
2526	countrycode	MEX
2526	district	Baja California
2526	population	764902
2527	id	2527
2527	name	Culiacán
2527	countrycode	MEX
2527	district	Sinaloa
2527	population	744859
2528	id	2528
2528	name	Acapulco de Juárez
2528	countrycode	MEX
2528	district	Guerrero
2528	population	721011
2529	id	2529
2529	name	Tlalnepantla de Baz
2529	countrycode	MEX
2529	district	México
2529	population	720755
2530	id	2530
2530	name	Mérida
2530	countrycode	MEX
2530	district	Yucatán
2530	population	703324
2531	id	2531
2531	name	Chihuahua
2531	countrycode	MEX
2531	district	Chihuahua
2531	population	670208
2532	id	2532
2532	name	San Luis Potosí
2532	countrycode	MEX
2532	district	San Luis Potosí
2532	population	669353
2533	id	2533
2533	name	Guadalupe
2533	countrycode	MEX
2533	district	Nuevo León
2533	population	668780
2534	id	2534
2534	name	Toluca
2534	countrycode	MEX
2534	district	México
2534	population	665617
2535	id	2535
2535	name	Aguascalientes
2535	countrycode	MEX
2535	district	Aguascalientes
2535	population	643360
2536	id	2536
2536	name	Querétaro
2536	countrycode	MEX
2536	district	Querétaro de Arteaga
2536	population	639839
2537	id	2537
2537	name	Morelia
2537	countrycode	MEX
2537	district	Michoacán de Ocampo
2537	population	619958
2538	id	2538
2538	name	Hermosillo
2538	countrycode	MEX
2538	district	Sonora
2538	population	608697
2539	id	2539
2539	name	Saltillo
2539	countrycode	MEX
2539	district	Coahuila de Zaragoza
2539	population	577352
2540	id	2540
2540	name	Torreón
2540	countrycode	MEX
2540	district	Coahuila de Zaragoza
2540	population	529093
2541	id	2541
2541	name	Centro (Villahermosa)
2541	countrycode	MEX
2541	district	Tabasco
2541	population	519873
2542	id	2542
2542	name	San Nicolás de los Garza
2542	countrycode	MEX
2542	district	Nuevo León
2542	population	495540
2543	id	2543
2543	name	Durango
2543	countrycode	MEX
2543	district	Durango
2543	population	490524
2544	id	2544
2544	name	Chimalhuacán
2544	countrycode	MEX
2544	district	México
2544	population	490245
2545	id	2545
2545	name	Tlaquepaque
2545	countrycode	MEX
2545	district	Jalisco
2545	population	475472
2546	id	2546
2546	name	Atizapán de Zaragoza
2546	countrycode	MEX
2546	district	México
2546	population	467262
2547	id	2547
2547	name	Veracruz
2547	countrycode	MEX
2547	district	Veracruz
2547	population	457119
2548	id	2548
2548	name	Cuautitlán Izcalli
2548	countrycode	MEX
2548	district	México
2548	population	452976
2549	id	2549
2549	name	Irapuato
2549	countrycode	MEX
2549	district	Guanajuato
2549	population	440039
2550	id	2550
2550	name	Tuxtla Gutiérrez
2550	countrycode	MEX
2550	district	Chiapas
2550	population	433544
2551	id	2551
2551	name	Tultitlán
2551	countrycode	MEX
2551	district	México
2551	population	432411
2552	id	2552
2552	name	Reynosa
2552	countrycode	MEX
2552	district	Tamaulipas
2552	population	419776
2553	id	2553
2553	name	Benito Juárez
2553	countrycode	MEX
2553	district	Quintana Roo
2553	population	419276
2554	id	2554
2554	name	Matamoros
2554	countrycode	MEX
2554	district	Tamaulipas
2554	population	416428
2555	id	2555
2555	name	Xalapa
2555	countrycode	MEX
2555	district	Veracruz
2555	population	390058
2556	id	2556
2556	name	Celaya
2556	countrycode	MEX
2556	district	Guanajuato
2556	population	382140
2557	id	2557
2557	name	Mazatlán
2557	countrycode	MEX
2557	district	Sinaloa
2557	population	380265
2558	id	2558
2558	name	Ensenada
2558	countrycode	MEX
2558	district	Baja California
2558	population	369573
2559	id	2559
2559	name	Ahome
2559	countrycode	MEX
2559	district	Sinaloa
2559	population	358663
2560	id	2560
2560	name	Cajeme
2560	countrycode	MEX
2560	district	Sonora
2560	population	355679
2561	id	2561
2561	name	Cuernavaca
2561	countrycode	MEX
2561	district	Morelos
2561	population	337966
2562	id	2562
2562	name	Tonalá
2562	countrycode	MEX
2562	district	Jalisco
2562	population	336109
2563	id	2563
2563	name	Valle de Chalco Solidaridad
2563	countrycode	MEX
2563	district	México
2563	population	323113
2564	id	2564
2564	name	Nuevo Laredo
2564	countrycode	MEX
2564	district	Tamaulipas
2564	population	310277
2565	id	2565
2565	name	Tepic
2565	countrycode	MEX
2565	district	Nayarit
2565	population	305025
2566	id	2566
2566	name	Tampico
2566	countrycode	MEX
2566	district	Tamaulipas
2566	population	294789
2567	id	2567
2567	name	Ixtapaluca
2567	countrycode	MEX
2567	district	México
2567	population	293160
2568	id	2568
2568	name	Apodaca
2568	countrycode	MEX
2568	district	Nuevo León
2568	population	282941
2569	id	2569
2569	name	Guasave
2569	countrycode	MEX
2569	district	Sinaloa
2569	population	277201
2570	id	2570
2570	name	Gómez Palacio
2570	countrycode	MEX
2570	district	Durango
2570	population	272806
2571	id	2571
2571	name	Tapachula
2571	countrycode	MEX
2571	district	Chiapas
2571	population	271141
2572	id	2572
2572	name	Nicolás Romero
2572	countrycode	MEX
2572	district	México
2572	population	269393
2573	id	2573
2573	name	Coatzacoalcos
2573	countrycode	MEX
2573	district	Veracruz
2573	population	267037
2574	id	2574
2574	name	Uruapan
2574	countrycode	MEX
2574	district	Michoacán de Ocampo
2574	population	265211
2575	id	2575
2575	name	Victoria
2575	countrycode	MEX
2575	district	Tamaulipas
2575	population	262686
2576	id	2576
2576	name	Oaxaca de Juárez
2576	countrycode	MEX
2576	district	Oaxaca
2576	population	256848
2577	id	2577
2577	name	Coacalco de Berriozábal
2577	countrycode	MEX
2577	district	México
2577	population	252270
2578	id	2578
2578	name	Pachuca de Soto
2578	countrycode	MEX
2578	district	Hidalgo
2578	population	244688
2579	id	2579
2579	name	General Escobedo
2579	countrycode	MEX
2579	district	Nuevo León
2579	population	232961
2580	id	2580
2580	name	Salamanca
2580	countrycode	MEX
2580	district	Guanajuato
2580	population	226864
2581	id	2581
2581	name	Santa Catarina
2581	countrycode	MEX
2581	district	Nuevo León
2581	population	226573
2582	id	2582
2582	name	Tehuacán
2582	countrycode	MEX
2582	district	Puebla
2582	population	225943
2583	id	2583
2583	name	Chalco
2583	countrycode	MEX
2583	district	México
2583	population	222201
2584	id	2584
2584	name	Cárdenas
2584	countrycode	MEX
2584	district	Tabasco
2584	population	216903
2585	id	2585
2585	name	Campeche
2585	countrycode	MEX
2585	district	Campeche
2585	population	216735
2586	id	2586
2586	name	La Paz
2586	countrycode	MEX
2586	district	México
2586	population	213045
2587	id	2587
2587	name	Othón P. Blanco (Chetumal)
2587	countrycode	MEX
2587	district	Quintana Roo
2587	population	208014
2588	id	2588
2588	name	Texcoco
2588	countrycode	MEX
2588	district	México
2588	population	203681
2589	id	2589
2589	name	La Paz
2589	countrycode	MEX
2589	district	Baja California Sur
2589	population	196708
2590	id	2590
2590	name	Metepec
2590	countrycode	MEX
2590	district	México
2590	population	194265
2591	id	2591
2591	name	Monclova
2591	countrycode	MEX
2591	district	Coahuila de Zaragoza
2591	population	193657
2592	id	2592
2592	name	Huixquilucan
2592	countrycode	MEX
2592	district	México
2592	population	193156
2593	id	2593
2593	name	Chilpancingo de los Bravo
2593	countrycode	MEX
2593	district	Guerrero
2593	population	192509
2594	id	2594
2594	name	Puerto Vallarta
2594	countrycode	MEX
2594	district	Jalisco
2594	population	183741
2595	id	2595
2595	name	Fresnillo
2595	countrycode	MEX
2595	district	Zacatecas
2595	population	182744
2596	id	2596
2596	name	Ciudad Madero
2596	countrycode	MEX
2596	district	Tamaulipas
2596	population	182012
2597	id	2597
2597	name	Soledad de Graciano Sánchez
2597	countrycode	MEX
2597	district	San Luis Potosí
2597	population	179956
2598	id	2598
2598	name	San Juan del Río
2598	countrycode	MEX
2598	district	Querétaro
2598	population	179300
2599	id	2599
2599	name	San Felipe del Progreso
2599	countrycode	MEX
2599	district	México
2599	population	177330
2600	id	2600
2600	name	Córdoba
2600	countrycode	MEX
2600	district	Veracruz
2600	population	176952
2601	id	2601
2601	name	Tecámac
2601	countrycode	MEX
2601	district	México
2601	population	172410
2602	id	2602
2602	name	Ocosingo
2602	countrycode	MEX
2602	district	Chiapas
2602	population	171495
2603	id	2603
2603	name	Carmen
2603	countrycode	MEX
2603	district	Campeche
2603	population	171367
2604	id	2604
2604	name	Lázaro Cárdenas
2604	countrycode	MEX
2604	district	Michoacán de Ocampo
2604	population	170878
2605	id	2605
2605	name	Jiutepec
2605	countrycode	MEX
2605	district	Morelos
2605	population	170428
2606	id	2606
2606	name	Papantla
2606	countrycode	MEX
2606	district	Veracruz
2606	population	170123
2607	id	2607
2607	name	Comalcalco
2607	countrycode	MEX
2607	district	Tabasco
2607	population	164640
2608	id	2608
2608	name	Zamora
2608	countrycode	MEX
2608	district	Michoacán de Ocampo
2608	population	161191
2609	id	2609
2609	name	Nogales
2609	countrycode	MEX
2609	district	Sonora
2609	population	159103
2610	id	2610
2610	name	Huimanguillo
2610	countrycode	MEX
2610	district	Tabasco
2610	population	158335
2611	id	2611
2611	name	Cuautla
2611	countrycode	MEX
2611	district	Morelos
2611	population	153132
2612	id	2612
2612	name	Minatitlán
2612	countrycode	MEX
2612	district	Veracruz
2612	population	152983
2613	id	2613
2613	name	Poza Rica de Hidalgo
2613	countrycode	MEX
2613	district	Veracruz
2613	population	152678
2614	id	2614
2614	name	Ciudad Valles
2614	countrycode	MEX
2614	district	San Luis Potosí
2614	population	146411
2615	id	2615
2615	name	Navolato
2615	countrycode	MEX
2615	district	Sinaloa
2615	population	145396
2616	id	2616
2616	name	San Luis Río Colorado
2616	countrycode	MEX
2616	district	Sonora
2616	population	145276
2617	id	2617
2617	name	Pénjamo
2617	countrycode	MEX
2617	district	Guanajuato
2617	population	143927
2618	id	2618
2618	name	San Andrés Tuxtla
2618	countrycode	MEX
2618	district	Veracruz
2618	population	142251
2619	id	2619
2619	name	Guanajuato
2619	countrycode	MEX
2619	district	Guanajuato
2619	population	141215
2620	id	2620
2620	name	Navojoa
2620	countrycode	MEX
2620	district	Sonora
2620	population	140495
2621	id	2621
2621	name	Zitácuaro
2621	countrycode	MEX
2621	district	Michoacán de Ocampo
2621	population	137970
2622	id	2622
2622	name	Boca del Río
2622	countrycode	MEX
2622	district	Veracruz-Llave
2622	population	135721
2623	id	2623
2623	name	Allende
2623	countrycode	MEX
2623	district	Guanajuato
2623	population	134645
2624	id	2624
2624	name	Silao
2624	countrycode	MEX
2624	district	Guanajuato
2624	population	134037
2625	id	2625
2625	name	Macuspana
2625	countrycode	MEX
2625	district	Tabasco
2625	population	133795
2626	id	2626
2626	name	San Juan Bautista Tuxtepec
2626	countrycode	MEX
2626	district	Oaxaca
2626	population	133675
2627	id	2627
2627	name	San Cristóbal de las Casas
2627	countrycode	MEX
2627	district	Chiapas
2627	population	132317
2628	id	2628
2628	name	Valle de Santiago
2628	countrycode	MEX
2628	district	Guanajuato
2628	population	130557
2629	id	2629
2629	name	Guaymas
2629	countrycode	MEX
2629	district	Sonora
2629	population	130108
2630	id	2630
2630	name	Colima
2630	countrycode	MEX
2630	district	Colima
2630	population	129454
2631	id	2631
2631	name	Dolores Hidalgo
2631	countrycode	MEX
2631	district	Guanajuato
2631	population	128675
2632	id	2632
2632	name	Lagos de Moreno
2632	countrycode	MEX
2632	district	Jalisco
2632	population	127949
2633	id	2633
2633	name	Piedras Negras
2633	countrycode	MEX
2633	district	Coahuila de Zaragoza
2633	population	127898
2634	id	2634
2634	name	Altamira
2634	countrycode	MEX
2634	district	Tamaulipas
2634	population	127490
2635	id	2635
2635	name	Túxpam
2635	countrycode	MEX
2635	district	Veracruz
2635	population	126475
2636	id	2636
2636	name	San Pedro Garza García
2636	countrycode	MEX
2636	district	Nuevo León
2636	population	126147
2637	id	2637
2637	name	Cuauhtémoc
2637	countrycode	MEX
2637	district	Chihuahua
2637	population	124279
2638	id	2638
2638	name	Manzanillo
2638	countrycode	MEX
2638	district	Colima
2638	population	124014
2639	id	2639
2639	name	Iguala de la Independencia
2639	countrycode	MEX
2639	district	Guerrero
2639	population	123883
2640	id	2640
2640	name	Zacatecas
2640	countrycode	MEX
2640	district	Zacatecas
2640	population	123700
2641	id	2641
2641	name	Tlajomulco de Zúñiga
2641	countrycode	MEX
2641	district	Jalisco
2641	population	123220
2642	id	2642
2642	name	Tulancingo de Bravo
2642	countrycode	MEX
2642	district	Hidalgo
2642	population	121946
2643	id	2643
2643	name	Zinacantepec
2643	countrycode	MEX
2643	district	México
2643	population	121715
2644	id	2644
2644	name	San Martín Texmelucan
2644	countrycode	MEX
2644	district	Puebla
2644	population	121093
2645	id	2645
2645	name	Tepatitlán de Morelos
2645	countrycode	MEX
2645	district	Jalisco
2645	population	118948
2646	id	2646
2646	name	Martínez de la Torre
2646	countrycode	MEX
2646	district	Veracruz
2646	population	118815
2647	id	2647
2647	name	Orizaba
2647	countrycode	MEX
2647	district	Veracruz
2647	population	118488
2648	id	2648
2648	name	Apatzingán
2648	countrycode	MEX
2648	district	Michoacán de Ocampo
2648	population	117849
2649	id	2649
2649	name	Atlixco
2649	countrycode	MEX
2649	district	Puebla
2649	population	117019
2650	id	2650
2650	name	Delicias
2650	countrycode	MEX
2650	district	Chihuahua
2650	population	116132
2651	id	2651
2651	name	Ixtlahuaca
2651	countrycode	MEX
2651	district	México
2651	population	115548
2652	id	2652
2652	name	El Mante
2652	countrycode	MEX
2652	district	Tamaulipas
2652	population	112453
2653	id	2653
2653	name	Lerdo
2653	countrycode	MEX
2653	district	Durango
2653	population	112272
2654	id	2654
2654	name	Almoloya de Juárez
2654	countrycode	MEX
2654	district	México
2654	population	110550
2655	id	2655
2655	name	Acámbaro
2655	countrycode	MEX
2655	district	Guanajuato
2655	population	110487
2656	id	2656
2656	name	Acuña
2656	countrycode	MEX
2656	district	Coahuila de Zaragoza
2656	population	110388
2657	id	2657
2657	name	Guadalupe
2657	countrycode	MEX
2657	district	Zacatecas
2657	population	108881
2658	id	2658
2658	name	Huejutla de Reyes
2658	countrycode	MEX
2658	district	Hidalgo
2658	population	108017
2659	id	2659
2659	name	Hidalgo
2659	countrycode	MEX
2659	district	Michoacán de Ocampo
2659	population	106198
2660	id	2660
2660	name	Los Cabos
2660	countrycode	MEX
2660	district	Baja California Sur
2660	population	105199
2661	id	2661
2661	name	Comitán de Domínguez
2661	countrycode	MEX
2661	district	Chiapas
2661	population	104986
2662	id	2662
2662	name	Cunduacán
2662	countrycode	MEX
2662	district	Tabasco
2662	population	104164
2663	id	2663
2663	name	Río Bravo
2663	countrycode	MEX
2663	district	Tamaulipas
2663	population	103901
2664	id	2664
2664	name	Temapache
2664	countrycode	MEX
2664	district	Veracruz
2664	population	102824
2665	id	2665
2665	name	Chilapa de Alvarez
2665	countrycode	MEX
2665	district	Guerrero
2665	population	102716
2666	id	2666
2666	name	Hidalgo del Parral
2666	countrycode	MEX
2666	district	Chihuahua
2666	population	100881
2667	id	2667
2667	name	San Francisco del Rincón
2667	countrycode	MEX
2667	district	Guanajuato
2667	population	100149
2668	id	2668
2668	name	Taxco de Alarcón
2668	countrycode	MEX
2668	district	Guerrero
2668	population	99907
2669	id	2669
2669	name	Zumpango
2669	countrycode	MEX
2669	district	México
2669	population	99781
2670	id	2670
2670	name	San Pedro Cholula
2670	countrycode	MEX
2670	district	Puebla
2670	population	99734
2671	id	2671
2671	name	Lerma
2671	countrycode	MEX
2671	district	México
2671	population	99714
2672	id	2672
2672	name	Tecomán
2672	countrycode	MEX
2672	district	Colima
2672	population	99296
2673	id	2673
2673	name	Las Margaritas
2673	countrycode	MEX
2673	district	Chiapas
2673	population	97389
2674	id	2674
2674	name	Cosoleacaque
2674	countrycode	MEX
2674	district	Veracruz
2674	population	97199
2675	id	2675
2675	name	San Luis de la Paz
2675	countrycode	MEX
2675	district	Guanajuato
2675	population	96763
2676	id	2676
2676	name	José Azueta
2676	countrycode	MEX
2676	district	Guerrero
2676	population	95448
2677	id	2677
2677	name	Santiago Ixcuintla
2677	countrycode	MEX
2677	district	Nayarit
2677	population	95311
2678	id	2678
2678	name	San Felipe
2678	countrycode	MEX
2678	district	Guanajuato
2678	population	95305
2679	id	2679
2679	name	Tejupilco
2679	countrycode	MEX
2679	district	México
2679	population	94934
2680	id	2680
2680	name	Tantoyuca
2680	countrycode	MEX
2680	district	Veracruz
2680	population	94709
2681	id	2681
2681	name	Salvatierra
2681	countrycode	MEX
2681	district	Guanajuato
2681	population	94322
2682	id	2682
2682	name	Tultepec
2682	countrycode	MEX
2682	district	México
2682	population	93364
2683	id	2683
2683	name	Temixco
2683	countrycode	MEX
2683	district	Morelos
2683	population	92686
2684	id	2684
2684	name	Matamoros
2684	countrycode	MEX
2684	district	Coahuila de Zaragoza
2684	population	91858
2685	id	2685
2685	name	Pánuco
2685	countrycode	MEX
2685	district	Veracruz
2685	population	90551
2686	id	2686
2686	name	El Fuerte
2686	countrycode	MEX
2686	district	Sinaloa
2686	population	89556
2687	id	2687
2687	name	Tierra Blanca
2687	countrycode	MEX
2687	district	Veracruz
2687	population	89143
2688	id	2688
2688	name	Weno
2688	countrycode	FSM
2688	district	Chuuk
2688	population	22000
2689	id	2689
2689	name	Palikir
2689	countrycode	FSM
2689	district	Pohnpei
2689	population	8600
2690	id	2690
2690	name	Chisinau
2690	countrycode	MDA
2690	district	Chisinau
2690	population	719900
2691	id	2691
2691	name	Tiraspol
2691	countrycode	MDA
2691	district	Dnjestria
2691	population	194300
2692	id	2692
2692	name	Balti
2692	countrycode	MDA
2692	district	Balti
2692	population	153400
2693	id	2693
2693	name	Bender (Tîghina)
2693	countrycode	MDA
2693	district	Bender (Tîghina)
2693	population	125700
2694	id	2694
2694	name	Monte-Carlo
2694	countrycode	MCO
2694	district	
2694	population	13154
2695	id	2695
2695	name	Monaco-Ville
2695	countrycode	MCO
2695	district	
2695	population	1234
2696	id	2696
2696	name	Ulan Bator
2696	countrycode	MNG
2696	district	Ulaanbaatar
2696	population	773700
2697	id	2697
2697	name	Plymouth
2697	countrycode	MSR
2697	district	Plymouth
2697	population	2000
2698	id	2698
2698	name	Maputo
2698	countrycode	MOZ
2698	district	Maputo
2698	population	1018938
2699	id	2699
2699	name	Matola
2699	countrycode	MOZ
2699	district	Maputo
2699	population	424662
2700	id	2700
2700	name	Beira
2700	countrycode	MOZ
2700	district	Sofala
2700	population	397368
2701	id	2701
2701	name	Nampula
2701	countrycode	MOZ
2701	district	Nampula
2701	population	303346
2702	id	2702
2702	name	Chimoio
2702	countrycode	MOZ
2702	district	Manica
2702	population	171056
2703	id	2703
2703	name	Naçala-Porto
2703	countrycode	MOZ
2703	district	Nampula
2703	population	158248
2704	id	2704
2704	name	Quelimane
2704	countrycode	MOZ
2704	district	Zambézia
2704	population	150116
2705	id	2705
2705	name	Mocuba
2705	countrycode	MOZ
2705	district	Zambézia
2705	population	124700
2706	id	2706
2706	name	Tete
2706	countrycode	MOZ
2706	district	Tete
2706	population	101984
2707	id	2707
2707	name	Xai-Xai
2707	countrycode	MOZ
2707	district	Gaza
2707	population	99442
2708	id	2708
2708	name	Gurue
2708	countrycode	MOZ
2708	district	Zambézia
2708	population	99300
2709	id	2709
2709	name	Maxixe
2709	countrycode	MOZ
2709	district	Inhambane
2709	population	93985
2710	id	2710
2710	name	Rangoon (Yangon)
2710	countrycode	MMR
2710	district	Rangoon [Yangon]
2710	population	3361700
2711	id	2711
2711	name	Mandalay
2711	countrycode	MMR
2711	district	Mandalay
2711	population	885300
2712	id	2712
2712	name	Moulmein (Mawlamyine)
2712	countrycode	MMR
2712	district	Mon
2712	population	307900
2713	id	2713
2713	name	Pegu (Bago)
2713	countrycode	MMR
2713	district	Pegu [Bago]
2713	population	190900
2714	id	2714
2714	name	Bassein (Pathein)
2714	countrycode	MMR
2714	district	Irrawaddy [Ayeyarwad
2714	population	183900
2715	id	2715
2715	name	Monywa
2715	countrycode	MMR
2715	district	Sagaing
2715	population	138600
2716	id	2716
2716	name	Sittwe (Akyab)
2716	countrycode	MMR
2716	district	Rakhine
2716	population	137600
2717	id	2717
2717	name	Taunggyi (Taunggye)
2717	countrycode	MMR
2717	district	Shan
2717	population	131500
2718	id	2718
2718	name	Meikhtila
2718	countrycode	MMR
2718	district	Mandalay
2718	population	129700
2719	id	2719
2719	name	Mergui (Myeik)
2719	countrycode	MMR
2719	district	Tenasserim [Tanintha
2719	population	122700
2720	id	2720
2720	name	Lashio (Lasho)
2720	countrycode	MMR
2720	district	Shan
2720	population	107600
2721	id	2721
2721	name	Prome (Pyay)
2721	countrycode	MMR
2721	district	Pegu [Bago]
2721	population	105700
2722	id	2722
2722	name	Henzada (Hinthada)
2722	countrycode	MMR
2722	district	Irrawaddy [Ayeyarwad
2722	population	104700
2723	id	2723
2723	name	Myingyan
2723	countrycode	MMR
2723	district	Mandalay
2723	population	103600
2724	id	2724
2724	name	Tavoy (Dawei)
2724	countrycode	MMR
2724	district	Tenasserim [Tanintha
2724	population	96800
2725	id	2725
2725	name	Pagakku (Pakokku)
2725	countrycode	MMR
2725	district	Magwe [Magway]
2725	population	94800
2726	id	2726
2726	name	Windhoek
2726	countrycode	NAM
2726	district	Khomas
2726	population	169000
2727	id	2727
2727	name	Yangor
2727	countrycode	NRU
2727	district	
2727	population	4050
2728	id	2728
2728	name	Yaren
2728	countrycode	NRU
2728	district	
2728	population	559
2729	id	2729
2729	name	Kathmandu
2729	countrycode	NPL
2729	district	Central
2729	population	591835
2730	id	2730
2730	name	Biratnagar
2730	countrycode	NPL
2730	district	Eastern
2730	population	157764
2731	id	2731
2731	name	Pokhara
2731	countrycode	NPL
2731	district	Western
2731	population	146318
2732	id	2732
2732	name	Lalitapur
2732	countrycode	NPL
2732	district	Central
2732	population	145847
2733	id	2733
2733	name	Birgunj
2733	countrycode	NPL
2733	district	Central
2733	population	90639
2734	id	2734
2734	name	Managua
2734	countrycode	NIC
2734	district	Managua
2734	population	959000
2735	id	2735
2735	name	León
2735	countrycode	NIC
2735	district	León
2735	population	123865
2736	id	2736
2736	name	Chinandega
2736	countrycode	NIC
2736	district	Chinandega
2736	population	97387
2737	id	2737
2737	name	Masaya
2737	countrycode	NIC
2737	district	Masaya
2737	population	88971
2738	id	2738
2738	name	Niamey
2738	countrycode	NER
2738	district	Niamey
2738	population	420000
2739	id	2739
2739	name	Zinder
2739	countrycode	NER
2739	district	Zinder
2739	population	120892
2740	id	2740
2740	name	Maradi
2740	countrycode	NER
2740	district	Maradi
2740	population	112965
2741	id	2741
2741	name	Lagos
2741	countrycode	NGA
2741	district	Lagos
2741	population	1518000
2742	id	2742
2742	name	Ibadan
2742	countrycode	NGA
2742	district	Oyo & Osun
2742	population	1432000
2743	id	2743
2743	name	Ogbomosho
2743	countrycode	NGA
2743	district	Oyo & Osun
2743	population	730000
2744	id	2744
2744	name	Kano
2744	countrycode	NGA
2744	district	Kano & Jigawa
2744	population	674100
2745	id	2745
2745	name	Oshogbo
2745	countrycode	NGA
2745	district	Oyo & Osun
2745	population	476800
2746	id	2746
2746	name	Ilorin
2746	countrycode	NGA
2746	district	Kwara & Kogi
2746	population	475800
2747	id	2747
2747	name	Abeokuta
2747	countrycode	NGA
2747	district	Ogun
2747	population	427400
2748	id	2748
2748	name	Port Harcourt
2748	countrycode	NGA
2748	district	Rivers & Bayelsa
2748	population	410000
2749	id	2749
2749	name	Zaria
2749	countrycode	NGA
2749	district	Kaduna
2749	population	379200
2750	id	2750
2750	name	Ilesha
2750	countrycode	NGA
2750	district	Oyo & Osun
2750	population	378400
2751	id	2751
2751	name	Onitsha
2751	countrycode	NGA
2751	district	Anambra & Enugu & Eb
2751	population	371900
2752	id	2752
2752	name	Iwo
2752	countrycode	NGA
2752	district	Oyo & Osun
2752	population	362000
2753	id	2753
2753	name	Ado-Ekiti
2753	countrycode	NGA
2753	district	Ondo & Ekiti
2753	population	359400
2754	id	2754
2754	name	Abuja
2754	countrycode	NGA
2754	district	Federal Capital Dist
2754	population	350100
2755	id	2755
2755	name	Kaduna
2755	countrycode	NGA
2755	district	Kaduna
2755	population	342200
2756	id	2756
2756	name	Mushin
2756	countrycode	NGA
2756	district	Lagos
2756	population	333200
2757	id	2757
2757	name	Maiduguri
2757	countrycode	NGA
2757	district	Borno & Yobe
2757	population	320000
2758	id	2758
2758	name	Enugu
2758	countrycode	NGA
2758	district	Anambra & Enugu & Eb
2758	population	316100
2759	id	2759
2759	name	Ede
2759	countrycode	NGA
2759	district	Oyo & Osun
2759	population	307100
2760	id	2760
2760	name	Aba
2760	countrycode	NGA
2760	district	Imo & Abia
2760	population	298900
2761	id	2761
2761	name	Ife
2761	countrycode	NGA
2761	district	Oyo & Osun
2761	population	296800
2762	id	2762
2762	name	Ila
2762	countrycode	NGA
2762	district	Oyo & Osun
2762	population	264000
2763	id	2763
2763	name	Oyo
2763	countrycode	NGA
2763	district	Oyo & Osun
2763	population	256400
2764	id	2764
2764	name	Ikerre
2764	countrycode	NGA
2764	district	Ondo & Ekiti
2764	population	244600
2765	id	2765
2765	name	Benin City
2765	countrycode	NGA
2765	district	Edo & Delta
2765	population	229400
2766	id	2766
2766	name	Iseyin
2766	countrycode	NGA
2766	district	Oyo & Osun
2766	population	217300
2767	id	2767
2767	name	Katsina
2767	countrycode	NGA
2767	district	Katsina
2767	population	206500
2768	id	2768
2768	name	Jos
2768	countrycode	NGA
2768	district	Plateau & Nassarawa
2768	population	206300
2769	id	2769
2769	name	Sokoto
2769	countrycode	NGA
2769	district	Sokoto & Kebbi & Zam
2769	population	204900
2770	id	2770
2770	name	Ilobu
2770	countrycode	NGA
2770	district	Oyo & Osun
2770	population	199000
2771	id	2771
2771	name	Offa
2771	countrycode	NGA
2771	district	Kwara & Kogi
2771	population	197200
2772	id	2772
2772	name	Ikorodu
2772	countrycode	NGA
2772	district	Lagos
2772	population	184900
2773	id	2773
2773	name	Ilawe-Ekiti
2773	countrycode	NGA
2773	district	Ondo & Ekiti
2773	population	184500
2774	id	2774
2774	name	Owo
2774	countrycode	NGA
2774	district	Ondo & Ekiti
2774	population	183500
2775	id	2775
2775	name	Ikirun
2775	countrycode	NGA
2775	district	Oyo & Osun
2775	population	181400
2776	id	2776
2776	name	Shaki
2776	countrycode	NGA
2776	district	Oyo & Osun
2776	population	174500
2777	id	2777
2777	name	Calabar
2777	countrycode	NGA
2777	district	Cross River
2777	population	174400
2778	id	2778
2778	name	Ondo
2778	countrycode	NGA
2778	district	Ondo & Ekiti
2778	population	173600
2779	id	2779
2779	name	Akure
2779	countrycode	NGA
2779	district	Ondo & Ekiti
2779	population	162300
2780	id	2780
2780	name	Gusau
2780	countrycode	NGA
2780	district	Sokoto & Kebbi & Zam
2780	population	158000
2781	id	2781
2781	name	Ijebu-Ode
2781	countrycode	NGA
2781	district	Ogun
2781	population	156400
2782	id	2782
2782	name	Effon-Alaiye
2782	countrycode	NGA
2782	district	Oyo & Osun
2782	population	153100
2783	id	2783
2783	name	Kumo
2783	countrycode	NGA
2783	district	Bauchi & Gombe
2783	population	148000
2784	id	2784
2784	name	Shomolu
2784	countrycode	NGA
2784	district	Lagos
2784	population	147700
2785	id	2785
2785	name	Oka-Akoko
2785	countrycode	NGA
2785	district	Ondo & Ekiti
2785	population	142900
2786	id	2786
2786	name	Ikare
2786	countrycode	NGA
2786	district	Ondo & Ekiti
2786	population	140800
2787	id	2787
2787	name	Sapele
2787	countrycode	NGA
2787	district	Edo & Delta
2787	population	139200
2788	id	2788
2788	name	Deba Habe
2788	countrycode	NGA
2788	district	Bauchi & Gombe
2788	population	138600
2789	id	2789
2789	name	Minna
2789	countrycode	NGA
2789	district	Niger
2789	population	136900
2790	id	2790
2790	name	Warri
2790	countrycode	NGA
2790	district	Edo & Delta
2790	population	126100
2791	id	2791
2791	name	Bida
2791	countrycode	NGA
2791	district	Niger
2791	population	125500
2792	id	2792
2792	name	Ikire
2792	countrycode	NGA
2792	district	Oyo & Osun
2792	population	123300
2793	id	2793
2793	name	Makurdi
2793	countrycode	NGA
2793	district	Benue
2793	population	123100
2794	id	2794
2794	name	Lafia
2794	countrycode	NGA
2794	district	Plateau & Nassarawa
2794	population	122500
2795	id	2795
2795	name	Inisa
2795	countrycode	NGA
2795	district	Oyo & Osun
2795	population	119800
2796	id	2796
2796	name	Shagamu
2796	countrycode	NGA
2796	district	Ogun
2796	population	117200
2797	id	2797
2797	name	Awka
2797	countrycode	NGA
2797	district	Anambra & Enugu & Eb
2797	population	111200
2798	id	2798
2798	name	Gombe
2798	countrycode	NGA
2798	district	Bauchi & Gombe
2798	population	107800
2799	id	2799
2799	name	Igboho
2799	countrycode	NGA
2799	district	Oyo & Osun
2799	population	106800
2800	id	2800
2800	name	Ejigbo
2800	countrycode	NGA
2800	district	Oyo & Osun
2800	population	105900
2801	id	2801
2801	name	Agege
2801	countrycode	NGA
2801	district	Lagos
2801	population	105000
2802	id	2802
2802	name	Ise-Ekiti
2802	countrycode	NGA
2802	district	Ondo & Ekiti
2802	population	103400
2803	id	2803
2803	name	Ugep
2803	countrycode	NGA
2803	district	Cross River
2803	population	102600
2804	id	2804
2804	name	Epe
2804	countrycode	NGA
2804	district	Lagos
2804	population	101000
2805	id	2805
2805	name	Alofi
2805	countrycode	NIU
2805	district	
2805	population	682
2806	id	2806
2806	name	Kingston
2806	countrycode	NFK
2806	district	
2806	population	800
2807	id	2807
2807	name	Oslo
2807	countrycode	NOR
2807	district	Oslo
2807	population	508726
2808	id	2808
2808	name	Bergen
2808	countrycode	NOR
2808	district	Hordaland
2808	population	230948
2809	id	2809
2809	name	Trondheim
2809	countrycode	NOR
2809	district	Sør-Trøndelag
2809	population	150166
2810	id	2810
2810	name	Stavanger
2810	countrycode	NOR
2810	district	Rogaland
2810	population	108848
2811	id	2811
2811	name	Bærum
2811	countrycode	NOR
2811	district	Akershus
2811	population	101340
2812	id	2812
2812	name	Abidjan
2812	countrycode	CIV
2812	district	Abidjan
2812	population	2500000
2813	id	2813
2813	name	Bouaké
2813	countrycode	CIV
2813	district	Bouaké
2813	population	329850
2814	id	2814
2814	name	Yamoussoukro
2814	countrycode	CIV
2814	district	Yamoussoukro
2814	population	130000
2815	id	2815
2815	name	Daloa
2815	countrycode	CIV
2815	district	Daloa
2815	population	121842
2816	id	2816
2816	name	Korhogo
2816	countrycode	CIV
2816	district	Korhogo
2816	population	109445
2817	id	2817
2817	name	al-Sib
2817	countrycode	OMN
2817	district	Masqat
2817	population	155000
2818	id	2818
2818	name	Salala
2818	countrycode	OMN
2818	district	Zufar
2818	population	131813
2819	id	2819
2819	name	Bawshar
2819	countrycode	OMN
2819	district	Masqat
2819	population	107500
2820	id	2820
2820	name	Suhar
2820	countrycode	OMN
2820	district	al-Batina
2820	population	90814
2821	id	2821
2821	name	Masqat
2821	countrycode	OMN
2821	district	Masqat
2821	population	51969
2822	id	2822
2822	name	Karachi
2822	countrycode	PAK
2822	district	Sindh
2822	population	9269265
2823	id	2823
2823	name	Lahore
2823	countrycode	PAK
2823	district	Punjab
2823	population	5063499
2824	id	2824
2824	name	Faisalabad
2824	countrycode	PAK
2824	district	Punjab
2824	population	1977246
2825	id	2825
2825	name	Rawalpindi
2825	countrycode	PAK
2825	district	Punjab
2825	population	1406214
2826	id	2826
2826	name	Multan
2826	countrycode	PAK
2826	district	Punjab
2826	population	1182441
2827	id	2827
2827	name	Hyderabad
2827	countrycode	PAK
2827	district	Sindh
2827	population	1151274
2828	id	2828
2828	name	Gujranwala
2828	countrycode	PAK
2828	district	Punjab
2828	population	1124749
2829	id	2829
2829	name	Peshawar
2829	countrycode	PAK
2829	district	Nothwest Border Prov
2829	population	988005
2830	id	2830
2830	name	Quetta
2830	countrycode	PAK
2830	district	Baluchistan
2830	population	560307
2831	id	2831
2831	name	Islamabad
2831	countrycode	PAK
2831	district	Islamabad
2831	population	524500
2832	id	2832
2832	name	Sargodha
2832	countrycode	PAK
2832	district	Punjab
2832	population	455360
2833	id	2833
2833	name	Sialkot
2833	countrycode	PAK
2833	district	Punjab
2833	population	417597
2834	id	2834
2834	name	Bahawalpur
2834	countrycode	PAK
2834	district	Punjab
2834	population	403408
2835	id	2835
2835	name	Sukkur
2835	countrycode	PAK
2835	district	Sindh
2835	population	329176
2836	id	2836
2836	name	Jhang
2836	countrycode	PAK
2836	district	Punjab
2836	population	292214
2837	id	2837
2837	name	Sheikhupura
2837	countrycode	PAK
2837	district	Punjab
2837	population	271875
2838	id	2838
2838	name	Larkana
2838	countrycode	PAK
2838	district	Sindh
2838	population	270366
2839	id	2839
2839	name	Gujrat
2839	countrycode	PAK
2839	district	Punjab
2839	population	250121
2840	id	2840
2840	name	Mardan
2840	countrycode	PAK
2840	district	Nothwest Border Prov
2840	population	244511
2841	id	2841
2841	name	Kasur
2841	countrycode	PAK
2841	district	Punjab
2841	population	241649
2842	id	2842
2842	name	Rahim Yar Khan
2842	countrycode	PAK
2842	district	Punjab
2842	population	228479
2843	id	2843
2843	name	Sahiwal
2843	countrycode	PAK
2843	district	Punjab
2843	population	207388
2844	id	2844
2844	name	Okara
2844	countrycode	PAK
2844	district	Punjab
2844	population	200901
2845	id	2845
2845	name	Wah
2845	countrycode	PAK
2845	district	Punjab
2845	population	198400
2846	id	2846
2846	name	Dera Ghazi Khan
2846	countrycode	PAK
2846	district	Punjab
2846	population	188100
2847	id	2847
2847	name	Mirpur Khas
2847	countrycode	PAK
2847	district	Sind
2847	population	184500
2848	id	2848
2848	name	Nawabshah
2848	countrycode	PAK
2848	district	Sind
2848	population	183100
2849	id	2849
2849	name	Mingora
2849	countrycode	PAK
2849	district	Nothwest Border Prov
2849	population	174500
2850	id	2850
2850	name	Chiniot
2850	countrycode	PAK
2850	district	Punjab
2850	population	169300
2851	id	2851
2851	name	Kamoke
2851	countrycode	PAK
2851	district	Punjab
2851	population	151000
2852	id	2852
2852	name	Mandi Burewala
2852	countrycode	PAK
2852	district	Punjab
2852	population	149900
2853	id	2853
2853	name	Jhelum
2853	countrycode	PAK
2853	district	Punjab
2853	population	145800
2854	id	2854
2854	name	Sadiqabad
2854	countrycode	PAK
2854	district	Punjab
2854	population	141500
2855	id	2855
2855	name	Jacobabad
2855	countrycode	PAK
2855	district	Sind
2855	population	137700
2856	id	2856
2856	name	Shikarpur
2856	countrycode	PAK
2856	district	Sind
2856	population	133300
2857	id	2857
2857	name	Khanewal
2857	countrycode	PAK
2857	district	Punjab
2857	population	133000
2858	id	2858
2858	name	Hafizabad
2858	countrycode	PAK
2858	district	Punjab
2858	population	130200
2859	id	2859
2859	name	Kohat
2859	countrycode	PAK
2859	district	Nothwest Border Prov
2859	population	125300
2860	id	2860
2860	name	Muzaffargarh
2860	countrycode	PAK
2860	district	Punjab
2860	population	121600
2861	id	2861
2861	name	Khanpur
2861	countrycode	PAK
2861	district	Punjab
2861	population	117800
2862	id	2862
2862	name	Gojra
2862	countrycode	PAK
2862	district	Punjab
2862	population	115000
2863	id	2863
2863	name	Bahawalnagar
2863	countrycode	PAK
2863	district	Punjab
2863	population	109600
2864	id	2864
2864	name	Muridke
2864	countrycode	PAK
2864	district	Punjab
2864	population	108600
2865	id	2865
2865	name	Pak Pattan
2865	countrycode	PAK
2865	district	Punjab
2865	population	107800
2866	id	2866
2866	name	Abottabad
2866	countrycode	PAK
2866	district	Nothwest Border Prov
2866	population	106000
2867	id	2867
2867	name	Tando Adam
2867	countrycode	PAK
2867	district	Sind
2867	population	103400
2868	id	2868
2868	name	Jaranwala
2868	countrycode	PAK
2868	district	Punjab
2868	population	103300
2869	id	2869
2869	name	Khairpur
2869	countrycode	PAK
2869	district	Sind
2869	population	102200
2870	id	2870
2870	name	Chishtian Mandi
2870	countrycode	PAK
2870	district	Punjab
2870	population	101700
2871	id	2871
2871	name	Daska
2871	countrycode	PAK
2871	district	Punjab
2871	population	101500
2872	id	2872
2872	name	Dadu
2872	countrycode	PAK
2872	district	Sind
2872	population	98600
2873	id	2873
2873	name	Mandi Bahauddin
2873	countrycode	PAK
2873	district	Punjab
2873	population	97300
2874	id	2874
2874	name	Ahmadpur East
2874	countrycode	PAK
2874	district	Punjab
2874	population	96000
2875	id	2875
2875	name	Kamalia
2875	countrycode	PAK
2875	district	Punjab
2875	population	95300
2876	id	2876
2876	name	Khuzdar
2876	countrycode	PAK
2876	district	Baluchistan
2876	population	93100
2877	id	2877
2877	name	Vihari
2877	countrycode	PAK
2877	district	Punjab
2877	population	92300
2878	id	2878
2878	name	Dera Ismail Khan
2878	countrycode	PAK
2878	district	Nothwest Border Prov
2878	population	90400
2879	id	2879
2879	name	Wazirabad
2879	countrycode	PAK
2879	district	Punjab
2879	population	89700
2880	id	2880
2880	name	Nowshera
2880	countrycode	PAK
2880	district	Nothwest Border Prov
2880	population	89400
2881	id	2881
2881	name	Koror
2881	countrycode	PLW
2881	district	Koror
2881	population	12000
2882	id	2882
2882	name	Ciudad de Panamá
2882	countrycode	PAN
2882	district	Panamá
2882	population	471373
2883	id	2883
2883	name	San Miguelito
2883	countrycode	PAN
2883	district	San Miguelito
2883	population	315382
2884	id	2884
2884	name	Port Moresby
2884	countrycode	PNG
2884	district	National Capital Dis
2884	population	247000
2885	id	2885
2885	name	Asunción
2885	countrycode	PRY
2885	district	Asunción
2885	population	557776
2886	id	2886
2886	name	Ciudad del Este
2886	countrycode	PRY
2886	district	Alto Paraná
2886	population	133881
2887	id	2887
2887	name	San Lorenzo
2887	countrycode	PRY
2887	district	Central
2887	population	133395
2888	id	2888
2888	name	Lambaré
2888	countrycode	PRY
2888	district	Central
2888	population	99681
2889	id	2889
2889	name	Fernando de la Mora
2889	countrycode	PRY
2889	district	Central
2889	population	95287
2890	id	2890
2890	name	Lima
2890	countrycode	PER
2890	district	Lima
2890	population	6464693
2891	id	2891
2891	name	Arequipa
2891	countrycode	PER
2891	district	Arequipa
2891	population	762000
2892	id	2892
2892	name	Trujillo
2892	countrycode	PER
2892	district	La Libertad
2892	population	652000
2893	id	2893
2893	name	Chiclayo
2893	countrycode	PER
2893	district	Lambayeque
2893	population	517000
2894	id	2894
2894	name	Callao
2894	countrycode	PER
2894	district	Callao
2894	population	424294
2895	id	2895
2895	name	Iquitos
2895	countrycode	PER
2895	district	Loreto
2895	population	367000
2896	id	2896
2896	name	Chimbote
2896	countrycode	PER
2896	district	Ancash
2896	population	336000
2897	id	2897
2897	name	Huancayo
2897	countrycode	PER
2897	district	Junín
2897	population	327000
2898	id	2898
2898	name	Piura
2898	countrycode	PER
2898	district	Piura
2898	population	325000
2899	id	2899
2899	name	Cusco
2899	countrycode	PER
2899	district	Cusco
2899	population	291000
2900	id	2900
2900	name	Pucallpa
2900	countrycode	PER
2900	district	Ucayali
2900	population	220866
2901	id	2901
2901	name	Tacna
2901	countrycode	PER
2901	district	Tacna
2901	population	215683
2902	id	2902
2902	name	Ica
2902	countrycode	PER
2902	district	Ica
2902	population	194820
2903	id	2903
2903	name	Sullana
2903	countrycode	PER
2903	district	Piura
2903	population	147361
2904	id	2904
2904	name	Juliaca
2904	countrycode	PER
2904	district	Puno
2904	population	142576
2905	id	2905
2905	name	Huánuco
2905	countrycode	PER
2905	district	Huanuco
2905	population	129688
2906	id	2906
2906	name	Ayacucho
2906	countrycode	PER
2906	district	Ayacucho
2906	population	118960
2907	id	2907
2907	name	Chincha Alta
2907	countrycode	PER
2907	district	Ica
2907	population	110016
2908	id	2908
2908	name	Cajamarca
2908	countrycode	PER
2908	district	Cajamarca
2908	population	108009
2909	id	2909
2909	name	Puno
2909	countrycode	PER
2909	district	Puno
2909	population	101578
2910	id	2910
2910	name	Ventanilla
2910	countrycode	PER
2910	district	Callao
2910	population	101056
2911	id	2911
2911	name	Castilla
2911	countrycode	PER
2911	district	Piura
2911	population	90642
2912	id	2912
2912	name	Adamstown
2912	countrycode	PCN
2912	district	
2912	population	42
2913	id	2913
2913	name	Garapan
2913	countrycode	MNP
2913	district	Saipan
2913	population	9200
2914	id	2914
2914	name	Lisboa
2914	countrycode	PRT
2914	district	Lisboa
2914	population	563210
2915	id	2915
2915	name	Porto
2915	countrycode	PRT
2915	district	Porto
2915	population	273060
2916	id	2916
2916	name	Amadora
2916	countrycode	PRT
2916	district	Lisboa
2916	population	122106
2917	id	2917
2917	name	Coímbra
2917	countrycode	PRT
2917	district	Coímbra
2917	population	96100
2918	id	2918
2918	name	Braga
2918	countrycode	PRT
2918	district	Braga
2918	population	90535
2919	id	2919
2919	name	San Juan
2919	countrycode	PRI
2919	district	San Juan
2919	population	434374
2920	id	2920
2920	name	Bayamón
2920	countrycode	PRI
2920	district	Bayamón
2920	population	224044
2921	id	2921
2921	name	Ponce
2921	countrycode	PRI
2921	district	Ponce
2921	population	186475
2922	id	2922
2922	name	Carolina
2922	countrycode	PRI
2922	district	Carolina
2922	population	186076
2923	id	2923
2923	name	Caguas
2923	countrycode	PRI
2923	district	Caguas
2923	population	140502
2924	id	2924
2924	name	Arecibo
2924	countrycode	PRI
2924	district	Arecibo
2924	population	100131
2925	id	2925
2925	name	Guaynabo
2925	countrycode	PRI
2925	district	Guaynabo
2925	population	100053
2926	id	2926
2926	name	Mayagüez
2926	countrycode	PRI
2926	district	Mayagüez
2926	population	98434
2927	id	2927
2927	name	Toa Baja
2927	countrycode	PRI
2927	district	Toa Baja
2927	population	94085
2928	id	2928
2928	name	Warszawa
2928	countrycode	POL
2928	district	Mazowieckie
2928	population	1615369
2929	id	2929
2929	name	Lódz
2929	countrycode	POL
2929	district	Lodzkie
2929	population	800110
2930	id	2930
2930	name	Kraków
2930	countrycode	POL
2930	district	Malopolskie
2930	population	738150
2931	id	2931
2931	name	Wroclaw
2931	countrycode	POL
2931	district	Dolnoslaskie
2931	population	636765
2932	id	2932
2932	name	Poznan
2932	countrycode	POL
2932	district	Wielkopolskie
2932	population	576899
2933	id	2933
2933	name	Gdansk
2933	countrycode	POL
2933	district	Pomorskie
2933	population	458988
2934	id	2934
2934	name	Szczecin
2934	countrycode	POL
2934	district	Zachodnio-Pomorskie
2934	population	416988
2935	id	2935
2935	name	Bydgoszcz
2935	countrycode	POL
2935	district	Kujawsko-Pomorskie
2935	population	386855
2936	id	2936
2936	name	Lublin
2936	countrycode	POL
2936	district	Lubelskie
2936	population	356251
2937	id	2937
2937	name	Katowice
2937	countrycode	POL
2937	district	Slaskie
2937	population	345934
2938	id	2938
2938	name	Bialystok
2938	countrycode	POL
2938	district	Podlaskie
2938	population	283937
2939	id	2939
2939	name	Czestochowa
2939	countrycode	POL
2939	district	Slaskie
2939	population	257812
2940	id	2940
2940	name	Gdynia
2940	countrycode	POL
2940	district	Pomorskie
2940	population	253521
2941	id	2941
2941	name	Sosnowiec
2941	countrycode	POL
2941	district	Slaskie
2941	population	244102
2942	id	2942
2942	name	Radom
2942	countrycode	POL
2942	district	Mazowieckie
2942	population	232262
2943	id	2943
2943	name	Kielce
2943	countrycode	POL
2943	district	Swietokrzyskie
2943	population	212383
2944	id	2944
2944	name	Gliwice
2944	countrycode	POL
2944	district	Slaskie
2944	population	212164
2945	id	2945
2945	name	Torun
2945	countrycode	POL
2945	district	Kujawsko-Pomorskie
2945	population	206158
2946	id	2946
2946	name	Bytom
2946	countrycode	POL
2946	district	Slaskie
2946	population	205560
2947	id	2947
2947	name	Zabrze
2947	countrycode	POL
2947	district	Slaskie
2947	population	200177
2948	id	2948
2948	name	Bielsko-Biala
2948	countrycode	POL
2948	district	Slaskie
2948	population	180307
2949	id	2949
2949	name	Olsztyn
2949	countrycode	POL
2949	district	Warminsko-Mazurskie
2949	population	170904
2950	id	2950
2950	name	Rzeszów
2950	countrycode	POL
2950	district	Podkarpackie
2950	population	162049
2951	id	2951
2951	name	Ruda Slaska
2951	countrycode	POL
2951	district	Slaskie
2951	population	159665
2952	id	2952
2952	name	Rybnik
2952	countrycode	POL
2952	district	Slaskie
2952	population	144582
2953	id	2953
2953	name	Walbrzych
2953	countrycode	POL
2953	district	Dolnoslaskie
2953	population	136923
2954	id	2954
2954	name	Tychy
2954	countrycode	POL
2954	district	Slaskie
2954	population	133178
2955	id	2955
2955	name	Dabrowa Górnicza
2955	countrycode	POL
2955	district	Slaskie
2955	population	131037
2956	id	2956
2956	name	Plock
2956	countrycode	POL
2956	district	Mazowieckie
2956	population	131011
2957	id	2957
2957	name	Elblag
2957	countrycode	POL
2957	district	Warminsko-Mazurskie
2957	population	129782
2958	id	2958
2958	name	Opole
2958	countrycode	POL
2958	district	Opolskie
2958	population	129553
2959	id	2959
2959	name	Gorzów Wielkopolski
2959	countrycode	POL
2959	district	Lubuskie
2959	population	126019
2960	id	2960
2960	name	Wloclawek
2960	countrycode	POL
2960	district	Kujawsko-Pomorskie
2960	population	123373
2961	id	2961
2961	name	Chorzów
2961	countrycode	POL
2961	district	Slaskie
2961	population	121708
2962	id	2962
2962	name	Tarnów
2962	countrycode	POL
2962	district	Malopolskie
2962	population	121494
2963	id	2963
2963	name	Zielona Góra
2963	countrycode	POL
2963	district	Lubuskie
2963	population	118182
2964	id	2964
2964	name	Koszalin
2964	countrycode	POL
2964	district	Zachodnio-Pomorskie
2964	population	112375
2965	id	2965
2965	name	Legnica
2965	countrycode	POL
2965	district	Dolnoslaskie
2965	population	109335
2966	id	2966
2966	name	Kalisz
2966	countrycode	POL
2966	district	Wielkopolskie
2966	population	106641
2967	id	2967
2967	name	Grudziadz
2967	countrycode	POL
2967	district	Kujawsko-Pomorskie
2967	population	102434
2968	id	2968
2968	name	Slupsk
2968	countrycode	POL
2968	district	Pomorskie
2968	population	102370
2969	id	2969
2969	name	Jastrzebie-Zdrój
2969	countrycode	POL
2969	district	Slaskie
2969	population	102294
2970	id	2970
2970	name	Jaworzno
2970	countrycode	POL
2970	district	Slaskie
2970	population	97929
2971	id	2971
2971	name	Jelenia Góra
2971	countrycode	POL
2971	district	Dolnoslaskie
2971	population	93901
2972	id	2972
2972	name	Malabo
2972	countrycode	GNQ
2972	district	Bioko
2972	population	40000
2973	id	2973
2973	name	Doha
2973	countrycode	QAT
2973	district	Doha
2973	population	355000
2974	id	2974
2974	name	Paris
2974	countrycode	FRA
2974	district	Île-de-France
2974	population	2125246
2975	id	2975
2975	name	Marseille
2975	countrycode	FRA
2975	district	Provence-Alpes-Côte
2975	population	798430
2976	id	2976
2976	name	Lyon
2976	countrycode	FRA
2976	district	Rhône-Alpes
2976	population	445452
2977	id	2977
2977	name	Toulouse
2977	countrycode	FRA
2977	district	Midi-Pyrénées
2977	population	390350
2978	id	2978
2978	name	Nice
2978	countrycode	FRA
2978	district	Provence-Alpes-Côte
2978	population	342738
2979	id	2979
2979	name	Nantes
2979	countrycode	FRA
2979	district	Pays de la Loire
2979	population	270251
2980	id	2980
2980	name	Strasbourg
2980	countrycode	FRA
2980	district	Alsace
2980	population	264115
2981	id	2981
2981	name	Montpellier
2981	countrycode	FRA
2981	district	Languedoc-Roussillon
2981	population	225392
2982	id	2982
2982	name	Bordeaux
2982	countrycode	FRA
2982	district	Aquitaine
2982	population	215363
2983	id	2983
2983	name	Rennes
2983	countrycode	FRA
2983	district	Haute-Normandie
2983	population	206229
2984	id	2984
2984	name	Le Havre
2984	countrycode	FRA
2984	district	Champagne-Ardenne
2984	population	190905
2985	id	2985
2985	name	Reims
2985	countrycode	FRA
2985	district	Nord-Pas-de-Calais
2985	population	187206
2986	id	2986
2986	name	Lille
2986	countrycode	FRA
2986	district	Rhône-Alpes
2986	population	184657
2987	id	2987
2987	name	St-Étienne
2987	countrycode	FRA
2987	district	Bretagne
2987	population	180210
2988	id	2988
2988	name	Toulon
2988	countrycode	FRA
2988	district	Provence-Alpes-Côte
2988	population	160639
2989	id	2989
2989	name	Grenoble
2989	countrycode	FRA
2989	district	Rhône-Alpes
2989	population	153317
2990	id	2990
2990	name	Angers
2990	countrycode	FRA
2990	district	Pays de la Loire
2990	population	151279
2991	id	2991
2991	name	Dijon
2991	countrycode	FRA
2991	district	Bourgogne
2991	population	149867
2992	id	2992
2992	name	Brest
2992	countrycode	FRA
2992	district	Bretagne
2992	population	149634
2993	id	2993
2993	name	Le Mans
2993	countrycode	FRA
2993	district	Pays de la Loire
2993	population	146105
2994	id	2994
2994	name	Clermont-Ferrand
2994	countrycode	FRA
2994	district	Auvergne
2994	population	137140
2995	id	2995
2995	name	Amiens
2995	countrycode	FRA
2995	district	Picardie
2995	population	135501
2996	id	2996
2996	name	Aix-en-Provence
2996	countrycode	FRA
2996	district	Provence-Alpes-Côte
2996	population	134222
2997	id	2997
2997	name	Limoges
2997	countrycode	FRA
2997	district	Limousin
2997	population	133968
2998	id	2998
2998	name	Nîmes
2998	countrycode	FRA
2998	district	Languedoc-Roussillon
2998	population	133424
2999	id	2999
2999	name	Tours
2999	countrycode	FRA
2999	district	Centre
2999	population	132820
3000	id	3000
3000	name	Villeurbanne
3000	countrycode	FRA
3000	district	Rhône-Alpes
3000	population	124215
3001	id	3001
3001	name	Metz
3001	countrycode	FRA
3001	district	Lorraine
3001	population	123776
3002	id	3002
3002	name	Besançon
3002	countrycode	FRA
3002	district	Franche-Comté
3002	population	117733
3003	id	3003
3003	name	Caen
3003	countrycode	FRA
3003	district	Basse-Normandie
3003	population	113987
3004	id	3004
3004	name	Orléans
3004	countrycode	FRA
3004	district	Centre
3004	population	113126
3005	id	3005
3005	name	Mulhouse
3005	countrycode	FRA
3005	district	Alsace
3005	population	110359
3006	id	3006
3006	name	Rouen
3006	countrycode	FRA
3006	district	Haute-Normandie
3006	population	106592
3007	id	3007
3007	name	Boulogne-Billancourt
3007	countrycode	FRA
3007	district	Île-de-France
3007	population	106367
3008	id	3008
3008	name	Perpignan
3008	countrycode	FRA
3008	district	Languedoc-Roussillon
3008	population	105115
3009	id	3009
3009	name	Nancy
3009	countrycode	FRA
3009	district	Lorraine
3009	population	103605
3010	id	3010
3010	name	Roubaix
3010	countrycode	FRA
3010	district	Nord-Pas-de-Calais
3010	population	96984
3011	id	3011
3011	name	Argenteuil
3011	countrycode	FRA
3011	district	Île-de-France
3011	population	93961
3012	id	3012
3012	name	Tourcoing
3012	countrycode	FRA
3012	district	Nord-Pas-de-Calais
3012	population	93540
3013	id	3013
3013	name	Montreuil
3013	countrycode	FRA
3013	district	Île-de-France
3013	population	90674
3014	id	3014
3014	name	Cayenne
3014	countrycode	GUF
3014	district	Cayenne
3014	population	50699
3015	id	3015
3015	name	Faaa
3015	countrycode	PYF
3015	district	Tahiti
3015	population	25888
3016	id	3016
3016	name	Papeete
3016	countrycode	PYF
3016	district	Tahiti
3016	population	25553
3017	id	3017
3017	name	Saint-Denis
3017	countrycode	REU
3017	district	Saint-Denis
3017	population	131480
3018	id	3018
3018	name	Bucuresti
3018	countrycode	ROM
3018	district	Bukarest
3018	population	2016131
3019	id	3019
3019	name	Iasi
3019	countrycode	ROM
3019	district	Iasi
3019	population	348070
3020	id	3020
3020	name	Constanta
3020	countrycode	ROM
3020	district	Constanta
3020	population	342264
3021	id	3021
3021	name	Cluj-Napoca
3021	countrycode	ROM
3021	district	Cluj
3021	population	332498
3022	id	3022
3022	name	Galati
3022	countrycode	ROM
3022	district	Galati
3022	population	330276
3023	id	3023
3023	name	Timisoara
3023	countrycode	ROM
3023	district	Timis
3023	population	324304
3024	id	3024
3024	name	Brasov
3024	countrycode	ROM
3024	district	Brasov
3024	population	314225
3025	id	3025
3025	name	Craiova
3025	countrycode	ROM
3025	district	Dolj
3025	population	313530
3026	id	3026
3026	name	Ploiesti
3026	countrycode	ROM
3026	district	Prahova
3026	population	251348
3027	id	3027
3027	name	Braila
3027	countrycode	ROM
3027	district	Braila
3027	population	233756
3028	id	3028
3028	name	Oradea
3028	countrycode	ROM
3028	district	Bihor
3028	population	222239
3029	id	3029
3029	name	Bacau
3029	countrycode	ROM
3029	district	Bacau
3029	population	209235
3030	id	3030
3030	name	Pitesti
3030	countrycode	ROM
3030	district	Arges
3030	population	187170
3031	id	3031
3031	name	Arad
3031	countrycode	ROM
3031	district	Arad
3031	population	184408
3032	id	3032
3032	name	Sibiu
3032	countrycode	ROM
3032	district	Sibiu
3032	population	169611
3033	id	3033
3033	name	Târgu Mures
3033	countrycode	ROM
3033	district	Mures
3033	population	165153
3034	id	3034
3034	name	Baia Mare
3034	countrycode	ROM
3034	district	Maramures
3034	population	149665
3035	id	3035
3035	name	Buzau
3035	countrycode	ROM
3035	district	Buzau
3035	population	148372
3036	id	3036
3036	name	Satu Mare
3036	countrycode	ROM
3036	district	Satu Mare
3036	population	130059
3037	id	3037
3037	name	Botosani
3037	countrycode	ROM
3037	district	Botosani
3037	population	128730
3038	id	3038
3038	name	Piatra Neamt
3038	countrycode	ROM
3038	district	Neamt
3038	population	125070
3039	id	3039
3039	name	Râmnicu Vâlcea
3039	countrycode	ROM
3039	district	Vâlcea
3039	population	119741
3040	id	3040
3040	name	Suceava
3040	countrycode	ROM
3040	district	Suceava
3040	population	118549
3041	id	3041
3041	name	Drobeta-Turnu Severin
3041	countrycode	ROM
3041	district	Mehedinti
3041	population	117865
3042	id	3042
3042	name	Târgoviste
3042	countrycode	ROM
3042	district	Dâmbovita
3042	population	98980
3043	id	3043
3043	name	Focsani
3043	countrycode	ROM
3043	district	Vrancea
3043	population	98979
3044	id	3044
3044	name	Târgu Jiu
3044	countrycode	ROM
3044	district	Gorj
3044	population	98524
3045	id	3045
3045	name	Tulcea
3045	countrycode	ROM
3045	district	Tulcea
3045	population	96278
3046	id	3046
3046	name	Resita
3046	countrycode	ROM
3046	district	Caras-Severin
3046	population	93976
3047	id	3047
3047	name	Kigali
3047	countrycode	RWA
3047	district	Kigali
3047	population	286000
3048	id	3048
3048	name	Stockholm
3048	countrycode	SWE
3048	district	Lisboa
3048	population	750348
3049	id	3049
3049	name	Gothenburg [Göteborg]
3049	countrycode	SWE
3049	district	West Götanmaan län
3049	population	466990
3050	id	3050
3050	name	Malmö
3050	countrycode	SWE
3050	district	Skåne län
3050	population	259579
3051	id	3051
3051	name	Uppsala
3051	countrycode	SWE
3051	district	Uppsala län
3051	population	189569
3052	id	3052
3052	name	Linköping
3052	countrycode	SWE
3052	district	East Götanmaan län
3052	population	133168
3053	id	3053
3053	name	Västerås
3053	countrycode	SWE
3053	district	Västmanlands län
3053	population	126328
3054	id	3054
3054	name	Örebro
3054	countrycode	SWE
3054	district	Örebros län
3054	population	124207
3055	id	3055
3055	name	Norrköping
3055	countrycode	SWE
3055	district	East Götanmaan län
3055	population	122199
3056	id	3056
3056	name	Helsingborg
3056	countrycode	SWE
3056	district	Skåne län
3056	population	117737
3057	id	3057
3057	name	Jönköping
3057	countrycode	SWE
3057	district	Jönköpings län
3057	population	117095
3058	id	3058
3058	name	Umeå
3058	countrycode	SWE
3058	district	Västerbottens län
3058	population	104512
3059	id	3059
3059	name	Lund
3059	countrycode	SWE
3059	district	Skåne län
3059	population	98948
3060	id	3060
3060	name	Borås
3060	countrycode	SWE
3060	district	West Götanmaan län
3060	population	96883
3061	id	3061
3061	name	Sundsvall
3061	countrycode	SWE
3061	district	Västernorrlands län
3061	population	93126
3062	id	3062
3062	name	Gävle
3062	countrycode	SWE
3062	district	Gävleborgs län
3062	population	90742
3063	id	3063
3063	name	Jamestown
3063	countrycode	SHN
3063	district	Saint Helena
3063	population	1500
3064	id	3064
3064	name	Basseterre
3064	countrycode	KNA
3064	district	St George Basseterre
3064	population	11600
3065	id	3065
3065	name	Castries
3065	countrycode	LCA
3065	district	Castries
3065	population	2301
3066	id	3066
3066	name	Kingstown
3066	countrycode	VCT
3066	district	St George
3066	population	17100
3067	id	3067
3067	name	Saint-Pierre
3067	countrycode	SPM
3067	district	Saint-Pierre
3067	population	5808
3068	id	3068
3068	name	Berlin
3068	countrycode	DEU
3068	district	Berliini
3068	population	3386667
3069	id	3069
3069	name	Hamburg
3069	countrycode	DEU
3069	district	Hamburg
3069	population	1704735
3070	id	3070
3070	name	Munich [München]
3070	countrycode	DEU
3070	district	Baijeri
3070	population	1194560
3071	id	3071
3071	name	Köln
3071	countrycode	DEU
3071	district	Nordrhein-Westfalen
3071	population	962507
3072	id	3072
3072	name	Frankfurt am Main
3072	countrycode	DEU
3072	district	Hessen
3072	population	643821
3073	id	3073
3073	name	Essen
3073	countrycode	DEU
3073	district	Nordrhein-Westfalen
3073	population	599515
3074	id	3074
3074	name	Dortmund
3074	countrycode	DEU
3074	district	Nordrhein-Westfalen
3074	population	590213
3075	id	3075
3075	name	Stuttgart
3075	countrycode	DEU
3075	district	Baden-Württemberg
3075	population	582443
3076	id	3076
3076	name	Düsseldorf
3076	countrycode	DEU
3076	district	Nordrhein-Westfalen
3076	population	568855
3077	id	3077
3077	name	Bremen
3077	countrycode	DEU
3077	district	Bremen
3077	population	540330
3078	id	3078
3078	name	Duisburg
3078	countrycode	DEU
3078	district	Nordrhein-Westfalen
3078	population	519793
3079	id	3079
3079	name	Hannover
3079	countrycode	DEU
3079	district	Niedersachsen
3079	population	514718
3080	id	3080
3080	name	Leipzig
3080	countrycode	DEU
3080	district	Saksi
3080	population	489532
3081	id	3081
3081	name	Nürnberg
3081	countrycode	DEU
3081	district	Baijeri
3081	population	486628
3082	id	3082
3082	name	Dresden
3082	countrycode	DEU
3082	district	Saksi
3082	population	476668
3083	id	3083
3083	name	Bochum
3083	countrycode	DEU
3083	district	Nordrhein-Westfalen
3083	population	392830
3084	id	3084
3084	name	Wuppertal
3084	countrycode	DEU
3084	district	Nordrhein-Westfalen
3084	population	368993
3085	id	3085
3085	name	Bielefeld
3085	countrycode	DEU
3085	district	Nordrhein-Westfalen
3085	population	321125
3086	id	3086
3086	name	Mannheim
3086	countrycode	DEU
3086	district	Baden-Württemberg
3086	population	307730
3087	id	3087
3087	name	Bonn
3087	countrycode	DEU
3087	district	Nordrhein-Westfalen
3087	population	301048
3088	id	3088
3088	name	Gelsenkirchen
3088	countrycode	DEU
3088	district	Nordrhein-Westfalen
3088	population	281979
3089	id	3089
3089	name	Karlsruhe
3089	countrycode	DEU
3089	district	Baden-Württemberg
3089	population	277204
3090	id	3090
3090	name	Wiesbaden
3090	countrycode	DEU
3090	district	Hessen
3090	population	268716
3091	id	3091
3091	name	Münster
3091	countrycode	DEU
3091	district	Nordrhein-Westfalen
3091	population	264670
3092	id	3092
3092	name	Mönchengladbach
3092	countrycode	DEU
3092	district	Nordrhein-Westfalen
3092	population	263697
3093	id	3093
3093	name	Chemnitz
3093	countrycode	DEU
3093	district	Saksi
3093	population	263222
3094	id	3094
3094	name	Augsburg
3094	countrycode	DEU
3094	district	Baijeri
3094	population	254867
3095	id	3095
3095	name	Halle/Saale
3095	countrycode	DEU
3095	district	Anhalt Sachsen
3095	population	254360
3096	id	3096
3096	name	Braunschweig
3096	countrycode	DEU
3096	district	Niedersachsen
3096	population	246322
3097	id	3097
3097	name	Aachen
3097	countrycode	DEU
3097	district	Nordrhein-Westfalen
3097	population	243825
3098	id	3098
3098	name	Krefeld
3098	countrycode	DEU
3098	district	Nordrhein-Westfalen
3098	population	241769
3099	id	3099
3099	name	Magdeburg
3099	countrycode	DEU
3099	district	Anhalt Sachsen
3099	population	235073
3100	id	3100
3100	name	Kiel
3100	countrycode	DEU
3100	district	Schleswig-Holstein
3100	population	233795
3101	id	3101
3101	name	Oberhausen
3101	countrycode	DEU
3101	district	Nordrhein-Westfalen
3101	population	222349
3102	id	3102
3102	name	Lübeck
3102	countrycode	DEU
3102	district	Schleswig-Holstein
3102	population	213326
3103	id	3103
3103	name	Hagen
3103	countrycode	DEU
3103	district	Nordrhein-Westfalen
3103	population	205201
3104	id	3104
3104	name	Rostock
3104	countrycode	DEU
3104	district	Mecklenburg-Vorpomme
3104	population	203279
3105	id	3105
3105	name	Freiburg im Breisgau
3105	countrycode	DEU
3105	district	Baden-Württemberg
3105	population	202455
3106	id	3106
3106	name	Erfurt
3106	countrycode	DEU
3106	district	Thüringen
3106	population	201267
3107	id	3107
3107	name	Kassel
3107	countrycode	DEU
3107	district	Hessen
3107	population	196211
3108	id	3108
3108	name	Saarbrücken
3108	countrycode	DEU
3108	district	Saarland
3108	population	183836
3109	id	3109
3109	name	Mainz
3109	countrycode	DEU
3109	district	Rheinland-Pfalz
3109	population	183134
3110	id	3110
3110	name	Hamm
3110	countrycode	DEU
3110	district	Nordrhein-Westfalen
3110	population	181804
3111	id	3111
3111	name	Herne
3111	countrycode	DEU
3111	district	Nordrhein-Westfalen
3111	population	175661
3112	id	3112
3112	name	Mülheim an der Ruhr
3112	countrycode	DEU
3112	district	Nordrhein-Westfalen
3112	population	173895
3113	id	3113
3113	name	Solingen
3113	countrycode	DEU
3113	district	Nordrhein-Westfalen
3113	population	165583
3114	id	3114
3114	name	Osnabrück
3114	countrycode	DEU
3114	district	Niedersachsen
3114	population	164539
3115	id	3115
3115	name	Ludwigshafen am Rhein
3115	countrycode	DEU
3115	district	Rheinland-Pfalz
3115	population	163771
3116	id	3116
3116	name	Leverkusen
3116	countrycode	DEU
3116	district	Nordrhein-Westfalen
3116	population	160841
3117	id	3117
3117	name	Oldenburg
3117	countrycode	DEU
3117	district	Niedersachsen
3117	population	154125
3118	id	3118
3118	name	Neuss
3118	countrycode	DEU
3118	district	Nordrhein-Westfalen
3118	population	149702
3119	id	3119
3119	name	Heidelberg
3119	countrycode	DEU
3119	district	Baden-Württemberg
3119	population	139672
3120	id	3120
3120	name	Darmstadt
3120	countrycode	DEU
3120	district	Hessen
3120	population	137776
3121	id	3121
3121	name	Paderborn
3121	countrycode	DEU
3121	district	Nordrhein-Westfalen
3121	population	137647
3122	id	3122
3122	name	Potsdam
3122	countrycode	DEU
3122	district	Brandenburg
3122	population	128983
3123	id	3123
3123	name	Würzburg
3123	countrycode	DEU
3123	district	Baijeri
3123	population	127350
3124	id	3124
3124	name	Regensburg
3124	countrycode	DEU
3124	district	Baijeri
3124	population	125236
3125	id	3125
3125	name	Recklinghausen
3125	countrycode	DEU
3125	district	Nordrhein-Westfalen
3125	population	125022
3126	id	3126
3126	name	Göttingen
3126	countrycode	DEU
3126	district	Niedersachsen
3126	population	124775
3127	id	3127
3127	name	Bremerhaven
3127	countrycode	DEU
3127	district	Bremen
3127	population	122735
3128	id	3128
3128	name	Wolfsburg
3128	countrycode	DEU
3128	district	Niedersachsen
3128	population	121954
3129	id	3129
3129	name	Bottrop
3129	countrycode	DEU
3129	district	Nordrhein-Westfalen
3129	population	121097
3130	id	3130
3130	name	Remscheid
3130	countrycode	DEU
3130	district	Nordrhein-Westfalen
3130	population	120125
3131	id	3131
3131	name	Heilbronn
3131	countrycode	DEU
3131	district	Baden-Württemberg
3131	population	119526
3132	id	3132
3132	name	Pforzheim
3132	countrycode	DEU
3132	district	Baden-Württemberg
3132	population	117227
3133	id	3133
3133	name	Offenbach am Main
3133	countrycode	DEU
3133	district	Hessen
3133	population	116627
3134	id	3134
3134	name	Ulm
3134	countrycode	DEU
3134	district	Baden-Württemberg
3134	population	116103
3135	id	3135
3135	name	Ingolstadt
3135	countrycode	DEU
3135	district	Baijeri
3135	population	114826
3136	id	3136
3136	name	Gera
3136	countrycode	DEU
3136	district	Thüringen
3136	population	114718
3137	id	3137
3137	name	Salzgitter
3137	countrycode	DEU
3137	district	Niedersachsen
3137	population	112934
3138	id	3138
3138	name	Cottbus
3138	countrycode	DEU
3138	district	Brandenburg
3138	population	110894
3139	id	3139
3139	name	Reutlingen
3139	countrycode	DEU
3139	district	Baden-Württemberg
3139	population	110343
3140	id	3140
3140	name	Fürth
3140	countrycode	DEU
3140	district	Baijeri
3140	population	109771
3141	id	3141
3141	name	Siegen
3141	countrycode	DEU
3141	district	Nordrhein-Westfalen
3141	population	109225
3142	id	3142
3142	name	Koblenz
3142	countrycode	DEU
3142	district	Rheinland-Pfalz
3142	population	108003
3143	id	3143
3143	name	Moers
3143	countrycode	DEU
3143	district	Nordrhein-Westfalen
3143	population	106837
3144	id	3144
3144	name	Bergisch Gladbach
3144	countrycode	DEU
3144	district	Nordrhein-Westfalen
3144	population	106150
3145	id	3145
3145	name	Zwickau
3145	countrycode	DEU
3145	district	Saksi
3145	population	104146
3146	id	3146
3146	name	Hildesheim
3146	countrycode	DEU
3146	district	Niedersachsen
3146	population	104013
3147	id	3147
3147	name	Witten
3147	countrycode	DEU
3147	district	Nordrhein-Westfalen
3147	population	103384
3148	id	3148
3148	name	Schwerin
3148	countrycode	DEU
3148	district	Mecklenburg-Vorpomme
3148	population	102878
3149	id	3149
3149	name	Erlangen
3149	countrycode	DEU
3149	district	Baijeri
3149	population	100750
3150	id	3150
3150	name	Kaiserslautern
3150	countrycode	DEU
3150	district	Rheinland-Pfalz
3150	population	100025
3151	id	3151
3151	name	Trier
3151	countrycode	DEU
3151	district	Rheinland-Pfalz
3151	population	99891
3152	id	3152
3152	name	Jena
3152	countrycode	DEU
3152	district	Thüringen
3152	population	99779
3153	id	3153
3153	name	Iserlohn
3153	countrycode	DEU
3153	district	Nordrhein-Westfalen
3153	population	99474
3154	id	3154
3154	name	Gütersloh
3154	countrycode	DEU
3154	district	Nordrhein-Westfalen
3154	population	95028
3155	id	3155
3155	name	Marl
3155	countrycode	DEU
3155	district	Nordrhein-Westfalen
3155	population	93735
3156	id	3156
3156	name	Lünen
3156	countrycode	DEU
3156	district	Nordrhein-Westfalen
3156	population	92044
3157	id	3157
3157	name	Düren
3157	countrycode	DEU
3157	district	Nordrhein-Westfalen
3157	population	91092
3158	id	3158
3158	name	Ratingen
3158	countrycode	DEU
3158	district	Nordrhein-Westfalen
3158	population	90951
3159	id	3159
3159	name	Velbert
3159	countrycode	DEU
3159	district	Nordrhein-Westfalen
3159	population	89881
3160	id	3160
3160	name	Esslingen am Neckar
3160	countrycode	DEU
3160	district	Baden-Württemberg
3160	population	89667
3161	id	3161
3161	name	Honiara
3161	countrycode	SLB
3161	district	Honiara
3161	population	50100
3162	id	3162
3162	name	Lusaka
3162	countrycode	ZMB
3162	district	Lusaka
3162	population	1317000
3163	id	3163
3163	name	Ndola
3163	countrycode	ZMB
3163	district	Copperbelt
3163	population	329200
3164	id	3164
3164	name	Kitwe
3164	countrycode	ZMB
3164	district	Copperbelt
3164	population	288600
3165	id	3165
3165	name	Kabwe
3165	countrycode	ZMB
3165	district	Central
3165	population	154300
3166	id	3166
3166	name	Chingola
3166	countrycode	ZMB
3166	district	Copperbelt
3166	population	142400
3167	id	3167
3167	name	Mufulira
3167	countrycode	ZMB
3167	district	Copperbelt
3167	population	123900
3168	id	3168
3168	name	Luanshya
3168	countrycode	ZMB
3168	district	Copperbelt
3168	population	118100
3169	id	3169
3169	name	Apia
3169	countrycode	WSM
3169	district	Upolu
3169	population	35900
3170	id	3170
3170	name	Serravalle
3170	countrycode	SMR
3170	district	Serravalle/Dogano
3170	population	4802
3171	id	3171
3171	name	San Marino
3171	countrycode	SMR
3171	district	San Marino
3171	population	2294
3172	id	3172
3172	name	São Tomé
3172	countrycode	STP
3172	district	Aqua Grande
3172	population	49541
3173	id	3173
3173	name	Riyadh
3173	countrycode	SAU
3173	district	Riyadh
3173	population	3324000
3174	id	3174
3174	name	Jedda
3174	countrycode	SAU
3174	district	Mekka
3174	population	2046300
3175	id	3175
3175	name	Mekka
3175	countrycode	SAU
3175	district	Mekka
3175	population	965700
3176	id	3176
3176	name	Medina
3176	countrycode	SAU
3176	district	Medina
3176	population	608300
3177	id	3177
3177	name	al-Dammam
3177	countrycode	SAU
3177	district	al-Sharqiya
3177	population	482300
3178	id	3178
3178	name	al-Taif
3178	countrycode	SAU
3178	district	Mekka
3178	population	416100
3179	id	3179
3179	name	Tabuk
3179	countrycode	SAU
3179	district	Tabuk
3179	population	292600
3180	id	3180
3180	name	Burayda
3180	countrycode	SAU
3180	district	al-Qasim
3180	population	248600
3181	id	3181
3181	name	al-Hufuf
3181	countrycode	SAU
3181	district	al-Sharqiya
3181	population	225800
3182	id	3182
3182	name	al-Mubarraz
3182	countrycode	SAU
3182	district	al-Sharqiya
3182	population	219100
3183	id	3183
3183	name	Khamis Mushayt
3183	countrycode	SAU
3183	district	Asir
3183	population	217900
3184	id	3184
3184	name	Hail
3184	countrycode	SAU
3184	district	Hail
3184	population	176800
3185	id	3185
3185	name	al-Kharj
3185	countrycode	SAU
3185	district	Riad
3185	population	152100
3186	id	3186
3186	name	al-Khubar
3186	countrycode	SAU
3186	district	al-Sharqiya
3186	population	141700
3187	id	3187
3187	name	Jubayl
3187	countrycode	SAU
3187	district	al-Sharqiya
3187	population	140800
3188	id	3188
3188	name	Hafar al-Batin
3188	countrycode	SAU
3188	district	al-Sharqiya
3188	population	137800
3189	id	3189
3189	name	al-Tuqba
3189	countrycode	SAU
3189	district	al-Sharqiya
3189	population	125700
3190	id	3190
3190	name	Yanbu
3190	countrycode	SAU
3190	district	Medina
3190	population	119800
3191	id	3191
3191	name	Abha
3191	countrycode	SAU
3191	district	Asir
3191	population	112300
3192	id	3192
3192	name	Ara´ar
3192	countrycode	SAU
3192	district	al-Khudud al-Samaliy
3192	population	108100
3193	id	3193
3193	name	al-Qatif
3193	countrycode	SAU
3193	district	al-Sharqiya
3193	population	98900
3194	id	3194
3194	name	al-Hawiya
3194	countrycode	SAU
3194	district	Mekka
3194	population	93900
3195	id	3195
3195	name	Unayza
3195	countrycode	SAU
3195	district	Qasim
3195	population	91100
3196	id	3196
3196	name	Najran
3196	countrycode	SAU
3196	district	Najran
3196	population	91000
3197	id	3197
3197	name	Pikine
3197	countrycode	SEN
3197	district	Cap-Vert
3197	population	855287
3198	id	3198
3198	name	Dakar
3198	countrycode	SEN
3198	district	Cap-Vert
3198	population	785071
3199	id	3199
3199	name	Thiès
3199	countrycode	SEN
3199	district	Thiès
3199	population	248000
3200	id	3200
3200	name	Kaolack
3200	countrycode	SEN
3200	district	Kaolack
3200	population	199000
3201	id	3201
3201	name	Ziguinchor
3201	countrycode	SEN
3201	district	Ziguinchor
3201	population	192000
3202	id	3202
3202	name	Rufisque
3202	countrycode	SEN
3202	district	Cap-Vert
3202	population	150000
3203	id	3203
3203	name	Saint-Louis
3203	countrycode	SEN
3203	district	Saint-Louis
3203	population	132400
3204	id	3204
3204	name	Mbour
3204	countrycode	SEN
3204	district	Thiès
3204	population	109300
3205	id	3205
3205	name	Diourbel
3205	countrycode	SEN
3205	district	Diourbel
3205	population	99400
3206	id	3206
3206	name	Victoria
3206	countrycode	SYC
3206	district	Mahé
3206	population	41000
3207	id	3207
3207	name	Freetown
3207	countrycode	SLE
3207	district	Western
3207	population	850000
3208	id	3208
3208	name	Singapore
3208	countrycode	SGP
3208	district	
3208	population	4017733
3209	id	3209
3209	name	Bratislava
3209	countrycode	SVK
3209	district	Bratislava
3209	population	448292
3210	id	3210
3210	name	Koice
3210	countrycode	SVK
3210	district	Východné Slovensko
3210	population	241874
3211	id	3211
3211	name	Preov
3211	countrycode	SVK
3211	district	Východné Slovensko
3211	population	93977
3212	id	3212
3212	name	Ljubljana
3212	countrycode	SVN
3212	district	Osrednjeslovenska
3212	population	270986
3213	id	3213
3213	name	Maribor
3213	countrycode	SVN
3213	district	Podravska
3213	population	115532
3214	id	3214
3214	name	Mogadishu
3214	countrycode	SOM
3214	district	Banaadir
3214	population	997000
3215	id	3215
3215	name	Hargeysa
3215	countrycode	SOM
3215	district	Woqooyi Galbeed
3215	population	90000
3216	id	3216
3216	name	Kismaayo
3216	countrycode	SOM
3216	district	Jubbada Hoose
3216	population	90000
3217	id	3217
3217	name	Colombo
3217	countrycode	LKA
3217	district	Western
3217	population	645000
3218	id	3218
3218	name	Dehiwala
3218	countrycode	LKA
3218	district	Western
3218	population	203000
3219	id	3219
3219	name	Moratuwa
3219	countrycode	LKA
3219	district	Western
3219	population	190000
3220	id	3220
3220	name	Jaffna
3220	countrycode	LKA
3220	district	Northern
3220	population	149000
3221	id	3221
3221	name	Kandy
3221	countrycode	LKA
3221	district	Central
3221	population	140000
3222	id	3222
3222	name	Sri Jayawardenepura Kotte
3222	countrycode	LKA
3222	district	Western
3222	population	118000
3223	id	3223
3223	name	Negombo
3223	countrycode	LKA
3223	district	Western
3223	population	100000
3224	id	3224
3224	name	Omdurman
3224	countrycode	SDN
3224	district	Khartum
3224	population	1271403
3225	id	3225
3225	name	Khartum
3225	countrycode	SDN
3225	district	Khartum
3225	population	947483
3226	id	3226
3226	name	Sharq al-Nil
3226	countrycode	SDN
3226	district	Khartum
3226	population	700887
3227	id	3227
3227	name	Port Sudan
3227	countrycode	SDN
3227	district	al-Bahr al-Ahmar
3227	population	308195
3228	id	3228
3228	name	Kassala
3228	countrycode	SDN
3228	district	Kassala
3228	population	234622
3229	id	3229
3229	name	Obeid
3229	countrycode	SDN
3229	district	Kurdufan al-Shamaliy
3229	population	229425
3230	id	3230
3230	name	Nyala
3230	countrycode	SDN
3230	district	Darfur al-Janubiya
3230	population	227183
3231	id	3231
3231	name	Wad Madani
3231	countrycode	SDN
3231	district	al-Jazira
3231	population	211362
3232	id	3232
3232	name	al-Qadarif
3232	countrycode	SDN
3232	district	al-Qadarif
3232	population	191164
3233	id	3233
3233	name	Kusti
3233	countrycode	SDN
3233	district	al-Bahr al-Abyad
3233	population	173599
3234	id	3234
3234	name	al-Fashir
3234	countrycode	SDN
3234	district	Darfur al-Shamaliya
3234	population	141884
3235	id	3235
3235	name	Juba
3235	countrycode	SDN
3235	district	Bahr al-Jabal
3235	population	114980
3236	id	3236
3236	name	Helsinki [Helsingfors]
3236	countrycode	FIN
3236	district	Newmaa
3236	population	555474
3237	id	3237
3237	name	Espoo
3237	countrycode	FIN
3237	district	Newmaa
3237	population	213271
3238	id	3238
3238	name	Tampere
3238	countrycode	FIN
3238	district	Pirkanmaa
3238	population	195468
3239	id	3239
3239	name	Vantaa
3239	countrycode	FIN
3239	district	Newmaa
3239	population	178471
3240	id	3240
3240	name	Turku [Åbo]
3240	countrycode	FIN
3240	district	Varsinais-Suomi
3240	population	172561
3241	id	3241
3241	name	Oulu
3241	countrycode	FIN
3241	district	Pohjois-Pohjanmaa
3241	population	120753
3242	id	3242
3242	name	Lahti
3242	countrycode	FIN
3242	district	Päijät-Häme
3242	population	96921
3243	id	3243
3243	name	Paramaribo
3243	countrycode	SUR
3243	district	Paramaribo
3243	population	112000
3244	id	3244
3244	name	Mbabane
3244	countrycode	SWZ
3244	district	Hhohho
3244	population	61000
3245	id	3245
3245	name	Zürich
3245	countrycode	CHE
3245	district	Zürich
3245	population	336800
3246	id	3246
3246	name	Geneve
3246	countrycode	CHE
3246	district	Geneve
3246	population	173500
3247	id	3247
3247	name	Basel
3247	countrycode	CHE
3247	district	Basel-Stadt
3247	population	166700
3248	id	3248
3248	name	Bern
3248	countrycode	CHE
3248	district	Bern
3248	population	122700
3249	id	3249
3249	name	Lausanne
3249	countrycode	CHE
3249	district	Vaud
3249	population	114500
3250	id	3250
3250	name	Damascus
3250	countrycode	SYR
3250	district	Damascus
3250	population	1347000
3251	id	3251
3251	name	Aleppo
3251	countrycode	SYR
3251	district	Aleppo
3251	population	1261983
3252	id	3252
3252	name	Hims
3252	countrycode	SYR
3252	district	Hims
3252	population	507404
3253	id	3253
3253	name	Hama
3253	countrycode	SYR
3253	district	Hama
3253	population	343361
3254	id	3254
3254	name	Latakia
3254	countrycode	SYR
3254	district	Latakia
3254	population	264563
3255	id	3255
3255	name	al-Qamishliya
3255	countrycode	SYR
3255	district	al-Hasaka
3255	population	144286
3256	id	3256
3256	name	Dayr al-Zawr
3256	countrycode	SYR
3256	district	Dayr al-Zawr
3256	population	140459
3257	id	3257
3257	name	Jaramana
3257	countrycode	SYR
3257	district	Damaskos
3257	population	138469
3258	id	3258
3258	name	Duma
3258	countrycode	SYR
3258	district	Damaskos
3258	population	131158
3259	id	3259
3259	name	al-Raqqa
3259	countrycode	SYR
3259	district	al-Raqqa
3259	population	108020
3260	id	3260
3260	name	Idlib
3260	countrycode	SYR
3260	district	Idlib
3260	population	91081
3261	id	3261
3261	name	Dushanbe
3261	countrycode	TJK
3261	district	Karotegin
3261	population	524000
3262	id	3262
3262	name	Khujand
3262	countrycode	TJK
3262	district	Khujand
3262	population	161500
3263	id	3263
3263	name	Taipei
3263	countrycode	TWN
3263	district	Taipei
3263	population	2641312
3264	id	3264
3264	name	Kaohsiung
3264	countrycode	TWN
3264	district	Kaohsiung
3264	population	1475505
3265	id	3265
3265	name	Taichung
3265	countrycode	TWN
3265	district	Taichung
3265	population	940589
3266	id	3266
3266	name	Tainan
3266	countrycode	TWN
3266	district	Tainan
3266	population	728060
3267	id	3267
3267	name	Panchiao
3267	countrycode	TWN
3267	district	Taipei
3267	population	523850
3268	id	3268
3268	name	Chungho
3268	countrycode	TWN
3268	district	Taipei
3268	population	392176
3269	id	3269
3269	name	Keelung (Chilung)
3269	countrycode	TWN
3269	district	Keelung
3269	population	385201
3270	id	3270
3270	name	Sanchung
3270	countrycode	TWN
3270	district	Taipei
3270	population	380084
3271	id	3271
3271	name	Hsinchuang
3271	countrycode	TWN
3271	district	Taipei
3271	population	365048
3272	id	3272
3272	name	Hsinchu
3272	countrycode	TWN
3272	district	Hsinchu
3272	population	361958
3273	id	3273
3273	name	Chungli
3273	countrycode	TWN
3273	district	Taoyuan
3273	population	318649
3274	id	3274
3274	name	Fengshan
3274	countrycode	TWN
3274	district	Kaohsiung
3274	population	318562
3275	id	3275
3275	name	Taoyuan
3275	countrycode	TWN
3275	district	Taoyuan
3275	population	316438
3276	id	3276
3276	name	Chiayi
3276	countrycode	TWN
3276	district	Chiayi
3276	population	265109
3277	id	3277
3277	name	Hsintien
3277	countrycode	TWN
3277	district	Taipei
3277	population	263603
3278	id	3278
3278	name	Changhwa
3278	countrycode	TWN
3278	district	Changhwa
3278	population	227715
3279	id	3279
3279	name	Yungho
3279	countrycode	TWN
3279	district	Taipei
3279	population	227700
3280	id	3280
3280	name	Tucheng
3280	countrycode	TWN
3280	district	Taipei
3280	population	224897
3281	id	3281
3281	name	Pingtung
3281	countrycode	TWN
3281	district	Pingtung
3281	population	214727
3282	id	3282
3282	name	Yungkang
3282	countrycode	TWN
3282	district	Tainan
3282	population	193005
3283	id	3283
3283	name	Pingchen
3283	countrycode	TWN
3283	district	Taoyuan
3283	population	188344
3284	id	3284
3284	name	Tali
3284	countrycode	TWN
3284	district	Taichung
3284	population	171940
3285	id	3285
3285	name	Taiping
3285	countrycode	TWN
3285	district	
3285	population	165524
3286	id	3286
3286	name	Pate
3286	countrycode	TWN
3286	district	Taoyuan
3286	population	161700
3287	id	3287
3287	name	Fengyuan
3287	countrycode	TWN
3287	district	Taichung
3287	population	161032
3288	id	3288
3288	name	Luchou
3288	countrycode	TWN
3288	district	Taipei
3288	population	160516
3289	id	3289
3289	name	Hsichuh
3289	countrycode	TWN
3289	district	Taipei
3289	population	154976
3290	id	3290
3290	name	Shulin
3290	countrycode	TWN
3290	district	Taipei
3290	population	151260
3291	id	3291
3291	name	Yuanlin
3291	countrycode	TWN
3291	district	Changhwa
3291	population	126402
3292	id	3292
3292	name	Yangmei
3292	countrycode	TWN
3292	district	Taoyuan
3292	population	126323
3293	id	3293
3293	name	Taliao
3293	countrycode	TWN
3293	district	
3293	population	115897
3294	id	3294
3294	name	Kueishan
3294	countrycode	TWN
3294	district	
3294	population	112195
3295	id	3295
3295	name	Tanshui
3295	countrycode	TWN
3295	district	Taipei
3295	population	111882
3296	id	3296
3296	name	Taitung
3296	countrycode	TWN
3296	district	Taitung
3296	population	111039
3297	id	3297
3297	name	Hualien
3297	countrycode	TWN
3297	district	Hualien
3297	population	108407
3298	id	3298
3298	name	Nantou
3298	countrycode	TWN
3298	district	Nantou
3298	population	104723
3299	id	3299
3299	name	Lungtan
3299	countrycode	TWN
3299	district	Taipei
3299	population	103088
3300	id	3300
3300	name	Touliu
3300	countrycode	TWN
3300	district	Yünlin
3300	population	98900
3301	id	3301
3301	name	Tsaotun
3301	countrycode	TWN
3301	district	Nantou
3301	population	96800
3302	id	3302
3302	name	Kangshan
3302	countrycode	TWN
3302	district	Kaohsiung
3302	population	92200
3303	id	3303
3303	name	Ilan
3303	countrycode	TWN
3303	district	Ilan
3303	population	92000
3304	id	3304
3304	name	Miaoli
3304	countrycode	TWN
3304	district	Miaoli
3304	population	90000
3305	id	3305
3305	name	Dar es Salaam
3305	countrycode	TZA
3305	district	Dar es Salaam
3305	population	1747000
3306	id	3306
3306	name	Dodoma
3306	countrycode	TZA
3306	district	Dodoma
3306	population	189000
3307	id	3307
3307	name	Mwanza
3307	countrycode	TZA
3307	district	Mwanza
3307	population	172300
3308	id	3308
3308	name	Zanzibar
3308	countrycode	TZA
3308	district	Zanzibar West
3308	population	157634
3309	id	3309
3309	name	Tanga
3309	countrycode	TZA
3309	district	Tanga
3309	population	137400
3310	id	3310
3310	name	Mbeya
3310	countrycode	TZA
3310	district	Mbeya
3310	population	130800
3311	id	3311
3311	name	Morogoro
3311	countrycode	TZA
3311	district	Morogoro
3311	population	117800
3312	id	3312
3312	name	Arusha
3312	countrycode	TZA
3312	district	Arusha
3312	population	102500
3313	id	3313
3313	name	Moshi
3313	countrycode	TZA
3313	district	Kilimanjaro
3313	population	96800
3314	id	3314
3314	name	Tabora
3314	countrycode	TZA
3314	district	Tabora
3314	population	92800
3315	id	3315
3315	name	København
3315	countrycode	DNK
3315	district	København
3315	population	495699
3316	id	3316
3316	name	Århus
3316	countrycode	DNK
3316	district	Århus
3316	population	284846
3317	id	3317
3317	name	Odense
3317	countrycode	DNK
3317	district	Fyn
3317	population	183912
3318	id	3318
3318	name	Aalborg
3318	countrycode	DNK
3318	district	Nordjylland
3318	population	161161
3319	id	3319
3319	name	Frederiksberg
3319	countrycode	DNK
3319	district	Frederiksberg
3319	population	90327
3320	id	3320
3320	name	Bangkok
3320	countrycode	THA
3320	district	Bangkok
3320	population	6320174
3321	id	3321
3321	name	Nonthaburi
3321	countrycode	THA
3321	district	Nonthaburi
3321	population	292100
3322	id	3322
3322	name	Nakhon Ratchasima
3322	countrycode	THA
3322	district	Nakhon Ratchasima
3322	population	181400
3323	id	3323
3323	name	Chiang Mai
3323	countrycode	THA
3323	district	Chiang Mai
3323	population	171100
3324	id	3324
3324	name	Udon Thani
3324	countrycode	THA
3324	district	Udon Thani
3324	population	158100
3325	id	3325
3325	name	Hat Yai
3325	countrycode	THA
3325	district	Songkhla
3325	population	148632
3326	id	3326
3326	name	Khon Kaen
3326	countrycode	THA
3326	district	Khon Kaen
3326	population	126500
3327	id	3327
3327	name	Pak Kret
3327	countrycode	THA
3327	district	Nonthaburi
3327	population	126055
3328	id	3328
3328	name	Nakhon Sawan
3328	countrycode	THA
3328	district	Nakhon Sawan
3328	population	123800
3329	id	3329
3329	name	Ubon Ratchathani
3329	countrycode	THA
3329	district	Ubon Ratchathani
3329	population	116300
3330	id	3330
3330	name	Songkhla
3330	countrycode	THA
3330	district	Songkhla
3330	population	94900
3331	id	3331
3331	name	Nakhon Pathom
3331	countrycode	THA
3331	district	Nakhon Pathom
3331	population	94100
3332	id	3332
3332	name	Lomé
3332	countrycode	TGO
3332	district	Maritime
3332	population	375000
3333	id	3333
3333	name	Fakaofo
3333	countrycode	TKL
3333	district	Fakaofo
3333	population	300
3334	id	3334
3334	name	Nuku´alofa
3334	countrycode	TON
3334	district	Tongatapu
3334	population	22400
3335	id	3335
3335	name	Chaguanas
3335	countrycode	TTO
3335	district	Caroni
3335	population	56601
3336	id	3336
3336	name	Port-of-Spain
3336	countrycode	TTO
3336	district	Port-of-Spain
3336	population	43396
3337	id	3337
3337	name	N´Djaména
3337	countrycode	TCD
3337	district	Chari-Baguirmi
3337	population	530965
3338	id	3338
3338	name	Moundou
3338	countrycode	TCD
3338	district	Logone Occidental
3338	population	99500
3339	id	3339
3339	name	Praha
3339	countrycode	CZE
3339	district	Hlavní mesto Praha
3339	population	1181126
3340	id	3340
3340	name	Brno
3340	countrycode	CZE
3340	district	Jizní Morava
3340	population	381862
3341	id	3341
3341	name	Ostrava
3341	countrycode	CZE
3341	district	Severní Morava
3341	population	320041
3342	id	3342
3342	name	Plzen
3342	countrycode	CZE
3342	district	Zapadní Cechy
3342	population	166759
3343	id	3343
3343	name	Olomouc
3343	countrycode	CZE
3343	district	Severní Morava
3343	population	102702
3344	id	3344
3344	name	Liberec
3344	countrycode	CZE
3344	district	Severní Cechy
3344	population	99155
3345	id	3345
3345	name	Ceské Budejovice
3345	countrycode	CZE
3345	district	Jizní Cechy
3345	population	98186
3346	id	3346
3346	name	Hradec Králové
3346	countrycode	CZE
3346	district	Východní Cechy
3346	population	98080
3347	id	3347
3347	name	Ústí nad Labem
3347	countrycode	CZE
3347	district	Severní Cechy
3347	population	95491
3348	id	3348
3348	name	Pardubice
3348	countrycode	CZE
3348	district	Východní Cechy
3348	population	91309
3349	id	3349
3349	name	Tunis
3349	countrycode	TUN
3349	district	Tunis
3349	population	690600
3350	id	3350
3350	name	Sfax
3350	countrycode	TUN
3350	district	Sfax
3350	population	257800
3351	id	3351
3351	name	Ariana
3351	countrycode	TUN
3351	district	Ariana
3351	population	197000
3352	id	3352
3352	name	Ettadhamen
3352	countrycode	TUN
3352	district	Ariana
3352	population	178600
3353	id	3353
3353	name	Sousse
3353	countrycode	TUN
3353	district	Sousse
3353	population	145900
3354	id	3354
3354	name	Kairouan
3354	countrycode	TUN
3354	district	Kairouan
3354	population	113100
3355	id	3355
3355	name	Biserta
3355	countrycode	TUN
3355	district	Biserta
3355	population	108900
3356	id	3356
3356	name	Gabès
3356	countrycode	TUN
3356	district	Gabès
3356	population	106600
3357	id	3357
3357	name	Istanbul
3357	countrycode	TUR
3357	district	Istanbul
3357	population	8787958
3358	id	3358
3358	name	Ankara
3358	countrycode	TUR
3358	district	Ankara
3358	population	3038159
3359	id	3359
3359	name	Izmir
3359	countrycode	TUR
3359	district	Izmir
3359	population	2130359
3360	id	3360
3360	name	Adana
3360	countrycode	TUR
3360	district	Adana
3360	population	1131198
3361	id	3361
3361	name	Bursa
3361	countrycode	TUR
3361	district	Bursa
3361	population	1095842
3362	id	3362
3362	name	Gaziantep
3362	countrycode	TUR
3362	district	Gaziantep
3362	population	789056
3363	id	3363
3363	name	Konya
3363	countrycode	TUR
3363	district	Konya
3363	population	628364
3364	id	3364
3364	name	Mersin (Içel)
3364	countrycode	TUR
3364	district	Içel
3364	population	587212
3365	id	3365
3365	name	Antalya
3365	countrycode	TUR
3365	district	Antalya
3365	population	564914
3366	id	3366
3366	name	Diyarbakir
3366	countrycode	TUR
3366	district	Diyarbakir
3366	population	479884
3367	id	3367
3367	name	Kayseri
3367	countrycode	TUR
3367	district	Kayseri
3367	population	475657
3368	id	3368
3368	name	Eskisehir
3368	countrycode	TUR
3368	district	Eskisehir
3368	population	470781
3369	id	3369
3369	name	Sanliurfa
3369	countrycode	TUR
3369	district	Sanliurfa
3369	population	405905
3370	id	3370
3370	name	Samsun
3370	countrycode	TUR
3370	district	Samsun
3370	population	339871
3371	id	3371
3371	name	Malatya
3371	countrycode	TUR
3371	district	Malatya
3371	population	330312
3372	id	3372
3372	name	Gebze
3372	countrycode	TUR
3372	district	Kocaeli
3372	population	264170
3373	id	3373
3373	name	Denizli
3373	countrycode	TUR
3373	district	Denizli
3373	population	253848
3374	id	3374
3374	name	Sivas
3374	countrycode	TUR
3374	district	Sivas
3374	population	246642
3375	id	3375
3375	name	Erzurum
3375	countrycode	TUR
3375	district	Erzurum
3375	population	246535
3376	id	3376
3376	name	Tarsus
3376	countrycode	TUR
3376	district	Adana
3376	population	246206
3377	id	3377
3377	name	Kahramanmaras
3377	countrycode	TUR
3377	district	Kahramanmaras
3377	population	245772
3378	id	3378
3378	name	Elâzig
3378	countrycode	TUR
3378	district	Elâzig
3378	population	228815
3379	id	3379
3379	name	Van
3379	countrycode	TUR
3379	district	Van
3379	population	219319
3380	id	3380
3380	name	Sultanbeyli
3380	countrycode	TUR
3380	district	Istanbul
3380	population	211068
3381	id	3381
3381	name	Izmit (Kocaeli)
3381	countrycode	TUR
3381	district	Kocaeli
3381	population	210068
3382	id	3382
3382	name	Manisa
3382	countrycode	TUR
3382	district	Manisa
3382	population	207148
3383	id	3383
3383	name	Batman
3383	countrycode	TUR
3383	district	Batman
3383	population	203793
3384	id	3384
3384	name	Balikesir
3384	countrycode	TUR
3384	district	Balikesir
3384	population	196382
3385	id	3385
3385	name	Sakarya (Adapazari)
3385	countrycode	TUR
3385	district	Sakarya
3385	population	190641
3386	id	3386
3386	name	Iskenderun
3386	countrycode	TUR
3386	district	Hatay
3386	population	153022
3387	id	3387
3387	name	Osmaniye
3387	countrycode	TUR
3387	district	Osmaniye
3387	population	146003
3388	id	3388
3388	name	Çorum
3388	countrycode	TUR
3388	district	Çorum
3388	population	145495
3389	id	3389
3389	name	Kütahya
3389	countrycode	TUR
3389	district	Kütahya
3389	population	144761
3390	id	3390
3390	name	Hatay (Antakya)
3390	countrycode	TUR
3390	district	Hatay
3390	population	143982
3391	id	3391
3391	name	Kirikkale
3391	countrycode	TUR
3391	district	Kirikkale
3391	population	142044
3392	id	3392
3392	name	Adiyaman
3392	countrycode	TUR
3392	district	Adiyaman
3392	population	141529
3393	id	3393
3393	name	Trabzon
3393	countrycode	TUR
3393	district	Trabzon
3393	population	138234
3394	id	3394
3394	name	Ordu
3394	countrycode	TUR
3394	district	Ordu
3394	population	133642
3395	id	3395
3395	name	Aydin
3395	countrycode	TUR
3395	district	Aydin
3395	population	128651
3396	id	3396
3396	name	Usak
3396	countrycode	TUR
3396	district	Usak
3396	population	128162
3397	id	3397
3397	name	Edirne
3397	countrycode	TUR
3397	district	Edirne
3397	population	123383
3398	id	3398
3398	name	Çorlu
3398	countrycode	TUR
3398	district	Tekirdag
3398	population	123300
3399	id	3399
3399	name	Isparta
3399	countrycode	TUR
3399	district	Isparta
3399	population	121911
3400	id	3400
3400	name	Karabük
3400	countrycode	TUR
3400	district	Karabük
3400	population	118285
3401	id	3401
3401	name	Kilis
3401	countrycode	TUR
3401	district	Kilis
3401	population	118245
3402	id	3402
3402	name	Alanya
3402	countrycode	TUR
3402	district	Antalya
3402	population	117300
3403	id	3403
3403	name	Kiziltepe
3403	countrycode	TUR
3403	district	Mardin
3403	population	112000
3404	id	3404
3404	name	Zonguldak
3404	countrycode	TUR
3404	district	Zonguldak
3404	population	111542
3405	id	3405
3405	name	Siirt
3405	countrycode	TUR
3405	district	Siirt
3405	population	107100
3406	id	3406
3406	name	Viransehir
3406	countrycode	TUR
3406	district	Sanliurfa
3406	population	106400
3407	id	3407
3407	name	Tekirdag
3407	countrycode	TUR
3407	district	Tekirdag
3407	population	106077
3408	id	3408
3408	name	Karaman
3408	countrycode	TUR
3408	district	Karaman
3408	population	104200
3409	id	3409
3409	name	Afyon
3409	countrycode	TUR
3409	district	Afyon
3409	population	103984
3410	id	3410
3410	name	Aksaray
3410	countrycode	TUR
3410	district	Aksaray
3410	population	102681
3411	id	3411
3411	name	Ceyhan
3411	countrycode	TUR
3411	district	Adana
3411	population	102412
3412	id	3412
3412	name	Erzincan
3412	countrycode	TUR
3412	district	Erzincan
3412	population	102304
3413	id	3413
3413	name	Bismil
3413	countrycode	TUR
3413	district	Diyarbakir
3413	population	101400
3414	id	3414
3414	name	Nazilli
3414	countrycode	TUR
3414	district	Aydin
3414	population	99900
3415	id	3415
3415	name	Tokat
3415	countrycode	TUR
3415	district	Tokat
3415	population	99500
3416	id	3416
3416	name	Kars
3416	countrycode	TUR
3416	district	Kars
3416	population	93000
3417	id	3417
3417	name	Inegöl
3417	countrycode	TUR
3417	district	Bursa
3417	population	90500
3418	id	3418
3418	name	Bandirma
3418	countrycode	TUR
3418	district	Balikesir
3418	population	90200
3419	id	3419
3419	name	Ashgabat
3419	countrycode	TKM
3419	district	Ahal
3419	population	540600
3420	id	3420
3420	name	Chärjew
3420	countrycode	TKM
3420	district	Lebap
3420	population	189200
3421	id	3421
3421	name	Dashhowuz
3421	countrycode	TKM
3421	district	Dashhowuz
3421	population	141800
3422	id	3422
3422	name	Mary
3422	countrycode	TKM
3422	district	Mary
3422	population	101000
3423	id	3423
3423	name	Cockburn Town
3423	countrycode	TCA
3423	district	Grand Turk
3423	population	4800
3424	id	3424
3424	name	Funafuti
3424	countrycode	TUV
3424	district	Funafuti
3424	population	4600
3425	id	3425
3425	name	Kampala
3425	countrycode	UGA
3425	district	Central
3425	population	890800
3426	id	3426
3426	name	Kyiv
3426	countrycode	UKR
3426	district	Kiova
3426	population	2624000
3427	id	3427
3427	name	Harkova [Harkiv]
3427	countrycode	UKR
3427	district	Harkova
3427	population	1500000
3428	id	3428
3428	name	Dnipropetrovsk
3428	countrycode	UKR
3428	district	Dnipropetrovsk
3428	population	1103000
3429	id	3429
3429	name	Donetsk
3429	countrycode	UKR
3429	district	Donetsk
3429	population	1050000
3430	id	3430
3430	name	Odesa
3430	countrycode	UKR
3430	district	Odesa
3430	population	1011000
3431	id	3431
3431	name	Zaporizzja
3431	countrycode	UKR
3431	district	Zaporizzja
3431	population	848000
3432	id	3432
3432	name	Lviv
3432	countrycode	UKR
3432	district	Lviv
3432	population	788000
3433	id	3433
3433	name	Kryvyi Rig
3433	countrycode	UKR
3433	district	Dnipropetrovsk
3433	population	703000
3434	id	3434
3434	name	Mykolajiv
3434	countrycode	UKR
3434	district	Mykolajiv
3434	population	508000
3435	id	3435
3435	name	Mariupol
3435	countrycode	UKR
3435	district	Donetsk
3435	population	490000
3436	id	3436
3436	name	Lugansk
3436	countrycode	UKR
3436	district	Lugansk
3436	population	469000
3437	id	3437
3437	name	Vinnytsja
3437	countrycode	UKR
3437	district	Vinnytsja
3437	population	391000
3438	id	3438
3438	name	Makijivka
3438	countrycode	UKR
3438	district	Donetsk
3438	population	384000
3439	id	3439
3439	name	Herson
3439	countrycode	UKR
3439	district	Herson
3439	population	353000
3440	id	3440
3440	name	Sevastopol
3440	countrycode	UKR
3440	district	Krim
3440	population	348000
3441	id	3441
3441	name	Simferopol
3441	countrycode	UKR
3441	district	Krim
3441	population	339000
3442	id	3442
3442	name	Pultava [Poltava]
3442	countrycode	UKR
3442	district	Pultava
3442	population	313000
3443	id	3443
3443	name	Ternigiv
3443	countrycode	UKR
3443	district	Ternigiv
3443	population	313000
3444	id	3444
3444	name	Terkasy
3444	countrycode	UKR
3444	district	Terkasy
3444	population	309000
3445	id	3445
3445	name	Gorlivka
3445	countrycode	UKR
3445	district	Donetsk
3445	population	299000
3446	id	3446
3446	name	Zytomyr
3446	countrycode	UKR
3446	district	Zytomyr
3446	population	297000
3447	id	3447
3447	name	Sumy
3447	countrycode	UKR
3447	district	Sumy
3447	population	294000
3448	id	3448
3448	name	Dniprodzerzynsk
3448	countrycode	UKR
3448	district	Dnipropetrovsk
3448	population	270000
3449	id	3449
3449	name	Kirovograd
3449	countrycode	UKR
3449	district	Kirovograd
3449	population	265000
3450	id	3450
3450	name	Hmelnytskyi
3450	countrycode	UKR
3450	district	Hmelnytskyi
3450	population	262000
3451	id	3451
3451	name	Ternivtsi
3451	countrycode	UKR
3451	district	Ternivtsi
3451	population	259000
3452	id	3452
3452	name	Rivne
3452	countrycode	UKR
3452	district	Rivne
3452	population	245000
3453	id	3453
3453	name	Krementuk
3453	countrycode	UKR
3453	district	Pultava
3453	population	239000
3454	id	3454
3454	name	Ivano-Frankivsk
3454	countrycode	UKR
3454	district	Ivano-Frankivsk
3454	population	237000
3455	id	3455
3455	name	Ternopil
3455	countrycode	UKR
3455	district	Ternopil
3455	population	236000
3456	id	3456
3456	name	Lutsk
3456	countrycode	UKR
3456	district	Volynia
3456	population	217000
3457	id	3457
3457	name	Bila Tserkva
3457	countrycode	UKR
3457	district	Kiova
3457	population	215000
3458	id	3458
3458	name	Kramatorsk
3458	countrycode	UKR
3458	district	Donetsk
3458	population	186000
3459	id	3459
3459	name	Melitopol
3459	countrycode	UKR
3459	district	Zaporizzja
3459	population	169000
3460	id	3460
3460	name	Kert
3460	countrycode	UKR
3460	district	Krim
3460	population	162000
3461	id	3461
3461	name	Nikopol
3461	countrycode	UKR
3461	district	Dnipropetrovsk
3461	population	149000
3462	id	3462
3462	name	Berdjansk
3462	countrycode	UKR
3462	district	Zaporizzja
3462	population	130000
3463	id	3463
3463	name	Pavlograd
3463	countrycode	UKR
3463	district	Dnipropetrovsk
3463	population	127000
3464	id	3464
3464	name	Sjeverodonetsk
3464	countrycode	UKR
3464	district	Lugansk
3464	population	127000
3465	id	3465
3465	name	Slovjansk
3465	countrycode	UKR
3465	district	Donetsk
3465	population	127000
3466	id	3466
3466	name	Uzgorod
3466	countrycode	UKR
3466	district	Taka-Karpatia
3466	population	127000
3467	id	3467
3467	name	Altevsk
3467	countrycode	UKR
3467	district	Lugansk
3467	population	119000
3468	id	3468
3468	name	Lysytansk
3468	countrycode	UKR
3468	district	Lugansk
3468	population	116000
3469	id	3469
3469	name	Jevpatorija
3469	countrycode	UKR
3469	district	Krim
3469	population	112000
3470	id	3470
3470	name	Kamjanets-Podilskyi
3470	countrycode	UKR
3470	district	Hmelnytskyi
3470	population	109000
3471	id	3471
3471	name	Jenakijeve
3471	countrycode	UKR
3471	district	Donetsk
3471	population	105000
3472	id	3472
3472	name	Krasnyi Lut
3472	countrycode	UKR
3472	district	Lugansk
3472	population	101000
3473	id	3473
3473	name	Stahanov
3473	countrycode	UKR
3473	district	Lugansk
3473	population	101000
3474	id	3474
3474	name	Oleksandrija
3474	countrycode	UKR
3474	district	Kirovograd
3474	population	99000
3475	id	3475
3475	name	Konotop
3475	countrycode	UKR
3475	district	Sumy
3475	population	96000
3476	id	3476
3476	name	Kostjantynivka
3476	countrycode	UKR
3476	district	Donetsk
3476	population	95000
3477	id	3477
3477	name	Berdytiv
3477	countrycode	UKR
3477	district	Zytomyr
3477	population	90000
3478	id	3478
3478	name	Izmajil
3478	countrycode	UKR
3478	district	Odesa
3478	population	90000
3479	id	3479
3479	name	ostka
3479	countrycode	UKR
3479	district	Sumy
3479	population	90000
3480	id	3480
3480	name	Uman
3480	countrycode	UKR
3480	district	Terkasy
3480	population	90000
3481	id	3481
3481	name	Brovary
3481	countrycode	UKR
3481	district	Kiova
3481	population	89000
3482	id	3482
3482	name	Mukateve
3482	countrycode	UKR
3482	district	Taka-Karpatia
3482	population	89000
3483	id	3483
3483	name	Budapest
3483	countrycode	HUN
3483	district	Budapest
3483	population	1811552
3484	id	3484
3484	name	Debrecen
3484	countrycode	HUN
3484	district	Hajdú-Bihar
3484	population	203648
3485	id	3485
3485	name	Miskolc
3485	countrycode	HUN
3485	district	Borsod-Abaúj-Zemplén
3485	population	172357
3486	id	3486
3486	name	Szeged
3486	countrycode	HUN
3486	district	Csongrád
3486	population	158158
3487	id	3487
3487	name	Pécs
3487	countrycode	HUN
3487	district	Baranya
3487	population	157332
3488	id	3488
3488	name	Györ
3488	countrycode	HUN
3488	district	Györ-Moson-Sopron
3488	population	127119
3489	id	3489
3489	name	Nyiregyháza
3489	countrycode	HUN
3489	district	Szabolcs-Szatmár-Ber
3489	population	112419
3490	id	3490
3490	name	Kecskemét
3490	countrycode	HUN
3490	district	Bács-Kiskun
3490	population	105606
3491	id	3491
3491	name	Székesfehérvár
3491	countrycode	HUN
3491	district	Fejér
3491	population	105119
3492	id	3492
3492	name	Montevideo
3492	countrycode	URY
3492	district	Montevideo
3492	population	1236000
3493	id	3493
3493	name	Nouméa
3493	countrycode	NCL
3493	district	
3493	population	76293
3494	id	3494
3494	name	Auckland
3494	countrycode	NZL
3494	district	Auckland
3494	population	381800
3495	id	3495
3495	name	Christchurch
3495	countrycode	NZL
3495	district	Canterbury
3495	population	324200
3496	id	3496
3496	name	Manukau
3496	countrycode	NZL
3496	district	Auckland
3496	population	281800
3497	id	3497
3497	name	North Shore
3497	countrycode	NZL
3497	district	Auckland
3497	population	187700
3498	id	3498
3498	name	Waitakere
3498	countrycode	NZL
3498	district	Auckland
3498	population	170600
3499	id	3499
3499	name	Wellington
3499	countrycode	NZL
3499	district	Wellington
3499	population	166700
3500	id	3500
3500	name	Dunedin
3500	countrycode	NZL
3500	district	Dunedin
3500	population	119600
3501	id	3501
3501	name	Hamilton
3501	countrycode	NZL
3501	district	Hamilton
3501	population	117100
3502	id	3502
3502	name	Lower Hutt
3502	countrycode	NZL
3502	district	Wellington
3502	population	98100
3503	id	3503
3503	name	Toskent
3503	countrycode	UZB
3503	district	Toskent Shahri
3503	population	2117500
3504	id	3504
3504	name	Namangan
3504	countrycode	UZB
3504	district	Namangan
3504	population	370500
3505	id	3505
3505	name	Samarkand
3505	countrycode	UZB
3505	district	Samarkand
3505	population	361800
3506	id	3506
3506	name	Andijon
3506	countrycode	UZB
3506	district	Andijon
3506	population	318600
3507	id	3507
3507	name	Buhoro
3507	countrycode	UZB
3507	district	Buhoro
3507	population	237100
3508	id	3508
3508	name	Karsi
3508	countrycode	UZB
3508	district	Qashqadaryo
3508	population	194100
3509	id	3509
3509	name	Nukus
3509	countrycode	UZB
3509	district	Karakalpakistan
3509	population	194100
3510	id	3510
3510	name	Kükon
3510	countrycode	UZB
3510	district	Fargona
3510	population	190100
3511	id	3511
3511	name	Fargona
3511	countrycode	UZB
3511	district	Fargona
3511	population	180500
3512	id	3512
3512	name	Circik
3512	countrycode	UZB
3512	district	Toskent
3512	population	146400
3513	id	3513
3513	name	Margilon
3513	countrycode	UZB
3513	district	Fargona
3513	population	140800
3514	id	3514
3514	name	Ürgenc
3514	countrycode	UZB
3514	district	Khorazm
3514	population	138900
3515	id	3515
3515	name	Angren
3515	countrycode	UZB
3515	district	Toskent
3515	population	128000
3516	id	3516
3516	name	Cizah
3516	countrycode	UZB
3516	district	Cizah
3516	population	124800
3517	id	3517
3517	name	Navoi
3517	countrycode	UZB
3517	district	Navoi
3517	population	116300
3518	id	3518
3518	name	Olmalik
3518	countrycode	UZB
3518	district	Toskent
3518	population	114900
3519	id	3519
3519	name	Termiz
3519	countrycode	UZB
3519	district	Surkhondaryo
3519	population	109500
3520	id	3520
3520	name	Minsk
3520	countrycode	BLR
3520	district	Horad Minsk
3520	population	1674000
3521	id	3521
3521	name	Gomel
3521	countrycode	BLR
3521	district	Gomel
3521	population	475000
3522	id	3522
3522	name	Mogiljov
3522	countrycode	BLR
3522	district	Mogiljov
3522	population	356000
3523	id	3523
3523	name	Vitebsk
3523	countrycode	BLR
3523	district	Vitebsk
3523	population	340000
3524	id	3524
3524	name	Grodno
3524	countrycode	BLR
3524	district	Grodno
3524	population	302000
3525	id	3525
3525	name	Brest
3525	countrycode	BLR
3525	district	Brest
3525	population	286000
3526	id	3526
3526	name	Bobruisk
3526	countrycode	BLR
3526	district	Mogiljov
3526	population	221000
3527	id	3527
3527	name	Baranoviti
3527	countrycode	BLR
3527	district	Brest
3527	population	167000
3528	id	3528
3528	name	Borisov
3528	countrycode	BLR
3528	district	Minsk
3528	population	151000
3529	id	3529
3529	name	Pinsk
3529	countrycode	BLR
3529	district	Brest
3529	population	130000
3530	id	3530
3530	name	Ora
3530	countrycode	BLR
3530	district	Vitebsk
3530	population	124000
3531	id	3531
3531	name	Mozyr
3531	countrycode	BLR
3531	district	Gomel
3531	population	110000
3532	id	3532
3532	name	Novopolotsk
3532	countrycode	BLR
3532	district	Vitebsk
3532	population	106000
3533	id	3533
3533	name	Lida
3533	countrycode	BLR
3533	district	Grodno
3533	population	101000
3534	id	3534
3534	name	Soligorsk
3534	countrycode	BLR
3534	district	Minsk
3534	population	101000
3535	id	3535
3535	name	Molodetno
3535	countrycode	BLR
3535	district	Minsk
3535	population	97000
3536	id	3536
3536	name	Mata-Utu
3536	countrycode	WLF
3536	district	Wallis
3536	population	1137
3537	id	3537
3537	name	Port-Vila
3537	countrycode	VUT
3537	district	Shefa
3537	population	33700
3538	id	3538
3538	name	Città del Vaticano
3538	countrycode	VAT
3538	district	
3538	population	455
3539	id	3539
3539	name	Caracas
3539	countrycode	VEN
3539	district	Distrito Federal
3539	population	1975294
3540	id	3540
3540	name	Maracaíbo
3540	countrycode	VEN
3540	district	Zulia
3540	population	1304776
3541	id	3541
3541	name	Barquisimeto
3541	countrycode	VEN
3541	district	Lara
3541	population	877239
3542	id	3542
3542	name	Valencia
3542	countrycode	VEN
3542	district	Carabobo
3542	population	794246
3543	id	3543
3543	name	Ciudad Guayana
3543	countrycode	VEN
3543	district	Bolívar
3543	population	663713
3544	id	3544
3544	name	Petare
3544	countrycode	VEN
3544	district	Miranda
3544	population	488868
3545	id	3545
3545	name	Maracay
3545	countrycode	VEN
3545	district	Aragua
3545	population	444443
3546	id	3546
3546	name	Barcelona
3546	countrycode	VEN
3546	district	Anzoátegui
3546	population	322267
3547	id	3547
3547	name	Maturín
3547	countrycode	VEN
3547	district	Monagas
3547	population	319726
3548	id	3548
3548	name	San Cristóbal
3548	countrycode	VEN
3548	district	Táchira
3548	population	319373
3549	id	3549
3549	name	Ciudad Bolívar
3549	countrycode	VEN
3549	district	Bolívar
3549	population	301107
3550	id	3550
3550	name	Cumaná
3550	countrycode	VEN
3550	district	Sucre
3550	population	293105
3551	id	3551
3551	name	Mérida
3551	countrycode	VEN
3551	district	Mérida
3551	population	224887
3552	id	3552
3552	name	Cabimas
3552	countrycode	VEN
3552	district	Zulia
3552	population	221329
3553	id	3553
3553	name	Barinas
3553	countrycode	VEN
3553	district	Barinas
3553	population	217831
3554	id	3554
3554	name	Turmero
3554	countrycode	VEN
3554	district	Aragua
3554	population	217499
3555	id	3555
3555	name	Baruta
3555	countrycode	VEN
3555	district	Miranda
3555	population	207290
3556	id	3556
3556	name	Puerto Cabello
3556	countrycode	VEN
3556	district	Carabobo
3556	population	187722
3557	id	3557
3557	name	Santa Ana de Coro
3557	countrycode	VEN
3557	district	Falcón
3557	population	185766
3558	id	3558
3558	name	Los Teques
3558	countrycode	VEN
3558	district	Miranda
3558	population	178784
3559	id	3559
3559	name	Punto Fijo
3559	countrycode	VEN
3559	district	Falcón
3559	population	167215
3560	id	3560
3560	name	Guarenas
3560	countrycode	VEN
3560	district	Miranda
3560	population	165889
3561	id	3561
3561	name	Acarigua
3561	countrycode	VEN
3561	district	Portuguesa
3561	population	158954
3562	id	3562
3562	name	Puerto La Cruz
3562	countrycode	VEN
3562	district	Anzoátegui
3562	population	155700
3563	id	3563
3563	name	Ciudad Losada
3563	countrycode	VEN
3563	district	
3563	population	134501
3564	id	3564
3564	name	Guacara
3564	countrycode	VEN
3564	district	Carabobo
3564	population	131334
3565	id	3565
3565	name	Valera
3565	countrycode	VEN
3565	district	Trujillo
3565	population	130281
3566	id	3566
3566	name	Guanare
3566	countrycode	VEN
3566	district	Portuguesa
3566	population	125621
3567	id	3567
3567	name	Carúpano
3567	countrycode	VEN
3567	district	Sucre
3567	population	119639
3568	id	3568
3568	name	Catia La Mar
3568	countrycode	VEN
3568	district	Distrito Federal
3568	population	117012
3569	id	3569
3569	name	El Tigre
3569	countrycode	VEN
3569	district	Anzoátegui
3569	population	116256
3570	id	3570
3570	name	Guatire
3570	countrycode	VEN
3570	district	Miranda
3570	population	109121
3571	id	3571
3571	name	Calabozo
3571	countrycode	VEN
3571	district	Guárico
3571	population	107146
3572	id	3572
3572	name	Pozuelos
3572	countrycode	VEN
3572	district	Anzoátegui
3572	population	105690
3573	id	3573
3573	name	Ciudad Ojeda
3573	countrycode	VEN
3573	district	Zulia
3573	population	99354
3574	id	3574
3574	name	Ocumare del Tuy
3574	countrycode	VEN
3574	district	Miranda
3574	population	97168
3575	id	3575
3575	name	Valle de la Pascua
3575	countrycode	VEN
3575	district	Guárico
3575	population	95927
3576	id	3576
3576	name	Araure
3576	countrycode	VEN
3576	district	Portuguesa
3576	population	94269
3577	id	3577
3577	name	San Fernando de Apure
3577	countrycode	VEN
3577	district	Apure
3577	population	93809
3578	id	3578
3578	name	San Felipe
3578	countrycode	VEN
3578	district	Yaracuy
3578	population	90940
3579	id	3579
3579	name	El Limón
3579	countrycode	VEN
3579	district	Aragua
3579	population	90000
3580	id	3580
3580	name	Moscow
3580	countrycode	RUS
3580	district	Moscow (City)
3580	population	8389200
3581	id	3581
3581	name	St Petersburg
3581	countrycode	RUS
3581	district	Pietari
3581	population	4694000
3582	id	3582
3582	name	Novosibirsk
3582	countrycode	RUS
3582	district	Novosibirsk
3582	population	1398800
3583	id	3583
3583	name	Nizni Novgorod
3583	countrycode	RUS
3583	district	Nizni Novgorod
3583	population	1357000
3584	id	3584
3584	name	Jekaterinburg
3584	countrycode	RUS
3584	district	Sverdlovsk
3584	population	1266300
3585	id	3585
3585	name	Samara
3585	countrycode	RUS
3585	district	Samara
3585	population	1156100
3586	id	3586
3586	name	Omsk
3586	countrycode	RUS
3586	district	Omsk
3586	population	1148900
3587	id	3587
3587	name	Kazan
3587	countrycode	RUS
3587	district	Tatarstan
3587	population	1101000
3588	id	3588
3588	name	Ufa
3588	countrycode	RUS
3588	district	Bakortostan
3588	population	1091200
3589	id	3589
3589	name	Teljabinsk
3589	countrycode	RUS
3589	district	Teljabinsk
3589	population	1083200
3590	id	3590
3590	name	Rostov-na-Donu
3590	countrycode	RUS
3590	district	Rostov-na-Donu
3590	population	1012700
3591	id	3591
3591	name	Perm
3591	countrycode	RUS
3591	district	Perm
3591	population	1009700
3592	id	3592
3592	name	Volgograd
3592	countrycode	RUS
3592	district	Volgograd
3592	population	993400
3593	id	3593
3593	name	Voronez
3593	countrycode	RUS
3593	district	Voronez
3593	population	907700
3594	id	3594
3594	name	Krasnojarsk
3594	countrycode	RUS
3594	district	Krasnojarsk
3594	population	875500
3595	id	3595
3595	name	Saratov
3595	countrycode	RUS
3595	district	Saratov
3595	population	874000
3596	id	3596
3596	name	Toljatti
3596	countrycode	RUS
3596	district	Samara
3596	population	722900
3597	id	3597
3597	name	Uljanovsk
3597	countrycode	RUS
3597	district	Uljanovsk
3597	population	667400
3598	id	3598
3598	name	Izevsk
3598	countrycode	RUS
3598	district	Udmurtia
3598	population	652800
3599	id	3599
3599	name	Krasnodar
3599	countrycode	RUS
3599	district	Krasnodar
3599	population	639000
3600	id	3600
3600	name	Jaroslavl
3600	countrycode	RUS
3600	district	Jaroslavl
3600	population	616700
3601	id	3601
3601	name	Habarovsk
3601	countrycode	RUS
3601	district	Habarovsk
3601	population	609400
3602	id	3602
3602	name	Vladivostok
3602	countrycode	RUS
3602	district	Primorje
3602	population	606200
3603	id	3603
3603	name	Irkutsk
3603	countrycode	RUS
3603	district	Irkutsk
3603	population	593700
3604	id	3604
3604	name	Barnaul
3604	countrycode	RUS
3604	district	Altai
3604	population	580100
3605	id	3605
3605	name	Novokuznetsk
3605	countrycode	RUS
3605	district	Kemerovo
3605	population	561600
3606	id	3606
3606	name	Penza
3606	countrycode	RUS
3606	district	Penza
3606	population	532200
3607	id	3607
3607	name	Rjazan
3607	countrycode	RUS
3607	district	Rjazan
3607	population	529900
3608	id	3608
3608	name	Orenburg
3608	countrycode	RUS
3608	district	Orenburg
3608	population	523600
3609	id	3609
3609	name	Lipetsk
3609	countrycode	RUS
3609	district	Lipetsk
3609	population	521000
3610	id	3610
3610	name	Nabereznyje Telny
3610	countrycode	RUS
3610	district	Tatarstan
3610	population	514700
3611	id	3611
3611	name	Tula
3611	countrycode	RUS
3611	district	Tula
3611	population	506100
3612	id	3612
3612	name	Tjumen
3612	countrycode	RUS
3612	district	Tjumen
3612	population	503400
3613	id	3613
3613	name	Kemerovo
3613	countrycode	RUS
3613	district	Kemerovo
3613	population	492700
3614	id	3614
3614	name	Astrahan
3614	countrycode	RUS
3614	district	Astrahan
3614	population	486100
3615	id	3615
3615	name	Tomsk
3615	countrycode	RUS
3615	district	Tomsk
3615	population	482100
3616	id	3616
3616	name	Kirov
3616	countrycode	RUS
3616	district	Kirov
3616	population	466200
3617	id	3617
3617	name	Ivanovo
3617	countrycode	RUS
3617	district	Ivanovo
3617	population	459200
3618	id	3618
3618	name	Teboksary
3618	countrycode	RUS
3618	district	Tuvassia
3618	population	459200
3619	id	3619
3619	name	Brjansk
3619	countrycode	RUS
3619	district	Brjansk
3619	population	457400
3620	id	3620
3620	name	Tver
3620	countrycode	RUS
3620	district	Tver
3620	population	454900
3621	id	3621
3621	name	Kursk
3621	countrycode	RUS
3621	district	Kursk
3621	population	443500
3622	id	3622
3622	name	Magnitogorsk
3622	countrycode	RUS
3622	district	Teljabinsk
3622	population	427900
3623	id	3623
3623	name	Kaliningrad
3623	countrycode	RUS
3623	district	Kaliningrad
3623	population	424400
3624	id	3624
3624	name	Nizni Tagil
3624	countrycode	RUS
3624	district	Sverdlovsk
3624	population	390900
3625	id	3625
3625	name	Murmansk
3625	countrycode	RUS
3625	district	Murmansk
3625	population	376300
3626	id	3626
3626	name	Ulan-Ude
3626	countrycode	RUS
3626	district	Burjatia
3626	population	370400
3627	id	3627
3627	name	Kurgan
3627	countrycode	RUS
3627	district	Kurgan
3627	population	364700
3628	id	3628
3628	name	Arkangeli
3628	countrycode	RUS
3628	district	Arkangeli
3628	population	361800
3629	id	3629
3629	name	Soti
3629	countrycode	RUS
3629	district	Krasnodar
3629	population	358600
3630	id	3630
3630	name	Smolensk
3630	countrycode	RUS
3630	district	Smolensk
3630	population	353400
3631	id	3631
3631	name	Orjol
3631	countrycode	RUS
3631	district	Orjol
3631	population	344500
3632	id	3632
3632	name	Stavropol
3632	countrycode	RUS
3632	district	Stavropol
3632	population	343300
3633	id	3633
3633	name	Belgorod
3633	countrycode	RUS
3633	district	Belgorod
3633	population	342000
3634	id	3634
3634	name	Kaluga
3634	countrycode	RUS
3634	district	Kaluga
3634	population	339300
3635	id	3635
3635	name	Vladimir
3635	countrycode	RUS
3635	district	Vladimir
3635	population	337100
3636	id	3636
3636	name	Mahatkala
3636	countrycode	RUS
3636	district	Dagestan
3636	population	332800
3637	id	3637
3637	name	Terepovets
3637	countrycode	RUS
3637	district	Vologda
3637	population	324400
3638	id	3638
3638	name	Saransk
3638	countrycode	RUS
3638	district	Mordva
3638	population	314800
3639	id	3639
3639	name	Tambov
3639	countrycode	RUS
3639	district	Tambov
3639	population	312000
3640	id	3640
3640	name	Vladikavkaz
3640	countrycode	RUS
3640	district	North Ossetia-Alania
3640	population	310100
3641	id	3641
3641	name	Tita
3641	countrycode	RUS
3641	district	Tita
3641	population	309900
3642	id	3642
3642	name	Vologda
3642	countrycode	RUS
3642	district	Vologda
3642	population	302500
3643	id	3643
3643	name	Veliki Novgorod
3643	countrycode	RUS
3643	district	Novgorod
3643	population	299500
3644	id	3644
3644	name	Komsomolsk-na-Amure
3644	countrycode	RUS
3644	district	Habarovsk
3644	population	291600
3645	id	3645
3645	name	Kostroma
3645	countrycode	RUS
3645	district	Kostroma
3645	population	288100
3646	id	3646
3646	name	Volzski
3646	countrycode	RUS
3646	district	Volgograd
3646	population	286900
3647	id	3647
3647	name	Taganrog
3647	countrycode	RUS
3647	district	Rostov-na-Donu
3647	population	284400
3648	id	3648
3648	name	Petroskoi
3648	countrycode	RUS
3648	district	Karjala
3648	population	282100
3649	id	3649
3649	name	Bratsk
3649	countrycode	RUS
3649	district	Irkutsk
3649	population	277600
3650	id	3650
3650	name	Dzerzinsk
3650	countrycode	RUS
3650	district	Nizni Novgorod
3650	population	277100
3651	id	3651
3651	name	Surgut
3651	countrycode	RUS
3651	district	Hanti-Mansia
3651	population	274900
3652	id	3652
3652	name	Orsk
3652	countrycode	RUS
3652	district	Orenburg
3652	population	273900
3653	id	3653
3653	name	Sterlitamak
3653	countrycode	RUS
3653	district	Bakortostan
3653	population	265200
3654	id	3654
3654	name	Angarsk
3654	countrycode	RUS
3654	district	Irkutsk
3654	population	264700
3655	id	3655
3655	name	Jokar-Ola
3655	countrycode	RUS
3655	district	Marinmaa
3655	population	249200
3656	id	3656
3656	name	Rybinsk
3656	countrycode	RUS
3656	district	Jaroslavl
3656	population	239600
3657	id	3657
3657	name	Prokopjevsk
3657	countrycode	RUS
3657	district	Kemerovo
3657	population	237300
3658	id	3658
3658	name	Niznevartovsk
3658	countrycode	RUS
3658	district	Hanti-Mansia
3658	population	233900
3659	id	3659
3659	name	Naltik
3659	countrycode	RUS
3659	district	Kabardi-Balkaria
3659	population	233400
3660	id	3660
3660	name	Syktyvkar
3660	countrycode	RUS
3660	district	Komi
3660	population	229700
3661	id	3661
3661	name	Severodvinsk
3661	countrycode	RUS
3661	district	Arkangeli
3661	population	229300
3662	id	3662
3662	name	Bijsk
3662	countrycode	RUS
3662	district	Altai
3662	population	225000
3663	id	3663
3663	name	Niznekamsk
3663	countrycode	RUS
3663	district	Tatarstan
3663	population	223400
3664	id	3664
3664	name	Blagovetensk
3664	countrycode	RUS
3664	district	Amur
3664	population	222000
3665	id	3665
3665	name	ahty
3665	countrycode	RUS
3665	district	Rostov-na-Donu
3665	population	221800
3666	id	3666
3666	name	Staryi Oskol
3666	countrycode	RUS
3666	district	Belgorod
3666	population	213800
3667	id	3667
3667	name	Zelenograd
3667	countrycode	RUS
3667	district	Moscow (City)
3667	population	207100
3668	id	3668
3668	name	Balakovo
3668	countrycode	RUS
3668	district	Saratov
3668	population	206000
3669	id	3669
3669	name	Novorossijsk
3669	countrycode	RUS
3669	district	Krasnodar
3669	population	203300
3670	id	3670
3670	name	Pihkova
3670	countrycode	RUS
3670	district	Pihkova
3670	population	201500
3671	id	3671
3671	name	Zlatoust
3671	countrycode	RUS
3671	district	Teljabinsk
3671	population	196900
3672	id	3672
3672	name	Jakutsk
3672	countrycode	RUS
3672	district	Saha (Jakutia)
3672	population	195400
3673	id	3673
3673	name	Podolsk
3673	countrycode	RUS
3673	district	Moskova
3673	population	194300
3674	id	3674
3674	name	Petropavlovsk-Kamtatski
3674	countrycode	RUS
3674	district	Kamtatka
3674	population	194100
3675	id	3675
3675	name	Kamensk-Uralski
3675	countrycode	RUS
3675	district	Sverdlovsk
3675	population	190600
3676	id	3676
3676	name	Engels
3676	countrycode	RUS
3676	district	Saratov
3676	population	189000
3677	id	3677
3677	name	Syzran
3677	countrycode	RUS
3677	district	Samara
3677	population	186900
3678	id	3678
3678	name	Grozny
3678	countrycode	RUS
3678	district	Tetenia
3678	population	186000
3679	id	3679
3679	name	Novoterkassk
3679	countrycode	RUS
3679	district	Rostov-na-Donu
3679	population	184400
3680	id	3680
3680	name	Berezniki
3680	countrycode	RUS
3680	district	Perm
3680	population	181900
3681	id	3681
3681	name	Juzno-Sahalinsk
3681	countrycode	RUS
3681	district	Sahalin
3681	population	179200
3682	id	3682
3682	name	Volgodonsk
3682	countrycode	RUS
3682	district	Rostov-na-Donu
3682	population	178200
3683	id	3683
3683	name	Abakan
3683	countrycode	RUS
3683	district	Hakassia
3683	population	169200
3684	id	3684
3684	name	Maikop
3684	countrycode	RUS
3684	district	Adygea
3684	population	167300
3685	id	3685
3685	name	Miass
3685	countrycode	RUS
3685	district	Teljabinsk
3685	population	166200
3686	id	3686
3686	name	Armavir
3686	countrycode	RUS
3686	district	Krasnodar
3686	population	164900
3687	id	3687
3687	name	Ljubertsy
3687	countrycode	RUS
3687	district	Moskova
3687	population	163900
3688	id	3688
3688	name	Rubtsovsk
3688	countrycode	RUS
3688	district	Altai
3688	population	162600
3689	id	3689
3689	name	Kovrov
3689	countrycode	RUS
3689	district	Vladimir
3689	population	159900
3690	id	3690
3690	name	Nahodka
3690	countrycode	RUS
3690	district	Primorje
3690	population	157700
3691	id	3691
3691	name	Ussurijsk
3691	countrycode	RUS
3691	district	Primorje
3691	population	157300
3692	id	3692
3692	name	Salavat
3692	countrycode	RUS
3692	district	Bakortostan
3692	population	156800
3693	id	3693
3693	name	Mytiti
3693	countrycode	RUS
3693	district	Moskova
3693	population	155700
3694	id	3694
3694	name	Kolomna
3694	countrycode	RUS
3694	district	Moskova
3694	population	150700
3695	id	3695
3695	name	Elektrostal
3695	countrycode	RUS
3695	district	Moskova
3695	population	147000
3696	id	3696
3696	name	Murom
3696	countrycode	RUS
3696	district	Vladimir
3696	population	142400
3697	id	3697
3697	name	Kolpino
3697	countrycode	RUS
3697	district	Pietari
3697	population	141200
3698	id	3698
3698	name	Norilsk
3698	countrycode	RUS
3698	district	Krasnojarsk
3698	population	140800
3699	id	3699
3699	name	Almetjevsk
3699	countrycode	RUS
3699	district	Tatarstan
3699	population	140700
3700	id	3700
3700	name	Novomoskovsk
3700	countrycode	RUS
3700	district	Tula
3700	population	138100
3701	id	3701
3701	name	Dimitrovgrad
3701	countrycode	RUS
3701	district	Uljanovsk
3701	population	137000
3702	id	3702
3702	name	Pervouralsk
3702	countrycode	RUS
3702	district	Sverdlovsk
3702	population	136100
3703	id	3703
3703	name	Himki
3703	countrycode	RUS
3703	district	Moskova
3703	population	133700
3704	id	3704
3704	name	Balaiha
3704	countrycode	RUS
3704	district	Moskova
3704	population	132900
3705	id	3705
3705	name	Nevinnomyssk
3705	countrycode	RUS
3705	district	Stavropol
3705	population	132600
3706	id	3706
3706	name	Pjatigorsk
3706	countrycode	RUS
3706	district	Stavropol
3706	population	132500
3707	id	3707
3707	name	Korolev
3707	countrycode	RUS
3707	district	Moskova
3707	population	132400
3708	id	3708
3708	name	Serpuhov
3708	countrycode	RUS
3708	district	Moskova
3708	population	132000
3709	id	3709
3709	name	Odintsovo
3709	countrycode	RUS
3709	district	Moskova
3709	population	127400
3710	id	3710
3710	name	Orehovo-Zujevo
3710	countrycode	RUS
3710	district	Moskova
3710	population	124900
3711	id	3711
3711	name	Kamyin
3711	countrycode	RUS
3711	district	Volgograd
3711	population	124600
3712	id	3712
3712	name	Novoteboksarsk
3712	countrycode	RUS
3712	district	Tuvassia
3712	population	123400
3713	id	3713
3713	name	Terkessk
3713	countrycode	RUS
3713	district	Karatai-Terkessia
3713	population	121700
3714	id	3714
3714	name	Atinsk
3714	countrycode	RUS
3714	district	Krasnojarsk
3714	population	121600
3715	id	3715
3715	name	Magadan
3715	countrycode	RUS
3715	district	Magadan
3715	population	121000
3716	id	3716
3716	name	Miturinsk
3716	countrycode	RUS
3716	district	Tambov
3716	population	120700
3717	id	3717
3717	name	Kislovodsk
3717	countrycode	RUS
3717	district	Stavropol
3717	population	120400
3718	id	3718
3718	name	Jelets
3718	countrycode	RUS
3718	district	Lipetsk
3718	population	119400
3719	id	3719
3719	name	Seversk
3719	countrycode	RUS
3719	district	Tomsk
3719	population	118600
3720	id	3720
3720	name	Noginsk
3720	countrycode	RUS
3720	district	Moskova
3720	population	117200
3721	id	3721
3721	name	Velikije Luki
3721	countrycode	RUS
3721	district	Pihkova
3721	population	116300
3722	id	3722
3722	name	Novokuibyevsk
3722	countrycode	RUS
3722	district	Samara
3722	population	116200
3723	id	3723
3723	name	Neftekamsk
3723	countrycode	RUS
3723	district	Bakortostan
3723	population	115700
3724	id	3724
3724	name	Leninsk-Kuznetski
3724	countrycode	RUS
3724	district	Kemerovo
3724	population	113800
3725	id	3725
3725	name	Oktjabrski
3725	countrycode	RUS
3725	district	Bakortostan
3725	population	111500
3726	id	3726
3726	name	Sergijev Posad
3726	countrycode	RUS
3726	district	Moskova
3726	population	111100
3727	id	3727
3727	name	Arzamas
3727	countrycode	RUS
3727	district	Nizni Novgorod
3727	population	110700
3728	id	3728
3728	name	Kiseljovsk
3728	countrycode	RUS
3728	district	Kemerovo
3728	population	110000
3729	id	3729
3729	name	Novotroitsk
3729	countrycode	RUS
3729	district	Orenburg
3729	population	109600
3730	id	3730
3730	name	Obninsk
3730	countrycode	RUS
3730	district	Kaluga
3730	population	108300
3731	id	3731
3731	name	Kansk
3731	countrycode	RUS
3731	district	Krasnojarsk
3731	population	107400
3732	id	3732
3732	name	Glazov
3732	countrycode	RUS
3732	district	Udmurtia
3732	population	106300
3733	id	3733
3733	name	Solikamsk
3733	countrycode	RUS
3733	district	Perm
3733	population	106000
3734	id	3734
3734	name	Sarapul
3734	countrycode	RUS
3734	district	Udmurtia
3734	population	105700
3735	id	3735
3735	name	Ust-Ilimsk
3735	countrycode	RUS
3735	district	Irkutsk
3735	population	105200
3736	id	3736
3736	name	tolkovo
3736	countrycode	RUS
3736	district	Moskova
3736	population	104900
3737	id	3737
3737	name	Mezduretensk
3737	countrycode	RUS
3737	district	Kemerovo
3737	population	104400
3738	id	3738
3738	name	Usolje-Sibirskoje
3738	countrycode	RUS
3738	district	Irkutsk
3738	population	103500
3739	id	3739
3739	name	Elista
3739	countrycode	RUS
3739	district	Kalmykia
3739	population	103300
3740	id	3740
3740	name	Novoahtinsk
3740	countrycode	RUS
3740	district	Rostov-na-Donu
3740	population	101900
3741	id	3741
3741	name	Votkinsk
3741	countrycode	RUS
3741	district	Udmurtia
3741	population	101700
3742	id	3742
3742	name	Kyzyl
3742	countrycode	RUS
3742	district	Tyva
3742	population	101100
3743	id	3743
3743	name	Serov
3743	countrycode	RUS
3743	district	Sverdlovsk
3743	population	100400
3744	id	3744
3744	name	Zelenodolsk
3744	countrycode	RUS
3744	district	Tatarstan
3744	population	100200
3745	id	3745
3745	name	Zeleznodoroznyi
3745	countrycode	RUS
3745	district	Moskova
3745	population	100100
3746	id	3746
3746	name	Kinema
3746	countrycode	RUS
3746	district	Ivanovo
3746	population	100000
3747	id	3747
3747	name	Kuznetsk
3747	countrycode	RUS
3747	district	Penza
3747	population	98200
3748	id	3748
3748	name	Uhta
3748	countrycode	RUS
3748	district	Komi
3748	population	98000
3749	id	3749
3749	name	Jessentuki
3749	countrycode	RUS
3749	district	Stavropol
3749	population	97900
3750	id	3750
3750	name	Tobolsk
3750	countrycode	RUS
3750	district	Tjumen
3750	population	97600
3751	id	3751
3751	name	Neftejugansk
3751	countrycode	RUS
3751	district	Hanti-Mansia
3751	population	97400
3752	id	3752
3752	name	Bataisk
3752	countrycode	RUS
3752	district	Rostov-na-Donu
3752	population	97300
3753	id	3753
3753	name	Nojabrsk
3753	countrycode	RUS
3753	district	Yamalin Nenetsia
3753	population	97300
3754	id	3754
3754	name	Balaov
3754	countrycode	RUS
3754	district	Saratov
3754	population	97100
3755	id	3755
3755	name	Zeleznogorsk
3755	countrycode	RUS
3755	district	Kursk
3755	population	96900
3756	id	3756
3756	name	Zukovski
3756	countrycode	RUS
3756	district	Moskova
3756	population	96500
3757	id	3757
3757	name	Anzero-Sudzensk
3757	countrycode	RUS
3757	district	Kemerovo
3757	population	96100
3758	id	3758
3758	name	Bugulma
3758	countrycode	RUS
3758	district	Tatarstan
3758	population	94100
3759	id	3759
3759	name	Zeleznogorsk
3759	countrycode	RUS
3759	district	Krasnojarsk
3759	population	94000
3760	id	3760
3760	name	Novouralsk
3760	countrycode	RUS
3760	district	Sverdlovsk
3760	population	93300
3761	id	3761
3761	name	Pukin
3761	countrycode	RUS
3761	district	Pietari
3761	population	92900
3762	id	3762
3762	name	Vorkuta
3762	countrycode	RUS
3762	district	Komi
3762	population	92600
3763	id	3763
3763	name	Derbent
3763	countrycode	RUS
3763	district	Dagestan
3763	population	92300
3764	id	3764
3764	name	Kirovo-Tepetsk
3764	countrycode	RUS
3764	district	Kirov
3764	population	91600
3765	id	3765
3765	name	Krasnogorsk
3765	countrycode	RUS
3765	district	Moskova
3765	population	91000
3766	id	3766
3766	name	Klin
3766	countrycode	RUS
3766	district	Moskova
3766	population	90000
3767	id	3767
3767	name	Taikovski
3767	countrycode	RUS
3767	district	Perm
3767	population	90000
3768	id	3768
3768	name	Novyi Urengoi
3768	countrycode	RUS
3768	district	Yamalin Nenetsia
3768	population	89800
3769	id	3769
3769	name	Ho Chi Minh City
3769	countrycode	VNM
3769	district	Ho Chi Minh City
3769	population	3980000
3770	id	3770
3770	name	Hanoi
3770	countrycode	VNM
3770	district	Hanoi
3770	population	1410000
3771	id	3771
3771	name	Haiphong
3771	countrycode	VNM
3771	district	Haiphong
3771	population	783133
3772	id	3772
3772	name	Da Nang
3772	countrycode	VNM
3772	district	Quang Nam-Da Nang
3772	population	382674
3773	id	3773
3773	name	Biên Hoa
3773	countrycode	VNM
3773	district	Dong Nai
3773	population	282095
3774	id	3774
3774	name	Nha Trang
3774	countrycode	VNM
3774	district	Khanh Hoa
3774	population	221331
3775	id	3775
3775	name	Hue
3775	countrycode	VNM
3775	district	Thua Thien-Hue
3775	population	219149
3776	id	3776
3776	name	Can Tho
3776	countrycode	VNM
3776	district	Can Tho
3776	population	215587
3777	id	3777
3777	name	Cam Pha
3777	countrycode	VNM
3777	district	Quang Binh
3777	population	209086
3778	id	3778
3778	name	Nam Dinh
3778	countrycode	VNM
3778	district	Nam Ha
3778	population	171699
3779	id	3779
3779	name	Quy Nhon
3779	countrycode	VNM
3779	district	Binh Dinh
3779	population	163385
3780	id	3780
3780	name	Vung Tau
3780	countrycode	VNM
3780	district	Ba Ria-Vung Tau
3780	population	145145
3781	id	3781
3781	name	Rach Gia
3781	countrycode	VNM
3781	district	Kien Giang
3781	population	141132
3782	id	3782
3782	name	Long Xuyen
3782	countrycode	VNM
3782	district	An Giang
3782	population	132681
3783	id	3783
3783	name	Thai Nguyen
3783	countrycode	VNM
3783	district	Bac Thai
3783	population	127643
3784	id	3784
3784	name	Hong Gai
3784	countrycode	VNM
3784	district	Quang Ninh
3784	population	127484
3785	id	3785
3785	name	Phan Thiêt
3785	countrycode	VNM
3785	district	Binh Thuan
3785	population	114236
3786	id	3786
3786	name	Cam Ranh
3786	countrycode	VNM
3786	district	Khanh Hoa
3786	population	114041
3787	id	3787
3787	name	Vinh
3787	countrycode	VNM
3787	district	Nghe An
3787	population	112455
3788	id	3788
3788	name	My Tho
3788	countrycode	VNM
3788	district	Tien Giang
3788	population	108404
3789	id	3789
3789	name	Da Lat
3789	countrycode	VNM
3789	district	Lam Dong
3789	population	106409
3790	id	3790
3790	name	Buon Ma Thuot
3790	countrycode	VNM
3790	district	Dac Lac
3790	population	97044
3791	id	3791
3791	name	Tallinn
3791	countrycode	EST
3791	district	Harjumaa
3791	population	403981
3792	id	3792
3792	name	Tartu
3792	countrycode	EST
3792	district	Tartumaa
3792	population	101246
3793	id	3793
3793	name	New York
3793	countrycode	USA
3793	district	New York
3793	population	8008278
3794	id	3794
3794	name	Los Angeles
3794	countrycode	USA
3794	district	California
3794	population	3694820
3795	id	3795
3795	name	Chicago
3795	countrycode	USA
3795	district	Illinois
3795	population	2896016
3796	id	3796
3796	name	Houston
3796	countrycode	USA
3796	district	Texas
3796	population	1953631
3797	id	3797
3797	name	Philadelphia
3797	countrycode	USA
3797	district	Pennsylvania
3797	population	1517550
3798	id	3798
3798	name	Phoenix
3798	countrycode	USA
3798	district	Arizona
3798	population	1321045
3799	id	3799
3799	name	San Diego
3799	countrycode	USA
3799	district	California
3799	population	1223400
3800	id	3800
3800	name	Dallas
3800	countrycode	USA
3800	district	Texas
3800	population	1188580
3801	id	3801
3801	name	San Antonio
3801	countrycode	USA
3801	district	Texas
3801	population	1144646
3802	id	3802
3802	name	Detroit
3802	countrycode	USA
3802	district	Michigan
3802	population	951270
3803	id	3803
3803	name	San Jose
3803	countrycode	USA
3803	district	California
3803	population	894943
3804	id	3804
3804	name	Indianapolis
3804	countrycode	USA
3804	district	Indiana
3804	population	791926
3805	id	3805
3805	name	San Francisco
3805	countrycode	USA
3805	district	California
3805	population	776733
3806	id	3806
3806	name	Jacksonville
3806	countrycode	USA
3806	district	Florida
3806	population	735167
3807	id	3807
3807	name	Columbus
3807	countrycode	USA
3807	district	Ohio
3807	population	711470
3808	id	3808
3808	name	Austin
3808	countrycode	USA
3808	district	Texas
3808	population	656562
3809	id	3809
3809	name	Baltimore
3809	countrycode	USA
3809	district	Maryland
3809	population	651154
3810	id	3810
3810	name	Memphis
3810	countrycode	USA
3810	district	Tennessee
3810	population	650100
3811	id	3811
3811	name	Milwaukee
3811	countrycode	USA
3811	district	Wisconsin
3811	population	596974
3812	id	3812
3812	name	Boston
3812	countrycode	USA
3812	district	Massachusetts
3812	population	589141
3813	id	3813
3813	name	Washington
3813	countrycode	USA
3813	district	District of Columbia
3813	population	572059
3814	id	3814
3814	name	Nashville-Davidson
3814	countrycode	USA
3814	district	Tennessee
3814	population	569891
3815	id	3815
3815	name	El Paso
3815	countrycode	USA
3815	district	Texas
3815	population	563662
3816	id	3816
3816	name	Seattle
3816	countrycode	USA
3816	district	Washington
3816	population	563374
3817	id	3817
3817	name	Denver
3817	countrycode	USA
3817	district	Colorado
3817	population	554636
3818	id	3818
3818	name	Charlotte
3818	countrycode	USA
3818	district	North Carolina
3818	population	540828
3819	id	3819
3819	name	Fort Worth
3819	countrycode	USA
3819	district	Texas
3819	population	534694
3820	id	3820
3820	name	Portland
3820	countrycode	USA
3820	district	Oregon
3820	population	529121
3821	id	3821
3821	name	Oklahoma City
3821	countrycode	USA
3821	district	Oklahoma
3821	population	506132
3822	id	3822
3822	name	Tucson
3822	countrycode	USA
3822	district	Arizona
3822	population	486699
3823	id	3823
3823	name	New Orleans
3823	countrycode	USA
3823	district	Louisiana
3823	population	484674
3824	id	3824
3824	name	Las Vegas
3824	countrycode	USA
3824	district	Nevada
3824	population	478434
3825	id	3825
3825	name	Cleveland
3825	countrycode	USA
3825	district	Ohio
3825	population	478403
3826	id	3826
3826	name	Long Beach
3826	countrycode	USA
3826	district	California
3826	population	461522
3827	id	3827
3827	name	Albuquerque
3827	countrycode	USA
3827	district	New Mexico
3827	population	448607
3828	id	3828
3828	name	Kansas City
3828	countrycode	USA
3828	district	Missouri
3828	population	441545
3829	id	3829
3829	name	Fresno
3829	countrycode	USA
3829	district	California
3829	population	427652
3830	id	3830
3830	name	Virginia Beach
3830	countrycode	USA
3830	district	Virginia
3830	population	425257
3831	id	3831
3831	name	Atlanta
3831	countrycode	USA
3831	district	Georgia
3831	population	416474
3832	id	3832
3832	name	Sacramento
3832	countrycode	USA
3832	district	California
3832	population	407018
3833	id	3833
3833	name	Oakland
3833	countrycode	USA
3833	district	California
3833	population	399484
3834	id	3834
3834	name	Mesa
3834	countrycode	USA
3834	district	Arizona
3834	population	396375
3835	id	3835
3835	name	Tulsa
3835	countrycode	USA
3835	district	Oklahoma
3835	population	393049
3836	id	3836
3836	name	Omaha
3836	countrycode	USA
3836	district	Nebraska
3836	population	390007
3837	id	3837
3837	name	Minneapolis
3837	countrycode	USA
3837	district	Minnesota
3837	population	382618
3838	id	3838
3838	name	Honolulu
3838	countrycode	USA
3838	district	Hawaii
3838	population	371657
3839	id	3839
3839	name	Miami
3839	countrycode	USA
3839	district	Florida
3839	population	362470
3840	id	3840
3840	name	Colorado Springs
3840	countrycode	USA
3840	district	Colorado
3840	population	360890
3841	id	3841
3841	name	Saint Louis
3841	countrycode	USA
3841	district	Missouri
3841	population	348189
3842	id	3842
3842	name	Wichita
3842	countrycode	USA
3842	district	Kansas
3842	population	344284
3843	id	3843
3843	name	Santa Ana
3843	countrycode	USA
3843	district	California
3843	population	337977
3844	id	3844
3844	name	Pittsburgh
3844	countrycode	USA
3844	district	Pennsylvania
3844	population	334563
3845	id	3845
3845	name	Arlington
3845	countrycode	USA
3845	district	Texas
3845	population	332969
3846	id	3846
3846	name	Cincinnati
3846	countrycode	USA
3846	district	Ohio
3846	population	331285
3847	id	3847
3847	name	Anaheim
3847	countrycode	USA
3847	district	California
3847	population	328014
3848	id	3848
3848	name	Toledo
3848	countrycode	USA
3848	district	Ohio
3848	population	313619
3849	id	3849
3849	name	Tampa
3849	countrycode	USA
3849	district	Florida
3849	population	303447
3850	id	3850
3850	name	Buffalo
3850	countrycode	USA
3850	district	New York
3850	population	292648
3851	id	3851
3851	name	Saint Paul
3851	countrycode	USA
3851	district	Minnesota
3851	population	287151
3852	id	3852
3852	name	Corpus Christi
3852	countrycode	USA
3852	district	Texas
3852	population	277454
3853	id	3853
3853	name	Aurora
3853	countrycode	USA
3853	district	Colorado
3853	population	276393
3854	id	3854
3854	name	Raleigh
3854	countrycode	USA
3854	district	North Carolina
3854	population	276093
3855	id	3855
3855	name	Newark
3855	countrycode	USA
3855	district	New Jersey
3855	population	273546
3856	id	3856
3856	name	Lexington-Fayette
3856	countrycode	USA
3856	district	Kentucky
3856	population	260512
3857	id	3857
3857	name	Anchorage
3857	countrycode	USA
3857	district	Alaska
3857	population	260283
3858	id	3858
3858	name	Louisville
3858	countrycode	USA
3858	district	Kentucky
3858	population	256231
3859	id	3859
3859	name	Riverside
3859	countrycode	USA
3859	district	California
3859	population	255166
3860	id	3860
3860	name	Saint Petersburg
3860	countrycode	USA
3860	district	Florida
3860	population	248232
3861	id	3861
3861	name	Bakersfield
3861	countrycode	USA
3861	district	California
3861	population	247057
3862	id	3862
3862	name	Stockton
3862	countrycode	USA
3862	district	California
3862	population	243771
3863	id	3863
3863	name	Birmingham
3863	countrycode	USA
3863	district	Alabama
3863	population	242820
3864	id	3864
3864	name	Jersey City
3864	countrycode	USA
3864	district	New Jersey
3864	population	240055
3865	id	3865
3865	name	Norfolk
3865	countrycode	USA
3865	district	Virginia
3865	population	234403
3866	id	3866
3866	name	Baton Rouge
3866	countrycode	USA
3866	district	Louisiana
3866	population	227818
3867	id	3867
3867	name	Hialeah
3867	countrycode	USA
3867	district	Florida
3867	population	226419
3868	id	3868
3868	name	Lincoln
3868	countrycode	USA
3868	district	Nebraska
3868	population	225581
3869	id	3869
3869	name	Greensboro
3869	countrycode	USA
3869	district	North Carolina
3869	population	223891
3870	id	3870
3870	name	Plano
3870	countrycode	USA
3870	district	Texas
3870	population	222030
3871	id	3871
3871	name	Rochester
3871	countrycode	USA
3871	district	New York
3871	population	219773
3872	id	3872
3872	name	Glendale
3872	countrycode	USA
3872	district	Arizona
3872	population	218812
3873	id	3873
3873	name	Akron
3873	countrycode	USA
3873	district	Ohio
3873	population	217074
3874	id	3874
3874	name	Garland
3874	countrycode	USA
3874	district	Texas
3874	population	215768
3875	id	3875
3875	name	Madison
3875	countrycode	USA
3875	district	Wisconsin
3875	population	208054
3876	id	3876
3876	name	Fort Wayne
3876	countrycode	USA
3876	district	Indiana
3876	population	205727
3877	id	3877
3877	name	Fremont
3877	countrycode	USA
3877	district	California
3877	population	203413
3878	id	3878
3878	name	Scottsdale
3878	countrycode	USA
3878	district	Arizona
3878	population	202705
3879	id	3879
3879	name	Montgomery
3879	countrycode	USA
3879	district	Alabama
3879	population	201568
3880	id	3880
3880	name	Shreveport
3880	countrycode	USA
3880	district	Louisiana
3880	population	200145
3881	id	3881
3881	name	Augusta-Richmond County
3881	countrycode	USA
3881	district	Georgia
3881	population	199775
3882	id	3882
3882	name	Lubbock
3882	countrycode	USA
3882	district	Texas
3882	population	199564
3883	id	3883
3883	name	Chesapeake
3883	countrycode	USA
3883	district	Virginia
3883	population	199184
3884	id	3884
3884	name	Mobile
3884	countrycode	USA
3884	district	Alabama
3884	population	198915
3885	id	3885
3885	name	Des Moines
3885	countrycode	USA
3885	district	Iowa
3885	population	198682
3886	id	3886
3886	name	Grand Rapids
3886	countrycode	USA
3886	district	Michigan
3886	population	197800
3887	id	3887
3887	name	Richmond
3887	countrycode	USA
3887	district	Virginia
3887	population	197790
3888	id	3888
3888	name	Yonkers
3888	countrycode	USA
3888	district	New York
3888	population	196086
3889	id	3889
3889	name	Spokane
3889	countrycode	USA
3889	district	Washington
3889	population	195629
3890	id	3890
3890	name	Glendale
3890	countrycode	USA
3890	district	California
3890	population	194973
3891	id	3891
3891	name	Tacoma
3891	countrycode	USA
3891	district	Washington
3891	population	193556
3892	id	3892
3892	name	Irving
3892	countrycode	USA
3892	district	Texas
3892	population	191615
3893	id	3893
3893	name	Huntington Beach
3893	countrycode	USA
3893	district	California
3893	population	189594
3894	id	3894
3894	name	Modesto
3894	countrycode	USA
3894	district	California
3894	population	188856
3895	id	3895
3895	name	Durham
3895	countrycode	USA
3895	district	North Carolina
3895	population	187035
3896	id	3896
3896	name	Columbus
3896	countrycode	USA
3896	district	Georgia
3896	population	186291
3897	id	3897
3897	name	Orlando
3897	countrycode	USA
3897	district	Florida
3897	population	185951
3898	id	3898
3898	name	Boise City
3898	countrycode	USA
3898	district	Idaho
3898	population	185787
3899	id	3899
3899	name	Winston-Salem
3899	countrycode	USA
3899	district	North Carolina
3899	population	185776
3900	id	3900
3900	name	San Bernardino
3900	countrycode	USA
3900	district	California
3900	population	185401
3901	id	3901
3901	name	Jackson
3901	countrycode	USA
3901	district	Mississippi
3901	population	184256
3902	id	3902
3902	name	Little Rock
3902	countrycode	USA
3902	district	Arkansas
3902	population	183133
3903	id	3903
3903	name	Salt Lake City
3903	countrycode	USA
3903	district	Utah
3903	population	181743
3904	id	3904
3904	name	Reno
3904	countrycode	USA
3904	district	Nevada
3904	population	180480
3905	id	3905
3905	name	Newport News
3905	countrycode	USA
3905	district	Virginia
3905	population	180150
3906	id	3906
3906	name	Chandler
3906	countrycode	USA
3906	district	Arizona
3906	population	176581
3907	id	3907
3907	name	Laredo
3907	countrycode	USA
3907	district	Texas
3907	population	176576
3908	id	3908
3908	name	Henderson
3908	countrycode	USA
3908	district	Nevada
3908	population	175381
3909	id	3909
3909	name	Arlington
3909	countrycode	USA
3909	district	Virginia
3909	population	174838
3910	id	3910
3910	name	Knoxville
3910	countrycode	USA
3910	district	Tennessee
3910	population	173890
3911	id	3911
3911	name	Amarillo
3911	countrycode	USA
3911	district	Texas
3911	population	173627
3912	id	3912
3912	name	Providence
3912	countrycode	USA
3912	district	Rhode Island
3912	population	173618
3913	id	3913
3913	name	Chula Vista
3913	countrycode	USA
3913	district	California
3913	population	173556
3914	id	3914
3914	name	Worcester
3914	countrycode	USA
3914	district	Massachusetts
3914	population	172648
3915	id	3915
3915	name	Oxnard
3915	countrycode	USA
3915	district	California
3915	population	170358
3916	id	3916
3916	name	Dayton
3916	countrycode	USA
3916	district	Ohio
3916	population	166179
3917	id	3917
3917	name	Garden Grove
3917	countrycode	USA
3917	district	California
3917	population	165196
3918	id	3918
3918	name	Oceanside
3918	countrycode	USA
3918	district	California
3918	population	161029
3919	id	3919
3919	name	Tempe
3919	countrycode	USA
3919	district	Arizona
3919	population	158625
3920	id	3920
3920	name	Huntsville
3920	countrycode	USA
3920	district	Alabama
3920	population	158216
3921	id	3921
3921	name	Ontario
3921	countrycode	USA
3921	district	California
3921	population	158007
3922	id	3922
3922	name	Chattanooga
3922	countrycode	USA
3922	district	Tennessee
3922	population	155554
3923	id	3923
3923	name	Fort Lauderdale
3923	countrycode	USA
3923	district	Florida
3923	population	152397
3924	id	3924
3924	name	Springfield
3924	countrycode	USA
3924	district	Massachusetts
3924	population	152082
3925	id	3925
3925	name	Springfield
3925	countrycode	USA
3925	district	Missouri
3925	population	151580
3926	id	3926
3926	name	Santa Clarita
3926	countrycode	USA
3926	district	California
3926	population	151088
3927	id	3927
3927	name	Salinas
3927	countrycode	USA
3927	district	California
3927	population	151060
3928	id	3928
3928	name	Tallahassee
3928	countrycode	USA
3928	district	Florida
3928	population	150624
3929	id	3929
3929	name	Rockford
3929	countrycode	USA
3929	district	Illinois
3929	population	150115
3930	id	3930
3930	name	Pomona
3930	countrycode	USA
3930	district	California
3930	population	149473
3931	id	3931
3931	name	Metairie
3931	countrycode	USA
3931	district	Louisiana
3931	population	149428
3932	id	3932
3932	name	Paterson
3932	countrycode	USA
3932	district	New Jersey
3932	population	149222
3933	id	3933
3933	name	Overland Park
3933	countrycode	USA
3933	district	Kansas
3933	population	149080
3934	id	3934
3934	name	Santa Rosa
3934	countrycode	USA
3934	district	California
3934	population	147595
3935	id	3935
3935	name	Syracuse
3935	countrycode	USA
3935	district	New York
3935	population	147306
3936	id	3936
3936	name	Kansas City
3936	countrycode	USA
3936	district	Kansas
3936	population	146866
3937	id	3937
3937	name	Hampton
3937	countrycode	USA
3937	district	Virginia
3937	population	146437
3938	id	3938
3938	name	Lakewood
3938	countrycode	USA
3938	district	Colorado
3938	population	144126
3939	id	3939
3939	name	Vancouver
3939	countrycode	USA
3939	district	Washington
3939	population	143560
3940	id	3940
3940	name	Irvine
3940	countrycode	USA
3940	district	California
3940	population	143072
3941	id	3941
3941	name	Aurora
3941	countrycode	USA
3941	district	Illinois
3941	population	142990
3942	id	3942
3942	name	Moreno Valley
3942	countrycode	USA
3942	district	California
3942	population	142381
3943	id	3943
3943	name	Pasadena
3943	countrycode	USA
3943	district	California
3943	population	141674
3944	id	3944
3944	name	Hayward
3944	countrycode	USA
3944	district	California
3944	population	140030
3945	id	3945
3945	name	Brownsville
3945	countrycode	USA
3945	district	Texas
3945	population	139722
3946	id	3946
3946	name	Bridgeport
3946	countrycode	USA
3946	district	Connecticut
3946	population	139529
3947	id	3947
3947	name	Hollywood
3947	countrycode	USA
3947	district	Florida
3947	population	139357
3948	id	3948
3948	name	Warren
3948	countrycode	USA
3948	district	Michigan
3948	population	138247
3949	id	3949
3949	name	Torrance
3949	countrycode	USA
3949	district	California
3949	population	137946
3950	id	3950
3950	name	Eugene
3950	countrycode	USA
3950	district	Oregon
3950	population	137893
3951	id	3951
3951	name	Pembroke Pines
3951	countrycode	USA
3951	district	Florida
3951	population	137427
3952	id	3952
3952	name	Salem
3952	countrycode	USA
3952	district	Oregon
3952	population	136924
3953	id	3953
3953	name	Pasadena
3953	countrycode	USA
3953	district	Texas
3953	population	133936
3954	id	3954
3954	name	Escondido
3954	countrycode	USA
3954	district	California
3954	population	133559
3955	id	3955
3955	name	Sunnyvale
3955	countrycode	USA
3955	district	California
3955	population	131760
3956	id	3956
3956	name	Savannah
3956	countrycode	USA
3956	district	Georgia
3956	population	131510
3957	id	3957
3957	name	Fontana
3957	countrycode	USA
3957	district	California
3957	population	128929
3958	id	3958
3958	name	Orange
3958	countrycode	USA
3958	district	California
3958	population	128821
3959	id	3959
3959	name	Naperville
3959	countrycode	USA
3959	district	Illinois
3959	population	128358
3960	id	3960
3960	name	Alexandria
3960	countrycode	USA
3960	district	Virginia
3960	population	128283
3961	id	3961
3961	name	Rancho Cucamonga
3961	countrycode	USA
3961	district	California
3961	population	127743
3962	id	3962
3962	name	Grand Prairie
3962	countrycode	USA
3962	district	Texas
3962	population	127427
3963	id	3963
3963	name	East Los Angeles
3963	countrycode	USA
3963	district	California
3963	population	126379
3964	id	3964
3964	name	Fullerton
3964	countrycode	USA
3964	district	California
3964	population	126003
3965	id	3965
3965	name	Corona
3965	countrycode	USA
3965	district	California
3965	population	124966
3966	id	3966
3966	name	Flint
3966	countrycode	USA
3966	district	Michigan
3966	population	124943
3967	id	3967
3967	name	Paradise
3967	countrycode	USA
3967	district	Nevada
3967	population	124682
3968	id	3968
3968	name	Mesquite
3968	countrycode	USA
3968	district	Texas
3968	population	124523
3969	id	3969
3969	name	Sterling Heights
3969	countrycode	USA
3969	district	Michigan
3969	population	124471
3970	id	3970
3970	name	Sioux Falls
3970	countrycode	USA
3970	district	South Dakota
3970	population	123975
3971	id	3971
3971	name	New Haven
3971	countrycode	USA
3971	district	Connecticut
3971	population	123626
3972	id	3972
3972	name	Topeka
3972	countrycode	USA
3972	district	Kansas
3972	population	122377
3973	id	3973
3973	name	Concord
3973	countrycode	USA
3973	district	California
3973	population	121780
3974	id	3974
3974	name	Evansville
3974	countrycode	USA
3974	district	Indiana
3974	population	121582
3975	id	3975
3975	name	Hartford
3975	countrycode	USA
3975	district	Connecticut
3975	population	121578
3976	id	3976
3976	name	Fayetteville
3976	countrycode	USA
3976	district	North Carolina
3976	population	121015
3977	id	3977
3977	name	Cedar Rapids
3977	countrycode	USA
3977	district	Iowa
3977	population	120758
3978	id	3978
3978	name	Elizabeth
3978	countrycode	USA
3978	district	New Jersey
3978	population	120568
3979	id	3979
3979	name	Lansing
3979	countrycode	USA
3979	district	Michigan
3979	population	119128
3980	id	3980
3980	name	Lancaster
3980	countrycode	USA
3980	district	California
3980	population	118718
3981	id	3981
3981	name	Fort Collins
3981	countrycode	USA
3981	district	Colorado
3981	population	118652
3982	id	3982
3982	name	Coral Springs
3982	countrycode	USA
3982	district	Florida
3982	population	117549
3983	id	3983
3983	name	Stamford
3983	countrycode	USA
3983	district	Connecticut
3983	population	117083
3984	id	3984
3984	name	Thousand Oaks
3984	countrycode	USA
3984	district	California
3984	population	117005
3985	id	3985
3985	name	Vallejo
3985	countrycode	USA
3985	district	California
3985	population	116760
3986	id	3986
3986	name	Palmdale
3986	countrycode	USA
3986	district	California
3986	population	116670
3987	id	3987
3987	name	Columbia
3987	countrycode	USA
3987	district	South Carolina
3987	population	116278
3988	id	3988
3988	name	El Monte
3988	countrycode	USA
3988	district	California
3988	population	115965
3989	id	3989
3989	name	Abilene
3989	countrycode	USA
3989	district	Texas
3989	population	115930
3990	id	3990
3990	name	North Las Vegas
3990	countrycode	USA
3990	district	Nevada
3990	population	115488
3991	id	3991
3991	name	Ann Arbor
3991	countrycode	USA
3991	district	Michigan
3991	population	114024
3992	id	3992
3992	name	Beaumont
3992	countrycode	USA
3992	district	Texas
3992	population	113866
3993	id	3993
3993	name	Waco
3993	countrycode	USA
3993	district	Texas
3993	population	113726
3994	id	3994
3994	name	Macon
3994	countrycode	USA
3994	district	Georgia
3994	population	113336
3995	id	3995
3995	name	Independence
3995	countrycode	USA
3995	district	Missouri
3995	population	113288
3996	id	3996
3996	name	Peoria
3996	countrycode	USA
3996	district	Illinois
3996	population	112936
3997	id	3997
3997	name	Inglewood
3997	countrycode	USA
3997	district	California
3997	population	112580
3998	id	3998
3998	name	Springfield
3998	countrycode	USA
3998	district	Illinois
3998	population	111454
3999	id	3999
3999	name	Simi Valley
3999	countrycode	USA
3999	district	California
3999	population	111351
4000	id	4000
4000	name	Lafayette
4000	countrycode	USA
4000	district	Louisiana
4000	population	110257
4001	id	4001
4001	name	Gilbert
4001	countrycode	USA
4001	district	Arizona
4001	population	109697
4002	id	4002
4002	name	Carrollton
4002	countrycode	USA
4002	district	Texas
4002	population	109576
4003	id	4003
4003	name	Bellevue
4003	countrycode	USA
4003	district	Washington
4003	population	109569
4004	id	4004
4004	name	West Valley City
4004	countrycode	USA
4004	district	Utah
4004	population	108896
4005	id	4005
4005	name	Clarksville
4005	countrycode	USA
4005	district	Tennessee
4005	population	108787
4006	id	4006
4006	name	Costa Mesa
4006	countrycode	USA
4006	district	California
4006	population	108724
4007	id	4007
4007	name	Peoria
4007	countrycode	USA
4007	district	Arizona
4007	population	108364
4008	id	4008
4008	name	South Bend
4008	countrycode	USA
4008	district	Indiana
4008	population	107789
4009	id	4009
4009	name	Downey
4009	countrycode	USA
4009	district	California
4009	population	107323
4010	id	4010
4010	name	Waterbury
4010	countrycode	USA
4010	district	Connecticut
4010	population	107271
4011	id	4011
4011	name	Manchester
4011	countrycode	USA
4011	district	New Hampshire
4011	population	107006
4012	id	4012
4012	name	Allentown
4012	countrycode	USA
4012	district	Pennsylvania
4012	population	106632
4013	id	4013
4013	name	McAllen
4013	countrycode	USA
4013	district	Texas
4013	population	106414
4014	id	4014
4014	name	Joliet
4014	countrycode	USA
4014	district	Illinois
4014	population	106221
4015	id	4015
4015	name	Lowell
4015	countrycode	USA
4015	district	Massachusetts
4015	population	105167
4016	id	4016
4016	name	Provo
4016	countrycode	USA
4016	district	Utah
4016	population	105166
4017	id	4017
4017	name	West Covina
4017	countrycode	USA
4017	district	California
4017	population	105080
4018	id	4018
4018	name	Wichita Falls
4018	countrycode	USA
4018	district	Texas
4018	population	104197
4019	id	4019
4019	name	Erie
4019	countrycode	USA
4019	district	Pennsylvania
4019	population	103717
4020	id	4020
4020	name	Daly City
4020	countrycode	USA
4020	district	California
4020	population	103621
4021	id	4021
4021	name	Citrus Heights
4021	countrycode	USA
4021	district	California
4021	population	103455
4022	id	4022
4022	name	Norwalk
4022	countrycode	USA
4022	district	California
4022	population	103298
4023	id	4023
4023	name	Gary
4023	countrycode	USA
4023	district	Indiana
4023	population	102746
4024	id	4024
4024	name	Berkeley
4024	countrycode	USA
4024	district	California
4024	population	102743
4025	id	4025
4025	name	Santa Clara
4025	countrycode	USA
4025	district	California
4025	population	102361
4026	id	4026
4026	name	Green Bay
4026	countrycode	USA
4026	district	Wisconsin
4026	population	102313
4027	id	4027
4027	name	Cape Coral
4027	countrycode	USA
4027	district	Florida
4027	population	102286
4028	id	4028
4028	name	Arvada
4028	countrycode	USA
4028	district	Colorado
4028	population	102153
4029	id	4029
4029	name	Pueblo
4029	countrycode	USA
4029	district	Colorado
4029	population	102121
4030	id	4030
4030	name	Sandy
4030	countrycode	USA
4030	district	Utah
4030	population	101853
4031	id	4031
4031	name	Athens-Clarke County
4031	countrycode	USA
4031	district	Georgia
4031	population	101489
4032	id	4032
4032	name	Cambridge
4032	countrycode	USA
4032	district	Massachusetts
4032	population	101355
4033	id	4033
4033	name	Westminster
4033	countrycode	USA
4033	district	Colorado
4033	population	100940
4034	id	4034
4034	name	San Buenaventura
4034	countrycode	USA
4034	district	California
4034	population	100916
4035	id	4035
4035	name	Portsmouth
4035	countrycode	USA
4035	district	Virginia
4035	population	100565
4036	id	4036
4036	name	Livonia
4036	countrycode	USA
4036	district	Michigan
4036	population	100545
4037	id	4037
4037	name	Burbank
4037	countrycode	USA
4037	district	California
4037	population	100316
4038	id	4038
4038	name	Clearwater
4038	countrycode	USA
4038	district	Florida
4038	population	99936
4039	id	4039
4039	name	Midland
4039	countrycode	USA
4039	district	Texas
4039	population	98293
4040	id	4040
4040	name	Davenport
4040	countrycode	USA
4040	district	Iowa
4040	population	98256
4041	id	4041
4041	name	Mission Viejo
4041	countrycode	USA
4041	district	California
4041	population	98049
4042	id	4042
4042	name	Miami Beach
4042	countrycode	USA
4042	district	Florida
4042	population	97855
4043	id	4043
4043	name	Sunrise Manor
4043	countrycode	USA
4043	district	Nevada
4043	population	95362
4044	id	4044
4044	name	New Bedford
4044	countrycode	USA
4044	district	Massachusetts
4044	population	94780
4045	id	4045
4045	name	El Cajon
4045	countrycode	USA
4045	district	California
4045	population	94578
4046	id	4046
4046	name	Norman
4046	countrycode	USA
4046	district	Oklahoma
4046	population	94193
4047	id	4047
4047	name	Richmond
4047	countrycode	USA
4047	district	California
4047	population	94100
4048	id	4048
4048	name	Albany
4048	countrycode	USA
4048	district	New York
4048	population	93994
4049	id	4049
4049	name	Brockton
4049	countrycode	USA
4049	district	Massachusetts
4049	population	93653
4050	id	4050
4050	name	Roanoke
4050	countrycode	USA
4050	district	Virginia
4050	population	93357
4051	id	4051
4051	name	Billings
4051	countrycode	USA
4051	district	Montana
4051	population	92988
4052	id	4052
4052	name	Compton
4052	countrycode	USA
4052	district	California
4052	population	92864
4053	id	4053
4053	name	Gainesville
4053	countrycode	USA
4053	district	Florida
4053	population	92291
4054	id	4054
4054	name	Fairfield
4054	countrycode	USA
4054	district	California
4054	population	92256
4055	id	4055
4055	name	Arden-Arcade
4055	countrycode	USA
4055	district	California
4055	population	92040
4056	id	4056
4056	name	San Mateo
4056	countrycode	USA
4056	district	California
4056	population	91799
4057	id	4057
4057	name	Visalia
4057	countrycode	USA
4057	district	California
4057	population	91762
4058	id	4058
4058	name	Boulder
4058	countrycode	USA
4058	district	Colorado
4058	population	91238
4059	id	4059
4059	name	Cary
4059	countrycode	USA
4059	district	North Carolina
4059	population	91213
4060	id	4060
4060	name	Santa Monica
4060	countrycode	USA
4060	district	California
4060	population	91084
4061	id	4061
4061	name	Fall River
4061	countrycode	USA
4061	district	Massachusetts
4061	population	90555
4062	id	4062
4062	name	Kenosha
4062	countrycode	USA
4062	district	Wisconsin
4062	population	89447
4063	id	4063
4063	name	Elgin
4063	countrycode	USA
4063	district	Illinois
4063	population	89408
4064	id	4064
4064	name	Odessa
4064	countrycode	USA
4064	district	Texas
4064	population	89293
4065	id	4065
4065	name	Carson
4065	countrycode	USA
4065	district	California
4065	population	89089
4066	id	4066
4066	name	Charleston
4066	countrycode	USA
4066	district	South Carolina
4066	population	89063
4067	id	4067
4067	name	Charlotte Amalie
4067	countrycode	VIR
4067	district	St Thomas
4067	population	13000
4068	id	4068
4068	name	Harare
4068	countrycode	ZWE
4068	district	Harare
4068	population	1410000
4069	id	4069
4069	name	Bulawayo
4069	countrycode	ZWE
4069	district	Bulawayo
4069	population	621742
4070	id	4070
4070	name	Chitungwiza
4070	countrycode	ZWE
4070	district	Harare
4070	population	274912
4071	id	4071
4071	name	Mount Darwin
4071	countrycode	ZWE
4071	district	Harare
4071	population	164362
4072	id	4072
4072	name	Mutare
4072	countrycode	ZWE
4072	district	Manicaland
4072	population	131367
4073	id	4073
4073	name	Gweru
4073	countrycode	ZWE
4073	district	Midlands
4073	population	128037
4074	id	4074
4074	name	Gaza
4074	countrycode	PSE
4074	district	Gaza
4074	population	353632
4075	id	4075
4075	name	Khan Yunis
4075	countrycode	PSE
4075	district	Khan Yunis
4075	population	123175
4076	id	4076
4076	name	Hebron
4076	countrycode	PSE
4076	district	Hebron
4076	population	119401
4077	id	4077
4077	name	Jabaliya
4077	countrycode	PSE
4077	district	North Gaza
4077	population	113901
4078	id	4078
4078	name	Nablus
4078	countrycode	PSE
4078	district	Nablus
4078	population	100231
4079	id	4079
4079	name	Rafah
4079	countrycode	PSE
4079	district	Rafah
4079	population	92020
4080	code	AFG
4080	name	Afghanistan
4080	continent	Asia
4080	region	Southern and Central Asia
4080	surfacearea	652090.0
4080	indepyear	1919
4080	population	22720000
4080	lifeexpectancy	45.9
4080	gnp	5976.00
4080	localname	Afganistan/Afqanestan
4080	governmentform	Islamic Emirate
4080	headofstate	Mohammad Omar
4080	capital	1
4080	code2	AF
4081	code	NLD
4081	name	Netherlands
4081	continent	Europe
4081	region	Western Europe
4081	surfacearea	41526.0
4081	indepyear	1581
4081	population	15864000
4081	lifeexpectancy	78.3
4081	gnp	371362.00
4081	gnpold	360478.00
4081	localname	Nederland
4081	governmentform	Constitutional Monarchy
4081	headofstate	Beatrix
4081	capital	5
4081	code2	NL
4082	code	ANT
4082	name	Netherlands Antilles
4082	continent	North America
4082	region	Caribbean
4082	surfacearea	800.0
4082	population	217000
4082	lifeexpectancy	74.7
4082	gnp	1941.00
4082	localname	Nederlandse Antillen
4082	governmentform	Nonmetropolitan Territory of The Netherlands
4082	headofstate	Beatrix
4082	capital	33
4082	code2	AN
4083	code	ALB
4083	name	Albania
4083	continent	Europe
4083	region	Southern Europe
4083	surfacearea	28748.0
4083	indepyear	1912
4083	population	3401200
4083	lifeexpectancy	71.6
4083	gnp	3205.00
4083	gnpold	2500.00
4083	localname	Shqipëria
4083	governmentform	Republic
4083	headofstate	Rexhep Mejdani
4083	capital	34
4083	code2	AL
4084	code	DZA
4084	name	Algeria
4084	continent	Africa
4084	region	Northern Africa
4084	surfacearea	2381741.0
4084	indepyear	1962
4084	population	31471000
4084	lifeexpectancy	69.7
4084	gnp	49982.00
4084	gnpold	46966.00
4084	localname	Al-Jazair/Algérie
4084	governmentform	Republic
4084	headofstate	Abdelaziz Bouteflika
4084	capital	35
4084	code2	DZ
4085	code	ASM
4085	name	American Samoa
4085	continent	Oceania
4085	region	Polynesia
4085	surfacearea	199.0
4085	population	68000
4085	lifeexpectancy	75.1
4085	gnp	334.00
4085	localname	Amerika Samoa
4085	governmentform	US Territory
4085	headofstate	George W. Bush
4085	capital	54
4085	code2	AS
4086	code	AND
4086	name	Andorra
4086	continent	Europe
4086	region	Southern Europe
4086	surfacearea	468.0
4086	indepyear	1278
4086	population	78000
4086	lifeexpectancy	83.5
4086	gnp	1630.00
4086	localname	Andorra
4086	governmentform	Parliamentary Coprincipality
4086	headofstate	
4086	capital	55
4086	code2	AD
4087	code	AGO
4087	name	Angola
4087	continent	Africa
4087	region	Central Africa
4087	surfacearea	1246700.0
4087	indepyear	1975
4087	population	12878000
4087	lifeexpectancy	38.3
4087	gnp	6648.00
4087	gnpold	7984.00
4087	localname	Angola
4087	governmentform	Republic
4087	headofstate	José Eduardo dos Santos
4087	capital	56
4087	code2	AO
4088	code	AIA
4088	name	Anguilla
4088	continent	North America
4088	region	Caribbean
4088	surfacearea	96.0
4088	population	8000
4088	lifeexpectancy	76.1
4088	gnp	63.20
4088	localname	Anguilla
4088	governmentform	Dependent Territory of the UK
4088	headofstate	Elisabeth II
4088	capital	62
4088	code2	AI
4089	code	ATG
4089	name	Antigua and Barbuda
4089	continent	North America
4089	region	Caribbean
4089	surfacearea	442.0
4089	indepyear	1981
4089	population	68000
4089	lifeexpectancy	70.5
4089	gnp	612.00
4089	gnpold	584.00
4089	localname	Antigua and Barbuda
4089	governmentform	Constitutional Monarchy
4089	headofstate	Elisabeth II
4089	capital	63
4089	code2	AG
4090	code	ARE
4090	name	United Arab Emirates
4090	continent	Asia
4090	region	Middle East
4090	surfacearea	83600.0
4090	indepyear	1971
4090	population	2441000
4090	lifeexpectancy	74.1
4090	gnp	37966.00
4090	gnpold	36846.00
4090	localname	Al-Imarat al-´Arabiya al-Muttahida
4090	governmentform	Emirate Federation
4090	headofstate	Zayid bin Sultan al-Nahayan
4090	capital	65
4090	code2	AE
4091	code	ARG
4091	name	Argentina
4091	continent	South America
4091	region	South America
4091	surfacearea	2780400.0
4091	indepyear	1816
4091	population	37032000
4091	lifeexpectancy	75.1
4091	gnp	340238.00
4091	gnpold	323310.00
4091	localname	Argentina
4091	governmentform	Federal Republic
4091	headofstate	Fernando de la Rúa
4091	capital	69
4091	code2	AR
4092	code	ARM
4092	name	Armenia
4092	continent	Asia
4092	region	Middle East
4092	surfacearea	29800.0
4092	indepyear	1991
4092	population	3520000
4092	lifeexpectancy	66.4
4092	gnp	1813.00
4092	gnpold	1627.00
4092	localname	Hajastan
4092	governmentform	Republic
4092	headofstate	Robert Kotarjan
4092	capital	126
4092	code2	AM
4093	code	ABW
4093	name	Aruba
4093	continent	North America
4093	region	Caribbean
4093	surfacearea	193.0
4093	population	103000
4093	lifeexpectancy	78.4
4093	gnp	828.00
4093	gnpold	793.00
4093	localname	Aruba
4093	governmentform	Nonmetropolitan Territory of The Netherlands
4093	headofstate	Beatrix
4093	capital	129
4093	code2	AW
4094	code	AUS
4094	name	Australia
4094	continent	Oceania
4094	region	Australia and New Zealand
4094	surfacearea	7741220.0
4094	indepyear	1901
4094	population	18886000
4094	lifeexpectancy	79.8
4094	gnp	351182.00
4094	gnpold	392911.00
4094	localname	Australia
4094	governmentform	Constitutional Monarchy, Federation
4094	headofstate	Elisabeth II
4094	capital	135
4094	code2	AU
4095	code	AZE
4095	name	Azerbaijan
4095	continent	Asia
4095	region	Middle East
4095	surfacearea	86600.0
4095	indepyear	1991
4095	population	7734000
4095	lifeexpectancy	62.9
4095	gnp	4127.00
4095	gnpold	4100.00
4095	localname	Azärbaycan
4095	governmentform	Federal Republic
4095	headofstate	Heydär Äliyev
4095	capital	144
4095	code2	AZ
4096	code	BHS
4096	name	Bahamas
4096	continent	North America
4096	region	Caribbean
4096	surfacearea	13878.0
4096	indepyear	1973
4096	population	307000
4096	lifeexpectancy	71.1
4096	gnp	3527.00
4096	gnpold	3347.00
4096	localname	The Bahamas
4096	governmentform	Constitutional Monarchy
4096	headofstate	Elisabeth II
4096	capital	148
4096	code2	BS
4097	code	BHR
4097	name	Bahrain
4097	continent	Asia
4097	region	Middle East
4097	surfacearea	694.0
4097	indepyear	1971
4097	population	617000
4097	lifeexpectancy	73.0
4097	gnp	6366.00
4097	gnpold	6097.00
4097	localname	Al-Bahrayn
4097	governmentform	Monarchy (Emirate)
4097	headofstate	Hamad ibn Isa al-Khalifa
4097	capital	149
4097	code2	BH
4098	code	BGD
4098	name	Bangladesh
4098	continent	Asia
4098	region	Southern and Central Asia
4098	surfacearea	143998.0
4098	indepyear	1971
4098	population	129155000
4098	lifeexpectancy	60.2
4098	gnp	32852.00
4098	gnpold	31966.00
4098	localname	Bangladesh
4098	governmentform	Republic
4098	headofstate	Shahabuddin Ahmad
4098	capital	150
4098	code2	BD
4099	code	BRB
4099	name	Barbados
4099	continent	North America
4099	region	Caribbean
4099	surfacearea	430.0
4099	indepyear	1966
4099	population	270000
4099	lifeexpectancy	73.0
4099	gnp	2223.00
4099	gnpold	2186.00
4099	localname	Barbados
4099	governmentform	Constitutional Monarchy
4099	headofstate	Elisabeth II
4099	capital	174
4099	code2	BB
4100	code	BEL
4100	name	Belgium
4100	continent	Europe
4100	region	Western Europe
4100	surfacearea	30518.0
4100	indepyear	1830
4100	population	10239000
4100	lifeexpectancy	77.8
4100	gnp	249704.00
4100	gnpold	243948.00
4100	localname	België/Belgique
4100	governmentform	Constitutional Monarchy, Federation
4100	headofstate	Albert II
4100	capital	179
4100	code2	BE
4101	code	BLZ
4101	name	Belize
4101	continent	North America
4101	region	Central America
4101	surfacearea	22696.0
4101	indepyear	1981
4101	population	241000
4101	lifeexpectancy	70.9
4101	gnp	630.00
4101	gnpold	616.00
4101	localname	Belize
4101	governmentform	Constitutional Monarchy
4101	headofstate	Elisabeth II
4101	capital	185
4101	code2	BZ
4102	code	BEN
4102	name	Benin
4102	continent	Africa
4102	region	Western Africa
4102	surfacearea	112622.0
4102	indepyear	1960
4102	population	6097000
4102	lifeexpectancy	50.2
4102	gnp	2357.00
4102	gnpold	2141.00
4102	localname	Bénin
4102	governmentform	Republic
4102	headofstate	Mathieu Kérékou
4102	capital	187
4102	code2	BJ
4103	code	BMU
4103	name	Bermuda
4103	continent	North America
4103	region	North America
4103	surfacearea	53.0
4103	population	65000
4103	lifeexpectancy	76.9
4103	gnp	2328.00
4103	gnpold	2190.00
4103	localname	Bermuda
4103	governmentform	Dependent Territory of the UK
4103	headofstate	Elisabeth II
4103	capital	191
4103	code2	BM
4104	code	BTN
4104	name	Bhutan
4104	continent	Asia
4104	region	Southern and Central Asia
4104	surfacearea	47000.0
4104	indepyear	1910
4104	population	2124000
4104	lifeexpectancy	52.4
4104	gnp	372.00
4104	gnpold	383.00
4104	localname	Druk-Yul
4104	governmentform	Monarchy
4104	headofstate	Jigme Singye Wangchuk
4104	capital	192
4104	code2	BT
4105	code	BOL
4105	name	Bolivia
4105	continent	South America
4105	region	South America
4105	surfacearea	1098581.0
4105	indepyear	1825
4105	population	8329000
4105	lifeexpectancy	63.7
4105	gnp	8571.00
4105	gnpold	7967.00
4105	localname	Bolivia
4105	governmentform	Republic
4105	headofstate	Hugo Bánzer Suárez
4105	capital	194
4105	code2	BO
4106	code	BIH
4106	name	Bosnia and Herzegovina
4106	continent	Europe
4106	region	Southern Europe
4106	surfacearea	51197.0
4106	indepyear	1992
4106	population	3972000
4106	lifeexpectancy	71.5
4106	gnp	2841.00
4106	localname	Bosna i Hercegovina
4106	governmentform	Federal Republic
4106	headofstate	Ante Jelavic
4106	capital	201
4106	code2	BA
4107	code	BWA
4107	name	Botswana
4107	continent	Africa
4107	region	Southern Africa
4107	surfacearea	581730.0
4107	indepyear	1966
4107	population	1622000
4107	lifeexpectancy	39.3
4107	gnp	4834.00
4107	gnpold	4935.00
4107	localname	Botswana
4107	governmentform	Republic
4107	headofstate	Festus G. Mogae
4107	capital	204
4107	code2	BW
4108	code	BRA
4108	name	Brazil
4108	continent	South America
4108	region	South America
4108	surfacearea	8547403.0
4108	indepyear	1822
4108	population	170115000
4108	lifeexpectancy	62.9
4108	gnp	776739.00
4108	gnpold	804108.00
4108	localname	Brasil
4108	governmentform	Federal Republic
4108	headofstate	Fernando Henrique Cardoso
4108	capital	211
4108	code2	BR
4109	code	GBR
4109	name	United Kingdom
4109	continent	Europe
4109	region	British Islands
4109	surfacearea	242900.0
4109	indepyear	1066
4109	population	59623400
4109	lifeexpectancy	77.7
4109	gnp	1378330.00
4109	gnpold	1296830.00
4109	localname	United Kingdom
4109	governmentform	Constitutional Monarchy
4109	headofstate	Elisabeth II
4109	capital	456
4109	code2	GB
4110	code	VGB
4110	name	Virgin Islands, British
4110	continent	North America
4110	region	Caribbean
4110	surfacearea	151.0
4110	population	21000
4110	lifeexpectancy	75.4
4110	gnp	612.00
4110	gnpold	573.00
4110	localname	British Virgin Islands
4110	governmentform	Dependent Territory of the UK
4110	headofstate	Elisabeth II
4110	capital	537
4110	code2	VG
4111	code	BRN
4111	name	Brunei
4111	continent	Asia
4111	region	Southeast Asia
4111	surfacearea	5765.0
4111	indepyear	1984
4111	population	328000
4111	lifeexpectancy	73.6
4111	gnp	11705.00
4111	gnpold	12460.00
4111	localname	Brunei Darussalam
4111	governmentform	Monarchy (Sultanate)
4111	headofstate	Haji Hassan al-Bolkiah
4111	capital	538
4111	code2	BN
4112	code	BGR
4112	name	Bulgaria
4112	continent	Europe
4112	region	Eastern Europe
4112	surfacearea	110994.0
4112	indepyear	1908
4112	population	8190900
4112	lifeexpectancy	70.9
4112	gnp	12178.00
4112	gnpold	10169.00
4112	localname	Balgarija
4112	governmentform	Republic
4112	headofstate	Petar Stojanov
4112	capital	539
4112	code2	BG
4113	code	BFA
4113	name	Burkina Faso
4113	continent	Africa
4113	region	Western Africa
4113	surfacearea	274000.0
4113	indepyear	1960
4113	population	11937000
4113	lifeexpectancy	46.7
4113	gnp	2425.00
4113	gnpold	2201.00
4113	localname	Burkina Faso
4113	governmentform	Republic
4113	headofstate	Blaise Compaoré
4113	capital	549
4113	code2	BF
4114	code	BDI
4114	name	Burundi
4114	continent	Africa
4114	region	Eastern Africa
4114	surfacearea	27834.0
4114	indepyear	1962
4114	population	6695000
4114	lifeexpectancy	46.2
4114	gnp	903.00
4114	gnpold	982.00
4114	localname	Burundi/Uburundi
4114	governmentform	Republic
4114	headofstate	Pierre Buyoya
4114	capital	552
4114	code2	BI
4115	code	CYM
4115	name	Cayman Islands
4115	continent	North America
4115	region	Caribbean
4115	surfacearea	264.0
4115	population	38000
4115	lifeexpectancy	78.9
4115	gnp	1263.00
4115	gnpold	1186.00
4115	localname	Cayman Islands
4115	governmentform	Dependent Territory of the UK
4115	headofstate	Elisabeth II
4115	capital	553
4115	code2	KY
4116	code	CHL
4116	name	Chile
4116	continent	South America
4116	region	South America
4116	surfacearea	756626.0
4116	indepyear	1810
4116	population	15211000
4116	lifeexpectancy	75.7
4116	gnp	72949.00
4116	gnpold	75780.00
4116	localname	Chile
4116	governmentform	Republic
4116	headofstate	Ricardo Lagos Escobar
4116	capital	554
4116	code2	CL
4117	code	COK
4117	name	Cook Islands
4117	continent	Oceania
4117	region	Polynesia
4117	surfacearea	236.0
4117	population	20000
4117	lifeexpectancy	71.1
4117	gnp	100.00
4117	localname	The Cook Islands
4117	governmentform	Nonmetropolitan Territory of New Zealand
4117	headofstate	Elisabeth II
4117	capital	583
4117	code2	CK
4118	code	CRI
4118	name	Costa Rica
4118	continent	North America
4118	region	Central America
4118	surfacearea	51100.0
4118	indepyear	1821
4118	population	4023000
4118	lifeexpectancy	75.8
4118	gnp	10226.00
4118	gnpold	9757.00
4118	localname	Costa Rica
4118	governmentform	Republic
4118	headofstate	Miguel Ángel Rodríguez Echeverría
4118	capital	584
4118	code2	CR
4119	code	DJI
4119	name	Djibouti
4119	continent	Africa
4119	region	Eastern Africa
4119	surfacearea	23200.0
4119	indepyear	1977
4119	population	638000
4119	lifeexpectancy	50.8
4119	gnp	382.00
4119	gnpold	373.00
4119	localname	Djibouti/Jibuti
4119	governmentform	Republic
4119	headofstate	Ismail Omar Guelleh
4119	capital	585
4119	code2	DJ
4120	code	DMA
4120	name	Dominica
4120	continent	North America
4120	region	Caribbean
4120	surfacearea	751.0
4120	indepyear	1978
4120	population	71000
4120	lifeexpectancy	73.4
4120	gnp	256.00
4120	gnpold	243.00
4120	localname	Dominica
4120	governmentform	Republic
4120	headofstate	Vernon Shaw
4120	capital	586
4120	code2	DM
4121	code	DOM
4121	name	Dominican Republic
4121	continent	North America
4121	region	Caribbean
4121	surfacearea	48511.0
4121	indepyear	1844
4121	population	8495000
4121	lifeexpectancy	73.2
4121	gnp	15846.00
4121	gnpold	15076.00
4121	localname	República Dominicana
4121	governmentform	Republic
4121	headofstate	Hipólito Mejía Domínguez
4121	capital	587
4121	code2	DO
4122	code	ECU
4122	name	Ecuador
4122	continent	South America
4122	region	South America
4122	surfacearea	283561.0
4122	indepyear	1822
4122	population	12646000
4122	lifeexpectancy	71.1
4122	gnp	19770.00
4122	gnpold	19769.00
4122	localname	Ecuador
4122	governmentform	Republic
4122	headofstate	Gustavo Noboa Bejarano
4122	capital	594
4122	code2	EC
4123	code	EGY
4123	name	Egypt
4123	continent	Africa
4123	region	Northern Africa
4123	surfacearea	1001449.0
4123	indepyear	1922
4123	population	68470000
4123	lifeexpectancy	63.3
4123	gnp	82710.00
4123	gnpold	75617.00
4123	localname	Misr
4123	governmentform	Republic
4123	headofstate	Hosni Mubarak
4123	capital	608
4123	code2	EG
4124	code	SLV
4124	name	El Salvador
4124	continent	North America
4124	region	Central America
4124	surfacearea	21041.0
4124	indepyear	1841
4124	population	6276000
4124	lifeexpectancy	69.7
4124	gnp	11863.00
4124	gnpold	11203.00
4124	localname	El Salvador
4124	governmentform	Republic
4124	headofstate	Francisco Guillermo Flores Pérez
4124	capital	645
4124	code2	SV
4125	code	ERI
4125	name	Eritrea
4125	continent	Africa
4125	region	Eastern Africa
4125	surfacearea	117600.0
4125	indepyear	1993
4125	population	3850000
4125	lifeexpectancy	55.8
4125	gnp	650.00
4125	gnpold	755.00
4125	localname	Ertra
4125	governmentform	Republic
4125	headofstate	Isayas Afewerki [Isaias Afwerki]
4125	capital	652
4125	code2	ER
4126	code	ESP
4126	name	Spain
4126	continent	Europe
4126	region	Southern Europe
4126	surfacearea	505992.0
4126	indepyear	1492
4126	population	39441700
4126	lifeexpectancy	78.8
4126	gnp	553233.00
4126	gnpold	532031.00
4126	localname	España
4126	governmentform	Constitutional Monarchy
4126	headofstate	Juan Carlos I
4126	capital	653
4126	code2	ES
4127	code	ZAF
4127	name	South Africa
4127	continent	Africa
4127	region	Southern Africa
4127	surfacearea	1221037.0
4127	indepyear	1910
4127	population	40377000
4127	lifeexpectancy	51.1
4127	gnp	116729.00
4127	gnpold	129092.00
4127	localname	South Africa
4127	governmentform	Republic
4127	headofstate	Thabo Mbeki
4127	capital	716
4127	code2	ZA
4128	code	ETH
4128	name	Ethiopia
4128	continent	Africa
4128	region	Eastern Africa
4128	surfacearea	1104300.0
4128	indepyear	-1000
4128	population	62565000
4128	lifeexpectancy	45.2
4128	gnp	6353.00
4128	gnpold	6180.00
4128	localname	YeItyop´iya
4128	governmentform	Republic
4128	headofstate	Negasso Gidada
4128	capital	756
4128	code2	ET
4129	code	FLK
4129	name	Falkland Islands
4129	continent	South America
4129	region	South America
4129	surfacearea	12173.0
4129	population	2000
4129	gnp	0.00
4129	localname	Falkland Islands
4129	governmentform	Dependent Territory of the UK
4129	headofstate	Elisabeth II
4129	capital	763
4129	code2	FK
4130	code	FJI
4130	name	Fiji Islands
4130	continent	Oceania
4130	region	Melanesia
4130	surfacearea	18274.0
4130	indepyear	1970
4130	population	817000
4130	lifeexpectancy	67.9
4130	gnp	1536.00
4130	gnpold	2149.00
4130	localname	Fiji Islands
4130	governmentform	Republic
4130	headofstate	Josefa Iloilo
4130	capital	764
4130	code2	FJ
4131	code	PHL
4131	name	Philippines
4131	continent	Asia
4131	region	Southeast Asia
4131	surfacearea	300000.0
4131	indepyear	1946
4131	population	75967000
4131	lifeexpectancy	67.5
4131	gnp	65107.00
4131	gnpold	82239.00
4131	localname	Pilipinas
4131	governmentform	Republic
4131	headofstate	Gloria Macapagal-Arroyo
4131	capital	766
4131	code2	PH
4132	code	FRO
4132	name	Faroe Islands
4132	continent	Europe
4132	region	Nordic Countries
4132	surfacearea	1399.0
4132	population	43000
4132	lifeexpectancy	78.4
4132	gnp	0.00
4132	localname	Føroyar
4132	governmentform	Part of Denmark
4132	headofstate	Margrethe II
4132	capital	901
4132	code2	FO
4133	code	GAB
4133	name	Gabon
4133	continent	Africa
4133	region	Central Africa
4133	surfacearea	267668.0
4133	indepyear	1960
4133	population	1226000
4133	lifeexpectancy	50.1
4133	gnp	5493.00
4133	gnpold	5279.00
4133	localname	Le Gabon
4133	governmentform	Republic
4133	headofstate	Omar Bongo
4133	capital	902
4133	code2	GA
4134	code	GMB
4134	name	Gambia
4134	continent	Africa
4134	region	Western Africa
4134	surfacearea	11295.0
4134	indepyear	1965
4134	population	1305000
4134	lifeexpectancy	53.2
4134	gnp	320.00
4134	gnpold	325.00
4134	localname	The Gambia
4134	governmentform	Republic
4134	headofstate	Yahya Jammeh
4134	capital	904
4134	code2	GM
4135	code	GEO
4135	name	Georgia
4135	continent	Asia
4135	region	Middle East
4135	surfacearea	69700.0
4135	indepyear	1991
4135	population	4968000
4135	lifeexpectancy	64.5
4135	gnp	6064.00
4135	gnpold	5924.00
4135	localname	Sakartvelo
4135	governmentform	Republic
4135	headofstate	Eduard evardnadze
4135	capital	905
4135	code2	GE
4136	code	GHA
4136	name	Ghana
4136	continent	Africa
4136	region	Western Africa
4136	surfacearea	238533.0
4136	indepyear	1957
4136	population	20212000
4136	lifeexpectancy	57.4
4136	gnp	7137.00
4136	gnpold	6884.00
4136	localname	Ghana
4136	governmentform	Republic
4136	headofstate	John Kufuor
4136	capital	910
4136	code2	GH
4137	code	GIB
4137	name	Gibraltar
4137	continent	Europe
4137	region	Southern Europe
4137	surfacearea	6.0
4137	population	25000
4137	lifeexpectancy	79.0
4137	gnp	258.00
4137	localname	Gibraltar
4137	governmentform	Dependent Territory of the UK
4137	headofstate	Elisabeth II
4137	capital	915
4137	code2	GI
4138	code	GRD
4138	name	Grenada
4138	continent	North America
4138	region	Caribbean
4138	surfacearea	344.0
4138	indepyear	1974
4138	population	94000
4138	lifeexpectancy	64.5
4138	gnp	318.00
4138	localname	Grenada
4138	governmentform	Constitutional Monarchy
4138	headofstate	Elisabeth II
4138	capital	916
4138	code2	GD
4139	code	GRL
4139	name	Greenland
4139	continent	North America
4139	region	North America
4139	surfacearea	2166090.0
4139	population	56000
4139	lifeexpectancy	68.1
4139	gnp	0.00
4139	localname	Kalaallit Nunaat/Grønland
4139	governmentform	Part of Denmark
4139	headofstate	Margrethe II
4139	capital	917
4139	code2	GL
4140	code	GLP
4140	name	Guadeloupe
4140	continent	North America
4140	region	Caribbean
4140	surfacearea	1705.0
4140	population	456000
4140	lifeexpectancy	77.0
4140	gnp	3501.00
4140	localname	Guadeloupe
4140	governmentform	Overseas Department of France
4140	headofstate	Jacques Chirac
4140	capital	919
4140	code2	GP
4141	code	GUM
4141	name	Guam
4141	continent	Oceania
4141	region	Micronesia
4141	surfacearea	549.0
4141	population	168000
4141	lifeexpectancy	77.8
4141	gnp	1197.00
4141	gnpold	1136.00
4141	localname	Guam
4141	governmentform	US Territory
4141	headofstate	George W. Bush
4141	capital	921
4141	code2	GU
4142	code	GTM
4142	name	Guatemala
4142	continent	North America
4142	region	Central America
4142	surfacearea	108889.0
4142	indepyear	1821
4142	population	11385000
4142	lifeexpectancy	66.2
4142	gnp	19008.00
4142	gnpold	17797.00
4142	localname	Guatemala
4142	governmentform	Republic
4142	headofstate	Alfonso Portillo Cabrera
4142	capital	922
4142	code2	GT
4143	code	GIN
4143	name	Guinea
4143	continent	Africa
4143	region	Western Africa
4143	surfacearea	245857.0
4143	indepyear	1958
4143	population	7430000
4143	lifeexpectancy	45.6
4143	gnp	2352.00
4143	gnpold	2383.00
4143	localname	Guinée
4143	governmentform	Republic
4143	headofstate	Lansana Conté
4143	capital	926
4143	code2	GN
4144	code	GNB
4144	name	Guinea-Bissau
4144	continent	Africa
4144	region	Western Africa
4144	surfacearea	36125.0
4144	indepyear	1974
4144	population	1213000
4144	lifeexpectancy	49.0
4144	gnp	293.00
4144	gnpold	272.00
4144	localname	Guiné-Bissau
4144	governmentform	Republic
4144	headofstate	Kumba Ialá
4144	capital	927
4144	code2	GW
4145	code	GUY
4145	name	Guyana
4145	continent	South America
4145	region	South America
4145	surfacearea	214969.0
4145	indepyear	1966
4145	population	861000
4145	lifeexpectancy	64.0
4145	gnp	722.00
4145	gnpold	743.00
4145	localname	Guyana
4145	governmentform	Republic
4145	headofstate	Bharrat Jagdeo
4145	capital	928
4145	code2	GY
4146	code	HTI
4146	name	Haiti
4146	continent	North America
4146	region	Caribbean
4146	surfacearea	27750.0
4146	indepyear	1804
4146	population	8222000
4146	lifeexpectancy	49.2
4146	gnp	3459.00
4146	gnpold	3107.00
4146	localname	Haïti/Dayti
4146	governmentform	Republic
4146	headofstate	Jean-Bertrand Aristide
4146	capital	929
4146	code2	HT
4147	code	HND
4147	name	Honduras
4147	continent	North America
4147	region	Central America
4147	surfacearea	112088.0
4147	indepyear	1838
4147	population	6485000
4147	lifeexpectancy	69.9
4147	gnp	5333.00
4147	gnpold	4697.00
4147	localname	Honduras
4147	governmentform	Republic
4147	headofstate	Carlos Roberto Flores Facussé
4147	capital	933
4147	code2	HN
4148	code	HKG
4148	name	Hong Kong
4148	continent	Asia
4148	region	Eastern Asia
4148	surfacearea	1075.0
4148	population	6782000
4148	lifeexpectancy	79.5
4148	gnp	166448.00
4148	gnpold	173610.00
4148	localname	Xianggang/Hong Kong
4148	governmentform	Special Administrative Region of China
4148	headofstate	Jiang Zemin
4148	capital	937
4148	code2	HK
4149	code	SJM
4149	name	Svalbard and Jan Mayen
4149	continent	Europe
4149	region	Nordic Countries
4149	surfacearea	62422.0
4149	population	3200
4149	gnp	0.00
4149	localname	Svalbard og Jan Mayen
4149	governmentform	Dependent Territory of Norway
4149	headofstate	Harald V
4149	capital	938
4149	code2	SJ
4150	code	IDN
4150	name	Indonesia
4150	continent	Asia
4150	region	Southeast Asia
4150	surfacearea	1904569.0
4150	indepyear	1945
4150	population	212107000
4150	lifeexpectancy	68.0
4150	gnp	84982.00
4150	gnpold	215002.00
4150	localname	Indonesia
4150	governmentform	Republic
4150	headofstate	Abdurrahman Wahid
4150	capital	939
4150	code2	ID
4151	code	IND
4151	name	India
4151	continent	Asia
4151	region	Southern and Central Asia
4151	surfacearea	3287263.0
4151	indepyear	1947
4151	population	1013662000
4151	lifeexpectancy	62.5
4151	gnp	447114.00
4151	gnpold	430572.00
4151	localname	Bharat/India
4151	governmentform	Federal Republic
4151	headofstate	Kocheril Raman Narayanan
4151	capital	1109
4151	code2	IN
4152	code	IRQ
4152	name	Iraq
4152	continent	Asia
4152	region	Middle East
4152	surfacearea	438317.0
4152	indepyear	1932
4152	population	23115000
4152	lifeexpectancy	66.5
4152	gnp	11500.00
4152	localname	Al-´Iraq
4152	governmentform	Republic
4152	headofstate	Saddam Hussein al-Takriti
4152	capital	1365
4152	code2	IQ
4153	code	IRN
4153	name	Iran
4153	continent	Asia
4153	region	Southern and Central Asia
4153	surfacearea	1648195.0
4153	indepyear	1906
4153	population	67702000
4153	lifeexpectancy	69.7
4153	gnp	195746.00
4153	gnpold	160151.00
4153	localname	Iran
4153	governmentform	Islamic Republic
4153	headofstate	Ali Mohammad Khatami-Ardakani
4153	capital	1380
4153	code2	IR
4154	code	IRL
4154	name	Ireland
4154	continent	Europe
4154	region	British Islands
4154	surfacearea	70273.0
4154	indepyear	1921
4154	population	3775100
4154	lifeexpectancy	76.8
4154	gnp	75921.00
4154	gnpold	73132.00
4154	localname	Ireland/Éire
4154	governmentform	Republic
4154	headofstate	Mary McAleese
4154	capital	1447
4154	code2	IE
4155	code	ISL
4155	name	Iceland
4155	continent	Europe
4155	region	Nordic Countries
4155	surfacearea	103000.0
4155	indepyear	1944
4155	population	279000
4155	lifeexpectancy	79.4
4155	gnp	8255.00
4155	gnpold	7474.00
4155	localname	Ísland
4155	governmentform	Republic
4155	headofstate	Ólafur Ragnar Grímsson
4155	capital	1449
4155	code2	IS
4156	code	ISR
4156	name	Israel
4156	continent	Asia
4156	region	Middle East
4156	surfacearea	21056.0
4156	indepyear	1948
4156	population	6217000
4156	lifeexpectancy	78.6
4156	gnp	97477.00
4156	gnpold	98577.00
4156	localname	Yisrael/Israil
4156	governmentform	Republic
4156	headofstate	Moshe Katzav
4156	capital	1450
4156	code2	IL
4157	code	ITA
4157	name	Italy
4157	continent	Europe
4157	region	Southern Europe
4157	surfacearea	301316.0
4157	indepyear	1861
4157	population	57680000
4157	lifeexpectancy	79.0
4157	gnp	1161755.00
4157	gnpold	1145372.00
4157	localname	Italia
4157	governmentform	Republic
4157	headofstate	Carlo Azeglio Ciampi
4157	capital	1464
4157	code2	IT
4158	code	TMP
4158	name	East Timor
4158	continent	Asia
4158	region	Southeast Asia
4158	surfacearea	14874.0
4158	population	885000
4158	lifeexpectancy	46.0
4158	gnp	0.00
4158	localname	Timor Timur
4158	governmentform	Administrated by the UN
4158	headofstate	José Alexandre Gusmão
4158	capital	1522
4158	code2	TP
4159	code	AUT
4159	name	Austria
4159	continent	Europe
4159	region	Western Europe
4159	surfacearea	83859.0
4159	indepyear	1918
4159	population	8091800
4159	lifeexpectancy	77.7
4159	gnp	211860.00
4159	gnpold	206025.00
4159	localname	Österreich
4159	governmentform	Federal Republic
4159	headofstate	Thomas Klestil
4159	capital	1523
4159	code2	AT
4160	code	JAM
4160	name	Jamaica
4160	continent	North America
4160	region	Caribbean
4160	surfacearea	10990.0
4160	indepyear	1962
4160	population	2583000
4160	lifeexpectancy	75.2
4160	gnp	6871.00
4160	gnpold	6722.00
4160	localname	Jamaica
4160	governmentform	Constitutional Monarchy
4160	headofstate	Elisabeth II
4160	capital	1530
4160	code2	JM
4161	code	JPN
4161	name	Japan
4161	continent	Asia
4161	region	Eastern Asia
4161	surfacearea	377829.0
4161	indepyear	-660
4161	population	126714000
4161	lifeexpectancy	80.7
4161	gnp	3787042.00
4161	gnpold	4192638.00
4161	localname	Nihon/Nippon
4161	governmentform	Constitutional Monarchy
4161	headofstate	Akihito
4161	capital	1532
4161	code2	JP
4162	code	YEM
4162	name	Yemen
4162	continent	Asia
4162	region	Middle East
4162	surfacearea	527968.0
4162	indepyear	1918
4162	population	18112000
4162	lifeexpectancy	59.8
4162	gnp	6041.00
4162	gnpold	5729.00
4162	localname	Al-Yaman
4162	governmentform	Republic
4162	headofstate	Ali Abdallah Salih
4162	capital	1780
4162	code2	YE
4163	code	JOR
4163	name	Jordan
4163	continent	Asia
4163	region	Middle East
4163	surfacearea	88946.0
4163	indepyear	1946
4163	population	5083000
4163	lifeexpectancy	77.4
4163	gnp	7526.00
4163	gnpold	7051.00
4163	localname	Al-Urdunn
4163	governmentform	Constitutional Monarchy
4163	headofstate	Abdullah II
4163	capital	1786
4163	code2	JO
4164	code	CXR
4164	name	Christmas Island
4164	continent	Oceania
4164	region	Australia and New Zealand
4164	surfacearea	135.0
4164	population	2500
4164	gnp	0.00
4164	localname	Christmas Island
4164	governmentform	Territory of Australia
4164	headofstate	Elisabeth II
4164	capital	1791
4164	code2	CX
4165	code	YUG
4165	name	Yugoslavia
4165	continent	Europe
4165	region	Southern Europe
4165	surfacearea	102173.0
4165	indepyear	1918
4165	population	10640000
4165	lifeexpectancy	72.4
4165	gnp	17000.00
4165	localname	Jugoslavija
4165	governmentform	Federal Republic
4165	headofstate	Vojislav Kotunica
4165	capital	1792
4165	code2	YU
4166	code	KHM
4166	name	Cambodia
4166	continent	Asia
4166	region	Southeast Asia
4166	surfacearea	181035.0
4166	indepyear	1953
4166	population	11168000
4166	lifeexpectancy	56.5
4166	gnp	5121.00
4166	gnpold	5670.00
4166	localname	Kâmpuchéa
4166	governmentform	Constitutional Monarchy
4166	headofstate	Norodom Sihanouk
4166	capital	1800
4166	code2	KH
4167	code	CMR
4167	name	Cameroon
4167	continent	Africa
4167	region	Central Africa
4167	surfacearea	475442.0
4167	indepyear	1960
4167	population	15085000
4167	lifeexpectancy	54.8
4167	gnp	9174.00
4167	gnpold	8596.00
4167	localname	Cameroun/Cameroon
4167	governmentform	Republic
4167	headofstate	Paul Biya
4167	capital	1804
4167	code2	CM
4168	code	CAN
4168	name	Canada
4168	continent	North America
4168	region	North America
4168	surfacearea	9970610.0
4168	indepyear	1867
4168	population	31147000
4168	lifeexpectancy	79.4
4168	gnp	598862.00
4168	gnpold	625626.00
4168	localname	Canada
4168	governmentform	Constitutional Monarchy, Federation
4168	headofstate	Elisabeth II
4168	capital	1822
4168	code2	CA
4169	code	CPV
4169	name	Cape Verde
4169	continent	Africa
4169	region	Western Africa
4169	surfacearea	4033.0
4169	indepyear	1975
4169	population	428000
4169	lifeexpectancy	68.9
4169	gnp	435.00
4169	gnpold	420.00
4169	localname	Cabo Verde
4169	governmentform	Republic
4169	headofstate	António Mascarenhas Monteiro
4169	capital	1859
4169	code2	CV
4170	code	KAZ
4170	name	Kazakstan
4170	continent	Asia
4170	region	Southern and Central Asia
4170	surfacearea	2724900.0
4170	indepyear	1991
4170	population	16223000
4170	lifeexpectancy	63.2
4170	gnp	24375.00
4170	gnpold	23383.00
4170	localname	Qazaqstan
4170	governmentform	Republic
4170	headofstate	Nursultan Nazarbajev
4170	capital	1864
4170	code2	KZ
4171	code	KEN
4171	name	Kenya
4171	continent	Africa
4171	region	Eastern Africa
4171	surfacearea	580367.0
4171	indepyear	1963
4171	population	30080000
4171	lifeexpectancy	48.0
4171	gnp	9217.00
4171	gnpold	10241.00
4171	localname	Kenya
4171	governmentform	Republic
4171	headofstate	Daniel arap Moi
4171	capital	1881
4171	code2	KE
4172	code	CAF
4172	name	Central African Republic
4172	continent	Africa
4172	region	Central Africa
4172	surfacearea	622984.0
4172	indepyear	1960
4172	population	3615000
4172	lifeexpectancy	44.0
4172	gnp	1054.00
4172	gnpold	993.00
4172	localname	Centrafrique/Bê-Afrîka
4172	governmentform	Republic
4172	headofstate	Ange-Félix Patassé
4172	capital	1889
4172	code2	CF
4173	code	CHN
4173	name	China
4173	continent	Asia
4173	region	Eastern Asia
4173	surfacearea	9572900.0
4173	indepyear	-1523
4173	population	1277558000
4173	lifeexpectancy	71.4
4173	gnp	982268.00
4173	gnpold	917719.00
4173	localname	Zhongquo
4173	governmentform	People'sRepublic
4173	headofstate	Jiang Zemin
4173	capital	1891
4173	code2	CN
4174	code	KGZ
4174	name	Kyrgyzstan
4174	continent	Asia
4174	region	Southern and Central Asia
4174	surfacearea	199900.0
4174	indepyear	1991
4174	population	4699000
4174	lifeexpectancy	63.4
4174	gnp	1626.00
4174	gnpold	1767.00
4174	localname	Kyrgyzstan
4174	governmentform	Republic
4174	headofstate	Askar Akajev
4174	capital	2253
4174	code2	KG
4175	code	KIR
4175	name	Kiribati
4175	continent	Oceania
4175	region	Micronesia
4175	surfacearea	726.0
4175	indepyear	1979
4175	population	83000
4175	lifeexpectancy	59.8
4175	gnp	40.70
4175	localname	Kiribati
4175	governmentform	Republic
4175	headofstate	Teburoro Tito
4175	capital	2256
4175	code2	KI
4176	code	COL
4176	name	Colombia
4176	continent	South America
4176	region	South America
4176	surfacearea	1138914.0
4176	indepyear	1810
4176	population	42321000
4176	lifeexpectancy	70.3
4176	gnp	102896.00
4176	gnpold	105116.00
4176	localname	Colombia
4176	governmentform	Republic
4176	headofstate	Andrés Pastrana Arango
4176	capital	2257
4176	code2	CO
4177	code	COM
4177	name	Comoros
4177	continent	Africa
4177	region	Eastern Africa
4177	surfacearea	1862.0
4177	indepyear	1975
4177	population	578000
4177	lifeexpectancy	60.0
4177	gnp	4401.00
4177	gnpold	4361.00
4177	localname	Komori/Comores
4177	governmentform	Republic
4177	headofstate	Azali Assoumani
4177	capital	2295
4177	code2	KM
4178	code	COG
4178	name	Congo
4178	continent	Africa
4178	region	Central Africa
4178	surfacearea	342000.0
4178	indepyear	1960
4178	population	2943000
4178	lifeexpectancy	47.4
4178	gnp	2108.00
4178	gnpold	2287.00
4178	localname	Congo
4178	governmentform	Republic
4178	headofstate	Denis Sassou-Nguesso
4178	capital	2296
4178	code2	CG
4179	code	COD
4179	name	Congo, The Democratic Republic of the
4179	continent	Africa
4179	region	Central Africa
4179	surfacearea	2344858.0
4179	indepyear	1960
4179	population	51654000
4179	lifeexpectancy	48.8
4179	gnp	6964.00
4179	gnpold	2474.00
4179	localname	République Démocratique du Congo
4179	governmentform	Republic
4179	headofstate	Joseph Kabila
4179	capital	2298
4179	code2	CD
4180	code	CCK
4180	name	Cocos (Keeling) Islands
4180	continent	Oceania
4180	region	Australia and New Zealand
4180	surfacearea	14.0
4180	population	600
4180	gnp	0.00
4180	localname	Cocos (Keeling) Islands
4180	governmentform	Territory of Australia
4180	headofstate	Elisabeth II
4180	capital	2317
4180	code2	CC
4181	code	PRK
4181	name	North Korea
4181	continent	Asia
4181	region	Eastern Asia
4181	surfacearea	120538.0
4181	indepyear	1948
4181	population	24039000
4181	lifeexpectancy	70.7
4181	gnp	5332.00
4181	localname	Choson Minjujuui In´min Konghwaguk (Bukhan)
4181	governmentform	Socialistic Republic
4181	headofstate	Kim Jong-il
4181	capital	2318
4181	code2	KP
4182	code	KOR
4182	name	South Korea
4182	continent	Asia
4182	region	Eastern Asia
4182	surfacearea	99434.0
4182	indepyear	1948
4182	population	46844000
4182	lifeexpectancy	74.4
4182	gnp	320749.00
4182	gnpold	442544.00
4182	localname	Taehan Minguk (Namhan)
4182	governmentform	Republic
4182	headofstate	Kim Dae-jung
4182	capital	2331
4182	code2	KR
4183	code	GRC
4183	name	Greece
4183	continent	Europe
4183	region	Southern Europe
4183	surfacearea	131626.0
4183	indepyear	1830
4183	population	10545700
4183	lifeexpectancy	78.4
4183	gnp	120724.00
4183	gnpold	119946.00
4183	localname	Elláda
4183	governmentform	Republic
4183	headofstate	Kostis Stefanopoulos
4183	capital	2401
4183	code2	GR
4184	code	HRV
4184	name	Croatia
4184	continent	Europe
4184	region	Southern Europe
4184	surfacearea	56538.0
4184	indepyear	1991
4184	population	4473000
4184	lifeexpectancy	73.7
4184	gnp	20208.00
4184	gnpold	19300.00
4184	localname	Hrvatska
4184	governmentform	Republic
4184	headofstate	tipe Mesic
4184	capital	2409
4184	code2	HR
4185	code	CUB
4185	name	Cuba
4185	continent	North America
4185	region	Caribbean
4185	surfacearea	110861.0
4185	indepyear	1902
4185	population	11201000
4185	lifeexpectancy	76.2
4185	gnp	17843.00
4185	gnpold	18862.00
4185	localname	Cuba
4185	governmentform	Socialistic Republic
4185	headofstate	Fidel Castro Ruz
4185	capital	2413
4185	code2	CU
4186	code	KWT
4186	name	Kuwait
4186	continent	Asia
4186	region	Middle East
4186	surfacearea	17818.0
4186	indepyear	1961
4186	population	1972000
4186	lifeexpectancy	76.1
4186	gnp	27037.00
4186	gnpold	30373.00
4186	localname	Al-Kuwayt
4186	governmentform	Constitutional Monarchy (Emirate)
4186	headofstate	Jabir al-Ahmad al-Jabir al-Sabah
4186	capital	2429
4186	code2	KW
4187	code	CYP
4187	name	Cyprus
4187	continent	Asia
4187	region	Middle East
4187	surfacearea	9251.0
4187	indepyear	1960
4187	population	754700
4187	lifeexpectancy	76.7
4187	gnp	9333.00
4187	gnpold	8246.00
4187	localname	Kýpros/Kibris
4187	governmentform	Republic
4187	headofstate	Glafkos Klerides
4187	capital	2430
4187	code2	CY
4188	code	LAO
4188	name	Laos
4188	continent	Asia
4188	region	Southeast Asia
4188	surfacearea	236800.0
4188	indepyear	1953
4188	population	5433000
4188	lifeexpectancy	53.1
4188	gnp	1292.00
4188	gnpold	1746.00
4188	localname	Lao
4188	governmentform	Republic
4188	headofstate	Khamtay Siphandone
4188	capital	2432
4188	code2	LA
4189	code	LVA
4189	name	Latvia
4189	continent	Europe
4189	region	Baltic Countries
4189	surfacearea	64589.0
4189	indepyear	1991
4189	population	2424200
4189	lifeexpectancy	68.4
4189	gnp	6398.00
4189	gnpold	5639.00
4189	localname	Latvija
4189	governmentform	Republic
4189	headofstate	Vaira Vike-Freiberga
4189	capital	2434
4189	code2	LV
4190	code	LSO
4190	name	Lesotho
4190	continent	Africa
4190	region	Southern Africa
4190	surfacearea	30355.0
4190	indepyear	1966
4190	population	2153000
4190	lifeexpectancy	50.8
4190	gnp	1061.00
4190	gnpold	1161.00
4190	localname	Lesotho
4190	governmentform	Constitutional Monarchy
4190	headofstate	Letsie III
4190	capital	2437
4190	code2	LS
4191	code	LBN
4191	name	Lebanon
4191	continent	Asia
4191	region	Middle East
4191	surfacearea	10400.0
4191	indepyear	1941
4191	population	3282000
4191	lifeexpectancy	71.3
4191	gnp	17121.00
4191	gnpold	15129.00
4191	localname	Lubnan
4191	governmentform	Republic
4191	headofstate	Émile Lahoud
4191	capital	2438
4191	code2	LB
4192	code	LBR
4192	name	Liberia
4192	continent	Africa
4192	region	Western Africa
4192	surfacearea	111369.0
4192	indepyear	1847
4192	population	3154000
4192	lifeexpectancy	51.0
4192	gnp	2012.00
4192	localname	Liberia
4192	governmentform	Republic
4192	headofstate	Charles Taylor
4192	capital	2440
4192	code2	LR
4193	code	LBY
4193	name	Libyan Arab Jamahiriya
4193	continent	Africa
4193	region	Northern Africa
4193	surfacearea	1759540.0
4193	indepyear	1951
4193	population	5605000
4193	lifeexpectancy	75.5
4193	gnp	44806.00
4193	gnpold	40562.00
4193	localname	Libiya
4193	governmentform	Socialistic State
4193	headofstate	Muammar al-Qadhafi
4193	capital	2441
4193	code2	LY
4194	code	LIE
4194	name	Liechtenstein
4194	continent	Europe
4194	region	Western Europe
4194	surfacearea	160.0
4194	indepyear	1806
4194	population	32300
4194	lifeexpectancy	78.8
4194	gnp	1119.00
4194	gnpold	1084.00
4194	localname	Liechtenstein
4194	governmentform	Constitutional Monarchy
4194	headofstate	Hans-Adam II
4194	capital	2446
4194	code2	LI
4195	code	LTU
4195	name	Lithuania
4195	continent	Europe
4195	region	Baltic Countries
4195	surfacearea	65301.0
4195	indepyear	1991
4195	population	3698500
4195	lifeexpectancy	69.1
4195	gnp	10692.00
4195	gnpold	9585.00
4195	localname	Lietuva
4195	governmentform	Republic
4195	headofstate	Valdas Adamkus
4195	capital	2447
4195	code2	LT
4196	code	LUX
4196	name	Luxembourg
4196	continent	Europe
4196	region	Western Europe
4196	surfacearea	2586.0
4196	indepyear	1867
4196	population	435700
4196	lifeexpectancy	77.1
4196	gnp	16321.00
4196	gnpold	15519.00
4196	localname	Luxembourg/Lëtzebuerg
4196	governmentform	Constitutional Monarchy
4196	headofstate	Henri
4196	capital	2452
4196	code2	LU
4197	code	ESH
4197	name	Western Sahara
4197	continent	Africa
4197	region	Northern Africa
4197	surfacearea	266000.0
4197	population	293000
4197	lifeexpectancy	49.8
4197	gnp	60.00
4197	localname	As-Sahrawiya
4197	governmentform	Occupied by Marocco
4197	headofstate	Mohammed Abdel Aziz
4197	capital	2453
4197	code2	EH
4198	code	MAC
4198	name	Macao
4198	continent	Asia
4198	region	Eastern Asia
4198	surfacearea	18.0
4198	population	473000
4198	lifeexpectancy	81.6
4198	gnp	5749.00
4198	gnpold	5940.00
4198	localname	Macau/Aomen
4198	governmentform	Special Administrative Region of China
4198	headofstate	Jiang Zemin
4198	capital	2454
4198	code2	MO
4199	code	MDG
4199	name	Madagascar
4199	continent	Africa
4199	region	Eastern Africa
4199	surfacearea	587041.0
4199	indepyear	1960
4199	population	15942000
4199	lifeexpectancy	55.0
4199	gnp	3750.00
4199	gnpold	3545.00
4199	localname	Madagasikara/Madagascar
4199	governmentform	Federal Republic
4199	headofstate	Didier Ratsiraka
4199	capital	2455
4199	code2	MG
4200	code	MKD
4200	name	Macedonia
4200	continent	Europe
4200	region	Southern Europe
4200	surfacearea	25713.0
4200	indepyear	1991
4200	population	2024000
4200	lifeexpectancy	73.8
4200	gnp	1694.00
4200	gnpold	1915.00
4200	localname	Makedonija
4200	governmentform	Republic
4200	headofstate	Boris Trajkovski
4200	capital	2460
4200	code2	MK
4201	code	MWI
4201	name	Malawi
4201	continent	Africa
4201	region	Eastern Africa
4201	surfacearea	118484.0
4201	indepyear	1964
4201	population	10925000
4201	lifeexpectancy	37.6
4201	gnp	1687.00
4201	gnpold	2527.00
4201	localname	Malawi
4201	governmentform	Republic
4201	headofstate	Bakili Muluzi
4201	capital	2462
4201	code2	MW
4202	code	MDV
4202	name	Maldives
4202	continent	Asia
4202	region	Southern and Central Asia
4202	surfacearea	298.0
4202	indepyear	1965
4202	population	286000
4202	lifeexpectancy	62.2
4202	gnp	199.00
4202	localname	Dhivehi Raajje/Maldives
4202	governmentform	Republic
4202	headofstate	Maumoon Abdul Gayoom
4202	capital	2463
4202	code2	MV
4203	code	MYS
4203	name	Malaysia
4203	continent	Asia
4203	region	Southeast Asia
4203	surfacearea	329758.0
4203	indepyear	1957
4203	population	22244000
4203	lifeexpectancy	70.8
4203	gnp	69213.00
4203	gnpold	97884.00
4203	localname	Malaysia
4203	governmentform	Constitutional Monarchy, Federation
4203	headofstate	Salahuddin Abdul Aziz Shah Alhaj
4203	capital	2464
4203	code2	MY
4204	code	MLI
4204	name	Mali
4204	continent	Africa
4204	region	Western Africa
4204	surfacearea	1240192.0
4204	indepyear	1960
4204	population	11234000
4204	lifeexpectancy	46.7
4204	gnp	2642.00
4204	gnpold	2453.00
4204	localname	Mali
4204	governmentform	Republic
4204	headofstate	Alpha Oumar Konaré
4204	capital	2482
4204	code2	ML
4205	code	MLT
4205	name	Malta
4205	continent	Europe
4205	region	Southern Europe
4205	surfacearea	316.0
4205	indepyear	1964
4205	population	380200
4205	lifeexpectancy	77.9
4205	gnp	3512.00
4205	gnpold	3338.00
4205	localname	Malta
4205	governmentform	Republic
4205	headofstate	Guido de Marco
4205	capital	2484
4205	code2	MT
4206	code	MAR
4206	name	Morocco
4206	continent	Africa
4206	region	Northern Africa
4206	surfacearea	446550.0
4206	indepyear	1956
4206	population	28351000
4206	lifeexpectancy	69.1
4206	gnp	36124.00
4206	gnpold	33514.00
4206	localname	Al-Maghrib
4206	governmentform	Constitutional Monarchy
4206	headofstate	Mohammed VI
4206	capital	2486
4206	code2	MA
4207	code	MHL
4207	name	Marshall Islands
4207	continent	Oceania
4207	region	Micronesia
4207	surfacearea	181.0
4207	indepyear	1990
4207	population	64000
4207	lifeexpectancy	65.5
4207	gnp	97.00
4207	localname	Marshall Islands/Majol
4207	governmentform	Republic
4207	headofstate	Kessai Note
4207	capital	2507
4207	code2	MH
4208	code	MTQ
4208	name	Martinique
4208	continent	North America
4208	region	Caribbean
4208	surfacearea	1102.0
4208	population	395000
4208	lifeexpectancy	78.3
4208	gnp	2731.00
4208	gnpold	2559.00
4208	localname	Martinique
4208	governmentform	Overseas Department of France
4208	headofstate	Jacques Chirac
4208	capital	2508
4208	code2	MQ
4209	code	MRT
4209	name	Mauritania
4209	continent	Africa
4209	region	Western Africa
4209	surfacearea	1025520.0
4209	indepyear	1960
4209	population	2670000
4209	lifeexpectancy	50.8
4209	gnp	998.00
4209	gnpold	1081.00
4209	localname	Muritaniya/Mauritanie
4209	governmentform	Republic
4209	headofstate	Maaouiya Ould Sid´Ahmad Taya
4209	capital	2509
4209	code2	MR
4210	code	MUS
4210	name	Mauritius
4210	continent	Africa
4210	region	Eastern Africa
4210	surfacearea	2040.0
4210	indepyear	1968
4210	population	1158000
4210	lifeexpectancy	71.0
4210	gnp	4251.00
4210	gnpold	4186.00
4210	localname	Mauritius
4210	governmentform	Republic
4210	headofstate	Cassam Uteem
4210	capital	2511
4210	code2	MU
4211	code	MYT
4211	name	Mayotte
4211	continent	Africa
4211	region	Eastern Africa
4211	surfacearea	373.0
4211	population	149000
4211	lifeexpectancy	59.5
4211	gnp	0.00
4211	localname	Mayotte
4211	governmentform	Territorial Collectivity of France
4211	headofstate	Jacques Chirac
4211	capital	2514
4211	code2	YT
4212	code	MEX
4212	name	Mexico
4212	continent	North America
4212	region	Central America
4212	surfacearea	1958201.0
4212	indepyear	1810
4212	population	98881000
4212	lifeexpectancy	71.5
4212	gnp	414972.00
4212	gnpold	401461.00
4212	localname	México
4212	governmentform	Federal Republic
4212	headofstate	Vicente Fox Quesada
4212	capital	2515
4212	code2	MX
4213	code	FSM
4213	name	Micronesia, Federated States of
4213	continent	Oceania
4213	region	Micronesia
4213	surfacearea	702.0
4213	indepyear	1990
4213	population	119000
4213	lifeexpectancy	68.6
4213	gnp	212.00
4213	localname	Micronesia
4213	governmentform	Federal Republic
4213	headofstate	Leo A. Falcam
4213	capital	2689
4213	code2	FM
4214	code	MDA
4214	name	Moldova
4214	continent	Europe
4214	region	Eastern Europe
4214	surfacearea	33851.0
4214	indepyear	1991
4214	population	4380000
4214	lifeexpectancy	64.5
4214	gnp	1579.00
4214	gnpold	1872.00
4214	localname	Moldova
4214	governmentform	Republic
4214	headofstate	Vladimir Voronin
4214	capital	2690
4214	code2	MD
4215	code	MCO
4215	name	Monaco
4215	continent	Europe
4215	region	Western Europe
4215	surfacearea	1.5
4215	indepyear	1861
4215	population	34000
4215	lifeexpectancy	78.8
4215	gnp	776.00
4215	localname	Monaco
4215	governmentform	Constitutional Monarchy
4215	headofstate	Rainier III
4215	capital	2695
4215	code2	MC
4216	code	MNG
4216	name	Mongolia
4216	continent	Asia
4216	region	Eastern Asia
4216	surfacearea	1566500.0
4216	indepyear	1921
4216	population	2662000
4216	lifeexpectancy	67.3
4216	gnp	1043.00
4216	gnpold	933.00
4216	localname	Mongol Uls
4216	governmentform	Republic
4216	headofstate	Natsagiin Bagabandi
4216	capital	2696
4216	code2	MN
4217	code	MSR
4217	name	Montserrat
4217	continent	North America
4217	region	Caribbean
4217	surfacearea	102.0
4217	population	11000
4217	lifeexpectancy	78.0
4217	gnp	109.00
4217	localname	Montserrat
4217	governmentform	Dependent Territory of the UK
4217	headofstate	Elisabeth II
4217	capital	2697
4217	code2	MS
4218	code	MOZ
4218	name	Mozambique
4218	continent	Africa
4218	region	Eastern Africa
4218	surfacearea	801590.0
4218	indepyear	1975
4218	population	19680000
4218	lifeexpectancy	37.5
4218	gnp	2891.00
4218	gnpold	2711.00
4218	localname	Moçambique
4218	governmentform	Republic
4218	headofstate	Joaquím A. Chissano
4218	capital	2698
4218	code2	MZ
4219	code	MMR
4219	name	Myanmar
4219	continent	Asia
4219	region	Southeast Asia
4219	surfacearea	676578.0
4219	indepyear	1948
4219	population	45611000
4219	lifeexpectancy	54.9
4219	gnp	180375.00
4219	gnpold	171028.00
4219	localname	Myanma Pye
4219	governmentform	Republic
4219	headofstate	kenraali Than Shwe
4219	capital	2710
4219	code2	MM
4220	code	NAM
4220	name	Namibia
4220	continent	Africa
4220	region	Southern Africa
4220	surfacearea	824292.0
4220	indepyear	1990
4220	population	1726000
4220	lifeexpectancy	42.5
4220	gnp	3101.00
4220	gnpold	3384.00
4220	localname	Namibia
4220	governmentform	Republic
4220	headofstate	Sam Nujoma
4220	capital	2726
4220	code2	NA
4221	code	NRU
4221	name	Nauru
4221	continent	Oceania
4221	region	Micronesia
4221	surfacearea	21.0
4221	indepyear	1968
4221	population	12000
4221	lifeexpectancy	60.8
4221	gnp	197.00
4221	localname	Naoero/Nauru
4221	governmentform	Republic
4221	headofstate	Bernard Dowiyogo
4221	capital	2728
4221	code2	NR
4222	code	NPL
4222	name	Nepal
4222	continent	Asia
4222	region	Southern and Central Asia
4222	surfacearea	147181.0
4222	indepyear	1769
4222	population	23930000
4222	lifeexpectancy	57.8
4222	gnp	4768.00
4222	gnpold	4837.00
4222	localname	Nepal
4222	governmentform	Constitutional Monarchy
4222	headofstate	Gyanendra Bir Bikram
4222	capital	2729
4222	code2	NP
4223	code	NIC
4223	name	Nicaragua
4223	continent	North America
4223	region	Central America
4223	surfacearea	130000.0
4223	indepyear	1838
4223	population	5074000
4223	lifeexpectancy	68.7
4223	gnp	1988.00
4223	gnpold	2023.00
4223	localname	Nicaragua
4223	governmentform	Republic
4223	headofstate	Arnoldo Alemán Lacayo
4223	capital	2734
4223	code2	NI
4224	code	NER
4224	name	Niger
4224	continent	Africa
4224	region	Western Africa
4224	surfacearea	1267000.0
4224	indepyear	1960
4224	population	10730000
4224	lifeexpectancy	41.3
4224	gnp	1706.00
4224	gnpold	1580.00
4224	localname	Niger
4224	governmentform	Republic
4224	headofstate	Mamadou Tandja
4224	capital	2738
4224	code2	NE
4225	code	NGA
4225	name	Nigeria
4225	continent	Africa
4225	region	Western Africa
4225	surfacearea	923768.0
4225	indepyear	1960
4225	population	111506000
4225	lifeexpectancy	51.6
4225	gnp	65707.00
4225	gnpold	58623.00
4225	localname	Nigeria
4225	governmentform	Federal Republic
4225	headofstate	Olusegun Obasanjo
4225	capital	2754
4225	code2	NG
4226	code	NIU
4226	name	Niue
4226	continent	Oceania
4226	region	Polynesia
4226	surfacearea	260.0
4226	population	2000
4226	gnp	0.00
4226	localname	Niue
4226	governmentform	Nonmetropolitan Territory of New Zealand
4226	headofstate	Elisabeth II
4226	capital	2805
4226	code2	NU
4227	code	NFK
4227	name	Norfolk Island
4227	continent	Oceania
4227	region	Australia and New Zealand
4227	surfacearea	36.0
4227	population	2000
4227	gnp	0.00
4227	localname	Norfolk Island
4227	governmentform	Territory of Australia
4227	headofstate	Elisabeth II
4227	capital	2806
4227	code2	NF
4228	code	NOR
4228	name	Norway
4228	continent	Europe
4228	region	Nordic Countries
4228	surfacearea	323877.0
4228	indepyear	1905
4228	population	4478500
4228	lifeexpectancy	78.7
4228	gnp	145895.00
4228	gnpold	153370.00
4228	localname	Norge
4228	governmentform	Constitutional Monarchy
4228	headofstate	Harald V
4228	capital	2807
4228	code2	NO
4229	code	CIV
4229	name	Côte dIvoire
4229	continent	Africa
4229	region	Western Africa
4229	surfacearea	322463.0
4229	indepyear	1960
4229	population	14786000
4229	lifeexpectancy	45.2
4229	gnp	11345.00
4229	gnpold	10285.00
4229	localname	Côte dIvoire
4229	governmentform	Republic
4229	headofstate	Laurent Gbagbo
4229	capital	2814
4229	code2	CI
4230	code	OMN
4230	name	Oman
4230	continent	Asia
4230	region	Middle East
4230	surfacearea	309500.0
4230	indepyear	1951
4230	population	2542000
4230	lifeexpectancy	71.8
4230	gnp	16904.00
4230	gnpold	16153.00
4230	localname	´Uman
4230	governmentform	Monarchy (Sultanate)
4230	headofstate	Qabus ibn Sa´id
4230	capital	2821
4230	code2	OM
4231	code	PAK
4231	name	Pakistan
4231	continent	Asia
4231	region	Southern and Central Asia
4231	surfacearea	796095.0
4231	indepyear	1947
4231	population	156483000
4231	lifeexpectancy	61.1
4231	gnp	61289.00
4231	gnpold	58549.00
4231	localname	Pakistan
4231	governmentform	Republic
4231	headofstate	Mohammad Rafiq Tarar
4231	capital	2831
4231	code2	PK
4232	code	PLW
4232	name	Palau
4232	continent	Oceania
4232	region	Micronesia
4232	surfacearea	459.0
4232	indepyear	1994
4232	population	19000
4232	lifeexpectancy	68.6
4232	gnp	105.00
4232	localname	Belau/Palau
4232	governmentform	Republic
4232	headofstate	Kuniwo Nakamura
4232	capital	2881
4232	code2	PW
4233	code	PAN
4233	name	Panama
4233	continent	North America
4233	region	Central America
4233	surfacearea	75517.0
4233	indepyear	1903
4233	population	2856000
4233	lifeexpectancy	75.5
4233	gnp	9131.00
4233	gnpold	8700.00
4233	localname	Panamá
4233	governmentform	Republic
4233	headofstate	Mireya Elisa Moscoso Rodríguez
4233	capital	2882
4233	code2	PA
4234	code	PNG
4234	name	Papua New Guinea
4234	continent	Oceania
4234	region	Melanesia
4234	surfacearea	462840.0
4234	indepyear	1975
4234	population	4807000
4234	lifeexpectancy	63.1
4234	gnp	4988.00
4234	gnpold	6328.00
4234	localname	Papua New Guinea/Papua Niugini
4234	governmentform	Constitutional Monarchy
4234	headofstate	Elisabeth II
4234	capital	2884
4234	code2	PG
4235	code	PRY
4235	name	Paraguay
4235	continent	South America
4235	region	South America
4235	surfacearea	406752.0
4235	indepyear	1811
4235	population	5496000
4235	lifeexpectancy	73.7
4235	gnp	8444.00
4235	gnpold	9555.00
4235	localname	Paraguay
4235	governmentform	Republic
4235	headofstate	Luis Ángel González Macchi
4235	capital	2885
4235	code2	PY
4236	code	PER
4236	name	Peru
4236	continent	South America
4236	region	South America
4236	surfacearea	1285216.0
4236	indepyear	1821
4236	population	25662000
4236	lifeexpectancy	70.0
4236	gnp	64140.00
4236	gnpold	65186.00
4236	localname	Perú/Piruw
4236	governmentform	Republic
4236	headofstate	Valentin Paniagua Corazao
4236	capital	2890
4236	code2	PE
4237	code	PCN
4237	name	Pitcairn
4237	continent	Oceania
4237	region	Polynesia
4237	surfacearea	49.0
4237	population	50
4237	gnp	0.00
4237	localname	Pitcairn
4237	governmentform	Dependent Territory of the UK
4237	headofstate	Elisabeth II
4237	capital	2912
4237	code2	PN
4238	code	MNP
4238	name	Northern Mariana Islands
4238	continent	Oceania
4238	region	Micronesia
4238	surfacearea	464.0
4238	population	78000
4238	lifeexpectancy	75.5
4238	gnp	0.00
4238	localname	Northern Mariana Islands
4238	governmentform	Commonwealth of the US
4238	headofstate	George W. Bush
4238	capital	2913
4238	code2	MP
4239	code	PRT
4239	name	Portugal
4239	continent	Europe
4239	region	Southern Europe
4239	surfacearea	91982.0
4239	indepyear	1143
4239	population	9997600
4239	lifeexpectancy	75.8
4239	gnp	105954.00
4239	gnpold	102133.00
4239	localname	Portugal
4239	governmentform	Republic
4239	headofstate	Jorge Sampãio
4239	capital	2914
4239	code2	PT
4240	code	PRI
4240	name	Puerto Rico
4240	continent	North America
4240	region	Caribbean
4240	surfacearea	8875.0
4240	population	3869000
4240	lifeexpectancy	75.6
4240	gnp	34100.00
4240	gnpold	32100.00
4240	localname	Puerto Rico
4240	governmentform	Commonwealth of the US
4240	headofstate	George W. Bush
4240	capital	2919
4240	code2	PR
4241	code	POL
4241	name	Poland
4241	continent	Europe
4241	region	Eastern Europe
4241	surfacearea	323250.0
4241	indepyear	1918
4241	population	38653600
4241	lifeexpectancy	73.2
4241	gnp	151697.00
4241	gnpold	135636.00
4241	localname	Polska
4241	governmentform	Republic
4241	headofstate	Aleksander Kwasniewski
4241	capital	2928
4241	code2	PL
4242	code	GNQ
4242	name	Equatorial Guinea
4242	continent	Africa
4242	region	Central Africa
4242	surfacearea	28051.0
4242	indepyear	1968
4242	population	453000
4242	lifeexpectancy	53.6
4242	gnp	283.00
4242	gnpold	542.00
4242	localname	Guinea Ecuatorial
4242	governmentform	Republic
4242	headofstate	Teodoro Obiang Nguema Mbasogo
4242	capital	2972
4242	code2	GQ
4243	code	QAT
4243	name	Qatar
4243	continent	Asia
4243	region	Middle East
4243	surfacearea	11000.0
4243	indepyear	1971
4243	population	599000
4243	lifeexpectancy	72.4
4243	gnp	9472.00
4243	gnpold	8920.00
4243	localname	Qatar
4243	governmentform	Monarchy
4243	headofstate	Hamad ibn Khalifa al-Thani
4243	capital	2973
4243	code2	QA
4244	code	FRA
4244	name	France
4244	continent	Europe
4244	region	Western Europe
4244	surfacearea	551500.0
4244	indepyear	843
4244	population	59225700
4244	lifeexpectancy	78.8
4244	gnp	1424285.00
4244	gnpold	1392448.00
4244	localname	France
4244	governmentform	Republic
4244	headofstate	Jacques Chirac
4244	capital	2974
4244	code2	FR
4245	code	GUF
4245	name	French Guiana
4245	continent	South America
4245	region	South America
4245	surfacearea	90000.0
4245	population	181000
4245	lifeexpectancy	76.1
4245	gnp	681.00
4245	localname	Guyane française
4245	governmentform	Overseas Department of France
4245	headofstate	Jacques Chirac
4245	capital	3014
4245	code2	GF
4246	code	PYF
4246	name	French Polynesia
4246	continent	Oceania
4246	region	Polynesia
4246	surfacearea	4000.0
4246	population	235000
4246	lifeexpectancy	74.8
4246	gnp	818.00
4246	gnpold	781.00
4246	localname	Polynésie française
4246	governmentform	Nonmetropolitan Territory of France
4246	headofstate	Jacques Chirac
4246	capital	3016
4246	code2	PF
4247	code	REU
4247	name	Réunion
4247	continent	Africa
4247	region	Eastern Africa
4247	surfacearea	2510.0
4247	population	699000
4247	lifeexpectancy	72.7
4247	gnp	8287.00
4247	gnpold	7988.00
4247	localname	Réunion
4247	governmentform	Overseas Department of France
4247	headofstate	Jacques Chirac
4247	capital	3017
4247	code2	RE
4248	code	ROM
4248	name	Romania
4248	continent	Europe
4248	region	Eastern Europe
4248	surfacearea	238391.0
4248	indepyear	1878
4248	population	22455500
4248	lifeexpectancy	69.9
4248	gnp	38158.00
4248	gnpold	34843.00
4248	localname	România
4248	governmentform	Republic
4248	headofstate	Ion Iliescu
4248	capital	3018
4248	code2	RO
4249	code	RWA
4249	name	Rwanda
4249	continent	Africa
4249	region	Eastern Africa
4249	surfacearea	26338.0
4249	indepyear	1962
4249	population	7733000
4249	lifeexpectancy	39.3
4249	gnp	2036.00
4249	gnpold	1863.00
4249	localname	Rwanda/Urwanda
4249	governmentform	Republic
4249	headofstate	Paul Kagame
4249	capital	3047
4249	code2	RW
4250	code	SWE
4250	name	Sweden
4250	continent	Europe
4250	region	Nordic Countries
4250	surfacearea	449964.0
4250	indepyear	836
4250	population	8861400
4250	lifeexpectancy	79.6
4250	gnp	226492.00
4250	gnpold	227757.00
4250	localname	Sverige
4250	governmentform	Constitutional Monarchy
4250	headofstate	Carl XVI Gustaf
4250	capital	3048
4250	code2	SE
4251	code	SHN
4251	name	Saint Helena
4251	continent	Africa
4251	region	Western Africa
4251	surfacearea	314.0
4251	population	6000
4251	lifeexpectancy	76.8
4251	gnp	0.00
4251	localname	Saint Helena
4251	governmentform	Dependent Territory of the UK
4251	headofstate	Elisabeth II
4251	capital	3063
4251	code2	SH
4252	code	KNA
4252	name	Saint Kitts and Nevis
4252	continent	North America
4252	region	Caribbean
4252	surfacearea	261.0
4252	indepyear	1983
4252	population	38000
4252	lifeexpectancy	70.7
4252	gnp	299.00
4252	localname	Saint Kitts and Nevis
4252	governmentform	Constitutional Monarchy
4252	headofstate	Elisabeth II
4252	capital	3064
4252	code2	KN
4253	code	LCA
4253	name	Saint Lucia
4253	continent	North America
4253	region	Caribbean
4253	surfacearea	622.0
4253	indepyear	1979
4253	population	154000
4253	lifeexpectancy	72.3
4253	gnp	571.00
4253	localname	Saint Lucia
4253	governmentform	Constitutional Monarchy
4253	headofstate	Elisabeth II
4253	capital	3065
4253	code2	LC
4254	code	VCT
4254	name	Saint Vincent and the Grenadines
4254	continent	North America
4254	region	Caribbean
4254	surfacearea	388.0
4254	indepyear	1979
4254	population	114000
4254	lifeexpectancy	72.3
4254	gnp	285.00
4254	localname	Saint Vincent and the Grenadines
4254	governmentform	Constitutional Monarchy
4254	headofstate	Elisabeth II
4254	capital	3066
4254	code2	VC
4255	code	SPM
4255	name	Saint Pierre and Miquelon
4255	continent	North America
4255	region	North America
4255	surfacearea	242.0
4255	population	7000
4255	lifeexpectancy	77.6
4255	gnp	0.00
4255	localname	Saint-Pierre-et-Miquelon
4255	governmentform	Territorial Collectivity of France
4255	headofstate	Jacques Chirac
4255	capital	3067
4255	code2	PM
4256	code	DEU
4256	name	Germany
4256	continent	Europe
4256	region	Western Europe
4256	surfacearea	357022.0
4256	indepyear	1955
4256	population	82164700
4256	lifeexpectancy	77.4
4256	gnp	2133367.00
4256	gnpold	2102826.00
4256	localname	Deutschland
4256	governmentform	Federal Republic
4256	headofstate	Johannes Rau
4256	capital	3068
4256	code2	DE
4257	code	SLB
4257	name	Solomon Islands
4257	continent	Oceania
4257	region	Melanesia
4257	surfacearea	28896.0
4257	indepyear	1978
4257	population	444000
4257	lifeexpectancy	71.3
4257	gnp	182.00
4257	gnpold	220.00
4257	localname	Solomon Islands
4257	governmentform	Constitutional Monarchy
4257	headofstate	Elisabeth II
4257	capital	3161
4257	code2	SB
4258	code	ZMB
4258	name	Zambia
4258	continent	Africa
4258	region	Eastern Africa
4258	surfacearea	752618.0
4258	indepyear	1964
4258	population	9169000
4258	lifeexpectancy	37.2
4258	gnp	3377.00
4258	gnpold	3922.00
4258	localname	Zambia
4258	governmentform	Republic
4258	headofstate	Frederick Chiluba
4258	capital	3162
4258	code2	ZM
4259	code	WSM
4259	name	Samoa
4259	continent	Oceania
4259	region	Polynesia
4259	surfacearea	2831.0
4259	indepyear	1962
4259	population	180000
4259	lifeexpectancy	69.2
4259	gnp	141.00
4259	gnpold	157.00
4259	localname	Samoa
4259	governmentform	Parlementary Monarchy
4259	headofstate	Malietoa Tanumafili II
4259	capital	3169
4259	code2	WS
4260	code	SMR
4260	name	San Marino
4260	continent	Europe
4260	region	Southern Europe
4260	surfacearea	61.0
4260	indepyear	885
4260	population	27000
4260	lifeexpectancy	81.1
4260	gnp	510.00
4260	localname	San Marino
4260	governmentform	Republic
4260	capital	3171
4260	code2	SM
4261	code	STP
4261	name	Sao Tome and Principe
4261	continent	Africa
4261	region	Central Africa
4261	surfacearea	964.0
4261	indepyear	1975
4261	population	147000
4261	lifeexpectancy	65.3
4261	gnp	6.00
4261	localname	São Tomé e Príncipe
4261	governmentform	Republic
4261	headofstate	Miguel Trovoada
4261	capital	3172
4261	code2	ST
4262	code	SAU
4262	name	Saudi Arabia
4262	continent	Asia
4262	region	Middle East
4262	surfacearea	2149690.0
4262	indepyear	1932
4262	population	21607000
4262	lifeexpectancy	67.8
4262	gnp	137635.00
4262	gnpold	146171.00
4262	localname	Al-´Arabiya as-Sa´udiya
4262	governmentform	Monarchy
4262	headofstate	Fahd ibn Abdul-Aziz al-Sa´ud
4262	capital	3173
4262	code2	SA
4263	code	SEN
4263	name	Senegal
4263	continent	Africa
4263	region	Western Africa
4263	surfacearea	196722.0
4263	indepyear	1960
4263	population	9481000
4263	lifeexpectancy	62.2
4263	gnp	4787.00
4263	gnpold	4542.00
4263	localname	Sénégal/Sounougal
4263	governmentform	Republic
4263	headofstate	Abdoulaye Wade
4263	capital	3198
4263	code2	SN
4264	code	SYC
4264	name	Seychelles
4264	continent	Africa
4264	region	Eastern Africa
4264	surfacearea	455.0
4264	indepyear	1976
4264	population	77000
4264	lifeexpectancy	70.4
4264	gnp	536.00
4264	gnpold	539.00
4264	localname	Sesel/Seychelles
4264	governmentform	Republic
4264	headofstate	France-Albert René
4264	capital	3206
4264	code2	SC
4265	code	SLE
4265	name	Sierra Leone
4265	continent	Africa
4265	region	Western Africa
4265	surfacearea	71740.0
4265	indepyear	1961
4265	population	4854000
4265	lifeexpectancy	45.3
4265	gnp	746.00
4265	gnpold	858.00
4265	localname	Sierra Leone
4265	governmentform	Republic
4265	headofstate	Ahmed Tejan Kabbah
4265	capital	3207
4265	code2	SL
4266	code	SGP
4266	name	Singapore
4266	continent	Asia
4266	region	Southeast Asia
4266	surfacearea	618.0
4266	indepyear	1965
4266	population	3567000
4266	lifeexpectancy	80.1
4266	gnp	86503.00
4266	gnpold	96318.00
4266	localname	Singapore/Singapura/Xinjiapo/Singapur
4266	governmentform	Republic
4266	headofstate	Sellapan Rama Nathan
4266	capital	3208
4266	code2	SG
4267	code	SVK
4267	name	Slovakia
4267	continent	Europe
4267	region	Eastern Europe
4267	surfacearea	49012.0
4267	indepyear	1993
4267	population	5398700
4267	lifeexpectancy	73.7
4267	gnp	20594.00
4267	gnpold	19452.00
4267	localname	Slovensko
4267	governmentform	Republic
4267	headofstate	Rudolf Schuster
4267	capital	3209
4267	code2	SK
4268	code	SVN
4268	name	Slovenia
4268	continent	Europe
4268	region	Southern Europe
4268	surfacearea	20256.0
4268	indepyear	1991
4268	population	1987800
4268	lifeexpectancy	74.9
4268	gnp	19756.00
4268	gnpold	18202.00
4268	localname	Slovenija
4268	governmentform	Republic
4268	headofstate	Milan Kucan
4268	capital	3212
4268	code2	SI
4269	code	SOM
4269	name	Somalia
4269	continent	Africa
4269	region	Eastern Africa
4269	surfacearea	637657.0
4269	indepyear	1960
4269	population	10097000
4269	lifeexpectancy	46.2
4269	gnp	935.00
4269	localname	Soomaaliya
4269	governmentform	Republic
4269	headofstate	Abdiqassim Salad Hassan
4269	capital	3214
4269	code2	SO
4270	code	LKA
4270	name	Sri Lanka
4270	continent	Asia
4270	region	Southern and Central Asia
4270	surfacearea	65610.0
4270	indepyear	1948
4270	population	18827000
4270	lifeexpectancy	71.8
4270	gnp	15706.00
4270	gnpold	15091.00
4270	localname	Sri Lanka/Ilankai
4270	governmentform	Republic
4270	headofstate	Chandrika Kumaratunga
4270	capital	3217
4270	code2	LK
4271	code	SDN
4271	name	Sudan
4271	continent	Africa
4271	region	Northern Africa
4271	surfacearea	2505813.0
4271	indepyear	1956
4271	population	29490000
4271	lifeexpectancy	56.6
4271	gnp	10162.00
4271	localname	As-Sudan
4271	governmentform	Islamic Republic
4271	headofstate	Omar Hassan Ahmad al-Bashir
4271	capital	3225
4271	code2	SD
4272	code	FIN
4272	name	Finland
4272	continent	Europe
4272	region	Nordic Countries
4272	surfacearea	338145.0
4272	indepyear	1917
4272	population	5171300
4272	lifeexpectancy	77.4
4272	gnp	121914.00
4272	gnpold	119833.00
4272	localname	Suomi
4272	governmentform	Republic
4272	headofstate	Tarja Halonen
4272	capital	3236
4272	code2	FI
4273	code	SUR
4273	name	Suriname
4273	continent	South America
4273	region	South America
4273	surfacearea	163265.0
4273	indepyear	1975
4273	population	417000
4273	lifeexpectancy	71.4
4273	gnp	870.00
4273	gnpold	706.00
4273	localname	Suriname
4273	governmentform	Republic
4273	headofstate	Ronald Venetiaan
4273	capital	3243
4273	code2	SR
4274	code	SWZ
4274	name	Swaziland
4274	continent	Africa
4274	region	Southern Africa
4274	surfacearea	17364.0
4274	indepyear	1968
4274	population	1008000
4274	lifeexpectancy	40.4
4274	gnp	1206.00
4274	gnpold	1312.00
4274	localname	kaNgwane
4274	governmentform	Monarchy
4274	headofstate	Mswati III
4274	capital	3244
4274	code2	SZ
4275	code	CHE
4275	name	Switzerland
4275	continent	Europe
4275	region	Western Europe
4275	surfacearea	41284.0
4275	indepyear	1499
4275	population	7160400
4275	lifeexpectancy	79.6
4275	gnp	264478.00
4275	gnpold	256092.00
4275	localname	Schweiz/Suisse/Svizzera/Svizra
4275	governmentform	Federation
4275	headofstate	Adolf Ogi
4275	capital	3248
4275	code2	CH
4276	code	SYR
4276	name	Syria
4276	continent	Asia
4276	region	Middle East
4276	surfacearea	185180.0
4276	indepyear	1941
4276	population	16125000
4276	lifeexpectancy	68.5
4276	gnp	65984.00
4276	gnpold	64926.00
4276	localname	Suriya
4276	governmentform	Republic
4276	headofstate	Bashar al-Assad
4276	capital	3250
4276	code2	SY
4277	code	TJK
4277	name	Tajikistan
4277	continent	Asia
4277	region	Southern and Central Asia
4277	surfacearea	143100.0
4277	indepyear	1991
4277	population	6188000
4277	lifeexpectancy	64.1
4277	gnp	1990.00
4277	gnpold	1056.00
4277	localname	Toçikiston
4277	governmentform	Republic
4277	headofstate	Emomali Rahmonov
4277	capital	3261
4277	code2	TJ
4278	code	TWN
4278	name	Taiwan
4278	continent	Asia
4278	region	Eastern Asia
4278	surfacearea	36188.0
4278	indepyear	1945
4278	population	22256000
4278	lifeexpectancy	76.4
4278	gnp	256254.00
4278	gnpold	263451.00
4278	localname	Tai-wan
4278	governmentform	Republic
4278	headofstate	Chen Shui-bian
4278	capital	3263
4278	code2	TW
4279	code	TZA
4279	name	Tanzania
4279	continent	Africa
4279	region	Eastern Africa
4279	surfacearea	883749.0
4279	indepyear	1961
4279	population	33517000
4279	lifeexpectancy	52.3
4279	gnp	8005.00
4279	gnpold	7388.00
4279	localname	Tanzania
4279	governmentform	Republic
4279	headofstate	Benjamin William Mkapa
4279	capital	3306
4279	code2	TZ
4280	code	DNK
4280	name	Denmark
4280	continent	Europe
4280	region	Nordic Countries
4280	surfacearea	43094.0
4280	indepyear	800
4280	population	5330000
4280	lifeexpectancy	76.5
4280	gnp	174099.00
4280	gnpold	169264.00
4280	localname	Danmark
4280	governmentform	Constitutional Monarchy
4280	headofstate	Margrethe II
4280	capital	3315
4280	code2	DK
4281	code	THA
4281	name	Thailand
4281	continent	Asia
4281	region	Southeast Asia
4281	surfacearea	513115.0
4281	indepyear	1350
4281	population	61399000
4281	lifeexpectancy	68.6
4281	gnp	116416.00
4281	gnpold	153907.00
4281	localname	Prathet Thai
4281	governmentform	Constitutional Monarchy
4281	headofstate	Bhumibol Adulyadej
4281	capital	3320
4281	code2	TH
4282	code	TGO
4282	name	Togo
4282	continent	Africa
4282	region	Western Africa
4282	surfacearea	56785.0
4282	indepyear	1960
4282	population	4629000
4282	lifeexpectancy	54.7
4282	gnp	1449.00
4282	gnpold	1400.00
4282	localname	Togo
4282	governmentform	Republic
4282	headofstate	Gnassingbé Eyadéma
4282	capital	3332
4282	code2	TG
4283	code	TKL
4283	name	Tokelau
4283	continent	Oceania
4283	region	Polynesia
4283	surfacearea	12.0
4283	population	2000
4283	gnp	0.00
4283	localname	Tokelau
4283	governmentform	Nonmetropolitan Territory of New Zealand
4283	headofstate	Elisabeth II
4283	capital	3333
4283	code2	TK
4284	code	TON
4284	name	Tonga
4284	continent	Oceania
4284	region	Polynesia
4284	surfacearea	650.0
4284	indepyear	1970
4284	population	99000
4284	lifeexpectancy	67.9
4284	gnp	146.00
4284	gnpold	170.00
4284	localname	Tonga
4284	governmentform	Monarchy
4284	headofstate	Taufa'ahau Tupou IV
4284	capital	3334
4284	code2	TO
4285	code	TTO
4285	name	Trinidad and Tobago
4285	continent	North America
4285	region	Caribbean
4285	surfacearea	5130.0
4285	indepyear	1962
4285	population	1295000
4285	lifeexpectancy	68.0
4285	gnp	6232.00
4285	gnpold	5867.00
4285	localname	Trinidad and Tobago
4285	governmentform	Republic
4285	headofstate	Arthur N. R. Robinson
4285	capital	3336
4285	code2	TT
4286	code	TCD
4286	name	Chad
4286	continent	Africa
4286	region	Central Africa
4286	surfacearea	1284000.0
4286	indepyear	1960
4286	population	7651000
4286	lifeexpectancy	50.5
4286	gnp	1208.00
4286	gnpold	1102.00
4286	localname	Tchad/Tshad
4286	governmentform	Republic
4286	headofstate	Idriss Déby
4286	capital	3337
4286	code2	TD
4287	code	CZE
4287	name	Czech Republic
4287	continent	Europe
4287	region	Eastern Europe
4287	surfacearea	78866.0
4287	indepyear	1993
4287	population	10278100
4287	lifeexpectancy	74.5
4287	gnp	55017.00
4287	gnpold	52037.00
4287	localname	¸esko
4287	governmentform	Republic
4287	headofstate	Václav Havel
4287	capital	3339
4287	code2	CZ
4288	code	TUN
4288	name	Tunisia
4288	continent	Africa
4288	region	Northern Africa
4288	surfacearea	163610.0
4288	indepyear	1956
4288	population	9586000
4288	lifeexpectancy	73.7
4288	gnp	20026.00
4288	gnpold	18898.00
4288	localname	Tunis/Tunisie
4288	governmentform	Republic
4288	headofstate	Zine al-Abidine Ben Ali
4288	capital	3349
4288	code2	TN
4289	code	TUR
4289	name	Turkey
4289	continent	Asia
4289	region	Middle East
4289	surfacearea	774815.0
4289	indepyear	1923
4289	population	66591000
4289	lifeexpectancy	71.0
4289	gnp	210721.00
4289	gnpold	189122.00
4289	localname	Türkiye
4289	governmentform	Republic
4289	headofstate	Ahmet Necdet Sezer
4289	capital	3358
4289	code2	TR
4290	code	TKM
4290	name	Turkmenistan
4290	continent	Asia
4290	region	Southern and Central Asia
4290	surfacearea	488100.0
4290	indepyear	1991
4290	population	4459000
4290	lifeexpectancy	60.9
4290	gnp	4397.00
4290	gnpold	2000.00
4290	localname	Türkmenostan
4290	governmentform	Republic
4290	headofstate	Saparmurad Nijazov
4290	capital	3419
4290	code2	TM
4291	code	TCA
4291	name	Turks and Caicos Islands
4291	continent	North America
4291	region	Caribbean
4291	surfacearea	430.0
4291	population	17000
4291	lifeexpectancy	73.3
4291	gnp	96.00
4291	localname	The Turks and Caicos Islands
4291	governmentform	Dependent Territory of the UK
4291	headofstate	Elisabeth II
4291	capital	3423
4291	code2	TC
4292	code	TUV
4292	name	Tuvalu
4292	continent	Oceania
4292	region	Polynesia
4292	surfacearea	26.0
4292	indepyear	1978
4292	population	12000
4292	lifeexpectancy	66.3
4292	gnp	6.00
4292	localname	Tuvalu
4292	governmentform	Constitutional Monarchy
4292	headofstate	Elisabeth II
4292	capital	3424
4292	code2	TV
4293	code	UGA
4293	name	Uganda
4293	continent	Africa
4293	region	Eastern Africa
4293	surfacearea	241038.0
4293	indepyear	1962
4293	population	21778000
4293	lifeexpectancy	42.9
4293	gnp	6313.00
4293	gnpold	6887.00
4293	localname	Uganda
4293	governmentform	Republic
4293	headofstate	Yoweri Museveni
4293	capital	3425
4293	code2	UG
4294	code	UKR
4294	name	Ukraine
4294	continent	Europe
4294	region	Eastern Europe
4294	surfacearea	603700.0
4294	indepyear	1991
4294	population	50456000
4294	lifeexpectancy	66.0
4294	gnp	42168.00
4294	gnpold	49677.00
4294	localname	Ukrajina
4294	governmentform	Republic
4294	headofstate	Leonid Kutma
4294	capital	3426
4294	code2	UA
4295	code	HUN
4295	name	Hungary
4295	continent	Europe
4295	region	Eastern Europe
4295	surfacearea	93030.0
4295	indepyear	1918
4295	population	10043200
4295	lifeexpectancy	71.4
4295	gnp	48267.00
4295	gnpold	45914.00
4295	localname	Magyarország
4295	governmentform	Republic
4295	headofstate	Ferenc Mádl
4295	capital	3483
4295	code2	HU
4296	code	URY
4296	name	Uruguay
4296	continent	South America
4296	region	South America
4296	surfacearea	175016.0
4296	indepyear	1828
4296	population	3337000
4296	lifeexpectancy	75.2
4296	gnp	20831.00
4296	gnpold	19967.00
4296	localname	Uruguay
4296	governmentform	Republic
4296	headofstate	Jorge Batlle Ibáñez
4296	capital	3492
4296	code2	UY
4297	code	NCL
4297	name	New Caledonia
4297	continent	Oceania
4297	region	Melanesia
4297	surfacearea	18575.0
4297	population	214000
4297	lifeexpectancy	72.8
4297	gnp	3563.00
4297	localname	Nouvelle-Calédonie
4297	governmentform	Nonmetropolitan Territory of France
4297	headofstate	Jacques Chirac
4297	capital	3493
4297	code2	NC
4298	code	NZL
4298	name	New Zealand
4298	continent	Oceania
4298	region	Australia and New Zealand
4298	surfacearea	270534.0
4298	indepyear	1907
4298	population	3862000
4298	lifeexpectancy	77.8
4298	gnp	54669.00
4298	gnpold	64960.00
4298	localname	New Zealand/Aotearoa
4298	governmentform	Constitutional Monarchy
4298	headofstate	Elisabeth II
4298	capital	3499
4298	code2	NZ
4299	code	UZB
4299	name	Uzbekistan
4299	continent	Asia
4299	region	Southern and Central Asia
4299	surfacearea	447400.0
4299	indepyear	1991
4299	population	24318000
4299	lifeexpectancy	63.7
4299	gnp	14194.00
4299	gnpold	21300.00
4299	localname	Uzbekiston
4299	governmentform	Republic
4299	headofstate	Islam Karimov
4299	capital	3503
4299	code2	UZ
4300	code	BLR
4300	name	Belarus
4300	continent	Europe
4300	region	Eastern Europe
4300	surfacearea	207600.0
4300	indepyear	1991
4300	population	10236000
4300	lifeexpectancy	68.0
4300	gnp	13714.00
4300	localname	Belarus
4300	governmentform	Republic
4300	headofstate	Aljaksandr Lukaenka
4300	capital	3520
4300	code2	BY
4301	code	WLF
4301	name	Wallis and Futuna
4301	continent	Oceania
4301	region	Polynesia
4301	surfacearea	200.0
4301	population	15000
4301	gnp	0.00
4301	localname	Wallis-et-Futuna
4301	governmentform	Nonmetropolitan Territory of France
4301	headofstate	Jacques Chirac
4301	capital	3536
4301	code2	WF
4302	code	VUT
4302	name	Vanuatu
4302	continent	Oceania
4302	region	Melanesia
4302	surfacearea	12189.0
4302	indepyear	1980
4302	population	190000
4302	lifeexpectancy	60.6
4302	gnp	261.00
4302	gnpold	246.00
4302	localname	Vanuatu
4302	governmentform	Republic
4302	headofstate	John Bani
4302	capital	3537
4302	code2	VU
4303	code	VAT
4303	name	Holy See (Vatican City State)
4303	continent	Europe
4303	region	Southern Europe
4303	surfacearea	0.4
4303	indepyear	1929
4303	population	1000
4303	gnp	9.00
4303	localname	Santa Sede/Città del Vaticano
4303	governmentform	Independent Church State
4303	headofstate	Johannes Paavali II
4303	capital	3538
4303	code2	VA
4304	code	VEN
4304	name	Venezuela
4304	continent	South America
4304	region	South America
4304	surfacearea	912050.0
4304	indepyear	1811
4304	population	24170000
4304	lifeexpectancy	73.1
4304	gnp	95023.00
4304	gnpold	88434.00
4304	localname	Venezuela
4304	governmentform	Federal Republic
4304	headofstate	Hugo Chávez Frías
4304	capital	3539
4304	code2	VE
4305	code	RUS
4305	name	Russian Federation
4305	continent	Europe
4305	region	Eastern Europe
4305	surfacearea	1.70754E7
4305	indepyear	1991
4305	population	146934000
4305	lifeexpectancy	67.2
4305	gnp	276608.00
4305	gnpold	442989.00
4305	localname	Rossija
4305	governmentform	Federal Republic
4305	headofstate	Vladimir Putin
4305	capital	3580
4305	code2	RU
4306	code	VNM
4306	name	Vietnam
4306	continent	Asia
4306	region	Southeast Asia
4306	surfacearea	331689.0
4306	indepyear	1945
4306	population	79832000
4306	lifeexpectancy	69.3
4306	gnp	21929.00
4306	gnpold	22834.00
4306	localname	Viêt Nam
4306	governmentform	Socialistic Republic
4306	headofstate	Trân Duc Luong
4306	capital	3770
4306	code2	VN
4307	code	EST
4307	name	Estonia
4307	continent	Europe
4307	region	Baltic Countries
4307	surfacearea	45227.0
4307	indepyear	1991
4307	population	1439200
4307	lifeexpectancy	69.5
4307	gnp	5328.00
4307	gnpold	3371.00
4307	localname	Eesti
4307	governmentform	Republic
4307	headofstate	Lennart Meri
4307	capital	3791
4307	code2	EE
4308	code	USA
4308	name	United States
4308	continent	North America
4308	region	North America
4308	surfacearea	9363520.0
4308	indepyear	1776
4308	population	278357000
4308	lifeexpectancy	77.1
4308	gnp	8510700.00
4308	gnpold	8110900.00
4308	localname	United States
4308	governmentform	Federal Republic
4308	headofstate	George W. Bush
4308	capital	3813
4308	code2	US
4309	code	VIR
4309	name	Virgin Islands, U.S.
4309	continent	North America
4309	region	Caribbean
4309	surfacearea	347.0
4309	population	93000
4309	lifeexpectancy	78.1
4309	gnp	0.00
4309	localname	Virgin Islands of the United States
4309	governmentform	US Territory
4309	headofstate	George W. Bush
4309	capital	4067
4309	code2	VI
4310	code	ZWE
4310	name	Zimbabwe
4310	continent	Africa
4310	region	Eastern Africa
4310	surfacearea	390757.0
4310	indepyear	1980
4310	population	11669000
4310	lifeexpectancy	37.8
4310	gnp	5951.00
4310	gnpold	8670.00
4310	localname	Zimbabwe
4310	governmentform	Republic
4310	headofstate	Robert G. Mugabe
4310	capital	4068
4310	code2	ZW
4311	code	PSE
4311	name	Palestine
4311	continent	Asia
4311	region	Middle East
4311	surfacearea	6257.0
4311	population	3101000
4311	lifeexpectancy	71.4
4311	gnp	4173.00
4311	localname	Filastin
4311	governmentform	Autonomous Area
4311	headofstate	Yasser (Yasir) Arafat
4311	capital	4074
4311	code2	PS
4312	code	ATA
4312	name	Antarctica
4312	continent	Antarctica
4312	region	Antarctica
4312	surfacearea	1.312E7
4312	population	0
4312	gnp	0.00
4312	localname	
4312	governmentform	Co-administrated
4312	headofstate	
4312	code2	AQ
4313	code	BVT
4313	name	Bouvet Island
4313	continent	Antarctica
4313	region	Antarctica
4313	surfacearea	59.0
4313	population	0
4313	gnp	0.00
4313	localname	Bouvetøya
4313	governmentform	Dependent Territory of Norway
4313	headofstate	Harald V
4313	code2	BV
4314	code	IOT
4314	name	British Indian Ocean Territory
4314	continent	Africa
4314	region	Eastern Africa
4314	surfacearea	78.0
4314	population	0
4314	gnp	0.00
4314	localname	British Indian Ocean Territory
4314	governmentform	Dependent Territory of the UK
4314	headofstate	Elisabeth II
4314	code2	IO
4315	code	SGS
4315	name	South Georgia and the South Sandwich Islands
4315	continent	Antarctica
4315	region	Antarctica
4315	surfacearea	3903.0
4315	population	0
4315	gnp	0.00
4315	localname	South Georgia and the South Sandwich Islands
4315	governmentform	Dependent Territory of the UK
4315	headofstate	Elisabeth II
4315	code2	GS
4316	code	HMD
4316	name	Heard Island and McDonald Islands
4316	continent	Antarctica
4316	region	Antarctica
4316	surfacearea	359.0
4316	population	0
4316	gnp	0.00
4316	localname	Heard and McDonald Islands
4316	governmentform	Territory of Australia
4316	headofstate	Elisabeth II
4316	code2	HM
4317	code	ATF
4317	name	French Southern territories
4317	continent	Antarctica
4317	region	Antarctica
4317	surfacearea	7780.0
4317	population	0
4317	gnp	0.00
4317	localname	Terres australes françaises
4317	governmentform	Nonmetropolitan Territory of France
4317	headofstate	Jacques Chirac
4317	code2	TF
4318	code	UMI
4318	name	United States Minor Outlying Islands
4318	continent	Oceania
4318	region	Micronesia/Caribbean
4318	surfacearea	16.0
4318	population	0
4318	gnp	0.00
4318	localname	United States Minor Outlying Islands
4318	governmentform	Dependent Territory of the US
4318	headofstate	George W. Bush
4318	code2	UM
4319	countrycode	AFG
4319	language	Pashto
4319	isofficial	true
4319	percentage	52.4
4320	countrycode	NLD
4320	language	Dutch
4320	isofficial	true
4320	percentage	95.6
4321	countrycode	ANT
4321	language	Papiamento
4321	isofficial	true
4321	percentage	86.2
4322	countrycode	ALB
4322	language	Albaniana
4322	isofficial	true
4322	percentage	97.9
4323	countrycode	DZA
4323	language	Arabic
4323	isofficial	true
4323	percentage	86.0
4324	countrycode	ASM
4324	language	Samoan
4324	isofficial	true
4324	percentage	90.6
4325	countrycode	AND
4325	language	Spanish
4325	isofficial	false
4325	percentage	44.6
4326	countrycode	AGO
4326	language	Ovimbundu
4326	isofficial	false
4326	percentage	37.2
4327	countrycode	AIA
4327	language	English
4327	isofficial	true
4327	percentage	0.0
4328	countrycode	ATG
4328	language	Creole English
4328	isofficial	false
4328	percentage	95.7
4329	countrycode	ARE
4329	language	Arabic
4329	isofficial	true
4329	percentage	42.0
4330	countrycode	ARG
4330	language	Spanish
4330	isofficial	true
4330	percentage	96.8
4331	countrycode	ARM
4331	language	Armenian
4331	isofficial	true
4331	percentage	93.4
4332	countrycode	ABW
4332	language	Papiamento
4332	isofficial	false
4332	percentage	76.7
4333	countrycode	AUS
4333	language	English
4333	isofficial	true
4333	percentage	81.2
4334	countrycode	AZE
4334	language	Azerbaijani
4334	isofficial	true
4334	percentage	89.0
4335	countrycode	BHS
4335	language	Creole English
4335	isofficial	false
4335	percentage	89.7
4336	countrycode	BHR
4336	language	Arabic
4336	isofficial	true
4336	percentage	67.7
4337	countrycode	BGD
4337	language	Bengali
4337	isofficial	true
4337	percentage	97.7
4338	countrycode	BRB
4338	language	Bajan
4338	isofficial	false
4338	percentage	95.1
4339	countrycode	BEL
4339	language	Dutch
4339	isofficial	true
4339	percentage	59.2
4340	countrycode	BLZ
4340	language	English
4340	isofficial	true
4340	percentage	50.8
4341	countrycode	BEN
4341	language	Fon
4341	isofficial	false
4341	percentage	39.8
4342	countrycode	BMU
4342	language	English
4342	isofficial	true
4342	percentage	100.0
4343	countrycode	BTN
4343	language	Dzongkha
4343	isofficial	true
4343	percentage	50.0
4344	countrycode	BOL
4344	language	Spanish
4344	isofficial	true
4344	percentage	87.7
4345	countrycode	BIH
4345	language	Serbo-Croatian
4345	isofficial	true
4345	percentage	99.2
4346	countrycode	BWA
4346	language	Tswana
4346	isofficial	false
4346	percentage	75.5
4347	countrycode	BRA
4347	language	Portuguese
4347	isofficial	true
4347	percentage	97.5
4348	countrycode	GBR
4348	language	English
4348	isofficial	true
4348	percentage	97.3
4349	countrycode	VGB
4349	language	English
4349	isofficial	true
4349	percentage	0.0
4350	countrycode	BRN
4350	language	Malay
4350	isofficial	true
4350	percentage	45.5
4351	countrycode	BGR
4351	language	Bulgariana
4351	isofficial	true
4351	percentage	83.2
4352	countrycode	BFA
4352	language	Mossi
4352	isofficial	false
4352	percentage	50.2
4353	countrycode	BDI
4353	language	Kirundi
4353	isofficial	true
4353	percentage	98.1
4354	countrycode	CYM
4354	language	English
4354	isofficial	true
4354	percentage	0.0
4355	countrycode	CHL
4355	language	Spanish
4355	isofficial	true
4355	percentage	89.7
4356	countrycode	COK
4356	language	Maori
4356	isofficial	true
4356	percentage	0.0
4357	countrycode	CRI
4357	language	Spanish
4357	isofficial	true
4357	percentage	97.5
4358	countrycode	DJI
4358	language	Somali
4358	isofficial	false
4358	percentage	43.9
4359	countrycode	DMA
4359	language	Creole English
4359	isofficial	false
4359	percentage	100.0
4360	countrycode	DOM
4360	language	Spanish
4360	isofficial	true
4360	percentage	98.0
4361	countrycode	ECU
4361	language	Spanish
4361	isofficial	true
4361	percentage	93.0
4362	countrycode	EGY
4362	language	Arabic
4362	isofficial	true
4362	percentage	98.8
4363	countrycode	SLV
4363	language	Spanish
4363	isofficial	true
4363	percentage	100.0
4364	countrycode	ERI
4364	language	Tigrinja
4364	isofficial	true
4364	percentage	49.1
4365	countrycode	ESP
4365	language	Spanish
4365	isofficial	true
4365	percentage	74.4
4366	countrycode	ZAF
4366	language	Zulu
4366	isofficial	true
4366	percentage	22.7
4367	countrycode	ETH
4367	language	Oromo
4367	isofficial	false
4367	percentage	31.0
4368	countrycode	FLK
4368	language	English
4368	isofficial	true
4368	percentage	0.0
4369	countrycode	FJI
4369	language	Fijian
4369	isofficial	true
4369	percentage	50.8
4370	countrycode	PHL
4370	language	Pilipino
4370	isofficial	true
4370	percentage	29.3
4371	countrycode	FRO
4371	language	Faroese
4371	isofficial	true
4371	percentage	100.0
4372	countrycode	GAB
4372	language	Fang
4372	isofficial	false
4372	percentage	35.8
4373	countrycode	GMB
4373	language	Malinke
4373	isofficial	false
4373	percentage	34.1
4374	countrycode	GEO
4374	language	Georgiana
4374	isofficial	true
4374	percentage	71.7
4375	countrycode	GHA
4375	language	Akan
4375	isofficial	false
4375	percentage	52.4
4376	countrycode	GIB
4376	language	English
4376	isofficial	true
4376	percentage	88.9
4377	countrycode	GRD
4377	language	Creole English
4377	isofficial	false
4377	percentage	100.0
4378	countrycode	GRL
4378	language	Greenlandic
4378	isofficial	true
4378	percentage	87.5
4379	countrycode	GLP
4379	language	Creole French
4379	isofficial	false
4379	percentage	95.0
4380	countrycode	GUM
4380	language	English
4380	isofficial	true
4380	percentage	37.5
4381	countrycode	GTM
4381	language	Spanish
4381	isofficial	true
4381	percentage	64.7
4382	countrycode	GIN
4382	language	Ful
4382	isofficial	false
4382	percentage	38.6
4383	countrycode	GNB
4383	language	Crioulo
4383	isofficial	false
4383	percentage	36.4
4384	countrycode	GUY
4384	language	Creole English
4384	isofficial	false
4384	percentage	96.4
4385	countrycode	HTI
4385	language	Haiti Creole
4385	isofficial	false
4385	percentage	100.0
4386	countrycode	HND
4386	language	Spanish
4386	isofficial	true
4386	percentage	97.2
4387	countrycode	HKG
4387	language	Canton Chinese
4387	isofficial	false
4387	percentage	88.7
4388	countrycode	SJM
4388	language	Norwegian
4388	isofficial	true
4388	percentage	0.0
4389	countrycode	IDN
4389	language	Javanese
4389	isofficial	false
4389	percentage	39.4
4390	countrycode	IND
4390	language	Hindi
4390	isofficial	true
4390	percentage	39.9
4391	countrycode	IRQ
4391	language	Arabic
4391	isofficial	true
4391	percentage	77.2
4392	countrycode	IRN
4392	language	Persian
4392	isofficial	true
4392	percentage	45.7
4393	countrycode	IRL
4393	language	English
4393	isofficial	true
4393	percentage	98.4
4394	countrycode	ISL
4394	language	Icelandic
4394	isofficial	true
4394	percentage	95.7
4395	countrycode	ISR
4395	language	Hebrew
4395	isofficial	true
4395	percentage	63.1
4396	countrycode	ITA
4396	language	Italian
4396	isofficial	true
4396	percentage	94.1
4397	countrycode	TMP
4397	language	Sunda
4397	isofficial	false
4397	percentage	0.0
4398	countrycode	AUT
4398	language	German
4398	isofficial	true
4398	percentage	92.0
4399	countrycode	JAM
4399	language	Creole English
4399	isofficial	false
4399	percentage	94.2
4400	countrycode	JPN
4400	language	Japanese
4400	isofficial	true
4400	percentage	99.1
4401	countrycode	YEM
4401	language	Arabic
4401	isofficial	true
4401	percentage	99.6
4402	countrycode	JOR
4402	language	Arabic
4402	isofficial	true
4402	percentage	97.9
4403	countrycode	CXR
4403	language	Chinese
4403	isofficial	false
4403	percentage	0.0
4404	countrycode	YUG
4404	language	Serbo-Croatian
4404	isofficial	true
4404	percentage	75.2
4405	countrycode	KHM
4405	language	Khmer
4405	isofficial	true
4405	percentage	88.6
4406	countrycode	CMR
4406	language	Fang
4406	isofficial	false
4406	percentage	19.7
4407	countrycode	CAN
4407	language	English
4407	isofficial	true
4407	percentage	60.4
4408	countrycode	CPV
4408	language	Crioulo
4408	isofficial	false
4408	percentage	100.0
4409	countrycode	KAZ
4409	language	Kazakh
4409	isofficial	true
4409	percentage	46.0
4410	countrycode	KEN
4410	language	Kikuyu
4410	isofficial	false
4410	percentage	20.9
4411	countrycode	CAF
4411	language	Gbaya
4411	isofficial	false
4411	percentage	23.8
4412	countrycode	CHN
4412	language	Chinese
4412	isofficial	true
4412	percentage	92.0
4413	countrycode	KGZ
4413	language	Kirgiz
4413	isofficial	true
4413	percentage	59.7
4414	countrycode	KIR
4414	language	Kiribati
4414	isofficial	true
4414	percentage	98.9
4415	countrycode	COL
4415	language	Spanish
4415	isofficial	true
4415	percentage	99.0
4416	countrycode	COM
4416	language	Comorian
4416	isofficial	true
4416	percentage	75.0
4417	countrycode	COG
4417	language	Kongo
4417	isofficial	false
4417	percentage	51.5
4418	countrycode	COD
4418	language	Luba
4418	isofficial	false
4418	percentage	18.0
4419	countrycode	CCK
4419	language	Malay
4419	isofficial	false
4419	percentage	0.0
4420	countrycode	PRK
4420	language	Korean
4420	isofficial	true
4420	percentage	99.9
4421	countrycode	KOR
4421	language	Korean
4421	isofficial	true
4421	percentage	99.9
4422	countrycode	GRC
4422	language	Greek
4422	isofficial	true
4422	percentage	98.5
4423	countrycode	HRV
4423	language	Serbo-Croatian
4423	isofficial	true
4423	percentage	95.9
4424	countrycode	CUB
4424	language	Spanish
4424	isofficial	true
4424	percentage	100.0
4425	countrycode	KWT
4425	language	Arabic
4425	isofficial	true
4425	percentage	78.1
4426	countrycode	CYP
4426	language	Greek
4426	isofficial	true
4426	percentage	74.1
4427	countrycode	LAO
4427	language	Lao
4427	isofficial	true
4427	percentage	67.2
4428	countrycode	LVA
4428	language	Latvian
4428	isofficial	true
4428	percentage	55.1
4429	countrycode	LSO
4429	language	Sotho
4429	isofficial	true
4429	percentage	85.0
4430	countrycode	LBN
4430	language	Arabic
4430	isofficial	true
4430	percentage	93.0
4431	countrycode	LBR
4431	language	Kpelle
4431	isofficial	false
4431	percentage	19.5
4432	countrycode	LBY
4432	language	Arabic
4432	isofficial	true
4432	percentage	96.0
4433	countrycode	LIE
4433	language	German
4433	isofficial	true
4433	percentage	89.0
4434	countrycode	LTU
4434	language	Lithuanian
4434	isofficial	true
4434	percentage	81.6
4435	countrycode	LUX
4435	language	Luxembourgish
4435	isofficial	true
4435	percentage	64.4
4436	countrycode	ESH
4436	language	Arabic
4436	isofficial	true
4436	percentage	100.0
4437	countrycode	MAC
4437	language	Canton Chinese
4437	isofficial	false
4437	percentage	85.6
4438	countrycode	MDG
4438	language	Malagasy
4438	isofficial	true
4438	percentage	98.9
4439	countrycode	MKD
4439	language	Macedonian
4439	isofficial	true
4439	percentage	66.5
4440	countrycode	MWI
4440	language	Chichewa
4440	isofficial	true
4440	percentage	58.3
4441	countrycode	MDV
4441	language	Dhivehi
4441	isofficial	true
4441	percentage	100.0
4442	countrycode	MYS
4442	language	Malay
4442	isofficial	true
4442	percentage	58.4
4443	countrycode	MLI
4443	language	Bambara
4443	isofficial	false
4443	percentage	31.8
4444	countrycode	MLT
4444	language	Maltese
4444	isofficial	true
4444	percentage	95.8
4445	countrycode	MAR
4445	language	Arabic
4445	isofficial	true
4445	percentage	65.0
4446	countrycode	MHL
4446	language	Marshallese
4446	isofficial	true
4446	percentage	96.8
4447	countrycode	MTQ
4447	language	Creole French
4447	isofficial	false
4447	percentage	96.6
4448	countrycode	MRT
4448	language	Hassaniya
4448	isofficial	false
4448	percentage	81.7
4449	countrycode	MUS
4449	language	Creole French
4449	isofficial	false
4449	percentage	70.6
4450	countrycode	MYT
4450	language	Mahoré
4450	isofficial	false
4450	percentage	41.9
4451	countrycode	MEX
4451	language	Spanish
4451	isofficial	true
4451	percentage	92.1
4452	countrycode	FSM
4452	language	Trukese
4452	isofficial	false
4452	percentage	41.6
4453	countrycode	MDA
4453	language	Romanian
4453	isofficial	true
4453	percentage	61.9
4454	countrycode	MCO
4454	language	French
4454	isofficial	true
4454	percentage	41.9
4455	countrycode	MNG
4455	language	Mongolian
4455	isofficial	true
4455	percentage	78.8
4456	countrycode	MSR
4456	language	English
4456	isofficial	true
4456	percentage	0.0
4457	countrycode	MOZ
4457	language	Makua
4457	isofficial	false
4457	percentage	27.8
4458	countrycode	MMR
4458	language	Burmese
4458	isofficial	true
4458	percentage	69.0
4459	countrycode	NAM
4459	language	Ovambo
4459	isofficial	false
4459	percentage	50.7
4460	countrycode	NRU
4460	language	Nauru
4460	isofficial	true
4460	percentage	57.5
4461	countrycode	NPL
4461	language	Nepali
4461	isofficial	true
4461	percentage	50.4
4462	countrycode	NIC
4462	language	Spanish
4462	isofficial	true
4462	percentage	97.6
4463	countrycode	NER
4463	language	Hausa
4463	isofficial	false
4463	percentage	53.1
4464	countrycode	NGA
4464	language	Joruba
4464	isofficial	false
4464	percentage	21.4
4465	countrycode	NIU
4465	language	Niue
4465	isofficial	false
4465	percentage	0.0
4466	countrycode	NFK
4466	language	English
4466	isofficial	true
4466	percentage	0.0
4467	countrycode	NOR
4467	language	Norwegian
4467	isofficial	true
4467	percentage	96.6
4468	countrycode	CIV
4468	language	Akan
4468	isofficial	false
4468	percentage	30.0
4469	countrycode	OMN
4469	language	Arabic
4469	isofficial	true
4469	percentage	76.7
4470	countrycode	PAK
4470	language	Punjabi
4470	isofficial	false
4470	percentage	48.2
4471	countrycode	PLW
4471	language	Palau
4471	isofficial	true
4471	percentage	82.2
4472	countrycode	PAN
4472	language	Spanish
4472	isofficial	true
4472	percentage	76.8
4473	countrycode	PNG
4473	language	Papuan Languages
4473	isofficial	false
4473	percentage	78.1
4474	countrycode	PRY
4474	language	Spanish
4474	isofficial	true
4474	percentage	55.1
4475	countrycode	PER
4475	language	Spanish
4475	isofficial	true
4475	percentage	79.8
4476	countrycode	PCN
4476	language	Pitcairnese
4476	isofficial	false
4476	percentage	0.0
4477	countrycode	MNP
4477	language	Philippene Languages
4477	isofficial	false
4477	percentage	34.1
4478	countrycode	PRT
4478	language	Portuguese
4478	isofficial	true
4478	percentage	99.0
4479	countrycode	PRI
4479	language	Spanish
4479	isofficial	true
4479	percentage	51.3
4480	countrycode	POL
4480	language	Polish
4480	isofficial	true
4480	percentage	97.6
4481	countrycode	GNQ
4481	language	Fang
4481	isofficial	false
4481	percentage	84.8
4482	countrycode	QAT
4482	language	Arabic
4482	isofficial	true
4482	percentage	40.7
4483	countrycode	FRA
4483	language	French
4483	isofficial	true
4483	percentage	93.6
4484	countrycode	GUF
4484	language	Creole French
4484	isofficial	false
4484	percentage	94.3
4485	countrycode	PYF
4485	language	Tahitian
4485	isofficial	false
4485	percentage	46.4
4486	countrycode	REU
4486	language	Creole French
4486	isofficial	false
4486	percentage	91.5
4487	countrycode	ROM
4487	language	Romanian
4487	isofficial	true
4487	percentage	90.7
4488	countrycode	RWA
4488	language	Rwanda
4488	isofficial	true
4488	percentage	100.0
4489	countrycode	SWE
4489	language	Swedish
4489	isofficial	true
4489	percentage	89.5
4490	countrycode	SHN
4490	language	English
4490	isofficial	true
4490	percentage	0.0
4491	countrycode	KNA
4491	language	Creole English
4491	isofficial	false
4491	percentage	100.0
4492	countrycode	LCA
4492	language	Creole French
4492	isofficial	false
4492	percentage	80.0
4493	countrycode	VCT
4493	language	Creole English
4493	isofficial	false
4493	percentage	99.1
4494	countrycode	SPM
4494	language	French
4494	isofficial	true
4494	percentage	0.0
4495	countrycode	DEU
4495	language	German
4495	isofficial	true
4495	percentage	91.3
4496	countrycode	SLB
4496	language	Malenasian Languages
4496	isofficial	false
4496	percentage	85.6
4497	countrycode	ZMB
4497	language	Bemba
4497	isofficial	false
4497	percentage	29.7
4498	countrycode	WSM
4498	language	Samoan-English
4498	isofficial	false
4498	percentage	52.0
4499	countrycode	SMR
4499	language	Italian
4499	isofficial	true
4499	percentage	100.0
4500	countrycode	STP
4500	language	Crioulo
4500	isofficial	false
4500	percentage	86.3
4501	countrycode	SAU
4501	language	Arabic
4501	isofficial	true
4501	percentage	95.0
4502	countrycode	SEN
4502	language	Wolof
4502	isofficial	true
4502	percentage	48.1
4503	countrycode	SYC
4503	language	Seselwa
4503	isofficial	false
4503	percentage	91.3
4504	countrycode	SLE
4504	language	Mende
4504	isofficial	false
4504	percentage	34.8
4505	countrycode	SGP
4505	language	Chinese
4505	isofficial	true
4505	percentage	77.1
4506	countrycode	SVK
4506	language	Slovak
4506	isofficial	true
4506	percentage	85.6
4507	countrycode	SVN
4507	language	Slovene
4507	isofficial	true
4507	percentage	87.9
4508	countrycode	SOM
4508	language	Somali
4508	isofficial	true
4508	percentage	98.3
4509	countrycode	LKA
4509	language	Singali
4509	isofficial	true
4509	percentage	60.3
4510	countrycode	SDN
4510	language	Arabic
4510	isofficial	true
4510	percentage	49.4
4511	countrycode	FIN
4511	language	Finnish
4511	isofficial	true
4511	percentage	92.7
4512	countrycode	SUR
4512	language	Sranantonga
4512	isofficial	false
4512	percentage	81.0
4513	countrycode	SWZ
4513	language	Swazi
4513	isofficial	true
4513	percentage	89.9
4514	countrycode	CHE
4514	language	German
4514	isofficial	true
4514	percentage	63.6
4515	countrycode	SYR
4515	language	Arabic
4515	isofficial	true
4515	percentage	90.0
4516	countrycode	TJK
4516	language	Tadzhik
4516	isofficial	true
4516	percentage	62.2
4517	countrycode	TWN
4517	language	Min
4517	isofficial	false
4517	percentage	66.7
4518	countrycode	TZA
4518	language	Nyamwesi
4518	isofficial	false
4518	percentage	21.1
4519	countrycode	DNK
4519	language	Danish
4519	isofficial	true
4519	percentage	93.5
4520	countrycode	THA
4520	language	Thai
4520	isofficial	true
4520	percentage	52.6
4521	countrycode	TGO
4521	language	Ewe
4521	isofficial	true
4521	percentage	23.2
4522	countrycode	TKL
4522	language	Tokelau
4522	isofficial	false
4522	percentage	0.0
4523	countrycode	TON
4523	language	Tongan
4523	isofficial	true
4523	percentage	98.3
4524	countrycode	TTO
4524	language	English
4524	isofficial	false
4524	percentage	93.5
4525	countrycode	TCD
4525	language	Sara
4525	isofficial	false
4525	percentage	27.7
4526	countrycode	CZE
4526	language	Czech
4526	isofficial	true
4526	percentage	81.2
4527	countrycode	TUN
4527	language	Arabic
4527	isofficial	true
4527	percentage	69.9
4528	countrycode	TUR
4528	language	Turkish
4528	isofficial	true
4528	percentage	87.6
4529	countrycode	TKM
4529	language	Turkmenian
4529	isofficial	true
4529	percentage	76.7
4530	countrycode	TCA
4530	language	English
4530	isofficial	true
4530	percentage	0.0
4531	countrycode	TUV
4531	language	Tuvalu
4531	isofficial	true
4531	percentage	92.5
4532	countrycode	UGA
4532	language	Ganda
4532	isofficial	false
4532	percentage	18.1
4533	countrycode	UKR
4533	language	Ukrainian
4533	isofficial	true
4533	percentage	64.7
4534	countrycode	HUN
4534	language	Hungarian
4534	isofficial	true
4534	percentage	98.5
4535	countrycode	URY
4535	language	Spanish
4535	isofficial	true
4535	percentage	95.7
4536	countrycode	NCL
4536	language	Malenasian Languages
4536	isofficial	false
4536	percentage	45.4
4537	countrycode	NZL
4537	language	English
4537	isofficial	true
4537	percentage	87.0
4538	countrycode	UZB
4538	language	Uzbek
4538	isofficial	true
4538	percentage	72.6
4539	countrycode	BLR
4539	language	Belorussian
4539	isofficial	true
4539	percentage	65.6
4540	countrycode	WLF
4540	language	Wallis
4540	isofficial	false
4540	percentage	0.0
4541	countrycode	VUT
4541	language	Bislama
4541	isofficial	true
4541	percentage	56.6
4542	countrycode	VAT
4542	language	Italian
4542	isofficial	true
4542	percentage	0.0
4543	countrycode	VEN
4543	language	Spanish
4543	isofficial	true
4543	percentage	96.9
4544	countrycode	RUS
4544	language	Russian
4544	isofficial	true
4544	percentage	86.6
4545	countrycode	VNM
4545	language	Vietnamese
4545	isofficial	true
4545	percentage	86.8
4546	countrycode	EST
4546	language	Estonian
4546	isofficial	true
4546	percentage	65.3
4547	countrycode	USA
4547	language	English
4547	isofficial	true
4547	percentage	86.2
4548	countrycode	VIR
4548	language	English
4548	isofficial	true
4548	percentage	81.7
4549	countrycode	UMI
4549	language	English
4549	isofficial	true
4549	percentage	0.0
4550	countrycode	ZWE
4550	language	Shona
4550	isofficial	false
4550	percentage	72.1
4551	countrycode	PSE
4551	language	Arabic
4551	isofficial	false
4551	percentage	95.9
4552	countrycode	AFG
4552	language	Dari
4552	isofficial	true
4552	percentage	32.1
4553	countrycode	NLD
4553	language	Fries
4553	isofficial	false
4553	percentage	3.7
4554	countrycode	ANT
4554	language	English
4554	isofficial	false
4554	percentage	7.8
4555	countrycode	ALB
4555	language	Greek
4555	isofficial	false
4555	percentage	1.8
4556	countrycode	DZA
4556	language	Berberi
4556	isofficial	false
4556	percentage	14.0
4557	countrycode	ASM
4557	language	English
4557	isofficial	true
4557	percentage	3.1
4558	countrycode	AND
4558	language	Catalan
4558	isofficial	true
4558	percentage	32.3
4559	countrycode	AGO
4559	language	Mbundu
4559	isofficial	false
4559	percentage	21.6
4560	countrycode	ATG
4560	language	English
4560	isofficial	true
4560	percentage	0.0
4561	countrycode	ARE
4561	language	Hindi
4561	isofficial	false
4561	percentage	0.0
4562	countrycode	ARG
4562	language	Italian
4562	isofficial	false
4562	percentage	1.7
4563	countrycode	ARM
4563	language	Azerbaijani
4563	isofficial	false
4563	percentage	2.6
4564	countrycode	ABW
4564	language	English
4564	isofficial	false
4564	percentage	9.5
4565	countrycode	AUS
4565	language	Italian
4565	isofficial	false
4565	percentage	2.2
4566	countrycode	AZE
4566	language	Russian
4566	isofficial	false
4566	percentage	3.0
4567	countrycode	BHS
4567	language	Creole French
4567	isofficial	false
4567	percentage	10.3
4568	countrycode	BHR
4568	language	English
4568	isofficial	false
4568	percentage	0.0
4569	countrycode	BGD
4569	language	Chakma
4569	isofficial	false
4569	percentage	0.4
4570	countrycode	BRB
4570	language	English
4570	isofficial	true
4570	percentage	0.0
4571	countrycode	BEL
4571	language	French
4571	isofficial	true
4571	percentage	32.6
4572	countrycode	BLZ
4572	language	Spanish
4572	isofficial	false
4572	percentage	31.6
4573	countrycode	BEN
4573	language	Joruba
4573	isofficial	false
4573	percentage	12.2
4574	countrycode	BTN
4574	language	Nepali
4574	isofficial	false
4574	percentage	34.8
4575	countrycode	BOL
4575	language	Ketua
4575	isofficial	true
4575	percentage	8.1
4576	countrycode	BWA
4576	language	Shona
4576	isofficial	false
4576	percentage	12.3
4577	countrycode	BRA
4577	language	German
4577	isofficial	false
4577	percentage	0.5
4578	countrycode	GBR
4578	language	Kymri
4578	isofficial	false
4578	percentage	0.9
4579	countrycode	BRN
4579	language	Malay-English
4579	isofficial	false
4579	percentage	28.8
4580	countrycode	BGR
4580	language	Turkish
4580	isofficial	false
4580	percentage	9.4
4581	countrycode	BFA
4581	language	Ful
4581	isofficial	false
4581	percentage	9.7
4582	countrycode	BDI
4582	language	French
4582	isofficial	true
4582	percentage	0.0
4583	countrycode	CHL
4583	language	Araucan
4583	isofficial	false
4583	percentage	9.6
4584	countrycode	COK
4584	language	English
4584	isofficial	false
4584	percentage	0.0
4585	countrycode	CRI
4585	language	Creole English
4585	isofficial	false
4585	percentage	2.0
4586	countrycode	DJI
4586	language	Afar
4586	isofficial	false
4586	percentage	34.8
4587	countrycode	DMA
4587	language	Creole French
4587	isofficial	false
4587	percentage	0.0
4588	countrycode	DOM
4588	language	Creole French
4588	isofficial	false
4588	percentage	2.0
4589	countrycode	ECU
4589	language	Ketua
4589	isofficial	false
4589	percentage	7.0
4590	countrycode	EGY
4590	language	Sinaberberi
4590	isofficial	false
4590	percentage	0.0
4591	countrycode	SLV
4591	language	Nahua
4591	isofficial	false
4591	percentage	0.0
4592	countrycode	ERI
4592	language	Tigre
4592	isofficial	false
4592	percentage	31.7
4593	countrycode	ESP
4593	language	Catalan
4593	isofficial	false
4593	percentage	16.9
4594	countrycode	ZAF
4594	language	Xhosa
4594	isofficial	true
4594	percentage	17.7
4595	countrycode	ETH
4595	language	Amhara
4595	isofficial	false
4595	percentage	30.0
4596	countrycode	FJI
4596	language	Hindi
4596	isofficial	false
4596	percentage	43.7
4597	countrycode	PHL
4597	language	Cebuano
4597	isofficial	false
4597	percentage	23.3
4598	countrycode	FRO
4598	language	Danish
4598	isofficial	true
4598	percentage	0.0
4599	countrycode	GAB
4599	language	Punu-sira-nzebi
4599	isofficial	false
4599	percentage	17.1
4600	countrycode	GMB
4600	language	Ful
4600	isofficial	false
4600	percentage	16.2
4601	countrycode	GEO
4601	language	Russian
4601	isofficial	false
4601	percentage	8.8
4602	countrycode	GHA
4602	language	Mossi
4602	isofficial	false
4602	percentage	15.8
4603	countrycode	GIB
4603	language	Arabic
4603	isofficial	false
4603	percentage	7.4
4604	countrycode	GRL
4604	language	Danish
4604	isofficial	true
4604	percentage	12.5
4605	countrycode	GLP
4605	language	French
4605	isofficial	true
4605	percentage	0.0
4606	countrycode	GUM
4606	language	Chamorro
4606	isofficial	true
4606	percentage	29.6
4607	countrycode	GTM
4607	language	Quiché
4607	isofficial	false
4607	percentage	10.1
4608	countrycode	GIN
4608	language	Malinke
4608	isofficial	false
4608	percentage	23.2
4609	countrycode	GNB
4609	language	Ful
4609	isofficial	false
4609	percentage	16.6
4610	countrycode	GUY
4610	language	Caribbean
4610	isofficial	false
4610	percentage	2.2
4611	countrycode	HTI
4611	language	French
4611	isofficial	true
4611	percentage	0.0
4612	countrycode	HND
4612	language	Garifuna
4612	isofficial	false
4612	percentage	1.3
4613	countrycode	HKG
4613	language	English
4613	isofficial	true
4613	percentage	2.2
4614	countrycode	SJM
4614	language	Russian
4614	isofficial	false
4614	percentage	0.0
4615	countrycode	IDN
4615	language	Sunda
4615	isofficial	false
4615	percentage	15.8
4616	countrycode	IND
4616	language	Bengali
4616	isofficial	false
4616	percentage	8.2
4617	countrycode	IRQ
4617	language	Kurdish
4617	isofficial	false
4617	percentage	19.0
4618	countrycode	IRN
4618	language	Azerbaijani
4618	isofficial	false
4618	percentage	16.8
4619	countrycode	IRL
4619	language	Irish
4619	isofficial	true
4619	percentage	1.6
4620	countrycode	ISL
4620	language	English
4620	isofficial	false
4620	percentage	0.0
4621	countrycode	ISR
4621	language	Arabic
4621	isofficial	true
4621	percentage	18.0
4622	countrycode	ITA
4622	language	Sardinian
4622	isofficial	false
4622	percentage	2.7
4623	countrycode	TMP
4623	language	Portuguese
4623	isofficial	true
4623	percentage	0.0
4624	countrycode	AUT
4624	language	Serbo-Croatian
4624	isofficial	false
4624	percentage	2.2
4625	countrycode	JAM
4625	language	Hindi
4625	isofficial	false
4625	percentage	1.9
4626	countrycode	JPN
4626	language	Korean
4626	isofficial	false
4626	percentage	0.5
4627	countrycode	YEM
4627	language	Soqutri
4627	isofficial	false
4627	percentage	0.0
4628	countrycode	JOR
4628	language	Circassian
4628	isofficial	false
4628	percentage	1.0
4629	countrycode	CXR
4629	language	English
4629	isofficial	true
4629	percentage	0.0
4630	countrycode	YUG
4630	language	Albaniana
4630	isofficial	false
4630	percentage	16.5
4631	countrycode	KHM
4631	language	Vietnamese
4631	isofficial	false
4631	percentage	5.5
4632	countrycode	CMR
4632	language	Bamileke-bamum
4632	isofficial	false
4632	percentage	18.6
4633	countrycode	CAN
4633	language	French
4633	isofficial	true
4633	percentage	23.4
4634	countrycode	CPV
4634	language	Portuguese
4634	isofficial	true
4634	percentage	0.0
4635	countrycode	KAZ
4635	language	Russian
4635	isofficial	false
4635	percentage	34.7
4636	countrycode	KEN
4636	language	Luhya
4636	isofficial	false
4636	percentage	13.8
4637	countrycode	CAF
4637	language	Banda
4637	isofficial	false
4637	percentage	23.5
4638	countrycode	CHN
4638	language	Zhuang
4638	isofficial	false
4638	percentage	1.4
4639	countrycode	KGZ
4639	language	Russian
4639	isofficial	true
4639	percentage	16.2
4640	countrycode	KIR
4640	language	Tuvalu
4640	isofficial	false
4640	percentage	0.5
4641	countrycode	COL
4641	language	Chibcha
4641	isofficial	false
4641	percentage	0.4
4642	countrycode	COM
4642	language	Comorian-French
4642	isofficial	false
4642	percentage	12.9
4643	countrycode	COG
4643	language	Teke
4643	isofficial	false
4643	percentage	17.3
4644	countrycode	COD
4644	language	Kongo
4644	isofficial	false
4644	percentage	16.0
4645	countrycode	CCK
4645	language	English
4645	isofficial	true
4645	percentage	0.0
4646	countrycode	PRK
4646	language	Chinese
4646	isofficial	false
4646	percentage	0.1
4647	countrycode	KOR
4647	language	Chinese
4647	isofficial	false
4647	percentage	0.1
4648	countrycode	GRC
4648	language	Turkish
4648	isofficial	false
4648	percentage	0.9
4649	countrycode	HRV
4649	language	Slovene
4649	isofficial	false
4649	percentage	0.0
4650	countrycode	KWT
4650	language	English
4650	isofficial	false
4650	percentage	0.0
4651	countrycode	CYP
4651	language	Turkish
4651	isofficial	true
4651	percentage	22.4
4652	countrycode	LAO
4652	language	Mon-khmer
4652	isofficial	false
4652	percentage	16.5
4653	countrycode	LVA
4653	language	Russian
4653	isofficial	false
4653	percentage	32.5
4654	countrycode	LSO
4654	language	Zulu
4654	isofficial	false
4654	percentage	15.0
4655	countrycode	LBN
4655	language	Armenian
4655	isofficial	false
4655	percentage	5.9
4656	countrycode	LBR
4656	language	Bassa
4656	isofficial	false
4656	percentage	13.7
4657	countrycode	LBY
4657	language	Berberi
4657	isofficial	false
4657	percentage	1.0
4658	countrycode	LIE
4658	language	Italian
4658	isofficial	false
4658	percentage	2.5
4659	countrycode	LTU
4659	language	Russian
4659	isofficial	false
4659	percentage	8.1
4660	countrycode	LUX
4660	language	Portuguese
4660	isofficial	false
4660	percentage	13.0
4661	countrycode	MAC
4661	language	Portuguese
4661	isofficial	true
4661	percentage	2.3
4662	countrycode	MDG
4662	language	French
4662	isofficial	true
4662	percentage	0.0
4663	countrycode	MKD
4663	language	Albaniana
4663	isofficial	false
4663	percentage	22.9
4664	countrycode	MWI
4664	language	Lomwe
4664	isofficial	false
4664	percentage	18.4
4665	countrycode	MDV
4665	language	English
4665	isofficial	false
4665	percentage	0.0
4666	countrycode	MYS
4666	language	Chinese
4666	isofficial	false
4666	percentage	9.0
4667	countrycode	MLI
4667	language	Ful
4667	isofficial	false
4667	percentage	13.9
4668	countrycode	MLT
4668	language	English
4668	isofficial	true
4668	percentage	2.1
4669	countrycode	MAR
4669	language	Berberi
4669	isofficial	false
4669	percentage	33.0
4670	countrycode	MHL
4670	language	English
4670	isofficial	true
4670	percentage	0.0
4671	countrycode	MTQ
4671	language	French
4671	isofficial	true
4671	percentage	0.0
4672	countrycode	MRT
4672	language	Wolof
4672	isofficial	false
4672	percentage	6.6
4673	countrycode	MUS
4673	language	Bhojpuri
4673	isofficial	false
4673	percentage	21.1
4674	countrycode	MYT
4674	language	French
4674	isofficial	true
4674	percentage	20.3
4675	countrycode	MEX
4675	language	Náhuatl
4675	isofficial	false
4675	percentage	1.8
4676	countrycode	FSM
4676	language	Pohnpei
4676	isofficial	false
4676	percentage	23.8
4677	countrycode	MDA
4677	language	Russian
4677	isofficial	false
4677	percentage	23.2
4678	countrycode	MCO
4678	language	Monegasque
4678	isofficial	false
4678	percentage	16.1
4679	countrycode	MNG
4679	language	Kazakh
4679	isofficial	false
4679	percentage	5.9
4680	countrycode	MOZ
4680	language	Tsonga
4680	isofficial	false
4680	percentage	12.4
4681	countrycode	MMR
4681	language	Shan
4681	isofficial	false
4681	percentage	8.5
4682	countrycode	NAM
4682	language	Nama
4682	isofficial	false
4682	percentage	12.4
4683	countrycode	NRU
4683	language	Kiribati
4683	isofficial	false
4683	percentage	17.9
4684	countrycode	NPL
4684	language	Maithili
4684	isofficial	false
4684	percentage	11.9
4685	countrycode	NIC
4685	language	Miskito
4685	isofficial	false
4685	percentage	1.6
4686	countrycode	NER
4686	language	Songhai-zerma
4686	isofficial	false
4686	percentage	21.2
4687	countrycode	NGA
4687	language	Hausa
4687	isofficial	false
4687	percentage	21.1
4688	countrycode	NIU
4688	language	English
4688	isofficial	true
4688	percentage	0.0
4689	countrycode	NOR
4689	language	English
4689	isofficial	false
4689	percentage	0.5
4690	countrycode	CIV
4690	language	Gur
4690	isofficial	false
4690	percentage	11.7
4691	countrycode	OMN
4691	language	Balochi
4691	isofficial	false
4691	percentage	0.0
4692	countrycode	PAK
4692	language	Pashto
4692	isofficial	false
4692	percentage	13.1
4693	countrycode	PLW
4693	language	Philippene Languages
4693	isofficial	false
4693	percentage	9.2
4694	countrycode	PAN
4694	language	Creole English
4694	isofficial	false
4694	percentage	14.0
4695	countrycode	PNG
4695	language	Malenasian Languages
4695	isofficial	false
4695	percentage	20.0
4696	countrycode	PRY
4696	language	Guaraní
4696	isofficial	true
4696	percentage	40.1
4697	countrycode	PER
4697	language	Ketua
4697	isofficial	true
4697	percentage	16.4
4698	countrycode	MNP
4698	language	Chamorro
4698	isofficial	false
4698	percentage	30.0
4699	countrycode	PRI
4699	language	English
4699	isofficial	false
4699	percentage	47.4
4700	countrycode	POL
4700	language	German
4700	isofficial	false
4700	percentage	1.3
4701	countrycode	GNQ
4701	language	Bubi
4701	isofficial	false
4701	percentage	8.7
4702	countrycode	QAT
4702	language	Urdu
4702	isofficial	false
4702	percentage	0.0
4703	countrycode	FRA
4703	language	Arabic
4703	isofficial	false
4703	percentage	2.5
4704	countrycode	GUF
4704	language	Indian Languages
4704	isofficial	false
4704	percentage	1.9
4705	countrycode	PYF
4705	language	French
4705	isofficial	true
4705	percentage	40.8
4706	countrycode	REU
4706	language	Chinese
4706	isofficial	false
4706	percentage	2.8
4707	countrycode	ROM
4707	language	Hungarian
4707	isofficial	false
4707	percentage	7.2
4708	countrycode	RWA
4708	language	French
4708	isofficial	true
4708	percentage	0.0
4709	countrycode	SWE
4709	language	Finnish
4709	isofficial	false
4709	percentage	2.4
4710	countrycode	KNA
4710	language	English
4710	isofficial	true
4710	percentage	0.0
4711	countrycode	LCA
4711	language	English
4711	isofficial	true
4711	percentage	20.0
4712	countrycode	VCT
4712	language	English
4712	isofficial	true
4712	percentage	0.0
4713	countrycode	DEU
4713	language	Turkish
4713	isofficial	false
4713	percentage	2.6
4714	countrycode	SLB
4714	language	Papuan Languages
4714	isofficial	false
4714	percentage	8.6
4715	countrycode	ZMB
4715	language	Tongan
4715	isofficial	false
4715	percentage	11.0
4716	countrycode	WSM
4716	language	Samoan
4716	isofficial	true
4716	percentage	47.5
4717	countrycode	STP
4717	language	French
4717	isofficial	false
4717	percentage	0.7
4718	countrycode	SEN
4718	language	Ful
4718	isofficial	false
4718	percentage	21.7
4719	countrycode	SYC
4719	language	English
4719	isofficial	true
4719	percentage	3.8
4720	countrycode	SLE
4720	language	Temne
4720	isofficial	false
4720	percentage	31.8
4721	countrycode	SGP
4721	language	Malay
4721	isofficial	true
4721	percentage	14.1
4722	countrycode	SVK
4722	language	Hungarian
4722	isofficial	false
4722	percentage	10.5
4723	countrycode	SVN
4723	language	Serbo-Croatian
4723	isofficial	false
4723	percentage	7.9
4724	countrycode	SOM
4724	language	Arabic
4724	isofficial	true
4724	percentage	0.0
4725	countrycode	LKA
4725	language	Tamil
4725	isofficial	true
4725	percentage	19.6
4726	countrycode	SDN
4726	language	Dinka
4726	isofficial	false
4726	percentage	11.5
4727	countrycode	FIN
4727	language	Swedish
4727	isofficial	true
4727	percentage	5.7
4728	countrycode	SUR
4728	language	Hindi
4728	isofficial	false
4728	percentage	0.0
4729	countrycode	SWZ
4729	language	Zulu
4729	isofficial	false
4729	percentage	2.0
4730	countrycode	CHE
4730	language	French
4730	isofficial	true
4730	percentage	19.2
4731	countrycode	SYR
4731	language	Kurdish
4731	isofficial	false
4731	percentage	9.0
4732	countrycode	TJK
4732	language	Uzbek
4732	isofficial	false
4732	percentage	23.2
4733	countrycode	TWN
4733	language	Mandarin Chinese
4733	isofficial	true
4733	percentage	20.1
4734	countrycode	TZA
4734	language	Swahili
4734	isofficial	true
4734	percentage	8.8
4735	countrycode	DNK
4735	language	Turkish
4735	isofficial	false
4735	percentage	0.8
4736	countrycode	THA
4736	language	Lao
4736	isofficial	false
4736	percentage	26.9
4737	countrycode	TGO
4737	language	Kabyé
4737	isofficial	true
4737	percentage	13.8
4738	countrycode	TKL
4738	language	English
4738	isofficial	true
4738	percentage	0.0
4739	countrycode	TON
4739	language	English
4739	isofficial	true
4739	percentage	0.0
4740	countrycode	TTO
4740	language	Hindi
4740	isofficial	false
4740	percentage	3.4
4741	countrycode	TCD
4741	language	Arabic
4741	isofficial	true
4741	percentage	12.3
4742	countrycode	CZE
4742	language	Moravian
4742	isofficial	false
4742	percentage	12.9
4743	countrycode	TUN
4743	language	Arabic-French
4743	isofficial	false
4743	percentage	26.3
4744	countrycode	TUR
4744	language	Kurdish
4744	isofficial	false
4744	percentage	10.6
4745	countrycode	TKM
4745	language	Uzbek
4745	isofficial	false
4745	percentage	9.2
4746	countrycode	TUV
4746	language	Kiribati
4746	isofficial	false
4746	percentage	7.5
4747	countrycode	UGA
4747	language	Nkole
4747	isofficial	false
4747	percentage	10.7
4748	countrycode	UKR
4748	language	Russian
4748	isofficial	false
4748	percentage	32.9
4749	countrycode	HUN
4749	language	Romani
4749	isofficial	false
4749	percentage	0.5
4750	countrycode	NCL
4750	language	French
4750	isofficial	true
4750	percentage	34.3
4751	countrycode	NZL
4751	language	Maori
4751	isofficial	false
4751	percentage	4.3
4752	countrycode	UZB
4752	language	Russian
4752	isofficial	false
4752	percentage	10.9
4753	countrycode	BLR
4753	language	Russian
4753	isofficial	true
4753	percentage	32.0
4754	countrycode	WLF
4754	language	Futuna
4754	isofficial	false
4754	percentage	0.0
4755	countrycode	VUT
4755	language	English
4755	isofficial	true
4755	percentage	28.3
4756	countrycode	VEN
4756	language	Goajiro
4756	isofficial	false
4756	percentage	0.4
4757	countrycode	RUS
4757	language	Tatar
4757	isofficial	false
4757	percentage	3.2
4758	countrycode	VNM
4758	language	Tho
4758	isofficial	false
4758	percentage	1.8
4759	countrycode	EST
4759	language	Russian
4759	isofficial	false
4759	percentage	27.8
4760	countrycode	USA
4760	language	Spanish
4760	isofficial	false
4760	percentage	7.5
4761	countrycode	VIR
4761	language	Spanish
4761	isofficial	false
4761	percentage	13.3
4762	countrycode	ZWE
4762	language	Ndebele
4762	isofficial	false
4762	percentage	16.2
4763	countrycode	PSE
4763	language	Hebrew
4763	isofficial	false
4763	percentage	4.1
4764	countrycode	AFG
4764	language	Uzbek
4764	isofficial	false
4764	percentage	8.8
4765	countrycode	NLD
4765	language	Arabic
4765	isofficial	false
4765	percentage	0.9
4766	countrycode	ANT
4766	language	Dutch
4766	isofficial	true
4766	percentage	0.0
4767	countrycode	ALB
4767	language	Macedonian
4767	isofficial	false
4767	percentage	0.1
4768	countrycode	ASM
4768	language	Tongan
4768	isofficial	false
4768	percentage	3.1
4769	countrycode	AND
4769	language	Portuguese
4769	isofficial	false
4769	percentage	10.8
4770	countrycode	AGO
4770	language	Kongo
4770	isofficial	false
4770	percentage	13.2
4771	countrycode	ARG
4771	language	Indian Languages
4771	isofficial	false
4771	percentage	0.3
4772	countrycode	ABW
4772	language	Spanish
4772	isofficial	false
4772	percentage	7.4
4773	countrycode	AUS
4773	language	Greek
4773	isofficial	false
4773	percentage	1.6
4774	countrycode	AZE
4774	language	Lezgian
4774	isofficial	false
4774	percentage	2.3
4775	countrycode	BGD
4775	language	Marma
4775	isofficial	false
4775	percentage	0.2
4776	countrycode	BEL
4776	language	Italian
4776	isofficial	false
4776	percentage	2.4
4777	countrycode	BLZ
4777	language	Maya Languages
4777	isofficial	false
4777	percentage	9.6
4778	countrycode	BEN
4778	language	Adja
4778	isofficial	false
4778	percentage	11.1
4779	countrycode	BTN
4779	language	Asami
4779	isofficial	false
4779	percentage	15.2
4780	countrycode	BOL
4780	language	Aimará
4780	isofficial	true
4780	percentage	3.2
4781	countrycode	BWA
4781	language	San
4781	isofficial	false
4781	percentage	3.5
4782	countrycode	BRA
4782	language	Italian
4782	isofficial	false
4782	percentage	0.4
4783	countrycode	GBR
4783	language	Gaeli
4783	isofficial	false
4783	percentage	0.1
4784	countrycode	BRN
4784	language	Chinese
4784	isofficial	false
4784	percentage	9.3
4785	countrycode	BGR
4785	language	Romani
4785	isofficial	false
4785	percentage	3.7
4786	countrycode	BFA
4786	language	Gurma
4786	isofficial	false
4786	percentage	5.7
4787	countrycode	BDI
4787	language	Swahili
4787	isofficial	false
4787	percentage	0.0
4788	countrycode	CHL
4788	language	Aimará
4788	isofficial	false
4788	percentage	0.5
4789	countrycode	CRI
4789	language	Chibcha
4789	isofficial	false
4789	percentage	0.3
4790	countrycode	DJI
4790	language	Arabic
4790	isofficial	true
4790	percentage	10.6
4791	countrycode	ERI
4791	language	Afar
4791	isofficial	false
4791	percentage	4.3
4792	countrycode	ESP
4792	language	Galecian
4792	isofficial	false
4792	percentage	6.4
4793	countrycode	ZAF
4793	language	Afrikaans
4793	isofficial	true
4793	percentage	14.3
4794	countrycode	ETH
4794	language	Tigrinja
4794	isofficial	false
4794	percentage	7.2
4795	countrycode	PHL
4795	language	Ilocano
4795	isofficial	false
4795	percentage	9.3
4796	countrycode	GAB
4796	language	Mpongwe
4796	isofficial	false
4796	percentage	14.6
4797	countrycode	GMB
4797	language	Wolof
4797	isofficial	false
4797	percentage	12.6
4798	countrycode	GEO
4798	language	Armenian
4798	isofficial	false
4798	percentage	6.8
4799	countrycode	GHA
4799	language	Ewe
4799	isofficial	false
4799	percentage	11.9
4800	countrycode	GUM
4800	language	Philippene Languages
4800	isofficial	false
4800	percentage	19.7
4801	countrycode	GTM
4801	language	Cakchiquel
4801	isofficial	false
4801	percentage	8.9
4802	countrycode	GIN
4802	language	Susu
4802	isofficial	false
4802	percentage	11.0
4803	countrycode	GNB
4803	language	Balante
4803	isofficial	false
4803	percentage	14.6
4804	countrycode	GUY
4804	language	Arawakan
4804	isofficial	false
4804	percentage	1.4
4805	countrycode	HND
4805	language	Creole English
4805	isofficial	false
4805	percentage	0.2
4806	countrycode	HKG
4806	language	Fukien
4806	isofficial	false
4806	percentage	1.9
4807	countrycode	IDN
4807	language	Malay
4807	isofficial	true
4807	percentage	12.1
4808	countrycode	IND
4808	language	Telugu
4808	isofficial	false
4808	percentage	7.8
4809	countrycode	IRQ
4809	language	Azerbaijani
4809	isofficial	false
4809	percentage	1.7
4810	countrycode	IRN
4810	language	Kurdish
4810	isofficial	false
4810	percentage	9.1
4811	countrycode	ISR
4811	language	Russian
4811	isofficial	false
4811	percentage	8.9
4812	countrycode	ITA
4812	language	Friuli
4812	isofficial	false
4812	percentage	1.2
4813	countrycode	AUT
4813	language	Turkish
4813	isofficial	false
4813	percentage	1.5
4814	countrycode	JPN
4814	language	Chinese
4814	isofficial	false
4814	percentage	0.2
4815	countrycode	JOR
4815	language	Armenian
4815	isofficial	false
4815	percentage	1.0
4816	countrycode	YUG
4816	language	Hungarian
4816	isofficial	false
4816	percentage	3.4
4817	countrycode	KHM
4817	language	Chinese
4817	isofficial	false
4817	percentage	3.1
4818	countrycode	CMR
4818	language	Duala
4818	isofficial	false
4818	percentage	10.9
4819	countrycode	CAN
4819	language	Chinese
4819	isofficial	false
4819	percentage	2.5
4820	countrycode	KAZ
4820	language	Ukrainian
4820	isofficial	false
4820	percentage	5.0
4821	countrycode	KEN
4821	language	Luo
4821	isofficial	false
4821	percentage	12.8
4822	countrycode	CAF
4822	language	Mandjia
4822	isofficial	false
4822	percentage	14.8
4823	countrycode	CHN
4823	language	Mantu
4823	isofficial	false
4823	percentage	0.9
4824	countrycode	KGZ
4824	language	Uzbek
4824	isofficial	false
4824	percentage	14.1
4825	countrycode	COL
4825	language	Creole English
4825	isofficial	false
4825	percentage	0.1
4826	countrycode	COM
4826	language	Comorian-madagassi
4826	isofficial	false
4826	percentage	5.5
4827	countrycode	COG
4827	language	Mboshi
4827	isofficial	false
4827	percentage	11.4
4828	countrycode	COD
4828	language	Mongo
4828	isofficial	false
4828	percentage	13.5
4829	countrycode	LAO
4829	language	Thai
4829	isofficial	false
4829	percentage	7.8
4830	countrycode	LVA
4830	language	Belorussian
4830	isofficial	false
4830	percentage	4.1
4831	countrycode	LSO
4831	language	English
4831	isofficial	true
4831	percentage	0.0
4832	countrycode	LBN
4832	language	French
4832	isofficial	false
4832	percentage	0.0
4833	countrycode	LBR
4833	language	Grebo
4833	isofficial	false
4833	percentage	8.9
4834	countrycode	LIE
4834	language	Turkish
4834	isofficial	false
4834	percentage	2.5
4835	countrycode	LTU
4835	language	Polish
4835	isofficial	false
4835	percentage	7.0
4836	countrycode	LUX
4836	language	Italian
4836	isofficial	false
4836	percentage	4.6
4837	countrycode	MAC
4837	language	Mandarin Chinese
4837	isofficial	false
4837	percentage	1.2
4838	countrycode	MKD
4838	language	Turkish
4838	isofficial	false
4838	percentage	4.0
4839	countrycode	MWI
4839	language	Yao
4839	isofficial	false
4839	percentage	13.2
4840	countrycode	MYS
4840	language	Tamil
4840	isofficial	false
4840	percentage	3.9
4841	countrycode	MLI
4841	language	Senufo and Minianka
4841	isofficial	false
4841	percentage	12.0
4842	countrycode	MRT
4842	language	Tukulor
4842	isofficial	false
4842	percentage	5.4
4843	countrycode	MUS
4843	language	French
4843	isofficial	false
4843	percentage	3.4
4844	countrycode	MYT
4844	language	Malagasy
4844	isofficial	false
4844	percentage	16.1
4845	countrycode	MEX
4845	language	Yucatec
4845	isofficial	false
4845	percentage	1.1
4846	countrycode	FSM
4846	language	Mortlock
4846	isofficial	false
4846	percentage	7.6
4847	countrycode	MDA
4847	language	Ukrainian
4847	isofficial	false
4847	percentage	8.6
4848	countrycode	MCO
4848	language	Italian
4848	isofficial	false
4848	percentage	16.1
4849	countrycode	MNG
4849	language	Dorbet
4849	isofficial	false
4849	percentage	2.7
4850	countrycode	MOZ
4850	language	Sena
4850	isofficial	false
4850	percentage	9.4
4851	countrycode	MMR
4851	language	Karen
4851	isofficial	false
4851	percentage	6.2
4852	countrycode	NAM
4852	language	Kavango
4852	isofficial	false
4852	percentage	9.7
4853	countrycode	NRU
4853	language	Chinese
4853	isofficial	false
4853	percentage	8.5
4854	countrycode	NPL
4854	language	Bhojpuri
4854	isofficial	false
4854	percentage	7.5
4855	countrycode	NIC
4855	language	Creole English
4855	isofficial	false
4855	percentage	0.5
4856	countrycode	NER
4856	language	Tamashek
4856	isofficial	false
4856	percentage	10.4
4857	countrycode	NGA
4857	language	Ibo
4857	isofficial	false
4857	percentage	18.1
4858	countrycode	NOR
4858	language	Danish
4858	isofficial	false
4858	percentage	0.4
4859	countrycode	CIV
4859	language	Malinke
4859	isofficial	false
4859	percentage	11.4
4860	countrycode	PAK
4860	language	Sindhi
4860	isofficial	false
4860	percentage	11.8
4861	countrycode	PLW
4861	language	English
4861	isofficial	true
4861	percentage	3.2
4862	countrycode	PAN
4862	language	Guaymí
4862	isofficial	false
4862	percentage	5.3
4863	countrycode	PRY
4863	language	Portuguese
4863	isofficial	false
4863	percentage	3.2
4864	countrycode	PER
4864	language	Aimará
4864	isofficial	true
4864	percentage	2.3
4865	countrycode	MNP
4865	language	Chinese
4865	isofficial	false
4865	percentage	7.1
4866	countrycode	POL
4866	language	Ukrainian
4866	isofficial	false
4866	percentage	0.6
4867	countrycode	FRA
4867	language	Portuguese
4867	isofficial	false
4867	percentage	1.2
4868	countrycode	PYF
4868	language	Chinese
4868	isofficial	false
4868	percentage	2.9
4869	countrycode	REU
4869	language	Comorian
4869	isofficial	false
4869	percentage	2.8
4870	countrycode	ROM
4870	language	Romani
4870	isofficial	true
4870	percentage	0.7
4871	countrycode	SWE
4871	language	Southern Slavic Languages
4871	isofficial	false
4871	percentage	1.3
4872	countrycode	DEU
4872	language	Southern Slavic Languages
4872	isofficial	false
4872	percentage	1.4
4873	countrycode	SLB
4873	language	Polynesian Languages
4873	isofficial	false
4873	percentage	3.8
4874	countrycode	ZMB
4874	language	Nyanja
4874	isofficial	false
4874	percentage	7.8
4875	countrycode	WSM
4875	language	English
4875	isofficial	true
4875	percentage	0.6
4876	countrycode	SEN
4876	language	Serer
4876	isofficial	false
4876	percentage	12.5
4877	countrycode	SYC
4877	language	French
4877	isofficial	true
4877	percentage	1.3
4878	countrycode	SLE
4878	language	Limba
4878	isofficial	false
4878	percentage	8.3
4879	countrycode	SGP
4879	language	Tamil
4879	isofficial	true
4879	percentage	7.4
4880	countrycode	SVK
4880	language	Romani
4880	isofficial	false
4880	percentage	1.7
4881	countrycode	SVN
4881	language	Hungarian
4881	isofficial	false
4881	percentage	0.5
4882	countrycode	LKA
4882	language	Mixed Languages
4882	isofficial	false
4882	percentage	19.6
4883	countrycode	SDN
4883	language	Nubian Languages
4883	isofficial	false
4883	percentage	8.1
4884	countrycode	FIN
4884	language	Russian
4884	isofficial	false
4884	percentage	0.4
4885	countrycode	CHE
4885	language	Italian
4885	isofficial	true
4885	percentage	7.7
4886	countrycode	TJK
4886	language	Russian
4886	isofficial	false
4886	percentage	9.7
4887	countrycode	TWN
4887	language	Hakka
4887	isofficial	false
4887	percentage	11.0
4888	countrycode	TZA
4888	language	Hehet
4888	isofficial	false
4888	percentage	6.9
4889	countrycode	DNK
4889	language	Arabic
4889	isofficial	false
4889	percentage	0.7
4890	countrycode	THA
4890	language	Chinese
4890	isofficial	false
4890	percentage	12.1
4891	countrycode	TGO
4891	language	Watyi
4891	isofficial	false
4891	percentage	10.3
4892	countrycode	TTO
4892	language	Creole English
4892	isofficial	false
4892	percentage	2.9
4893	countrycode	TCD
4893	language	Mayo-kebbi
4893	isofficial	false
4893	percentage	11.5
4894	countrycode	CZE
4894	language	Slovak
4894	isofficial	false
4894	percentage	3.1
4895	countrycode	TUN
4895	language	Arabic-French-English
4895	isofficial	false
4895	percentage	3.2
4896	countrycode	TUR
4896	language	Arabic
4896	isofficial	false
4896	percentage	1.4
4897	countrycode	TKM
4897	language	Russian
4897	isofficial	false
4897	percentage	6.7
4898	countrycode	TUV
4898	language	English
4898	isofficial	true
4898	percentage	0.0
4899	countrycode	UGA
4899	language	Kiga
4899	isofficial	false
4899	percentage	8.3
4900	countrycode	UKR
4900	language	Romanian
4900	isofficial	false
4900	percentage	0.7
4901	countrycode	HUN
4901	language	German
4901	isofficial	false
4901	percentage	0.4
4902	countrycode	NCL
4902	language	Polynesian Languages
4902	isofficial	false
4902	percentage	11.6
4903	countrycode	UZB
4903	language	Tadzhik
4903	isofficial	false
4903	percentage	4.4
4904	countrycode	BLR
4904	language	Ukrainian
4904	isofficial	false
4904	percentage	1.3
4905	countrycode	VUT
4905	language	French
4905	isofficial	true
4905	percentage	14.2
4906	countrycode	VEN
4906	language	Warrau
4906	isofficial	false
4906	percentage	0.1
4907	countrycode	RUS
4907	language	Ukrainian
4907	isofficial	false
4907	percentage	1.3
4908	countrycode	VNM
4908	language	Thai
4908	isofficial	false
4908	percentage	1.6
4909	countrycode	EST
4909	language	Ukrainian
4909	isofficial	false
4909	percentage	2.8
4910	countrycode	USA
4910	language	French
4910	isofficial	false
4910	percentage	0.7
4911	countrycode	VIR
4911	language	French
4911	isofficial	false
4911	percentage	2.5
4912	countrycode	ZWE
4912	language	English
4912	isofficial	true
4912	percentage	2.2
4913	countrycode	AFG
4913	language	Turkmenian
4913	isofficial	false
4913	percentage	1.9
4914	countrycode	NLD
4914	language	Turkish
4914	isofficial	false
4914	percentage	0.8
4915	countrycode	AND
4915	language	French
4915	isofficial	false
4915	percentage	6.2
4916	countrycode	AGO
4916	language	Luimbe-nganguela
4916	isofficial	false
4916	percentage	5.4
4917	countrycode	ABW
4917	language	Dutch
4917	isofficial	true
4917	percentage	5.3
4918	countrycode	AUS
4918	language	Canton Chinese
4918	isofficial	false
4918	percentage	1.1
4919	countrycode	AZE
4919	language	Armenian
4919	isofficial	false
4919	percentage	2.0
4920	countrycode	BGD
4920	language	Garo
4920	isofficial	false
4920	percentage	0.1
4921	countrycode	BEL
4921	language	Arabic
4921	isofficial	false
4921	percentage	1.6
4922	countrycode	BLZ
4922	language	Garifuna
4922	isofficial	false
4922	percentage	6.8
4923	countrycode	BEN
4923	language	Aizo
4923	isofficial	false
4923	percentage	8.7
4924	countrycode	BOL
4924	language	Guaraní
4924	isofficial	false
4924	percentage	0.1
4925	countrycode	BWA
4925	language	Khoekhoe
4925	isofficial	false
4925	percentage	2.5
4926	countrycode	BRA
4926	language	Japanese
4926	isofficial	false
4926	percentage	0.4
4927	countrycode	BRN
4927	language	English
4927	isofficial	false
4927	percentage	3.1
4928	countrycode	BGR
4928	language	Macedonian
4928	isofficial	false
4928	percentage	2.6
4929	countrycode	BFA
4929	language	Busansi
4929	isofficial	false
4929	percentage	3.5
4930	countrycode	CHL
4930	language	Rapa nui
4930	isofficial	false
4930	percentage	0.2
4931	countrycode	CRI
4931	language	Chinese
4931	isofficial	false
4931	percentage	0.2
4932	countrycode	ERI
4932	language	Hadareb
4932	isofficial	false
4932	percentage	3.8
4933	countrycode	ESP
4933	language	Basque
4933	isofficial	false
4933	percentage	1.6
4934	countrycode	ZAF
4934	language	Northsotho
4934	isofficial	false
4934	percentage	9.1
4935	countrycode	ETH
4935	language	Gurage
4935	isofficial	false
4935	percentage	4.7
4936	countrycode	PHL
4936	language	Hiligaynon
4936	isofficial	false
4936	percentage	9.1
4937	countrycode	GAB
4937	language	Mbete
4937	isofficial	false
4937	percentage	13.8
4938	countrycode	GMB
4938	language	Diola
4938	isofficial	false
4938	percentage	9.2
4939	countrycode	GEO
4939	language	Azerbaijani
4939	isofficial	false
4939	percentage	5.5
4940	countrycode	GHA
4940	language	Ga-adangme
4940	isofficial	false
4940	percentage	7.8
4941	countrycode	GUM
4941	language	Korean
4941	isofficial	false
4941	percentage	3.3
4942	countrycode	GTM
4942	language	Kekchí
4942	isofficial	false
4942	percentage	4.9
4943	countrycode	GIN
4943	language	Kissi
4943	isofficial	false
4943	percentage	6.0
4944	countrycode	GNB
4944	language	Portuguese
4944	isofficial	true
4944	percentage	8.1
4945	countrycode	HND
4945	language	Miskito
4945	isofficial	false
4945	percentage	0.2
4946	countrycode	HKG
4946	language	Hakka
4946	isofficial	false
4946	percentage	1.6
4947	countrycode	IDN
4947	language	Madura
4947	isofficial	false
4947	percentage	4.3
4948	countrycode	IND
4948	language	Marathi
4948	isofficial	false
4948	percentage	7.4
4949	countrycode	IRQ
4949	language	Assyrian
4949	isofficial	false
4949	percentage	0.8
4950	countrycode	IRN
4950	language	Gilaki
4950	isofficial	false
4950	percentage	5.3
4951	countrycode	ITA
4951	language	French
4951	isofficial	false
4951	percentage	0.5
4952	countrycode	AUT
4952	language	Hungarian
4952	isofficial	false
4952	percentage	0.4
4953	countrycode	JPN
4953	language	English
4953	isofficial	false
4953	percentage	0.1
4954	countrycode	YUG
4954	language	Romani
4954	isofficial	false
4954	percentage	1.4
4955	countrycode	KHM
4955	language	Tam
4955	isofficial	false
4955	percentage	2.4
4956	countrycode	CMR
4956	language	Ful
4956	isofficial	false
4956	percentage	9.6
4957	countrycode	CAN
4957	language	Italian
4957	isofficial	false
4957	percentage	1.7
4958	countrycode	KAZ
4958	language	German
4958	isofficial	false
4958	percentage	3.1
4959	countrycode	KEN
4959	language	Kamba
4959	isofficial	false
4959	percentage	11.2
4960	countrycode	CAF
4960	language	Ngbaka
4960	isofficial	false
4960	percentage	7.5
4961	countrycode	CHN
4961	language	Hui
4961	isofficial	false
4961	percentage	0.8
4962	countrycode	KGZ
4962	language	Ukrainian
4962	isofficial	false
4962	percentage	1.7
4963	countrycode	COL
4963	language	Arawakan
4963	isofficial	false
4963	percentage	0.1
4964	countrycode	COM
4964	language	Comorian-Arabic
4964	isofficial	false
4964	percentage	1.6
4965	countrycode	COG
4965	language	Mbete
4965	isofficial	false
4965	percentage	4.8
4966	countrycode	COD
4966	language	Rwanda
4966	isofficial	false
4966	percentage	10.3
4967	countrycode	LAO
4967	language	Lao-Soung
4967	isofficial	false
4967	percentage	5.2
4968	countrycode	LVA
4968	language	Ukrainian
4968	isofficial	false
4968	percentage	2.9
4969	countrycode	LBR
4969	language	Gio
4969	isofficial	false
4969	percentage	7.9
4970	countrycode	LTU
4970	language	Belorussian
4970	isofficial	false
4970	percentage	1.4
4971	countrycode	LUX
4971	language	French
4971	isofficial	true
4971	percentage	4.2
4972	countrycode	MAC
4972	language	English
4972	isofficial	false
4972	percentage	0.5
4973	countrycode	MKD
4973	language	Romani
4973	isofficial	false
4973	percentage	2.3
4974	countrycode	MWI
4974	language	Ngoni
4974	isofficial	false
4974	percentage	6.7
4975	countrycode	MYS
4975	language	Iban
4975	isofficial	false
4975	percentage	2.8
4976	countrycode	MLI
4976	language	Soninke
4976	isofficial	false
4976	percentage	8.7
4977	countrycode	MRT
4977	language	Soninke
4977	isofficial	false
4977	percentage	2.7
4978	countrycode	MUS
4978	language	Hindi
4978	isofficial	false
4978	percentage	1.2
4979	countrycode	MEX
4979	language	Zapotec
4979	isofficial	false
4979	percentage	0.6
4980	countrycode	FSM
4980	language	Kosrean
4980	isofficial	false
4980	percentage	7.3
4981	countrycode	MDA
4981	language	Gagauzi
4981	isofficial	false
4981	percentage	3.2
4982	countrycode	MCO
4982	language	English
4982	isofficial	false
4982	percentage	6.5
4983	countrycode	MNG
4983	language	Bajad
4983	isofficial	false
4983	percentage	1.9
4984	countrycode	MOZ
4984	language	Lomwe
4984	isofficial	false
4984	percentage	7.8
4985	countrycode	MMR
4985	language	Rakhine
4985	isofficial	false
4985	percentage	4.5
4986	countrycode	NAM
4986	language	Afrikaans
4986	isofficial	false
4986	percentage	9.5
4987	countrycode	NRU
4987	language	Tuvalu
4987	isofficial	false
4987	percentage	8.5
4988	countrycode	NPL
4988	language	Tharu
4988	isofficial	false
4988	percentage	5.4
4989	countrycode	NIC
4989	language	Sumo
4989	isofficial	false
4989	percentage	0.2
4990	countrycode	NER
4990	language	Ful
4990	isofficial	false
4990	percentage	9.7
4991	countrycode	NGA
4991	language	Ful
4991	isofficial	false
4991	percentage	11.3
4992	countrycode	NOR
4992	language	Swedish
4992	isofficial	false
4992	percentage	0.3
4993	countrycode	CIV
4993	language	Kru
4993	isofficial	false
4993	percentage	10.5
4994	countrycode	PAK
4994	language	Saraiki
4994	isofficial	false
4994	percentage	9.8
4995	countrycode	PLW
4995	language	Chinese
4995	isofficial	false
4995	percentage	1.6
4996	countrycode	PAN
4996	language	Cuna
4996	isofficial	false
4996	percentage	2.0
4997	countrycode	PRY
4997	language	German
4997	isofficial	false
4997	percentage	0.9
4998	countrycode	MNP
4998	language	Korean
4998	isofficial	false
4998	percentage	6.5
4999	countrycode	POL
4999	language	Belorussian
4999	isofficial	false
4999	percentage	0.5
5000	countrycode	FRA
5000	language	Italian
5000	isofficial	false
5000	percentage	0.4
5001	countrycode	REU
5001	language	Malagasy
5001	isofficial	false
5001	percentage	1.4
5002	countrycode	ROM
5002	language	German
5002	isofficial	false
5002	percentage	0.4
5003	countrycode	SWE
5003	language	Arabic
5003	isofficial	false
5003	percentage	0.8
5004	countrycode	DEU
5004	language	Italian
5004	isofficial	false
5004	percentage	0.7
5005	countrycode	ZMB
5005	language	Lozi
5005	isofficial	false
5005	percentage	6.4
5006	countrycode	SEN
5006	language	Diola
5006	isofficial	false
5006	percentage	5.0
5007	countrycode	SLE
5007	language	Kono-vai
5007	isofficial	false
5007	percentage	5.1
5008	countrycode	SVK
5008	language	Czech and Moravian
5008	isofficial	false
5008	percentage	1.1
5009	countrycode	SDN
5009	language	Beja
5009	isofficial	false
5009	percentage	6.4
5010	countrycode	FIN
5010	language	Estonian
5010	isofficial	false
5010	percentage	0.2
5011	countrycode	CHE
5011	language	Romansh
5011	isofficial	true
5011	percentage	0.6
5012	countrycode	TWN
5012	language	Ami
5012	isofficial	false
5012	percentage	0.6
5013	countrycode	TZA
5013	language	Haya
5013	isofficial	false
5013	percentage	5.9
5014	countrycode	DNK
5014	language	German
5014	isofficial	false
5014	percentage	0.5
5015	countrycode	THA
5015	language	Malay
5015	isofficial	false
5015	percentage	3.6
5016	countrycode	TGO
5016	language	Kotokoli
5016	isofficial	false
5016	percentage	5.7
5017	countrycode	TCD
5017	language	Kanem-bornu
5017	isofficial	false
5017	percentage	9.0
5018	countrycode	CZE
5018	language	Polish
5018	isofficial	false
5018	percentage	0.6
5019	countrycode	TKM
5019	language	Kazakh
5019	isofficial	false
5019	percentage	2.0
5020	countrycode	UGA
5020	language	Soga
5020	isofficial	false
5020	percentage	8.2
5021	countrycode	UKR
5021	language	Bulgariana
5021	isofficial	false
5021	percentage	0.3
5022	countrycode	HUN
5022	language	Serbo-Croatian
5022	isofficial	false
5022	percentage	0.2
5023	countrycode	UZB
5023	language	Kazakh
5023	isofficial	false
5023	percentage	3.8
5024	countrycode	BLR
5024	language	Polish
5024	isofficial	false
5024	percentage	0.6
5025	countrycode	RUS
5025	language	Chuvash
5025	isofficial	false
5025	percentage	0.9
5026	countrycode	VNM
5026	language	Muong
5026	isofficial	false
5026	percentage	1.5
5027	countrycode	EST
5027	language	Belorussian
5027	isofficial	false
5027	percentage	1.4
5028	countrycode	USA
5028	language	German
5028	isofficial	false
5028	percentage	0.7
5029	countrycode	ZWE
5029	language	Nyanja
5029	isofficial	false
5029	percentage	2.2
5030	countrycode	AFG
5030	language	Balochi
5030	isofficial	false
5030	percentage	0.9
5031	countrycode	AGO
5031	language	Nyaneka-nkhumbi
5031	isofficial	false
5031	percentage	5.4
5032	countrycode	AUS
5032	language	Arabic
5032	isofficial	false
5032	percentage	1.0
5033	countrycode	BGD
5033	language	Khasi
5033	isofficial	false
5033	percentage	0.1
5034	countrycode	BEL
5034	language	German
5034	isofficial	true
5034	percentage	1.0
5035	countrycode	BEN
5035	language	Bariba
5035	isofficial	false
5035	percentage	8.7
5036	countrycode	BWA
5036	language	Ndebele
5036	isofficial	false
5036	percentage	1.3
5037	countrycode	BRA
5037	language	Indian Languages
5037	isofficial	false
5037	percentage	0.2
5038	countrycode	BFA
5038	language	Dagara
5038	isofficial	false
5038	percentage	3.1
5039	countrycode	ERI
5039	language	Bilin
5039	isofficial	false
5039	percentage	3.0
5040	countrycode	ZAF
5040	language	English
5040	isofficial	true
5040	percentage	8.5
5041	countrycode	ETH
5041	language	Somali
5041	isofficial	false
5041	percentage	4.1
5042	countrycode	PHL
5042	language	Bicol
5042	isofficial	false
5042	percentage	5.7
5043	countrycode	GMB
5043	language	Soninke
5043	isofficial	false
5043	percentage	7.6
5044	countrycode	GEO
5044	language	Osseetti
5044	isofficial	false
5044	percentage	2.4
5045	countrycode	GHA
5045	language	Gurma
5045	isofficial	false
5045	percentage	3.3
5046	countrycode	GUM
5046	language	Japanese
5046	isofficial	false
5046	percentage	2.0
5047	countrycode	GTM
5047	language	Mam
5047	isofficial	false
5047	percentage	2.7
5048	countrycode	GIN
5048	language	Kpelle
5048	isofficial	false
5048	percentage	4.6
5049	countrycode	GNB
5049	language	Malinke
5049	isofficial	false
5049	percentage	6.9
5050	countrycode	HKG
5050	language	Chiu chau
5050	isofficial	false
5050	percentage	1.4
5051	countrycode	IDN
5051	language	Minangkabau
5051	isofficial	false
5051	percentage	2.4
5052	countrycode	IND
5052	language	Tamil
5052	isofficial	false
5052	percentage	6.3
5053	countrycode	IRQ
5053	language	Persian
5053	isofficial	false
5053	percentage	0.8
5054	countrycode	IRN
5054	language	Luri
5054	isofficial	false
5054	percentage	4.3
5055	countrycode	ITA
5055	language	German
5055	isofficial	false
5055	percentage	0.5
5056	countrycode	AUT
5056	language	Slovene
5056	isofficial	false
5056	percentage	0.4
5057	countrycode	JPN
5057	language	Philippene Languages
5057	isofficial	false
5057	percentage	0.1
5058	countrycode	YUG
5058	language	Slovak
5058	isofficial	false
5058	percentage	0.7
5059	countrycode	CMR
5059	language	Tikar
5059	isofficial	false
5059	percentage	7.4
5060	countrycode	CAN
5060	language	German
5060	isofficial	false
5060	percentage	1.6
5061	countrycode	KAZ
5061	language	Uzbek
5061	isofficial	false
5061	percentage	2.3
5062	countrycode	KEN
5062	language	Kalenjin
5062	isofficial	false
5062	percentage	10.8
5063	countrycode	CAF
5063	language	Sara
5063	isofficial	false
5063	percentage	6.4
5064	countrycode	CHN
5064	language	Miao
5064	isofficial	false
5064	percentage	0.7
5065	countrycode	KGZ
5065	language	Tatar
5065	isofficial	false
5065	percentage	1.3
5066	countrycode	COL
5066	language	Caribbean
5066	isofficial	false
5066	percentage	0.1
5067	countrycode	COM
5067	language	Comorian-Swahili
5067	isofficial	false
5067	percentage	0.5
5068	countrycode	COG
5068	language	Punu
5068	isofficial	false
5068	percentage	2.9
5069	countrycode	COD
5069	language	Zande
5069	isofficial	false
5069	percentage	6.1
5070	countrycode	LVA
5070	language	Polish
5070	isofficial	false
5070	percentage	2.1
5071	countrycode	LBR
5071	language	Kru
5071	isofficial	false
5071	percentage	7.2
5072	countrycode	LTU
5072	language	Ukrainian
5072	isofficial	false
5072	percentage	1.1
5073	countrycode	LUX
5073	language	German
5073	isofficial	true
5073	percentage	2.3
5074	countrycode	MKD
5074	language	Serbo-Croatian
5074	isofficial	false
5074	percentage	2.0
5075	countrycode	MYS
5075	language	English
5075	isofficial	false
5075	percentage	1.6
5076	countrycode	MLI
5076	language	Tamashek
5076	isofficial	false
5076	percentage	7.3
5077	countrycode	MRT
5077	language	Ful
5077	isofficial	false
5077	percentage	1.2
5078	countrycode	MUS
5078	language	Tamil
5078	isofficial	false
5078	percentage	0.8
5079	countrycode	MEX
5079	language	Mixtec
5079	isofficial	false
5079	percentage	0.6
5080	countrycode	FSM
5080	language	Yap
5080	isofficial	false
5080	percentage	5.8
5081	countrycode	MDA
5081	language	Bulgariana
5081	isofficial	false
5081	percentage	1.6
5082	countrycode	MNG
5082	language	Buryat
5082	isofficial	false
5082	percentage	1.7
5083	countrycode	MOZ
5083	language	Shona
5083	isofficial	false
5083	percentage	6.5
5084	countrycode	MMR
5084	language	Mon
5084	isofficial	false
5084	percentage	2.4
5085	countrycode	NAM
5085	language	Herero
5085	isofficial	false
5085	percentage	8.0
5086	countrycode	NRU
5086	language	English
5086	isofficial	true
5086	percentage	7.5
5087	countrycode	NPL
5087	language	Tamang
5087	isofficial	false
5087	percentage	4.9
5088	countrycode	NER
5088	language	Kanuri
5088	isofficial	false
5088	percentage	4.4
5089	countrycode	NGA
5089	language	Ibibio
5089	isofficial	false
5089	percentage	5.6
5090	countrycode	NOR
5090	language	Saame
5090	isofficial	false
5090	percentage	0.0
5091	countrycode	CIV
5091	language	[South]Mande
5091	isofficial	false
5091	percentage	7.7
5092	countrycode	PAK
5092	language	Urdu
5092	isofficial	true
5092	percentage	7.6
5093	countrycode	PAN
5093	language	Embera
5093	isofficial	false
5093	percentage	0.6
5094	countrycode	MNP
5094	language	English
5094	isofficial	true
5094	percentage	4.8
5095	countrycode	FRA
5095	language	Spanish
5095	isofficial	false
5095	percentage	0.4
5096	countrycode	REU
5096	language	Tamil
5096	isofficial	false
5096	percentage	0.0
5097	countrycode	ROM
5097	language	Ukrainian
5097	isofficial	false
5097	percentage	0.3
5098	countrycode	SWE
5098	language	Spanish
5098	isofficial	false
5098	percentage	0.6
5099	countrycode	DEU
5099	language	Greek
5099	isofficial	false
5099	percentage	0.4
5100	countrycode	ZMB
5100	language	Chewa
5100	isofficial	false
5100	percentage	5.7
5101	countrycode	SEN
5101	language	Malinke
5101	isofficial	false
5101	percentage	3.8
5102	countrycode	SLE
5102	language	Bullom-sherbro
5102	isofficial	false
5102	percentage	3.8
5103	countrycode	SVK
5103	language	Ukrainian and Russian
5103	isofficial	false
5103	percentage	0.6
5104	countrycode	SDN
5104	language	Nuer
5104	isofficial	false
5104	percentage	4.9
5105	countrycode	FIN
5105	language	Saame
5105	isofficial	false
5105	percentage	0.0
5106	countrycode	TWN
5106	language	Atayal
5106	isofficial	false
5106	percentage	0.4
5107	countrycode	TZA
5107	language	Makonde
5107	isofficial	false
5107	percentage	5.9
5108	countrycode	DNK
5108	language	English
5108	isofficial	false
5108	percentage	0.3
5109	countrycode	THA
5109	language	Khmer
5109	isofficial	false
5109	percentage	1.3
5110	countrycode	TGO
5110	language	Ane
5110	isofficial	false
5110	percentage	5.7
5111	countrycode	TCD
5111	language	Ouaddai
5111	isofficial	false
5111	percentage	8.7
5112	countrycode	CZE
5112	language	German
5112	isofficial	false
5112	percentage	0.5
5113	countrycode	UGA
5113	language	Teso
5113	isofficial	false
5113	percentage	6.0
5114	countrycode	UKR
5114	language	Hungarian
5114	isofficial	false
5114	percentage	0.3
5115	countrycode	HUN
5115	language	Romanian
5115	isofficial	false
5115	percentage	0.1
5116	countrycode	UZB
5116	language	Karakalpak
5116	isofficial	false
5116	percentage	2.0
5117	countrycode	RUS
5117	language	Bashkir
5117	isofficial	false
5117	percentage	0.7
5118	countrycode	VNM
5118	language	Chinese
5118	isofficial	false
5118	percentage	1.4
5119	countrycode	EST
5119	language	Finnish
5119	isofficial	false
5119	percentage	0.7
5120	countrycode	USA
5120	language	Italian
5120	isofficial	false
5120	percentage	0.6
5121	countrycode	AGO
5121	language	Chokwe
5121	isofficial	false
5121	percentage	4.2
5122	countrycode	AUS
5122	language	Vietnamese
5122	isofficial	false
5122	percentage	0.8
5123	countrycode	BGD
5123	language	Santhali
5123	isofficial	false
5123	percentage	0.1
5124	countrycode	BEL
5124	language	Turkish
5124	isofficial	false
5124	percentage	0.9
5125	countrycode	BEN
5125	language	Somba
5125	isofficial	false
5125	percentage	6.7
5126	countrycode	BFA
5126	language	Dyula
5126	isofficial	false
5126	percentage	2.6
5127	countrycode	ERI
5127	language	Saho
5127	isofficial	false
5127	percentage	3.0
5128	countrycode	ZAF
5128	language	Tswana
5128	isofficial	false
5128	percentage	8.1
5129	countrycode	ETH
5129	language	Sidamo
5129	isofficial	false
5129	percentage	3.2
5130	countrycode	PHL
5130	language	Waray-waray
5130	isofficial	false
5130	percentage	3.8
5131	countrycode	GEO
5131	language	Abhyasi
5131	isofficial	false
5131	percentage	1.7
5132	countrycode	GHA
5132	language	Joruba
5132	isofficial	false
5132	percentage	1.3
5133	countrycode	GIN
5133	language	Yalunka
5133	isofficial	false
5133	percentage	2.9
5134	countrycode	GNB
5134	language	Mandyako
5134	isofficial	false
5134	percentage	4.9
5135	countrycode	IDN
5135	language	Batakki
5135	isofficial	false
5135	percentage	2.2
5136	countrycode	IND
5136	language	Urdu
5136	isofficial	false
5136	percentage	5.1
5137	countrycode	IRN
5137	language	Mazandarani
5137	isofficial	false
5137	percentage	3.6
5138	countrycode	ITA
5138	language	Albaniana
5138	isofficial	false
5138	percentage	0.2
5139	countrycode	AUT
5139	language	Polish
5139	isofficial	false
5139	percentage	0.2
5140	countrycode	JPN
5140	language	Ainu
5140	isofficial	false
5140	percentage	0.0
5141	countrycode	YUG
5141	language	Macedonian
5141	isofficial	false
5141	percentage	0.5
5142	countrycode	CMR
5142	language	Mandara
5142	isofficial	false
5142	percentage	5.7
5143	countrycode	CAN
5143	language	Polish
5143	isofficial	false
5143	percentage	0.7
5144	countrycode	KAZ
5144	language	Tatar
5144	isofficial	false
5144	percentage	2.0
5145	countrycode	KEN
5145	language	Gusii
5145	isofficial	false
5145	percentage	6.1
5146	countrycode	CAF
5146	language	Mbum
5146	isofficial	false
5146	percentage	6.4
5147	countrycode	CHN
5147	language	Uighur
5147	isofficial	false
5147	percentage	0.6
5148	countrycode	KGZ
5148	language	Kazakh
5148	isofficial	false
5148	percentage	0.8
5149	countrycode	COG
5149	language	Sango
5149	isofficial	false
5149	percentage	2.6
5150	countrycode	COD
5150	language	Ngala and Bangi
5150	isofficial	false
5150	percentage	5.8
5151	countrycode	LVA
5151	language	Lithuanian
5151	isofficial	false
5151	percentage	1.2
5152	countrycode	LBR
5152	language	Mano
5152	isofficial	false
5152	percentage	7.2
5153	countrycode	MYS
5153	language	Dusun
5153	isofficial	false
5153	percentage	1.1
5154	countrycode	MLI
5154	language	Songhai
5154	isofficial	false
5154	percentage	6.9
5155	countrycode	MRT
5155	language	Zenaga
5155	isofficial	false
5155	percentage	1.2
5156	countrycode	MUS
5156	language	Marathi
5156	isofficial	false
5156	percentage	0.7
5157	countrycode	MEX
5157	language	Otomí
5157	isofficial	false
5157	percentage	0.4
5158	countrycode	FSM
5158	language	Wolea
5158	isofficial	false
5158	percentage	3.7
5159	countrycode	MNG
5159	language	Dariganga
5159	isofficial	false
5159	percentage	1.4
5160	countrycode	MOZ
5160	language	Tswa
5160	isofficial	false
5160	percentage	6.0
5161	countrycode	MMR
5161	language	Chin
5161	isofficial	false
5161	percentage	2.2
5162	countrycode	NAM
5162	language	Caprivi
5162	isofficial	false
5162	percentage	4.7
5163	countrycode	NPL
5163	language	Newari
5163	isofficial	false
5163	percentage	3.7
5164	countrycode	NGA
5164	language	Kanuri
5164	isofficial	false
5164	percentage	4.1
5165	countrycode	PAK
5165	language	Balochi
5165	isofficial	false
5165	percentage	3.0
5166	countrycode	PAN
5166	language	Arabic
5166	isofficial	false
5166	percentage	0.6
5167	countrycode	MNP
5167	language	Carolinian
5167	isofficial	false
5167	percentage	4.8
5168	countrycode	FRA
5168	language	Turkish
5168	isofficial	false
5168	percentage	0.4
5169	countrycode	ROM
5169	language	Serbo-Croatian
5169	isofficial	false
5169	percentage	0.1
5170	countrycode	SWE
5170	language	Norwegian
5170	isofficial	false
5170	percentage	0.5
5171	countrycode	DEU
5171	language	Polish
5171	isofficial	false
5171	percentage	0.3
5172	countrycode	ZMB
5172	language	Nsenga
5172	isofficial	false
5172	percentage	4.3
5173	countrycode	SEN
5173	language	Soninke
5173	isofficial	false
5173	percentage	1.3
5174	countrycode	SLE
5174	language	Ful
5174	isofficial	false
5174	percentage	3.8
5175	countrycode	SDN
5175	language	Zande
5175	isofficial	false
5175	percentage	2.7
5176	countrycode	TWN
5176	language	Paiwan
5176	isofficial	false
5176	percentage	0.3
5177	countrycode	TZA
5177	language	Nyakusa
5177	isofficial	false
5177	percentage	5.4
5178	countrycode	DNK
5178	language	Swedish
5178	isofficial	false
5178	percentage	0.3
5179	countrycode	THA
5179	language	Kuy
5179	isofficial	false
5179	percentage	1.1
5180	countrycode	TGO
5180	language	Moba
5180	isofficial	false
5180	percentage	5.4
5181	countrycode	TCD
5181	language	Hadjarai
5181	isofficial	false
5181	percentage	6.7
5182	countrycode	CZE
5182	language	Silesiana
5182	isofficial	false
5182	percentage	0.4
5183	countrycode	UGA
5183	language	Lango
5183	isofficial	false
5183	percentage	5.9
5184	countrycode	UKR
5184	language	Belorussian
5184	isofficial	false
5184	percentage	0.3
5185	countrycode	HUN
5185	language	Slovak
5185	isofficial	false
5185	percentage	0.1
5186	countrycode	UZB
5186	language	Tatar
5186	isofficial	false
5186	percentage	1.8
5187	countrycode	RUS
5187	language	Chechen
5187	isofficial	false
5187	percentage	0.6
5188	countrycode	VNM
5188	language	Khmer
5188	isofficial	false
5188	percentage	1.4
5189	countrycode	USA
5189	language	Chinese
5189	isofficial	false
5189	percentage	0.6
5190	countrycode	AGO
5190	language	Luvale
5190	isofficial	false
5190	percentage	3.6
5191	countrycode	AUS
5191	language	Serbo-Croatian
5191	isofficial	false
5191	percentage	0.6
5192	countrycode	BGD
5192	language	Tripuri
5192	isofficial	false
5192	percentage	0.1
5193	countrycode	BEN
5193	language	Ful
5193	isofficial	false
5193	percentage	5.6
5194	countrycode	ZAF
5194	language	Southsotho
5194	isofficial	false
5194	percentage	7.6
5195	countrycode	ETH
5195	language	Walaita
5195	isofficial	false
5195	percentage	2.8
5196	countrycode	PHL
5196	language	Pampango
5196	isofficial	false
5196	percentage	3.0
5197	countrycode	GIN
5197	language	Loma
5197	isofficial	false
5197	percentage	2.3
5198	countrycode	IDN
5198	language	Bugi
5198	isofficial	false
5198	percentage	2.2
5199	countrycode	IND
5199	language	Gujarati
5199	isofficial	false
5199	percentage	4.8
5200	countrycode	IRN
5200	language	Balochi
5200	isofficial	false
5200	percentage	2.3
5201	countrycode	ITA
5201	language	Slovene
5201	isofficial	false
5201	percentage	0.2
5202	countrycode	AUT
5202	language	Czech
5202	isofficial	false
5202	percentage	0.2
5203	countrycode	CMR
5203	language	Maka
5203	isofficial	false
5203	percentage	4.9
5204	countrycode	CAN
5204	language	Spanish
5204	isofficial	false
5204	percentage	0.7
5205	countrycode	KEN
5205	language	Meru
5205	isofficial	false
5205	percentage	5.5
5206	countrycode	CHN
5206	language	Yi
5206	isofficial	false
5206	percentage	0.6
5207	countrycode	KGZ
5207	language	Tadzhik
5207	isofficial	false
5207	percentage	0.8
5208	countrycode	COD
5208	language	Rundi
5208	isofficial	false
5208	percentage	3.8
5209	countrycode	LBR
5209	language	Loma
5209	isofficial	false
5209	percentage	5.8
5210	countrycode	MOZ
5210	language	Chuabo
5210	isofficial	false
5210	percentage	5.7
5211	countrycode	MMR
5211	language	Kachin
5211	isofficial	false
5211	percentage	1.4
5212	countrycode	NAM
5212	language	San
5212	isofficial	false
5212	percentage	1.9
5213	countrycode	NPL
5213	language	Hindi
5213	isofficial	false
5213	percentage	3.0
5214	countrycode	NGA
5214	language	Edo
5214	isofficial	false
5214	percentage	3.3
5215	countrycode	PAK
5215	language	Hindko
5215	isofficial	false
5215	percentage	2.4
5216	countrycode	SLE
5216	language	Kuranko
5216	isofficial	false
5216	percentage	3.4
5217	countrycode	SDN
5217	language	Bari
5217	isofficial	false
5217	percentage	2.5
5218	countrycode	TZA
5218	language	Chaga and Pare
5218	isofficial	false
5218	percentage	4.9
5219	countrycode	DNK
5219	language	Norwegian
5219	isofficial	false
5219	percentage	0.3
5220	countrycode	TGO
5220	language	Naudemba
5220	isofficial	false
5220	percentage	4.1
5221	countrycode	TCD
5221	language	Tandjile
5221	isofficial	false
5221	percentage	6.5
5222	countrycode	CZE
5222	language	Romani
5222	isofficial	false
5222	percentage	0.3
5223	countrycode	UGA
5223	language	Lugbara
5223	isofficial	false
5223	percentage	4.7
5224	countrycode	UKR
5224	language	Polish
5224	isofficial	false
5224	percentage	0.1
5225	countrycode	RUS
5225	language	Mordva
5225	isofficial	false
5225	percentage	0.5
5226	countrycode	VNM
5226	language	Nung
5226	isofficial	false
5226	percentage	1.1
5227	countrycode	USA
5227	language	Tagalog
5227	isofficial	false
5227	percentage	0.4
5228	countrycode	AGO
5228	language	Ambo
5228	isofficial	false
5228	percentage	2.4
5229	countrycode	AUS
5229	language	German
5229	isofficial	false
5229	percentage	0.6
5230	countrycode	ZAF
5230	language	Tsonga
5230	isofficial	false
5230	percentage	4.3
5231	countrycode	PHL
5231	language	Pangasinan
5231	isofficial	false
5231	percentage	1.8
5232	countrycode	IDN
5232	language	Banja
5232	isofficial	false
5232	percentage	1.8
5233	countrycode	IND
5233	language	Kannada
5233	isofficial	false
5233	percentage	3.9
5234	countrycode	IRN
5234	language	Arabic
5234	isofficial	false
5234	percentage	2.2
5235	countrycode	ITA
5235	language	Romani
5235	isofficial	false
5235	percentage	0.2
5236	countrycode	AUT
5236	language	Romanian
5236	isofficial	false
5236	percentage	0.2
5237	countrycode	CMR
5237	language	Masana
5237	isofficial	false
5237	percentage	3.9
5238	countrycode	CAN
5238	language	Portuguese
5238	isofficial	false
5238	percentage	0.7
5239	countrycode	KEN
5239	language	Nyika
5239	isofficial	false
5239	percentage	4.8
5240	countrycode	CHN
5240	language	Tujia
5240	isofficial	false
5240	percentage	0.5
5241	countrycode	COD
5241	language	Teke
5241	isofficial	false
5241	percentage	2.7
5242	countrycode	LBR
5242	language	Malinke
5242	isofficial	false
5242	percentage	5.1
5243	countrycode	MOZ
5243	language	Ronga
5243	isofficial	false
5243	percentage	3.7
5244	countrycode	MMR
5244	language	Kayah
5244	isofficial	false
5244	percentage	0.4
5245	countrycode	NAM
5245	language	German
5245	isofficial	false
5245	percentage	0.9
5246	countrycode	NGA
5246	language	Tiv
5246	isofficial	false
5246	percentage	2.3
5247	countrycode	PAK
5247	language	Brahui
5247	isofficial	false
5247	percentage	1.2
5248	countrycode	SLE
5248	language	Yalunka
5248	isofficial	false
5248	percentage	3.4
5249	countrycode	SDN
5249	language	Fur
5249	isofficial	false
5249	percentage	2.1
5250	countrycode	TZA
5250	language	Luguru
5250	isofficial	false
5250	percentage	4.9
5251	countrycode	TGO
5251	language	Gurma
5251	isofficial	false
5251	percentage	3.4
5252	countrycode	TCD
5252	language	Gorane
5252	isofficial	false
5252	percentage	6.2
5253	countrycode	CZE
5253	language	Hungarian
5253	isofficial	false
5253	percentage	0.2
5254	countrycode	UGA
5254	language	Gisu
5254	isofficial	false
5254	percentage	4.5
5255	countrycode	RUS
5255	language	Kazakh
5255	isofficial	false
5255	percentage	0.4
5256	countrycode	VNM
5256	language	Miao
5256	isofficial	false
5256	percentage	0.9
5257	countrycode	USA
5257	language	Polish
5257	isofficial	false
5257	percentage	0.3
5258	countrycode	AGO
5258	language	Luchazi
5258	isofficial	false
5258	percentage	2.4
5259	countrycode	ZAF
5259	language	Swazi
5259	isofficial	false
5259	percentage	2.5
5260	countrycode	PHL
5260	language	Maguindanao
5260	isofficial	false
5260	percentage	1.4
5261	countrycode	IDN
5261	language	Bali
5261	isofficial	false
5261	percentage	1.7
5262	countrycode	IND
5262	language	Malajalam
5262	isofficial	false
5262	percentage	3.6
5263	countrycode	IRN
5263	language	Bakhtyari
5263	isofficial	false
5263	percentage	1.7
5264	countrycode	CAN
5264	language	Punjabi
5264	isofficial	false
5264	percentage	0.7
5265	countrycode	KEN
5265	language	Masai
5265	isofficial	false
5265	percentage	1.6
5266	countrycode	CHN
5266	language	Mongolian
5266	isofficial	false
5266	percentage	0.4
5267	countrycode	COD
5267	language	Boa
5267	isofficial	false
5267	percentage	2.3
5268	countrycode	MOZ
5268	language	Marendje
5268	isofficial	false
5268	percentage	3.5
5269	countrycode	NGA
5269	language	Ijo
5269	isofficial	false
5269	percentage	1.8
5270	countrycode	SDN
5270	language	Chilluk
5270	isofficial	false
5270	percentage	1.7
5271	countrycode	TZA
5271	language	Shambala
5271	isofficial	false
5271	percentage	4.3
5272	countrycode	UGA
5272	language	Acholi
5272	isofficial	false
5272	percentage	4.4
5273	countrycode	RUS
5273	language	Avarian
5273	isofficial	false
5273	percentage	0.4
5274	countrycode	VNM
5274	language	Man
5274	isofficial	false
5274	percentage	0.7
5275	countrycode	USA
5275	language	Korean
5275	isofficial	false
5275	percentage	0.3
5276	countrycode	ZAF
5276	language	Venda
5276	isofficial	false
5276	percentage	2.2
5277	countrycode	PHL
5277	language	Maranao
5277	isofficial	false
5277	percentage	1.3
5278	countrycode	IND
5278	language	Orija
5278	isofficial	false
5278	percentage	3.3
5279	countrycode	IRN
5279	language	Turkmenian
5279	isofficial	false
5279	percentage	1.6
5280	countrycode	CAN
5280	language	Ukrainian
5280	isofficial	false
5280	percentage	0.6
5281	countrycode	KEN
5281	language	Turkana
5281	isofficial	false
5281	percentage	1.4
5282	countrycode	CHN
5282	language	Tibetan
5282	isofficial	false
5282	percentage	0.4
5283	countrycode	COD
5283	language	Chokwe
5283	isofficial	false
5283	percentage	1.8
5284	countrycode	MOZ
5284	language	Nyanja
5284	isofficial	false
5284	percentage	3.3
5285	countrycode	NGA
5285	language	Bura
5285	isofficial	false
5285	percentage	1.6
5286	countrycode	SDN
5286	language	Lotuko
5286	isofficial	false
5286	percentage	1.5
5287	countrycode	TZA
5287	language	Gogo
5287	isofficial	false
5287	percentage	3.9
5288	countrycode	UGA
5288	language	Rwanda
5288	isofficial	false
5288	percentage	3.2
5289	countrycode	RUS
5289	language	Mari
5289	isofficial	false
5289	percentage	0.4
5290	countrycode	USA
5290	language	Vietnamese
5290	isofficial	false
5290	percentage	0.2
5291	countrycode	ZAF
5291	language	Ndebele
5291	isofficial	false
5291	percentage	1.5
5292	countrycode	IND
5292	language	Punjabi
5292	isofficial	false
5292	percentage	2.8
5293	countrycode	CAN
5293	language	Dutch
5293	isofficial	false
5293	percentage	0.5
5294	countrycode	CHN
5294	language	Puyi
5294	isofficial	false
5294	percentage	0.2
5295	countrycode	TZA
5295	language	Ha
5295	isofficial	false
5295	percentage	3.5
5296	countrycode	RUS
5296	language	Udmur
5296	isofficial	false
5296	percentage	0.3
5297	countrycode	USA
5297	language	Japanese
5297	isofficial	false
5297	percentage	0.2
5298	countrycode	IND
5298	language	Asami
5298	isofficial	false
5298	percentage	1.5
5299	countrycode	CAN
5299	language	Eskimo Languages
5299	isofficial	false
5299	percentage	0.1
5300	countrycode	CHN
5300	language	Dong
5300	isofficial	false
5300	percentage	0.2
5301	countrycode	RUS
5301	language	Belorussian
5301	isofficial	false
5301	percentage	0.3
5302	countrycode	USA
5302	language	Portuguese
5302	isofficial	false
5302	percentage	0.2
\.


--
-- Name: edge edge_pkey; Type: CONSTRAINT; Schema: public; Owner: radu
--

ALTER TABLE ONLY public.edge
    ADD CONSTRAINT edge_pkey PRIMARY KEY (id);


--
-- Name: node node_pkey; Type: CONSTRAINT; Schema: public; Owner: radu
--

ALTER TABLE ONLY public.node
    ADD CONSTRAINT node_pkey PRIMARY KEY (id);


--
-- Name: property property_pkey; Type: CONSTRAINT; Schema: public; Owner: radu
--

ALTER TABLE ONLY public.property
    ADD CONSTRAINT property_pkey PRIMARY KEY (id, key);


--
-- PostgreSQL database dump complete
--

