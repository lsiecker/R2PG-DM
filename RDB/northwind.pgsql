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
\.


--
-- Data for Name: node; Type: TABLE DATA; Schema: public; Owner: radu
--

COPY public.node (id, label) FROM stdin;
1	categories
2	categories
3	categories
4	categories
5	categories
6	categories
7	categories
8	categories
9	customers
10	customers
11	customers
12	customers
13	customers
14	customers
15	customers
16	customers
17	customers
18	customers
19	customers
20	customers
21	customers
22	customers
23	customers
24	customers
25	customers
26	customers
27	customers
28	customers
29	customers
30	customers
31	customers
32	customers
33	customers
34	customers
35	customers
36	customers
37	customers
38	customers
39	customers
40	customers
41	customers
42	customers
43	customers
44	customers
45	customers
46	customers
47	customers
48	customers
49	customers
50	customers
51	customers
52	customers
53	customers
54	customers
55	customers
56	customers
57	customers
58	customers
59	customers
60	customers
61	customers
62	customers
63	customers
64	customers
65	customers
66	customers
67	customers
68	customers
69	customers
70	customers
71	customers
72	customers
73	customers
74	customers
75	customers
76	customers
77	customers
78	customers
79	customers
80	customers
81	customers
82	customers
83	customers
84	customers
85	customers
86	customers
87	customers
88	customers
89	customers
90	customers
91	customers
92	customers
93	customers
94	customers
95	customers
96	customers
97	customers
98	customers
99	customers
100	employees
101	employees
102	employees
103	employees
104	employees
105	employees
106	employees
107	employees
108	employees
109	employeeterritories
110	employeeterritories
111	employeeterritories
112	employeeterritories
113	employeeterritories
114	employeeterritories
115	employeeterritories
116	employeeterritories
117	employeeterritories
118	employeeterritories
119	employeeterritories
120	employeeterritories
121	employeeterritories
122	employeeterritories
123	employeeterritories
124	employeeterritories
125	employeeterritories
126	employeeterritories
127	employeeterritories
128	employeeterritories
129	employeeterritories
130	employeeterritories
131	employeeterritories
132	employeeterritories
133	employeeterritories
134	employeeterritories
135	employeeterritories
136	employeeterritories
137	employeeterritories
138	employeeterritories
139	employeeterritories
140	employeeterritories
141	employeeterritories
142	employeeterritories
143	employeeterritories
144	employeeterritories
145	employeeterritories
146	employeeterritories
147	employeeterritories
148	employeeterritories
149	employeeterritories
150	employeeterritories
151	employeeterritories
152	employeeterritories
153	employeeterritories
154	employeeterritories
155	employeeterritories
156	employeeterritories
157	employeeterritories
158	order_details
159	order_details
160	order_details
161	order_details
162	order_details
163	order_details
164	order_details
165	order_details
166	order_details
167	order_details
168	order_details
169	order_details
170	order_details
171	order_details
172	order_details
173	order_details
174	order_details
175	order_details
176	order_details
177	order_details
178	order_details
179	order_details
180	order_details
181	order_details
182	order_details
183	order_details
184	order_details
185	order_details
186	order_details
187	order_details
188	order_details
189	order_details
190	order_details
191	order_details
192	order_details
193	order_details
194	order_details
195	order_details
196	order_details
197	order_details
198	order_details
199	order_details
200	order_details
201	order_details
202	order_details
203	order_details
204	order_details
205	order_details
206	order_details
207	order_details
208	order_details
209	order_details
210	order_details
211	order_details
212	order_details
213	order_details
214	order_details
215	order_details
216	order_details
217	order_details
218	order_details
219	order_details
220	order_details
221	order_details
222	order_details
223	order_details
224	order_details
225	order_details
226	order_details
227	order_details
228	order_details
229	order_details
230	order_details
231	order_details
232	order_details
233	order_details
234	order_details
235	order_details
236	order_details
237	order_details
238	order_details
239	order_details
240	order_details
241	order_details
242	order_details
243	order_details
244	order_details
245	order_details
246	order_details
247	order_details
248	order_details
249	order_details
250	order_details
251	order_details
252	order_details
253	order_details
254	order_details
255	order_details
256	order_details
257	order_details
258	order_details
259	order_details
260	order_details
261	order_details
262	order_details
263	order_details
264	order_details
265	order_details
266	order_details
267	order_details
268	order_details
269	order_details
270	order_details
271	order_details
272	order_details
273	order_details
274	order_details
275	order_details
276	order_details
277	order_details
278	order_details
279	order_details
280	order_details
281	order_details
282	order_details
283	order_details
284	order_details
285	order_details
286	order_details
287	order_details
288	order_details
289	order_details
290	order_details
291	order_details
292	order_details
293	order_details
294	order_details
295	order_details
296	order_details
297	order_details
298	order_details
299	order_details
300	order_details
301	order_details
302	order_details
303	order_details
304	order_details
305	order_details
306	order_details
307	order_details
308	order_details
309	order_details
310	order_details
311	order_details
312	order_details
313	order_details
314	order_details
315	order_details
316	order_details
317	order_details
318	order_details
319	order_details
320	order_details
321	order_details
322	order_details
323	order_details
324	order_details
325	order_details
326	order_details
327	order_details
328	order_details
329	order_details
330	order_details
331	order_details
332	order_details
333	order_details
334	order_details
335	order_details
336	order_details
337	order_details
338	order_details
339	order_details
340	order_details
341	order_details
342	order_details
343	order_details
344	order_details
345	order_details
346	order_details
347	order_details
348	order_details
349	order_details
350	order_details
351	order_details
352	order_details
353	order_details
354	order_details
355	order_details
356	order_details
357	order_details
358	order_details
359	order_details
360	order_details
361	order_details
362	order_details
363	order_details
364	order_details
365	order_details
366	order_details
367	order_details
368	order_details
369	order_details
370	order_details
371	order_details
372	order_details
373	order_details
374	order_details
375	order_details
376	order_details
377	order_details
378	order_details
379	order_details
380	order_details
381	order_details
382	order_details
383	order_details
384	order_details
385	order_details
386	order_details
387	order_details
388	order_details
389	order_details
390	order_details
391	order_details
392	order_details
393	order_details
394	order_details
395	order_details
396	order_details
397	order_details
398	order_details
399	order_details
400	order_details
401	order_details
402	order_details
403	order_details
404	order_details
405	order_details
406	order_details
407	order_details
408	order_details
409	order_details
410	order_details
411	order_details
412	order_details
413	order_details
414	order_details
415	order_details
416	order_details
417	order_details
418	order_details
419	order_details
420	order_details
421	order_details
422	order_details
423	order_details
424	order_details
425	order_details
426	order_details
427	order_details
428	order_details
429	order_details
430	order_details
431	order_details
432	order_details
433	order_details
434	order_details
435	order_details
436	order_details
437	order_details
438	order_details
439	order_details
440	order_details
441	order_details
442	order_details
443	order_details
444	order_details
445	order_details
446	order_details
447	order_details
448	order_details
449	order_details
450	order_details
451	order_details
452	order_details
453	order_details
454	order_details
455	order_details
456	order_details
457	order_details
458	order_details
459	order_details
460	order_details
461	order_details
462	order_details
463	order_details
464	order_details
465	order_details
466	order_details
467	order_details
468	order_details
469	order_details
470	order_details
471	order_details
472	order_details
473	order_details
474	order_details
475	order_details
476	order_details
477	order_details
478	order_details
479	order_details
480	order_details
481	order_details
482	order_details
483	order_details
484	order_details
485	order_details
486	order_details
487	order_details
488	order_details
489	order_details
490	order_details
491	order_details
492	order_details
493	order_details
494	order_details
495	order_details
496	order_details
497	order_details
498	order_details
499	order_details
500	order_details
501	order_details
502	order_details
503	order_details
504	order_details
505	order_details
506	order_details
507	order_details
508	order_details
509	order_details
510	order_details
511	order_details
512	order_details
513	order_details
514	order_details
515	order_details
516	order_details
517	order_details
518	order_details
519	order_details
520	order_details
521	order_details
522	order_details
523	order_details
524	order_details
525	order_details
526	order_details
527	order_details
528	order_details
529	order_details
530	order_details
531	order_details
532	order_details
533	order_details
534	order_details
535	order_details
536	order_details
537	order_details
538	order_details
539	order_details
540	order_details
541	order_details
542	order_details
543	order_details
544	order_details
545	order_details
546	order_details
547	order_details
548	order_details
549	order_details
550	order_details
551	order_details
552	order_details
553	order_details
554	order_details
555	order_details
556	order_details
557	order_details
558	order_details
559	order_details
560	order_details
561	order_details
562	order_details
563	order_details
564	order_details
565	order_details
566	order_details
567	order_details
568	order_details
569	order_details
570	order_details
571	order_details
572	order_details
573	order_details
574	order_details
575	order_details
576	order_details
577	order_details
578	order_details
579	order_details
580	order_details
581	order_details
582	order_details
583	order_details
584	order_details
585	order_details
586	order_details
587	order_details
588	order_details
589	order_details
590	order_details
591	order_details
592	order_details
593	order_details
594	order_details
595	order_details
596	order_details
597	order_details
598	order_details
599	order_details
600	order_details
601	order_details
602	order_details
603	order_details
604	order_details
605	order_details
606	order_details
607	order_details
608	order_details
609	order_details
610	order_details
611	order_details
612	order_details
613	order_details
614	order_details
615	order_details
616	order_details
617	order_details
618	order_details
619	order_details
620	order_details
621	order_details
622	order_details
623	order_details
624	order_details
625	order_details
626	order_details
627	order_details
628	order_details
629	order_details
630	order_details
631	order_details
632	order_details
633	order_details
634	order_details
635	order_details
636	order_details
637	order_details
638	order_details
639	order_details
640	order_details
641	order_details
642	order_details
643	order_details
644	order_details
645	order_details
646	order_details
647	order_details
648	order_details
649	order_details
650	order_details
651	order_details
652	order_details
653	order_details
654	order_details
655	order_details
656	order_details
657	order_details
658	order_details
659	order_details
660	order_details
661	order_details
662	order_details
663	order_details
664	order_details
665	order_details
666	order_details
667	order_details
668	order_details
669	order_details
670	order_details
671	order_details
672	order_details
673	order_details
674	order_details
675	order_details
676	order_details
677	order_details
678	order_details
679	order_details
680	order_details
681	order_details
682	order_details
683	order_details
684	order_details
685	order_details
686	order_details
687	order_details
688	order_details
689	order_details
690	order_details
691	order_details
692	order_details
693	order_details
694	order_details
695	order_details
696	order_details
697	order_details
698	order_details
699	order_details
700	order_details
701	order_details
702	order_details
703	order_details
704	order_details
705	order_details
706	order_details
707	order_details
708	order_details
709	order_details
710	order_details
711	order_details
712	order_details
713	order_details
714	order_details
715	order_details
716	order_details
717	order_details
718	order_details
719	order_details
720	order_details
721	order_details
722	order_details
723	order_details
724	order_details
725	order_details
726	order_details
727	order_details
728	order_details
729	order_details
730	order_details
731	order_details
732	order_details
733	order_details
734	order_details
735	order_details
736	order_details
737	order_details
738	order_details
739	order_details
740	order_details
741	order_details
742	order_details
743	order_details
744	order_details
745	order_details
746	order_details
747	order_details
748	order_details
749	order_details
750	order_details
751	order_details
752	order_details
753	order_details
754	order_details
755	order_details
756	order_details
757	order_details
758	order_details
759	order_details
760	order_details
761	order_details
762	order_details
763	order_details
764	order_details
765	order_details
766	order_details
767	order_details
768	order_details
769	order_details
770	order_details
771	order_details
772	order_details
773	order_details
774	order_details
775	order_details
776	order_details
777	order_details
778	order_details
779	order_details
780	order_details
781	order_details
782	order_details
783	order_details
784	order_details
785	order_details
786	order_details
787	order_details
788	order_details
789	order_details
790	order_details
791	order_details
792	order_details
793	order_details
794	order_details
795	order_details
796	order_details
797	order_details
798	order_details
799	order_details
800	order_details
801	order_details
802	order_details
803	order_details
804	order_details
805	order_details
806	order_details
807	order_details
808	order_details
809	order_details
810	order_details
811	order_details
812	order_details
813	order_details
814	order_details
815	order_details
816	order_details
817	order_details
818	order_details
819	order_details
820	order_details
821	order_details
822	order_details
823	order_details
824	order_details
825	order_details
826	order_details
827	order_details
828	order_details
829	order_details
830	order_details
831	order_details
832	order_details
833	order_details
834	order_details
835	order_details
836	order_details
837	order_details
838	order_details
839	order_details
840	order_details
841	order_details
842	order_details
843	order_details
844	order_details
845	order_details
846	order_details
847	order_details
848	order_details
849	order_details
850	order_details
851	order_details
852	order_details
853	order_details
854	order_details
855	order_details
856	order_details
857	order_details
858	order_details
859	order_details
860	order_details
861	order_details
862	order_details
863	order_details
864	order_details
865	order_details
866	order_details
867	order_details
868	order_details
869	order_details
870	order_details
871	order_details
872	order_details
873	order_details
874	order_details
875	order_details
876	order_details
877	order_details
878	order_details
879	order_details
880	order_details
881	order_details
882	order_details
883	order_details
884	order_details
885	order_details
886	order_details
887	order_details
888	order_details
889	order_details
890	order_details
891	order_details
892	order_details
893	order_details
894	order_details
895	order_details
896	order_details
897	order_details
898	order_details
899	order_details
900	order_details
901	order_details
902	order_details
903	order_details
904	order_details
905	order_details
906	order_details
907	order_details
908	order_details
909	order_details
910	order_details
911	order_details
912	order_details
913	order_details
914	order_details
915	order_details
916	order_details
917	order_details
918	order_details
919	order_details
920	order_details
921	order_details
922	order_details
923	order_details
924	order_details
925	order_details
926	order_details
927	order_details
928	order_details
929	order_details
930	order_details
931	order_details
932	order_details
933	order_details
934	order_details
935	order_details
936	order_details
937	order_details
938	order_details
939	order_details
940	order_details
941	order_details
942	order_details
943	order_details
944	order_details
945	order_details
946	order_details
947	order_details
948	order_details
949	order_details
950	order_details
951	order_details
952	order_details
953	order_details
954	order_details
955	order_details
956	order_details
957	order_details
958	order_details
959	order_details
960	order_details
961	order_details
962	order_details
963	order_details
964	order_details
965	order_details
966	order_details
967	order_details
968	order_details
969	order_details
970	order_details
971	order_details
972	order_details
973	order_details
974	order_details
975	order_details
976	order_details
977	order_details
978	order_details
979	order_details
980	order_details
981	order_details
982	order_details
983	order_details
984	order_details
985	order_details
986	order_details
987	order_details
988	order_details
989	order_details
990	order_details
991	order_details
992	order_details
993	order_details
994	order_details
995	order_details
996	order_details
997	order_details
998	order_details
999	order_details
1000	order_details
1001	order_details
1002	order_details
1003	order_details
1004	order_details
1005	order_details
1006	order_details
1007	order_details
1008	order_details
1009	order_details
1010	order_details
1011	order_details
1012	order_details
1013	order_details
1014	order_details
1015	order_details
1016	order_details
1017	order_details
1018	order_details
1019	order_details
1020	order_details
1021	order_details
1022	order_details
1023	order_details
1024	order_details
1025	order_details
1026	order_details
1027	order_details
1028	order_details
1029	order_details
1030	order_details
1031	order_details
1032	order_details
1033	order_details
1034	order_details
1035	order_details
1036	order_details
1037	order_details
1038	order_details
1039	order_details
1040	order_details
1041	order_details
1042	order_details
1043	order_details
1044	order_details
1045	order_details
1046	order_details
1047	order_details
1048	order_details
1049	order_details
1050	order_details
1051	order_details
1052	order_details
1053	order_details
1054	order_details
1055	order_details
1056	order_details
1057	order_details
1058	order_details
1059	order_details
1060	order_details
1061	order_details
1062	order_details
1063	order_details
1064	order_details
1065	order_details
1066	order_details
1067	order_details
1068	order_details
1069	order_details
1070	order_details
1071	order_details
1072	order_details
1073	order_details
1074	order_details
1075	order_details
1076	order_details
1077	order_details
1078	order_details
1079	order_details
1080	order_details
1081	order_details
1082	order_details
1083	order_details
1084	order_details
1085	order_details
1086	order_details
1087	order_details
1088	order_details
1089	order_details
1090	order_details
1091	order_details
1092	order_details
1093	order_details
1094	order_details
1095	order_details
1096	order_details
1097	order_details
1098	order_details
1099	order_details
1100	order_details
1101	order_details
1102	order_details
1103	order_details
1104	order_details
1105	order_details
1106	order_details
1107	order_details
1108	order_details
1109	order_details
1110	order_details
1111	order_details
1112	order_details
1113	order_details
1114	order_details
1115	order_details
1116	order_details
1117	order_details
1118	order_details
1119	order_details
1120	order_details
1121	order_details
1122	order_details
1123	order_details
1124	order_details
1125	order_details
1126	order_details
1127	order_details
1128	order_details
1129	order_details
1130	order_details
1131	order_details
1132	order_details
1133	order_details
1134	order_details
1135	order_details
1136	order_details
1137	order_details
1138	order_details
1139	order_details
1140	order_details
1141	order_details
1142	order_details
1143	order_details
1144	order_details
1145	order_details
1146	order_details
1147	order_details
1148	order_details
1149	order_details
1150	order_details
1151	order_details
1152	order_details
1153	order_details
1154	order_details
1155	order_details
1156	order_details
1157	order_details
1158	order_details
1159	order_details
1160	order_details
1161	order_details
1162	order_details
1163	order_details
1164	order_details
1165	order_details
1166	order_details
1167	order_details
1168	order_details
1169	order_details
1170	order_details
1171	order_details
1172	order_details
1173	order_details
1174	order_details
1175	order_details
1176	order_details
1177	order_details
1178	order_details
1179	order_details
1180	order_details
1181	order_details
1182	order_details
1183	order_details
1184	order_details
1185	order_details
1186	order_details
1187	order_details
1188	order_details
1189	order_details
1190	order_details
1191	order_details
1192	order_details
1193	order_details
1194	order_details
1195	order_details
1196	order_details
1197	order_details
1198	order_details
1199	order_details
1200	order_details
1201	order_details
1202	order_details
1203	order_details
1204	order_details
1205	order_details
1206	order_details
1207	order_details
1208	order_details
1209	order_details
1210	order_details
1211	order_details
1212	order_details
1213	order_details
1214	order_details
1215	order_details
1216	order_details
1217	order_details
1218	order_details
1219	order_details
1220	order_details
1221	order_details
1222	order_details
1223	order_details
1224	order_details
1225	order_details
1226	order_details
1227	order_details
1228	order_details
1229	order_details
1230	order_details
1231	order_details
1232	order_details
1233	order_details
1234	order_details
1235	order_details
1236	order_details
1237	order_details
1238	order_details
1239	order_details
1240	order_details
1241	order_details
1242	order_details
1243	order_details
1244	order_details
1245	order_details
1246	order_details
1247	order_details
1248	order_details
1249	order_details
1250	order_details
1251	order_details
1252	order_details
1253	order_details
1254	order_details
1255	order_details
1256	order_details
1257	order_details
1258	order_details
1259	order_details
1260	order_details
1261	order_details
1262	order_details
1263	order_details
1264	order_details
1265	order_details
1266	order_details
1267	order_details
1268	order_details
1269	order_details
1270	order_details
1271	order_details
1272	order_details
1273	order_details
1274	order_details
1275	order_details
1276	order_details
1277	order_details
1278	order_details
1279	order_details
1280	order_details
1281	order_details
1282	order_details
1283	order_details
1284	order_details
1285	order_details
1286	order_details
1287	order_details
1288	order_details
1289	order_details
1290	order_details
1291	order_details
1292	order_details
1293	order_details
1294	order_details
1295	order_details
1296	order_details
1297	order_details
1298	order_details
1299	order_details
1300	order_details
1301	order_details
1302	order_details
1303	order_details
1304	order_details
1305	order_details
1306	order_details
1307	order_details
1308	order_details
1309	order_details
1310	order_details
1311	order_details
1312	order_details
1313	order_details
1314	order_details
1315	order_details
1316	order_details
1317	order_details
1318	order_details
1319	order_details
1320	order_details
1321	order_details
1322	order_details
1323	order_details
1324	order_details
1325	order_details
1326	order_details
1327	order_details
1328	order_details
1329	order_details
1330	order_details
1331	order_details
1332	order_details
1333	order_details
1334	order_details
1335	order_details
1336	order_details
1337	order_details
1338	order_details
1339	order_details
1340	order_details
1341	order_details
1342	order_details
1343	order_details
1344	order_details
1345	order_details
1346	order_details
1347	order_details
1348	order_details
1349	order_details
1350	order_details
1351	order_details
1352	order_details
1353	order_details
1354	order_details
1355	order_details
1356	order_details
1357	order_details
1358	order_details
1359	order_details
1360	order_details
1361	order_details
1362	order_details
1363	order_details
1364	order_details
1365	order_details
1366	order_details
1367	order_details
1368	order_details
1369	order_details
1370	order_details
1371	order_details
1372	order_details
1373	order_details
1374	order_details
1375	order_details
1376	order_details
1377	order_details
1378	order_details
1379	order_details
1380	order_details
1381	order_details
1382	order_details
1383	order_details
1384	order_details
1385	order_details
1386	order_details
1387	order_details
1388	order_details
1389	order_details
1390	order_details
1391	order_details
1392	order_details
1393	order_details
1394	order_details
1395	order_details
1396	order_details
1397	order_details
1398	order_details
1399	order_details
1400	order_details
1401	order_details
1402	order_details
1403	order_details
1404	order_details
1405	order_details
1406	order_details
1407	order_details
1408	order_details
1409	order_details
1410	order_details
1411	order_details
1412	order_details
1413	order_details
1414	order_details
1415	order_details
1416	order_details
1417	order_details
1418	order_details
1419	order_details
1420	order_details
1421	order_details
1422	order_details
1423	order_details
1424	order_details
1425	order_details
1426	order_details
1427	order_details
1428	order_details
1429	order_details
1430	order_details
1431	order_details
1432	order_details
1433	order_details
1434	order_details
1435	order_details
1436	order_details
1437	order_details
1438	order_details
1439	order_details
1440	order_details
1441	order_details
1442	order_details
1443	order_details
1444	order_details
1445	order_details
1446	order_details
1447	order_details
1448	order_details
1449	order_details
1450	order_details
1451	order_details
1452	order_details
1453	order_details
1454	order_details
1455	order_details
1456	order_details
1457	order_details
1458	order_details
1459	order_details
1460	order_details
1461	order_details
1462	order_details
1463	order_details
1464	order_details
1465	order_details
1466	order_details
1467	order_details
1468	order_details
1469	order_details
1470	order_details
1471	order_details
1472	order_details
1473	order_details
1474	order_details
1475	order_details
1476	order_details
1477	order_details
1478	order_details
1479	order_details
1480	order_details
1481	order_details
1482	order_details
1483	order_details
1484	order_details
1485	order_details
1486	order_details
1487	order_details
1488	order_details
1489	order_details
1490	order_details
1491	order_details
1492	order_details
1493	order_details
1494	order_details
1495	order_details
1496	order_details
1497	order_details
1498	order_details
1499	order_details
1500	order_details
1501	order_details
1502	order_details
1503	order_details
1504	order_details
1505	order_details
1506	order_details
1507	order_details
1508	order_details
1509	order_details
1510	order_details
1511	order_details
1512	order_details
1513	order_details
1514	order_details
1515	order_details
1516	order_details
1517	order_details
1518	order_details
1519	order_details
1520	order_details
1521	order_details
1522	order_details
1523	order_details
1524	order_details
1525	order_details
1526	order_details
1527	order_details
1528	order_details
1529	order_details
1530	order_details
1531	order_details
1532	order_details
1533	order_details
1534	order_details
1535	order_details
1536	order_details
1537	order_details
1538	order_details
1539	order_details
1540	order_details
1541	order_details
1542	order_details
1543	order_details
1544	order_details
1545	order_details
1546	order_details
1547	order_details
1548	order_details
1549	order_details
1550	order_details
1551	order_details
1552	order_details
1553	order_details
1554	order_details
1555	order_details
1556	order_details
1557	order_details
1558	order_details
1559	order_details
1560	order_details
1561	order_details
1562	order_details
1563	order_details
1564	order_details
1565	order_details
1566	order_details
1567	order_details
1568	order_details
1569	order_details
1570	order_details
1571	order_details
1572	order_details
1573	order_details
1574	order_details
1575	order_details
1576	order_details
1577	order_details
1578	order_details
1579	order_details
1580	order_details
1581	order_details
1582	order_details
1583	order_details
1584	order_details
1585	order_details
1586	order_details
1587	order_details
1588	order_details
1589	order_details
1590	order_details
1591	order_details
1592	order_details
1593	order_details
1594	order_details
1595	order_details
1596	order_details
1597	order_details
1598	order_details
1599	order_details
1600	order_details
1601	order_details
1602	order_details
1603	order_details
1604	order_details
1605	order_details
1606	order_details
1607	order_details
1608	order_details
1609	order_details
1610	order_details
1611	order_details
1612	order_details
1613	order_details
1614	order_details
1615	order_details
1616	order_details
1617	order_details
1618	order_details
1619	order_details
1620	order_details
1621	order_details
1622	order_details
1623	order_details
1624	order_details
1625	order_details
1626	order_details
1627	order_details
1628	order_details
1629	order_details
1630	order_details
1631	order_details
1632	order_details
1633	order_details
1634	order_details
1635	order_details
1636	order_details
1637	order_details
1638	order_details
1639	order_details
1640	order_details
1641	order_details
1642	order_details
1643	order_details
1644	order_details
1645	order_details
1646	order_details
1647	order_details
1648	order_details
1649	order_details
1650	order_details
1651	order_details
1652	order_details
1653	order_details
1654	order_details
1655	order_details
1656	order_details
1657	order_details
1658	order_details
1659	order_details
1660	order_details
1661	order_details
1662	order_details
1663	order_details
1664	order_details
1665	order_details
1666	order_details
1667	order_details
1668	order_details
1669	order_details
1670	order_details
1671	order_details
1672	order_details
1673	order_details
1674	order_details
1675	order_details
1676	order_details
1677	order_details
1678	order_details
1679	order_details
1680	order_details
1681	order_details
1682	order_details
1683	order_details
1684	order_details
1685	order_details
1686	order_details
1687	order_details
1688	order_details
1689	order_details
1690	order_details
1691	order_details
1692	order_details
1693	order_details
1694	order_details
1695	order_details
1696	order_details
1697	order_details
1698	order_details
1699	order_details
1700	order_details
1701	order_details
1702	order_details
1703	order_details
1704	order_details
1705	order_details
1706	order_details
1707	order_details
1708	order_details
1709	order_details
1710	order_details
1711	order_details
1712	order_details
1713	order_details
1714	order_details
1715	order_details
1716	order_details
1717	order_details
1718	order_details
1719	order_details
1720	order_details
1721	order_details
1722	order_details
1723	order_details
1724	order_details
1725	order_details
1726	order_details
1727	order_details
1728	order_details
1729	order_details
1730	order_details
1731	order_details
1732	order_details
1733	order_details
1734	order_details
1735	order_details
1736	order_details
1737	order_details
1738	order_details
1739	order_details
1740	order_details
1741	order_details
1742	order_details
1743	order_details
1744	order_details
1745	order_details
1746	order_details
1747	order_details
1748	order_details
1749	order_details
1750	order_details
1751	order_details
1752	order_details
1753	order_details
1754	order_details
1755	order_details
1756	order_details
1757	order_details
1758	order_details
1759	order_details
1760	order_details
1761	order_details
1762	order_details
1763	order_details
1764	order_details
1765	order_details
1766	order_details
1767	order_details
1768	order_details
1769	order_details
1770	order_details
1771	order_details
1772	order_details
1773	order_details
1774	order_details
1775	order_details
1776	order_details
1777	order_details
1778	order_details
1779	order_details
1780	order_details
1781	order_details
1782	order_details
1783	order_details
1784	order_details
1785	order_details
1786	order_details
1787	order_details
1788	order_details
1789	order_details
1790	order_details
1791	order_details
1792	order_details
1793	order_details
1794	order_details
1795	order_details
1796	order_details
1797	order_details
1798	order_details
1799	order_details
1800	order_details
1801	order_details
1802	order_details
1803	order_details
1804	order_details
1805	order_details
1806	order_details
1807	order_details
1808	order_details
1809	order_details
1810	order_details
1811	order_details
1812	order_details
1813	order_details
1814	order_details
1815	order_details
1816	order_details
1817	order_details
1818	order_details
1819	order_details
1820	order_details
1821	order_details
1822	order_details
1823	order_details
1824	order_details
1825	order_details
1826	order_details
1827	order_details
1828	order_details
1829	order_details
1830	order_details
1831	order_details
1832	order_details
1833	order_details
1834	order_details
1835	order_details
1836	order_details
1837	order_details
1838	order_details
1839	order_details
1840	order_details
1841	order_details
1842	order_details
1843	order_details
1844	order_details
1845	order_details
1846	order_details
1847	order_details
1848	order_details
1849	order_details
1850	order_details
1851	order_details
1852	order_details
1853	order_details
1854	order_details
1855	order_details
1856	order_details
1857	order_details
1858	order_details
1859	order_details
1860	order_details
1861	order_details
1862	order_details
1863	order_details
1864	order_details
1865	order_details
1866	order_details
1867	order_details
1868	order_details
1869	order_details
1870	order_details
1871	order_details
1872	order_details
1873	order_details
1874	order_details
1875	order_details
1876	order_details
1877	order_details
1878	order_details
1879	order_details
1880	order_details
1881	order_details
1882	order_details
1883	order_details
1884	order_details
1885	order_details
1886	order_details
1887	order_details
1888	order_details
1889	order_details
1890	order_details
1891	order_details
1892	order_details
1893	order_details
1894	order_details
1895	order_details
1896	order_details
1897	order_details
1898	order_details
1899	order_details
1900	order_details
1901	order_details
1902	order_details
1903	order_details
1904	order_details
1905	order_details
1906	order_details
1907	order_details
1908	order_details
1909	order_details
1910	order_details
1911	order_details
1912	order_details
1913	order_details
1914	order_details
1915	order_details
1916	order_details
1917	order_details
1918	order_details
1919	order_details
1920	order_details
1921	order_details
1922	order_details
1923	order_details
1924	order_details
1925	order_details
1926	order_details
1927	order_details
1928	order_details
1929	order_details
1930	order_details
1931	order_details
1932	order_details
1933	order_details
1934	order_details
1935	order_details
1936	order_details
1937	order_details
1938	order_details
1939	order_details
1940	order_details
1941	order_details
1942	order_details
1943	order_details
1944	order_details
1945	order_details
1946	order_details
1947	order_details
1948	order_details
1949	order_details
1950	order_details
1951	order_details
1952	order_details
1953	order_details
1954	order_details
1955	order_details
1956	order_details
1957	order_details
1958	order_details
1959	order_details
1960	order_details
1961	order_details
1962	order_details
1963	order_details
1964	order_details
1965	order_details
1966	order_details
1967	order_details
1968	order_details
1969	order_details
1970	order_details
1971	order_details
1972	order_details
1973	order_details
1974	order_details
1975	order_details
1976	order_details
1977	order_details
1978	order_details
1979	order_details
1980	order_details
1981	order_details
1982	order_details
1983	order_details
1984	order_details
1985	order_details
1986	order_details
1987	order_details
1988	order_details
1989	order_details
1990	order_details
1991	order_details
1992	order_details
1993	order_details
1994	order_details
1995	order_details
1996	order_details
1997	order_details
1998	order_details
1999	order_details
2000	order_details
2001	order_details
2002	order_details
2003	order_details
2004	order_details
2005	order_details
2006	order_details
2007	order_details
2008	order_details
2009	order_details
2010	order_details
2011	order_details
2012	order_details
2013	order_details
2014	order_details
2015	order_details
2016	order_details
2017	order_details
2018	order_details
2019	order_details
2020	order_details
2021	order_details
2022	order_details
2023	order_details
2024	order_details
2025	order_details
2026	order_details
2027	order_details
2028	order_details
2029	order_details
2030	order_details
2031	order_details
2032	order_details
2033	order_details
2034	order_details
2035	order_details
2036	order_details
2037	order_details
2038	order_details
2039	order_details
2040	order_details
2041	order_details
2042	order_details
2043	order_details
2044	order_details
2045	order_details
2046	order_details
2047	order_details
2048	order_details
2049	order_details
2050	order_details
2051	order_details
2052	order_details
2053	order_details
2054	order_details
2055	order_details
2056	order_details
2057	order_details
2058	order_details
2059	order_details
2060	order_details
2061	order_details
2062	order_details
2063	order_details
2064	order_details
2065	order_details
2066	order_details
2067	order_details
2068	order_details
2069	order_details
2070	order_details
2071	order_details
2072	order_details
2073	order_details
2074	order_details
2075	order_details
2076	order_details
2077	order_details
2078	order_details
2079	order_details
2080	order_details
2081	order_details
2082	order_details
2083	order_details
2084	order_details
2085	order_details
2086	order_details
2087	order_details
2088	order_details
2089	order_details
2090	order_details
2091	order_details
2092	order_details
2093	order_details
2094	order_details
2095	order_details
2096	order_details
2097	order_details
2098	order_details
2099	order_details
2100	order_details
2101	order_details
2102	order_details
2103	order_details
2104	order_details
2105	order_details
2106	order_details
2107	order_details
2108	order_details
2109	order_details
2110	order_details
2111	order_details
2112	order_details
2113	order_details
2114	order_details
2115	order_details
2116	order_details
2117	order_details
2118	order_details
2119	order_details
2120	order_details
2121	order_details
2122	order_details
2123	order_details
2124	order_details
2125	order_details
2126	order_details
2127	order_details
2128	order_details
2129	order_details
2130	order_details
2131	order_details
2132	order_details
2133	order_details
2134	order_details
2135	order_details
2136	order_details
2137	order_details
2138	order_details
2139	order_details
2140	order_details
2141	order_details
2142	order_details
2143	order_details
2144	order_details
2145	order_details
2146	order_details
2147	order_details
2148	order_details
2149	order_details
2150	order_details
2151	order_details
2152	order_details
2153	order_details
2154	order_details
2155	order_details
2156	order_details
2157	order_details
2158	order_details
2159	order_details
2160	order_details
2161	order_details
2162	order_details
2163	order_details
2164	order_details
2165	order_details
2166	order_details
2167	order_details
2168	order_details
2169	order_details
2170	order_details
2171	order_details
2172	order_details
2173	order_details
2174	order_details
2175	order_details
2176	order_details
2177	order_details
2178	order_details
2179	order_details
2180	order_details
2181	order_details
2182	order_details
2183	order_details
2184	order_details
2185	order_details
2186	order_details
2187	order_details
2188	order_details
2189	order_details
2190	order_details
2191	order_details
2192	order_details
2193	order_details
2194	order_details
2195	order_details
2196	order_details
2197	order_details
2198	order_details
2199	order_details
2200	order_details
2201	order_details
2202	order_details
2203	order_details
2204	order_details
2205	order_details
2206	order_details
2207	order_details
2208	order_details
2209	order_details
2210	order_details
2211	order_details
2212	order_details
2213	order_details
2214	order_details
2215	order_details
2216	order_details
2217	order_details
2218	order_details
2219	order_details
2220	order_details
2221	order_details
2222	order_details
2223	order_details
2224	order_details
2225	order_details
2226	order_details
2227	order_details
2228	order_details
2229	order_details
2230	order_details
2231	order_details
2232	order_details
2233	order_details
2234	order_details
2235	order_details
2236	order_details
2237	order_details
2238	order_details
2239	order_details
2240	order_details
2241	order_details
2242	order_details
2243	order_details
2244	order_details
2245	order_details
2246	order_details
2247	order_details
2248	order_details
2249	order_details
2250	order_details
2251	order_details
2252	order_details
2253	order_details
2254	order_details
2255	order_details
2256	order_details
2257	order_details
2258	order_details
2259	order_details
2260	order_details
2261	order_details
2262	order_details
2263	order_details
2264	order_details
2265	order_details
2266	order_details
2267	order_details
2268	order_details
2269	order_details
2270	order_details
2271	order_details
2272	order_details
2273	order_details
2274	order_details
2275	order_details
2276	order_details
2277	order_details
2278	order_details
2279	order_details
2280	order_details
2281	order_details
2282	order_details
2283	order_details
2284	order_details
2285	order_details
2286	order_details
2287	order_details
2288	order_details
2289	order_details
2290	order_details
2291	order_details
2292	order_details
2293	order_details
2294	order_details
2295	order_details
2296	order_details
2297	order_details
2298	order_details
2299	order_details
2300	order_details
2301	order_details
2302	order_details
2303	order_details
2304	order_details
2305	order_details
2306	order_details
2307	order_details
2308	order_details
2309	order_details
2310	order_details
2311	order_details
2312	order_details
2313	orders
2314	orders
2315	orders
2316	orders
2317	orders
2318	orders
2319	orders
2320	orders
2321	orders
2322	orders
2323	orders
2324	orders
2325	orders
2326	orders
2327	orders
2328	orders
2329	orders
2330	orders
2331	orders
2332	orders
2333	orders
2334	orders
2335	orders
2336	orders
2337	orders
2338	orders
2339	orders
2340	orders
2341	orders
2342	orders
2343	orders
2344	orders
2345	orders
2346	orders
2347	orders
2348	orders
2349	orders
2350	orders
2351	orders
2352	orders
2353	orders
2354	orders
2355	orders
2356	orders
2357	orders
2358	orders
2359	orders
2360	orders
2361	orders
2362	orders
2363	orders
2364	orders
2365	orders
2366	orders
2367	orders
2368	orders
2369	orders
2370	orders
2371	orders
2372	orders
2373	orders
2374	orders
2375	orders
2376	orders
2377	orders
2378	orders
2379	orders
2380	orders
2381	orders
2382	orders
2383	orders
2384	orders
2385	orders
2386	orders
2387	orders
2388	orders
2389	orders
2390	orders
2391	orders
2392	orders
2393	orders
2394	orders
2395	orders
2396	orders
2397	orders
2398	orders
2399	orders
2400	orders
2401	orders
2402	orders
2403	orders
2404	orders
2405	orders
2406	orders
2407	orders
2408	orders
2409	orders
2410	orders
2411	orders
2412	orders
2413	orders
2414	orders
2415	orders
2416	orders
2417	orders
2418	orders
2419	orders
2420	orders
2421	orders
2422	orders
2423	orders
2424	orders
2425	orders
2426	orders
2427	orders
2428	orders
2429	orders
2430	orders
2431	orders
2432	orders
2433	orders
2434	orders
2435	orders
2436	orders
2437	orders
2438	orders
2439	orders
2440	orders
2441	orders
2442	orders
2443	orders
2444	orders
2445	orders
2446	orders
2447	orders
2448	orders
2449	orders
2450	orders
2451	orders
2452	orders
2453	orders
2454	orders
2455	orders
2456	orders
2457	orders
2458	orders
2459	orders
2460	orders
2461	orders
2462	orders
2463	orders
2464	orders
2465	orders
2466	orders
2467	orders
2468	orders
2469	orders
2470	orders
2471	orders
2472	orders
2473	orders
2474	orders
2475	orders
2476	orders
2477	orders
2478	orders
2479	orders
2480	orders
2481	orders
2482	orders
2483	orders
2484	orders
2485	orders
2486	orders
2487	orders
2488	orders
2489	orders
2490	orders
2491	orders
2492	orders
2493	orders
2494	orders
2495	orders
2496	orders
2497	orders
2498	orders
2499	orders
2500	orders
2501	orders
2502	orders
2503	orders
2504	orders
2505	orders
2506	orders
2507	orders
2508	orders
2509	orders
2510	orders
2511	orders
2512	orders
2513	orders
2514	orders
2515	orders
2516	orders
2517	orders
2518	orders
2519	orders
2520	orders
2521	orders
2522	orders
2523	orders
2524	orders
2525	orders
2526	orders
2527	orders
2528	orders
2529	orders
2530	orders
2531	orders
2532	orders
2533	orders
2534	orders
2535	orders
2536	orders
2537	orders
2538	orders
2539	orders
2540	orders
2541	orders
2542	orders
2543	orders
2544	orders
2545	orders
2546	orders
2547	orders
2548	orders
2549	orders
2550	orders
2551	orders
2552	orders
2553	orders
2554	orders
2555	orders
2556	orders
2557	orders
2558	orders
2559	orders
2560	orders
2561	orders
2562	orders
2563	orders
2564	orders
2565	orders
2566	orders
2567	orders
2568	orders
2569	orders
2570	orders
2571	orders
2572	orders
2573	orders
2574	orders
2575	orders
2576	orders
2577	orders
2578	orders
2579	orders
2580	orders
2581	orders
2582	orders
2583	orders
2584	orders
2585	orders
2586	orders
2587	orders
2588	orders
2589	orders
2590	orders
2591	orders
2592	orders
2593	orders
2594	orders
2595	orders
2596	orders
2597	orders
2598	orders
2599	orders
2600	orders
2601	orders
2602	orders
2603	orders
2604	orders
2605	orders
2606	orders
2607	orders
2608	orders
2609	orders
2610	orders
2611	orders
2612	orders
2613	orders
2614	orders
2615	orders
2616	orders
2617	orders
2618	orders
2619	orders
2620	orders
2621	orders
2622	orders
2623	orders
2624	orders
2625	orders
2626	orders
2627	orders
2628	orders
2629	orders
2630	orders
2631	orders
2632	orders
2633	orders
2634	orders
2635	orders
2636	orders
2637	orders
2638	orders
2639	orders
2640	orders
2641	orders
2642	orders
2643	orders
2644	orders
2645	orders
2646	orders
2647	orders
2648	orders
2649	orders
2650	orders
2651	orders
2652	orders
2653	orders
2654	orders
2655	orders
2656	orders
2657	orders
2658	orders
2659	orders
2660	orders
2661	orders
2662	orders
2663	orders
2664	orders
2665	orders
2666	orders
2667	orders
2668	orders
2669	orders
2670	orders
2671	orders
2672	orders
2673	orders
2674	orders
2675	orders
2676	orders
2677	orders
2678	orders
2679	orders
2680	orders
2681	orders
2682	orders
2683	orders
2684	orders
2685	orders
2686	orders
2687	orders
2688	orders
2689	orders
2690	orders
2691	orders
2692	orders
2693	orders
2694	orders
2695	orders
2696	orders
2697	orders
2698	orders
2699	orders
2700	orders
2701	orders
2702	orders
2703	orders
2704	orders
2705	orders
2706	orders
2707	orders
2708	orders
2709	orders
2710	orders
2711	orders
2712	orders
2713	orders
2714	orders
2715	orders
2716	orders
2717	orders
2718	orders
2719	orders
2720	orders
2721	orders
2722	orders
2723	orders
2724	orders
2725	orders
2726	orders
2727	orders
2728	orders
2729	orders
2730	orders
2731	orders
2732	orders
2733	orders
2734	orders
2735	orders
2736	orders
2737	orders
2738	orders
2739	orders
2740	orders
2741	orders
2742	orders
2743	orders
2744	orders
2745	orders
2746	orders
2747	orders
2748	orders
2749	orders
2750	orders
2751	orders
2752	orders
2753	orders
2754	orders
2755	orders
2756	orders
2757	orders
2758	orders
2759	orders
2760	orders
2761	orders
2762	orders
2763	orders
2764	orders
2765	orders
2766	orders
2767	orders
2768	orders
2769	orders
2770	orders
2771	orders
2772	orders
2773	orders
2774	orders
2775	orders
2776	orders
2777	orders
2778	orders
2779	orders
2780	orders
2781	orders
2782	orders
2783	orders
2784	orders
2785	orders
2786	orders
2787	orders
2788	orders
2789	orders
2790	orders
2791	orders
2792	orders
2793	orders
2794	orders
2795	orders
2796	orders
2797	orders
2798	orders
2799	orders
2800	orders
2801	orders
2802	orders
2803	orders
2804	orders
2805	orders
2806	orders
2807	orders
2808	orders
2809	orders
2810	orders
2811	orders
2812	orders
2813	orders
2814	orders
2815	orders
2816	orders
2817	orders
2818	orders
2819	orders
2820	orders
2821	orders
2822	orders
2823	orders
2824	orders
2825	orders
2826	orders
2827	orders
2828	orders
2829	orders
2830	orders
2831	orders
2832	orders
2833	orders
2834	orders
2835	orders
2836	orders
2837	orders
2838	orders
2839	orders
2840	orders
2841	orders
2842	orders
2843	orders
2844	orders
2845	orders
2846	orders
2847	orders
2848	orders
2849	orders
2850	orders
2851	orders
2852	orders
2853	orders
2854	orders
2855	orders
2856	orders
2857	orders
2858	orders
2859	orders
2860	orders
2861	orders
2862	orders
2863	orders
2864	orders
2865	orders
2866	orders
2867	orders
2868	orders
2869	orders
2870	orders
2871	orders
2872	orders
2873	orders
2874	orders
2875	orders
2876	orders
2877	orders
2878	orders
2879	orders
2880	orders
2881	orders
2882	orders
2883	orders
2884	orders
2885	orders
2886	orders
2887	orders
2888	orders
2889	orders
2890	orders
2891	orders
2892	orders
2893	orders
2894	orders
2895	orders
2896	orders
2897	orders
2898	orders
2899	orders
2900	orders
2901	orders
2902	orders
2903	orders
2904	orders
2905	orders
2906	orders
2907	orders
2908	orders
2909	orders
2910	orders
2911	orders
2912	orders
2913	orders
2914	orders
2915	orders
2916	orders
2917	orders
2918	orders
2919	orders
2920	orders
2921	orders
2922	orders
2923	orders
2924	orders
2925	orders
2926	orders
2927	orders
2928	orders
2929	orders
2930	orders
2931	orders
2932	orders
2933	orders
2934	orders
2935	orders
2936	orders
2937	orders
2938	orders
2939	orders
2940	orders
2941	orders
2942	orders
2943	orders
2944	orders
2945	orders
2946	orders
2947	orders
2948	orders
2949	orders
2950	orders
2951	orders
2952	orders
2953	orders
2954	orders
2955	orders
2956	orders
2957	orders
2958	orders
2959	orders
2960	orders
2961	orders
2962	orders
2963	orders
2964	orders
2965	orders
2966	orders
2967	orders
2968	orders
2969	orders
2970	orders
2971	orders
2972	orders
2973	orders
2974	orders
2975	orders
2976	orders
2977	orders
2978	orders
2979	orders
2980	orders
2981	orders
2982	orders
2983	orders
2984	orders
2985	orders
2986	orders
2987	orders
2988	orders
2989	orders
2990	orders
2991	orders
2992	orders
2993	orders
2994	orders
2995	orders
2996	orders
2997	orders
2998	orders
2999	orders
3000	orders
3001	orders
3002	orders
3003	orders
3004	orders
3005	orders
3006	orders
3007	orders
3008	orders
3009	orders
3010	orders
3011	orders
3012	orders
3013	orders
3014	orders
3015	orders
3016	orders
3017	orders
3018	orders
3019	orders
3020	orders
3021	orders
3022	orders
3023	orders
3024	orders
3025	orders
3026	orders
3027	orders
3028	orders
3029	orders
3030	orders
3031	orders
3032	orders
3033	orders
3034	orders
3035	orders
3036	orders
3037	orders
3038	orders
3039	orders
3040	orders
3041	orders
3042	orders
3043	orders
3044	orders
3045	orders
3046	orders
3047	orders
3048	orders
3049	orders
3050	orders
3051	orders
3052	orders
3053	orders
3054	orders
3055	orders
3056	orders
3057	orders
3058	orders
3059	orders
3060	orders
3061	orders
3062	orders
3063	orders
3064	orders
3065	orders
3066	orders
3067	orders
3068	orders
3069	orders
3070	orders
3071	orders
3072	orders
3073	orders
3074	orders
3075	orders
3076	orders
3077	orders
3078	orders
3079	orders
3080	orders
3081	orders
3082	orders
3083	orders
3084	orders
3085	orders
3086	orders
3087	orders
3088	orders
3089	orders
3090	orders
3091	orders
3092	orders
3093	orders
3094	orders
3095	orders
3096	orders
3097	orders
3098	orders
3099	orders
3100	orders
3101	orders
3102	orders
3103	orders
3104	orders
3105	orders
3106	orders
3107	orders
3108	orders
3109	orders
3110	orders
3111	orders
3112	orders
3113	orders
3114	orders
3115	orders
3116	orders
3117	orders
3118	orders
3119	orders
3120	orders
3121	orders
3122	orders
3123	orders
3124	orders
3125	orders
3126	orders
3127	orders
3128	orders
3129	orders
3130	orders
3131	orders
3132	orders
3133	orders
3134	orders
3135	orders
3136	orders
3137	orders
3138	orders
3139	orders
3140	orders
3141	orders
3142	orders
3143	products
3144	products
3145	products
3146	products
3147	products
3148	products
3149	products
3150	products
3151	products
3152	products
3153	products
3154	products
3155	products
3156	products
3157	products
3158	products
3159	products
3160	products
3161	products
3162	products
3163	products
3164	products
3165	products
3166	products
3167	products
3168	products
3169	products
3170	products
3171	products
3172	products
3173	products
3174	products
3175	products
3176	products
3177	products
3178	products
3179	products
3180	products
3181	products
3182	products
3183	products
3184	products
3185	products
3186	products
3187	products
3188	products
3189	products
3190	products
3191	products
3192	products
3193	products
3194	products
3195	products
3196	products
3197	products
3198	products
3199	products
3200	products
3201	products
3202	products
3203	products
3204	products
3205	products
3206	products
3207	products
3208	products
3209	products
3210	products
3211	products
3212	products
3213	products
3214	products
3215	products
3216	products
3217	products
3218	products
3219	products
3220	region
3221	region
3222	region
3223	region
3224	shippers
3225	shippers
3226	shippers
3227	shippers
3228	shippers
3229	shippers
3230	shippers_tmp
3231	shippers_tmp
3232	shippers_tmp
3233	shippers_tmp
3234	shippers_tmp
3235	shippers_tmp
3236	suppliers
3237	suppliers
3238	suppliers
3239	suppliers
3240	suppliers
3241	suppliers
3242	suppliers
3243	suppliers
3244	suppliers
3245	suppliers
3246	suppliers
3247	suppliers
3248	suppliers
3249	suppliers
3250	suppliers
3251	suppliers
3252	suppliers
3253	suppliers
3254	suppliers
3255	suppliers
3256	suppliers
3257	suppliers
3258	suppliers
3259	suppliers
3260	suppliers
3261	suppliers
3262	suppliers
3263	suppliers
3264	suppliers
3265	territories
3266	territories
3267	territories
3268	territories
3269	territories
3270	territories
3271	territories
3272	territories
3273	territories
3274	territories
3275	territories
3276	territories
3277	territories
3278	territories
3279	territories
3280	territories
3281	territories
3282	territories
3283	territories
3284	territories
3285	territories
3286	territories
3287	territories
3288	territories
3289	territories
3290	territories
3291	territories
3292	territories
3293	territories
3294	territories
3295	territories
3296	territories
3297	territories
3298	territories
3299	territories
3300	territories
3301	territories
3302	territories
3303	territories
3304	territories
3305	territories
3306	territories
3307	territories
3308	territories
3309	territories
3310	territories
3311	territories
3312	territories
3313	territories
3314	territories
3315	territories
3316	territories
3317	territories
3318	usstates
3319	usstates
3320	usstates
3321	usstates
3322	usstates
3323	usstates
3324	usstates
3325	usstates
3326	usstates
3327	usstates
3328	usstates
3329	usstates
3330	usstates
3331	usstates
3332	usstates
3333	usstates
3334	usstates
3335	usstates
3336	usstates
3337	usstates
3338	usstates
3339	usstates
3340	usstates
3341	usstates
3342	usstates
3343	usstates
3344	usstates
3345	usstates
3346	usstates
3347	usstates
3348	usstates
3349	usstates
3350	usstates
3351	usstates
3352	usstates
3353	usstates
3354	usstates
3355	usstates
3356	usstates
3357	usstates
3358	usstates
3359	usstates
3360	usstates
3361	usstates
3362	usstates
3363	usstates
3364	usstates
3365	usstates
3366	usstates
3367	usstates
3368	usstates
\.


--
-- Data for Name: property; Type: TABLE DATA; Schema: public; Owner: radu
--

COPY public.property (id, key, value) FROM stdin;
1	CategoryID	1
1	CategoryName	Beverages
1	Description	Soft drinks, coffees, teas, beers, and ales
1	Picture	[B@1eb44e46
2	CategoryID	2
2	CategoryName	Condiments
2	Description	Sweet and savory sauces, relishes, spreads, and seasonings
2	Picture	[B@6504e3b2
3	CategoryID	3
3	CategoryName	Confections
3	Description	Desserts, candies, and sweet breads
3	Picture	[B@515f550a
4	CategoryID	4
4	CategoryName	Dairy Products
4	Description	Cheeses
4	Picture	[B@626b2d4a
5	CategoryID	5
5	CategoryName	Grains/Cereals
5	Description	Breads, crackers, pasta, and cereal
5	Picture	[B@5e91993f
6	CategoryID	6
6	CategoryName	Meat/Poultry
6	Description	Prepared meats
6	Picture	[B@1c4af82c
7	CategoryID	7
7	CategoryName	Produce
7	Description	Dried fruit and bean curd
7	Picture	[B@379619aa
8	CategoryID	8
8	CategoryName	Seafood
8	Description	Seaweed and fish
8	Picture	[B@cac736f
9	CustomerID	ALFKI
9	CompanyName	Alfreds Futterkiste
9	ContactName	Maria Anders
9	ContactTitle	Sales Representative
9	Address	Obere Str. 57
9	City	Berlin
9	PostalCode	12209
9	Country	Germany
9	Phone	030-0074321
9	Fax	030-0076545
10	CustomerID	ANATR
10	CompanyName	Ana Trujillo Emparedados y helados
10	ContactName	Ana Trujillo
10	ContactTitle	Owner
10	Address	Avda. de la Constitución 2222
10	City	México D.F.
10	PostalCode	05021
10	Country	Mexico
10	Phone	(5) 555-4729
10	Fax	(5) 555-3745
11	CustomerID	ANTON
11	CompanyName	Antonio Moreno Taquería
11	ContactName	Antonio Moreno
11	ContactTitle	Owner
11	Address	Mataderos  2312
11	City	México D.F.
11	PostalCode	05023
11	Country	Mexico
11	Phone	(5) 555-3932
12	CustomerID	AROUT
12	CompanyName	Around the Horn
12	ContactName	Thomas Hardy
12	ContactTitle	Sales Representative
12	Address	120 Hanover Sq.
12	City	London
12	PostalCode	WA1 1DP
12	Country	UK
12	Phone	(171) 555-7788
12	Fax	(171) 555-6750
13	CustomerID	BERGS
13	CompanyName	Berglunds snabbköp
13	ContactName	Christina Berglund
13	ContactTitle	Order Administrator
13	Address	Berguvsvägen  8
13	City	Luleå
13	PostalCode	S-958 22
13	Country	Sweden
13	Phone	0921-12 34 65
13	Fax	0921-12 34 67
14	CustomerID	BLAUS
14	CompanyName	Blauer See Delikatessen
14	ContactName	Hanna Moos
14	ContactTitle	Sales Representative
14	Address	Forsterstr. 57
14	City	Mannheim
14	PostalCode	68306
14	Country	Germany
14	Phone	0621-08460
14	Fax	0621-08924
15	CustomerID	BLONP
15	CompanyName	Blondesddsl père et fils
15	ContactName	Frédérique Citeaux
15	ContactTitle	Marketing Manager
15	Address	24, place Kléber
15	City	Strasbourg
15	PostalCode	67000
15	Country	France
15	Phone	88.60.15.31
15	Fax	88.60.15.32
16	CustomerID	BOLID
16	CompanyName	Bólido Comidas preparadas
16	ContactName	Martín Sommer
16	ContactTitle	Owner
16	Address	C/ Araquil, 67
16	City	Madrid
16	PostalCode	28023
16	Country	Spain
16	Phone	(91) 555 22 82
16	Fax	(91) 555 91 99
17	CustomerID	BONAP
17	CompanyName	Bon app'
17	ContactName	Laurence Lebihan
17	ContactTitle	Owner
17	Address	12, rue des Bouchers
17	City	Marseille
17	PostalCode	13008
17	Country	France
17	Phone	91.24.45.40
17	Fax	91.24.45.41
18	CustomerID	BOTTM
18	CompanyName	Bottom-Dollar Markets
18	ContactName	Elizabeth Lincoln
18	ContactTitle	Accounting Manager
18	Address	23 Tsawassen Blvd.
18	City	Tsawassen
18	Region	BC
18	PostalCode	T2F 8M4
18	Country	Canada
18	Phone	(604) 555-4729
18	Fax	(604) 555-3745
19	CustomerID	BSBEV
19	CompanyName	B's Beverages
19	ContactName	Victoria Ashworth
19	ContactTitle	Sales Representative
19	Address	Fauntleroy Circus
19	City	London
19	PostalCode	EC2 5NT
19	Country	UK
19	Phone	(171) 555-1212
20	CustomerID	CACTU
20	CompanyName	Cactus Comidas para llevar
20	ContactName	Patricio Simpson
20	ContactTitle	Sales Agent
20	Address	Cerrito 333
20	City	Buenos Aires
20	PostalCode	1010
20	Country	Argentina
20	Phone	(1) 135-5555
20	Fax	(1) 135-4892
21	CustomerID	CENTC
21	CompanyName	Centro comercial Moctezuma
21	ContactName	Francisco Chang
21	ContactTitle	Marketing Manager
21	Address	Sierras de Granada 9993
21	City	México D.F.
21	PostalCode	05022
21	Country	Mexico
21	Phone	(5) 555-3392
21	Fax	(5) 555-7293
22	CustomerID	CHOPS
22	CompanyName	Chop-suey Chinese
22	ContactName	Yang Wang
22	ContactTitle	Owner
22	Address	Hauptstr. 29
22	City	Bern
22	PostalCode	3012
22	Country	Switzerland
22	Phone	0452-076545
23	CustomerID	COMMI
23	CompanyName	Comércio Mineiro
23	ContactName	Pedro Afonso
23	ContactTitle	Sales Associate
23	Address	Av. dos Lusíadas, 23
23	City	Sao Paulo
23	Region	SP
23	PostalCode	05432-043
23	Country	Brazil
23	Phone	(11) 555-7647
24	CustomerID	CONSH
24	CompanyName	Consolidated Holdings
24	ContactName	Elizabeth Brown
24	ContactTitle	Sales Representative
24	Address	Berkeley Gardens 12  Brewery
24	City	London
24	PostalCode	WX1 6LT
24	Country	UK
24	Phone	(171) 555-2282
24	Fax	(171) 555-9199
25	CustomerID	DRACD
25	CompanyName	Drachenblut Delikatessen
25	ContactName	Sven Ottlieb
25	ContactTitle	Order Administrator
25	Address	Walserweg 21
25	City	Aachen
25	PostalCode	52066
25	Country	Germany
25	Phone	0241-039123
25	Fax	0241-059428
26	CustomerID	DUMON
26	CompanyName	Du monde entier
26	ContactName	Janine Labrune
26	ContactTitle	Owner
26	Address	67, rue des Cinquante Otages
26	City	Nantes
26	PostalCode	44000
26	Country	France
26	Phone	40.67.88.88
26	Fax	40.67.89.89
27	CustomerID	EASTC
27	CompanyName	Eastern Connection
27	ContactName	Ann Devon
27	ContactTitle	Sales Agent
27	Address	35 King George
27	City	London
27	PostalCode	WX3 6FW
27	Country	UK
27	Phone	(171) 555-0297
27	Fax	(171) 555-3373
28	CustomerID	ERNSH
28	CompanyName	Ernst Handel
28	ContactName	Roland Mendel
28	ContactTitle	Sales Manager
28	Address	Kirchgasse 6
28	City	Graz
28	PostalCode	8010
28	Country	Austria
28	Phone	7675-3425
28	Fax	7675-3426
29	CustomerID	FAMIA
29	CompanyName	Familia Arquibaldo
29	ContactName	Aria Cruz
29	ContactTitle	Marketing Assistant
29	Address	Rua Orós, 92
29	City	Sao Paulo
29	Region	SP
29	PostalCode	05442-030
29	Country	Brazil
29	Phone	(11) 555-9857
30	CustomerID	FISSA
30	CompanyName	FISSA Fabrica Inter. Salchichas S.A.
30	ContactName	Diego Roel
30	ContactTitle	Accounting Manager
30	Address	C/ Moralzarzal, 86
30	City	Madrid
30	PostalCode	28034
30	Country	Spain
30	Phone	(91) 555 94 44
30	Fax	(91) 555 55 93
31	CustomerID	FOLIG
31	CompanyName	Folies gourmandes
31	ContactName	Martine Rancé
31	ContactTitle	Assistant Sales Agent
31	Address	184, chaussée de Tournai
31	City	Lille
31	PostalCode	59000
31	Country	France
31	Phone	20.16.10.16
31	Fax	20.16.10.17
32	CustomerID	FOLKO
32	CompanyName	Folk och fä HB
32	ContactName	Maria Larsson
32	ContactTitle	Owner
32	Address	Åkergatan 24
32	City	Bräcke
32	PostalCode	S-844 67
32	Country	Sweden
32	Phone	0695-34 67 21
33	CustomerID	FRANK
33	CompanyName	Frankenversand
33	ContactName	Peter Franken
33	ContactTitle	Marketing Manager
33	Address	Berliner Platz 43
33	City	München
33	PostalCode	80805
33	Country	Germany
33	Phone	089-0877310
33	Fax	089-0877451
34	CustomerID	FRANR
34	CompanyName	France restauration
34	ContactName	Carine Schmitt
34	ContactTitle	Marketing Manager
34	Address	54, rue Royale
34	City	Nantes
34	PostalCode	44000
34	Country	France
34	Phone	40.32.21.21
34	Fax	40.32.21.20
35	CustomerID	FRANS
35	CompanyName	Franchi S.p.A.
35	ContactName	Paolo Accorti
35	ContactTitle	Sales Representative
35	Address	Via Monte Bianco 34
35	City	Torino
35	PostalCode	10100
35	Country	Italy
35	Phone	011-4988260
35	Fax	011-4988261
36	CustomerID	FURIB
36	CompanyName	Furia Bacalhau e Frutos do Mar
36	ContactName	Lino Rodriguez
36	ContactTitle	Sales Manager
36	Address	Jardim das rosas n. 32
36	City	Lisboa
36	PostalCode	1675
36	Country	Portugal
36	Phone	(1) 354-2534
36	Fax	(1) 354-2535
37	CustomerID	GALED
37	CompanyName	Galería del gastrónomo
37	ContactName	Eduardo Saavedra
37	ContactTitle	Marketing Manager
37	Address	Rambla de Cataluña, 23
37	City	Barcelona
37	PostalCode	08022
37	Country	Spain
37	Phone	(93) 203 4560
37	Fax	(93) 203 4561
38	CustomerID	GODOS
38	CompanyName	Godos Cocina Típica
38	ContactName	José Pedro Freyre
38	ContactTitle	Sales Manager
38	Address	C/ Romero, 33
38	City	Sevilla
38	PostalCode	41101
38	Country	Spain
38	Phone	(95) 555 82 82
39	CustomerID	GOURL
39	CompanyName	Gourmet Lanchonetes
39	ContactName	André Fonseca
39	ContactTitle	Sales Associate
39	Address	Av. Brasil, 442
39	City	Campinas
39	Region	SP
39	PostalCode	04876-786
39	Country	Brazil
39	Phone	(11) 555-9482
40	CustomerID	GREAL
40	CompanyName	Great Lakes Food Market
40	ContactName	Howard Snyder
40	ContactTitle	Marketing Manager
40	Address	2732 Baker Blvd.
40	City	Eugene
40	Region	OR
40	PostalCode	97403
40	Country	USA
40	Phone	(503) 555-7555
41	CustomerID	GROSR
41	CompanyName	GROSELLA-Restaurante
41	ContactName	Manuel Pereira
41	ContactTitle	Owner
41	Address	5ª Ave. Los Palos Grandes
41	City	Caracas
41	Region	DF
41	PostalCode	1081
41	Country	Venezuela
41	Phone	(2) 283-2951
41	Fax	(2) 283-3397
42	CustomerID	HANAR
42	CompanyName	Hanari Carnes
42	ContactName	Mario Pontes
42	ContactTitle	Accounting Manager
42	Address	Rua do Paço, 67
42	City	Rio de Janeiro
42	Region	RJ
42	PostalCode	05454-876
42	Country	Brazil
42	Phone	(21) 555-0091
42	Fax	(21) 555-8765
43	CustomerID	HILAA
43	CompanyName	HILARION-Abastos
43	ContactName	Carlos Hernández
43	ContactTitle	Sales Representative
43	Address	Carrera 22 con Ave. Carlos Soublette #8-35
43	City	San Cristóbal
43	Region	Táchira
43	PostalCode	5022
43	Country	Venezuela
43	Phone	(5) 555-1340
43	Fax	(5) 555-1948
44	CustomerID	HUNGC
44	CompanyName	Hungry Coyote Import Store
44	ContactName	Yoshi Latimer
44	ContactTitle	Sales Representative
44	Address	City Center Plaza 516 Main St.
44	City	Elgin
44	Region	OR
44	PostalCode	97827
44	Country	USA
44	Phone	(503) 555-6874
44	Fax	(503) 555-2376
45	CustomerID	HUNGO
45	CompanyName	Hungry Owl All-Night Grocers
45	ContactName	Patricia McKenna
45	ContactTitle	Sales Associate
45	Address	8 Johnstown Road
45	City	Cork
45	Region	Co. Cork
45	Country	Ireland
45	Phone	2967 542
45	Fax	2967 3333
46	CustomerID	ISLAT
46	CompanyName	Island Trading
46	ContactName	Helen Bennett
46	ContactTitle	Marketing Manager
46	Address	Garden House Crowther Way
46	City	Cowes
46	Region	Isle of Wight
46	PostalCode	PO31 7PJ
46	Country	UK
46	Phone	(198) 555-8888
47	CustomerID	KOENE
47	CompanyName	Königlich Essen
47	ContactName	Philip Cramer
47	ContactTitle	Sales Associate
47	Address	Maubelstr. 90
47	City	Brandenburg
47	PostalCode	14776
47	Country	Germany
47	Phone	0555-09876
48	CustomerID	LACOR
48	CompanyName	La corne d'abondance
48	ContactName	Daniel Tonini
48	ContactTitle	Sales Representative
48	Address	67, avenue de l'Europe
48	City	Versailles
48	PostalCode	78000
48	Country	France
48	Phone	30.59.84.10
48	Fax	30.59.85.11
49	CustomerID	LAMAI
49	CompanyName	La maison d'Asie
49	ContactName	Annette Roulet
49	ContactTitle	Sales Manager
49	Address	1 rue Alsace-Lorraine
49	City	Toulouse
49	PostalCode	31000
49	Country	France
49	Phone	61.77.61.10
49	Fax	61.77.61.11
50	CustomerID	LAUGB
50	CompanyName	Laughing Bacchus Wine Cellars
50	ContactName	Yoshi Tannamuri
50	ContactTitle	Marketing Assistant
50	Address	1900 Oak St.
50	City	Vancouver
50	Region	BC
50	PostalCode	V3F 2K1
50	Country	Canada
50	Phone	(604) 555-3392
50	Fax	(604) 555-7293
51	CustomerID	LAZYK
51	CompanyName	Lazy K Kountry Store
51	ContactName	John Steel
51	ContactTitle	Marketing Manager
51	Address	12 Orchestra Terrace
51	City	Walla Walla
51	Region	WA
51	PostalCode	99362
51	Country	USA
51	Phone	(509) 555-7969
51	Fax	(509) 555-6221
52	CustomerID	LEHMS
52	CompanyName	Lehmanns Marktstand
52	ContactName	Renate Messner
52	ContactTitle	Sales Representative
52	Address	Magazinweg 7
52	City	Frankfurt a.M.
52	PostalCode	60528
52	Country	Germany
52	Phone	069-0245984
52	Fax	069-0245874
53	CustomerID	LETSS
53	CompanyName	Let's Stop N Shop
53	ContactName	Jaime Yorres
53	ContactTitle	Owner
53	Address	87 Polk St. Suite 5
53	City	San Francisco
53	Region	CA
53	PostalCode	94117
53	Country	USA
53	Phone	(415) 555-5938
54	CustomerID	LILAS
54	CompanyName	LILA-Supermercado
54	ContactName	Carlos González
54	ContactTitle	Accounting Manager
54	Address	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
54	City	Barquisimeto
54	Region	Lara
54	PostalCode	3508
54	Country	Venezuela
54	Phone	(9) 331-6954
54	Fax	(9) 331-7256
55	CustomerID	LINOD
55	CompanyName	LINO-Delicateses
55	ContactName	Felipe Izquierdo
55	ContactTitle	Owner
55	Address	Ave. 5 de Mayo Porlamar
55	City	I. de Margarita
55	Region	Nueva Esparta
55	PostalCode	4980
55	Country	Venezuela
55	Phone	(8) 34-56-12
55	Fax	(8) 34-93-93
56	CustomerID	LONEP
56	CompanyName	Lonesome Pine Restaurant
56	ContactName	Fran Wilson
56	ContactTitle	Sales Manager
56	Address	89 Chiaroscuro Rd.
56	City	Portland
56	Region	OR
56	PostalCode	97219
56	Country	USA
56	Phone	(503) 555-9573
56	Fax	(503) 555-9646
57	CustomerID	MAGAA
57	CompanyName	Magazzini Alimentari Riuniti
57	ContactName	Giovanni Rovelli
57	ContactTitle	Marketing Manager
57	Address	Via Ludovico il Moro 22
57	City	Bergamo
57	PostalCode	24100
57	Country	Italy
57	Phone	035-640230
57	Fax	035-640231
58	CustomerID	MAISD
58	CompanyName	Maison Dewey
58	ContactName	Catherine Dewey
58	ContactTitle	Sales Agent
58	Address	Rue Joseph-Bens 532
58	City	Bruxelles
58	PostalCode	B-1180
58	Country	Belgium
58	Phone	(02) 201 24 67
58	Fax	(02) 201 24 68
59	CustomerID	MEREP
59	CompanyName	Mère Paillarde
59	ContactName	Jean Fresnière
59	ContactTitle	Marketing Assistant
59	Address	43 rue St. Laurent
59	City	Montréal
59	Region	Québec
59	PostalCode	H1J 1C3
59	Country	Canada
59	Phone	(514) 555-8054
59	Fax	(514) 555-8055
60	CustomerID	MORGK
60	CompanyName	Morgenstern Gesundkost
60	ContactName	Alexander Feuer
60	ContactTitle	Marketing Assistant
60	Address	Heerstr. 22
60	City	Leipzig
60	PostalCode	04179
60	Country	Germany
60	Phone	0342-023176
61	CustomerID	NORTS
61	CompanyName	North/South
61	ContactName	Simon Crowther
61	ContactTitle	Sales Associate
61	Address	South House 300 Queensbridge
61	City	London
61	PostalCode	SW7 1RZ
61	Country	UK
61	Phone	(171) 555-7733
61	Fax	(171) 555-2530
62	CustomerID	OCEAN
62	CompanyName	Océano Atlántico Ltda.
62	ContactName	Yvonne Moncada
62	ContactTitle	Sales Agent
62	Address	Ing. Gustavo Moncada 8585 Piso 20-A
62	City	Buenos Aires
62	PostalCode	1010
62	Country	Argentina
62	Phone	(1) 135-5333
62	Fax	(1) 135-5535
63	CustomerID	OLDWO
63	CompanyName	Old World Delicatessen
63	ContactName	Rene Phillips
63	ContactTitle	Sales Representative
63	Address	2743 Bering St.
63	City	Anchorage
63	Region	AK
63	PostalCode	99508
63	Country	USA
63	Phone	(907) 555-7584
63	Fax	(907) 555-2880
64	CustomerID	OTTIK
64	CompanyName	Ottilies Käseladen
64	ContactName	Henriette Pfalzheim
64	ContactTitle	Owner
64	Address	Mehrheimerstr. 369
64	City	Köln
64	PostalCode	50739
64	Country	Germany
64	Phone	0221-0644327
64	Fax	0221-0765721
65	CustomerID	PARIS
65	CompanyName	Paris spécialités
65	ContactName	Marie Bertrand
65	ContactTitle	Owner
65	Address	265, boulevard Charonne
65	City	Paris
65	PostalCode	75012
65	Country	France
65	Phone	(1) 42.34.22.66
65	Fax	(1) 42.34.22.77
66	CustomerID	PERIC
66	CompanyName	Pericles Comidas clásicas
66	ContactName	Guillermo Fernández
66	ContactTitle	Sales Representative
66	Address	Calle Dr. Jorge Cash 321
66	City	México D.F.
66	PostalCode	05033
66	Country	Mexico
66	Phone	(5) 552-3745
66	Fax	(5) 545-3745
67	CustomerID	PICCO
67	CompanyName	Piccolo und mehr
67	ContactName	Georg Pipps
67	ContactTitle	Sales Manager
67	Address	Geislweg 14
67	City	Salzburg
67	PostalCode	5020
67	Country	Austria
67	Phone	6562-9722
67	Fax	6562-9723
68	CustomerID	PRINI
68	CompanyName	Princesa Isabel Vinhos
68	ContactName	Isabel de Castro
68	ContactTitle	Sales Representative
68	Address	Estrada da saúde n. 58
68	City	Lisboa
68	PostalCode	1756
68	Country	Portugal
68	Phone	(1) 356-5634
69	CustomerID	QUEDE
69	CompanyName	Que Delícia
69	ContactName	Bernardo Batista
69	ContactTitle	Accounting Manager
69	Address	Rua da Panificadora, 12
69	City	Rio de Janeiro
69	Region	RJ
69	PostalCode	02389-673
69	Country	Brazil
69	Phone	(21) 555-4252
69	Fax	(21) 555-4545
70	CustomerID	QUEEN
70	CompanyName	Queen Cozinha
70	ContactName	Lúcia Carvalho
70	ContactTitle	Marketing Assistant
70	Address	Alameda dos Canàrios, 891
70	City	Sao Paulo
70	Region	SP
70	PostalCode	05487-020
70	Country	Brazil
70	Phone	(11) 555-1189
71	CustomerID	QUICK
71	CompanyName	QUICK-Stop
71	ContactName	Horst Kloss
71	ContactTitle	Accounting Manager
71	Address	Taucherstraße 10
71	City	Cunewalde
71	PostalCode	01307
71	Country	Germany
71	Phone	0372-035188
72	CustomerID	RANCH
72	CompanyName	Rancho grande
72	ContactName	Sergio Gutiérrez
72	ContactTitle	Sales Representative
72	Address	Av. del Libertador 900
72	City	Buenos Aires
72	PostalCode	1010
72	Country	Argentina
72	Phone	(1) 123-5555
72	Fax	(1) 123-5556
73	CustomerID	RATTC
73	CompanyName	Rattlesnake Canyon Grocery
73	ContactName	Paula Wilson
73	ContactTitle	Assistant Sales Representative
73	Address	2817 Milton Dr.
73	City	Albuquerque
73	Region	NM
73	PostalCode	87110
73	Country	USA
73	Phone	(505) 555-5939
73	Fax	(505) 555-3620
74	CustomerID	REGGC
74	CompanyName	Reggiani Caseifici
74	ContactName	Maurizio Moroni
74	ContactTitle	Sales Associate
74	Address	Strada Provinciale 124
74	City	Reggio Emilia
74	PostalCode	42100
74	Country	Italy
74	Phone	0522-556721
74	Fax	0522-556722
75	CustomerID	RICAR
75	CompanyName	Ricardo Adocicados
75	ContactName	Janete Limeira
75	ContactTitle	Assistant Sales Agent
75	Address	Av. Copacabana, 267
75	City	Rio de Janeiro
75	Region	RJ
75	PostalCode	02389-890
75	Country	Brazil
75	Phone	(21) 555-3412
76	CustomerID	RICSU
76	CompanyName	Richter Supermarkt
76	ContactName	Michael Holz
76	ContactTitle	Sales Manager
76	Address	Grenzacherweg 237
76	City	Genève
76	PostalCode	1203
76	Country	Switzerland
76	Phone	0897-034214
77	CustomerID	ROMEY
77	CompanyName	Romero y tomillo
77	ContactName	Alejandra Camino
77	ContactTitle	Accounting Manager
77	Address	Gran Vía, 1
77	City	Madrid
77	PostalCode	28001
77	Country	Spain
77	Phone	(91) 745 6200
77	Fax	(91) 745 6210
78	CustomerID	SANTG
78	CompanyName	Santé Gourmet
78	ContactName	Jonas Bergulfsen
78	ContactTitle	Owner
78	Address	Erling Skakkes gate 78
78	City	Stavern
78	PostalCode	4110
78	Country	Norway
78	Phone	07-98 92 35
78	Fax	07-98 92 47
79	CustomerID	SAVEA
79	CompanyName	Save-a-lot Markets
79	ContactName	Jose Pavarotti
79	ContactTitle	Sales Representative
79	Address	187 Suffolk Ln.
79	City	Boise
79	Region	ID
79	PostalCode	83720
79	Country	USA
79	Phone	(208) 555-8097
80	CustomerID	SEVES
80	CompanyName	Seven Seas Imports
80	ContactName	Hari Kumar
80	ContactTitle	Sales Manager
80	Address	90 Wadhurst Rd.
80	City	London
80	PostalCode	OX15 4NB
80	Country	UK
80	Phone	(171) 555-1717
80	Fax	(171) 555-5646
81	CustomerID	SIMOB
81	CompanyName	Simons bistro
81	ContactName	Jytte Petersen
81	ContactTitle	Owner
81	Address	Vinbæltet 34
81	City	Kobenhavn
81	PostalCode	1734
81	Country	Denmark
81	Phone	31 12 34 56
81	Fax	31 13 35 57
82	CustomerID	SPECD
82	CompanyName	Spécialités du monde
82	ContactName	Dominique Perrier
82	ContactTitle	Marketing Manager
82	Address	25, rue Lauriston
82	City	Paris
82	PostalCode	75016
82	Country	France
82	Phone	(1) 47.55.60.10
82	Fax	(1) 47.55.60.20
83	CustomerID	SPLIR
83	CompanyName	Split Rail Beer & Ale
83	ContactName	Art Braunschweiger
83	ContactTitle	Sales Manager
83	Address	P.O. Box 555
83	City	Lander
83	Region	WY
83	PostalCode	82520
83	Country	USA
83	Phone	(307) 555-4680
83	Fax	(307) 555-6525
84	CustomerID	SUPRD
84	CompanyName	Suprêmes délices
84	ContactName	Pascale Cartrain
84	ContactTitle	Accounting Manager
84	Address	Boulevard Tirou, 255
84	City	Charleroi
84	PostalCode	B-6000
84	Country	Belgium
84	Phone	(071) 23 67 22 20
84	Fax	(071) 23 67 22 21
85	CustomerID	THEBI
85	CompanyName	The Big Cheese
85	ContactName	Liz Nixon
85	ContactTitle	Marketing Manager
85	Address	89 Jefferson Way Suite 2
85	City	Portland
85	Region	OR
85	PostalCode	97201
85	Country	USA
85	Phone	(503) 555-3612
86	CustomerID	THECR
86	CompanyName	The Cracker Box
86	ContactName	Liu Wong
86	ContactTitle	Marketing Assistant
86	Address	55 Grizzly Peak Rd.
86	City	Butte
86	Region	MT
86	PostalCode	59801
86	Country	USA
86	Phone	(406) 555-5834
86	Fax	(406) 555-8083
87	CustomerID	TOMSP
87	CompanyName	Toms Spezialitäten
87	ContactName	Karin Josephs
87	ContactTitle	Marketing Manager
87	Address	Luisenstr. 48
87	City	Münster
87	PostalCode	44087
87	Country	Germany
87	Phone	0251-031259
87	Fax	0251-035695
88	CustomerID	TORTU
88	CompanyName	Tortuga Restaurante
88	ContactName	Miguel Angel Paolino
88	ContactTitle	Owner
88	Address	Avda. Azteca 123
88	City	México D.F.
88	PostalCode	05033
88	Country	Mexico
88	Phone	(5) 555-2933
89	CustomerID	TRADH
89	CompanyName	Tradição Hipermercados
89	ContactName	Anabela Domingues
89	ContactTitle	Sales Representative
89	Address	Av. Inês de Castro, 414
89	City	Sao Paulo
89	Region	SP
89	PostalCode	05634-030
89	Country	Brazil
89	Phone	(11) 555-2167
89	Fax	(11) 555-2168
90	CustomerID	TRAIH
90	CompanyName	Trail's Head Gourmet Provisioners
90	ContactName	Helvetius Nagy
90	ContactTitle	Sales Associate
90	Address	722 DaVinci Blvd.
90	City	Kirkland
90	Region	WA
90	PostalCode	98034
90	Country	USA
90	Phone	(206) 555-8257
90	Fax	(206) 555-2174
91	CustomerID	VAFFE
91	CompanyName	Vaffeljernet
91	ContactName	Palle Ibsen
91	ContactTitle	Sales Manager
91	Address	Smagsloget 45
91	City	Århus
91	PostalCode	8200
91	Country	Denmark
91	Phone	86 21 32 43
91	Fax	86 22 33 44
92	CustomerID	VICTE
92	CompanyName	Victuailles en stock
92	ContactName	Mary Saveley
92	ContactTitle	Sales Agent
92	Address	2, rue du Commerce
92	City	Lyon
92	PostalCode	69004
92	Country	France
92	Phone	78.32.54.86
92	Fax	78.32.54.87
93	CustomerID	VINET
93	CompanyName	Vins et alcools Chevalier
93	ContactName	Paul Henriot
93	ContactTitle	Accounting Manager
93	Address	59 rue de l'Abbaye
93	City	Reims
93	PostalCode	51100
93	Country	France
93	Phone	26.47.15.10
93	Fax	26.47.15.11
94	CustomerID	WANDK
94	CompanyName	Die Wandernde Kuh
94	ContactName	Rita Müller
94	ContactTitle	Sales Representative
94	Address	Adenauerallee 900
94	City	Stuttgart
94	PostalCode	70563
94	Country	Germany
94	Phone	0711-020361
94	Fax	0711-035428
95	CustomerID	WARTH
95	CompanyName	Wartian Herkku
95	ContactName	Pirkko Koskitalo
95	ContactTitle	Accounting Manager
95	Address	Torikatu 38
95	City	Oulu
95	PostalCode	90110
95	Country	Finland
95	Phone	981-443655
95	Fax	981-443655
96	CustomerID	WELLI
96	CompanyName	Wellington Importadora
96	ContactName	Paula Parente
96	ContactTitle	Sales Manager
96	Address	Rua do Mercado, 12
96	City	Resende
96	Region	SP
96	PostalCode	08737-363
96	Country	Brazil
96	Phone	(14) 555-8122
97	CustomerID	WHITC
97	CompanyName	White Clover Markets
97	ContactName	Karl Jablonski
97	ContactTitle	Owner
97	Address	305 - 14th Ave. S. Suite 3B
97	City	Seattle
97	Region	WA
97	PostalCode	98128
97	Country	USA
97	Phone	(206) 555-4112
97	Fax	(206) 555-4115
98	CustomerID	WILMK
98	CompanyName	Wilman Kala
98	ContactName	Matti Karttunen
98	ContactTitle	Owner/Marketing Assistant
98	Address	Keskuskatu 45
98	City	Helsinki
98	PostalCode	21240
98	Country	Finland
98	Phone	90-224 8858
98	Fax	90-224 8858
99	CustomerID	WOLZA
99	CompanyName	Wolski  Zajazd
99	ContactName	Zbyszek Piestrzeniewicz
99	ContactTitle	Owner
99	Address	ul. Filtrowa 68
99	City	Warszawa
99	PostalCode	01-012
99	Country	Poland
99	Phone	(26) 642-7012
99	Fax	(26) 642-7012
100	EmployeeID	1
100	LastName	Davolio
100	FirstName	Nancy
100	Title	Sales Representative
100	TitleOfCourtesy	Ms.
100	BirthDate	1948-12-08
100	HireDate	1992-05-01
100	Address	507 - 20th Ave. E.\\nApt. 2A
100	City	Seattle
100	Region	WA
100	PostalCode	98122
100	Country	USA
100	HomePhone	(206) 555-9857
100	Extension	5467
100	Photo	[B@123a439b
100	Notes	Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.
100	ReportsTo	2
100	PhotoPath	http://accweb/emmployees/davolio.bmp
101	EmployeeID	2
101	LastName	Fuller
101	FirstName	Andrew
101	Title	Vice President, Sales
101	TitleOfCourtesy	Dr.
101	BirthDate	1952-02-19
101	HireDate	1992-08-14
101	Address	908 W. Capital Way
101	City	Tacoma
101	Region	WA
101	PostalCode	98401
101	Country	USA
101	HomePhone	(206) 555-9482
101	Extension	3457
101	Photo	[B@7de26db8
101	Notes	Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.
101	PhotoPath	http://accweb/emmployees/fuller.bmp
102	EmployeeID	3
102	LastName	Leverling
102	FirstName	Janet
102	Title	Sales Representative
102	TitleOfCourtesy	Ms.
102	BirthDate	1963-08-30
102	HireDate	1992-04-01
102	Address	722 Moss Bay Blvd.
102	City	Kirkland
102	Region	WA
102	PostalCode	98033
102	Country	USA
102	HomePhone	(206) 555-3412
102	Extension	3355
102	Photo	[B@1175e2db
102	Notes	Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.
102	ReportsTo	2
102	PhotoPath	http://accweb/emmployees/leverling.bmp
103	EmployeeID	4
103	LastName	Peacock
103	FirstName	Margaret
103	Title	Sales Representative
103	TitleOfCourtesy	Mrs.
103	BirthDate	1937-09-19
103	HireDate	1993-05-03
103	Address	4110 Old Redmond Rd.
103	City	Redmond
103	Region	WA
103	PostalCode	98052
103	Country	USA
103	HomePhone	(206) 555-8122
103	Extension	5176
103	Photo	[B@36aa7bc2
103	Notes	Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.
103	ReportsTo	2
103	PhotoPath	http://accweb/emmployees/peacock.bmp
104	EmployeeID	5
104	LastName	Buchanan
104	FirstName	Steven
104	Title	Sales Manager
104	TitleOfCourtesy	Mr.
104	BirthDate	1955-03-04
104	HireDate	1993-10-17
104	Address	14 Garrett Hill
104	City	London
104	PostalCode	SW1 8JR
104	Country	UK
104	HomePhone	(71) 555-4848
104	Extension	3453
104	Photo	[B@76ccd017
104	Notes	Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.
104	ReportsTo	2
104	PhotoPath	http://accweb/emmployees/buchanan.bmp
105	EmployeeID	6
105	LastName	Suyama
105	FirstName	Michael
105	Title	Sales Representative
105	TitleOfCourtesy	Mr.
105	BirthDate	1963-07-02
105	HireDate	1993-10-17
105	Address	Coventry House\\nMiner Rd.
105	City	London
105	PostalCode	EC2 7JR
105	Country	UK
105	HomePhone	(71) 555-7773
105	Extension	428
105	Photo	[B@182decdb
105	Notes	Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.
105	ReportsTo	5
105	PhotoPath	http://accweb/emmployees/davolio.bmp
106	EmployeeID	7
106	LastName	King
106	FirstName	Robert
106	Title	Sales Representative
106	TitleOfCourtesy	Mr.
106	BirthDate	1960-05-29
106	HireDate	1994-01-02
106	Address	Edgeham Hollow\\nWinchester Way
106	City	London
106	PostalCode	RG1 9SP
106	Country	UK
106	HomePhone	(71) 555-5598
106	Extension	465
106	Photo	[B@26f0a63f
106	Notes	Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993.
106	ReportsTo	5
106	PhotoPath	http://accweb/emmployees/davolio.bmp
107	EmployeeID	8
107	LastName	Callahan
107	FirstName	Laura
107	Title	Inside Sales Coordinator
107	TitleOfCourtesy	Ms.
107	BirthDate	1958-01-09
107	HireDate	1994-03-05
107	Address	4726 - 11th Ave. N.E.
107	City	Seattle
107	Region	WA
107	PostalCode	98105
107	Country	USA
107	HomePhone	(206) 555-1189
107	Extension	2344
107	Photo	[B@4361bd48
107	Notes	Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.
107	ReportsTo	2
107	PhotoPath	http://accweb/emmployees/davolio.bmp
108	EmployeeID	9
108	LastName	Dodsworth
108	FirstName	Anne
108	Title	Sales Representative
108	TitleOfCourtesy	Ms.
108	BirthDate	1966-01-27
108	HireDate	1994-11-15
108	Address	7 Houndstooth Rd.
108	City	London
108	PostalCode	WG2 7LT
108	Country	UK
108	HomePhone	(71) 555-4444
108	Extension	452
108	Photo	[B@53bd815b
108	Notes	Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.
108	ReportsTo	5
108	PhotoPath	http://accweb/emmployees/davolio.bmp
109	EmployeeID	1
109	TerritoryID	06897
110	EmployeeID	1
110	TerritoryID	19713
111	EmployeeID	2
111	TerritoryID	01581
112	EmployeeID	2
112	TerritoryID	01730
113	EmployeeID	2
113	TerritoryID	01833
114	EmployeeID	2
114	TerritoryID	02116
115	EmployeeID	2
115	TerritoryID	02139
116	EmployeeID	2
116	TerritoryID	02184
117	EmployeeID	2
117	TerritoryID	40222
118	EmployeeID	3
118	TerritoryID	30346
119	EmployeeID	3
119	TerritoryID	31406
120	EmployeeID	3
120	TerritoryID	32859
121	EmployeeID	3
121	TerritoryID	33607
122	EmployeeID	4
122	TerritoryID	20852
123	EmployeeID	4
123	TerritoryID	27403
124	EmployeeID	4
124	TerritoryID	27511
125	EmployeeID	5
125	TerritoryID	02903
126	EmployeeID	5
126	TerritoryID	07960
127	EmployeeID	5
127	TerritoryID	08837
128	EmployeeID	5
128	TerritoryID	10019
129	EmployeeID	5
129	TerritoryID	10038
130	EmployeeID	5
130	TerritoryID	11747
131	EmployeeID	5
131	TerritoryID	14450
132	EmployeeID	6
132	TerritoryID	85014
133	EmployeeID	6
133	TerritoryID	85251
134	EmployeeID	6
134	TerritoryID	98004
135	EmployeeID	6
135	TerritoryID	98052
136	EmployeeID	6
136	TerritoryID	98104
137	EmployeeID	7
137	TerritoryID	60179
138	EmployeeID	7
138	TerritoryID	60601
139	EmployeeID	7
139	TerritoryID	80202
140	EmployeeID	7
140	TerritoryID	80909
141	EmployeeID	7
141	TerritoryID	90405
142	EmployeeID	7
142	TerritoryID	94025
143	EmployeeID	7
143	TerritoryID	94105
144	EmployeeID	7
144	TerritoryID	95008
145	EmployeeID	7
145	TerritoryID	95054
146	EmployeeID	7
146	TerritoryID	95060
147	EmployeeID	8
147	TerritoryID	19428
148	EmployeeID	8
148	TerritoryID	44122
149	EmployeeID	8
149	TerritoryID	45839
150	EmployeeID	8
150	TerritoryID	53404
151	EmployeeID	9
151	TerritoryID	03049
152	EmployeeID	9
152	TerritoryID	03801
153	EmployeeID	9
153	TerritoryID	48075
154	EmployeeID	9
154	TerritoryID	48084
155	EmployeeID	9
155	TerritoryID	48304
156	EmployeeID	9
156	TerritoryID	55113
157	EmployeeID	9
157	TerritoryID	55439
158	OrderID	10248
158	ProductID	11
158	UnitPrice	14.0
158	Quantity	12
158	Discount	0.0
159	OrderID	10248
159	ProductID	42
159	UnitPrice	9.8
159	Quantity	10
159	Discount	0.0
160	OrderID	10248
160	ProductID	72
160	UnitPrice	34.8
160	Quantity	5
160	Discount	0.0
161	OrderID	10249
161	ProductID	14
161	UnitPrice	18.6
161	Quantity	9
161	Discount	0.0
162	OrderID	10249
162	ProductID	51
162	UnitPrice	42.4
162	Quantity	40
162	Discount	0.0
163	OrderID	10250
163	ProductID	41
163	UnitPrice	7.7
163	Quantity	10
163	Discount	0.0
164	OrderID	10250
164	ProductID	51
164	UnitPrice	42.4
164	Quantity	35
164	Discount	0.15
165	OrderID	10250
165	ProductID	65
165	UnitPrice	16.8
165	Quantity	15
165	Discount	0.15
166	OrderID	10251
166	ProductID	22
166	UnitPrice	16.8
166	Quantity	6
166	Discount	0.05
167	OrderID	10251
167	ProductID	57
167	UnitPrice	15.6
167	Quantity	15
167	Discount	0.05
168	OrderID	10251
168	ProductID	65
168	UnitPrice	16.8
168	Quantity	20
168	Discount	0.0
169	OrderID	10252
169	ProductID	20
169	UnitPrice	64.8
169	Quantity	40
169	Discount	0.05
170	OrderID	10252
170	ProductID	33
170	UnitPrice	2.0
170	Quantity	25
170	Discount	0.05
171	OrderID	10252
171	ProductID	60
171	UnitPrice	27.2
171	Quantity	40
171	Discount	0.0
172	OrderID	10253
172	ProductID	31
172	UnitPrice	10.0
172	Quantity	20
172	Discount	0.0
173	OrderID	10253
173	ProductID	39
173	UnitPrice	14.4
173	Quantity	42
173	Discount	0.0
174	OrderID	10253
174	ProductID	49
174	UnitPrice	16.0
174	Quantity	40
174	Discount	0.0
175	OrderID	10254
175	ProductID	24
175	UnitPrice	3.6
175	Quantity	15
175	Discount	0.15
176	OrderID	10254
176	ProductID	55
176	UnitPrice	19.2
176	Quantity	21
176	Discount	0.15
177	OrderID	10254
177	ProductID	74
177	UnitPrice	8.0
177	Quantity	21
177	Discount	0.0
178	OrderID	10255
178	ProductID	2
178	UnitPrice	15.2
178	Quantity	20
178	Discount	0.0
179	OrderID	10255
179	ProductID	16
179	UnitPrice	13.9
179	Quantity	35
179	Discount	0.0
180	OrderID	10255
180	ProductID	36
180	UnitPrice	15.2
180	Quantity	25
180	Discount	0.0
181	OrderID	10255
181	ProductID	59
181	UnitPrice	44.0
181	Quantity	30
181	Discount	0.0
182	OrderID	10256
182	ProductID	53
182	UnitPrice	26.2
182	Quantity	15
182	Discount	0.0
183	OrderID	10256
183	ProductID	77
183	UnitPrice	10.4
183	Quantity	12
183	Discount	0.0
184	OrderID	10257
184	ProductID	27
184	UnitPrice	35.1
184	Quantity	25
184	Discount	0.0
185	OrderID	10257
185	ProductID	39
185	UnitPrice	14.4
185	Quantity	6
185	Discount	0.0
186	OrderID	10257
186	ProductID	77
186	UnitPrice	10.4
186	Quantity	15
186	Discount	0.0
187	OrderID	10258
187	ProductID	2
187	UnitPrice	15.2
187	Quantity	50
187	Discount	0.2
188	OrderID	10258
188	ProductID	5
188	UnitPrice	17.0
188	Quantity	65
188	Discount	0.2
189	OrderID	10258
189	ProductID	32
189	UnitPrice	25.6
189	Quantity	6
189	Discount	0.2
190	OrderID	10259
190	ProductID	21
190	UnitPrice	8.0
190	Quantity	10
190	Discount	0.0
191	OrderID	10259
191	ProductID	37
191	UnitPrice	20.8
191	Quantity	1
191	Discount	0.0
192	OrderID	10260
192	ProductID	41
192	UnitPrice	7.7
192	Quantity	16
192	Discount	0.25
193	OrderID	10260
193	ProductID	57
193	UnitPrice	15.6
193	Quantity	50
193	Discount	0.0
194	OrderID	10260
194	ProductID	62
194	UnitPrice	39.4
194	Quantity	15
194	Discount	0.25
195	OrderID	10260
195	ProductID	70
195	UnitPrice	12.0
195	Quantity	21
195	Discount	0.25
196	OrderID	10261
196	ProductID	21
196	UnitPrice	8.0
196	Quantity	20
196	Discount	0.0
197	OrderID	10261
197	ProductID	35
197	UnitPrice	14.4
197	Quantity	20
197	Discount	0.0
198	OrderID	10262
198	ProductID	5
198	UnitPrice	17.0
198	Quantity	12
198	Discount	0.2
199	OrderID	10262
199	ProductID	7
199	UnitPrice	24.0
199	Quantity	15
199	Discount	0.0
200	OrderID	10262
200	ProductID	56
200	UnitPrice	30.4
200	Quantity	2
200	Discount	0.0
201	OrderID	10263
201	ProductID	16
201	UnitPrice	13.9
201	Quantity	60
201	Discount	0.25
202	OrderID	10263
202	ProductID	24
202	UnitPrice	3.6
202	Quantity	28
202	Discount	0.0
203	OrderID	10263
203	ProductID	30
203	UnitPrice	20.7
203	Quantity	60
203	Discount	0.25
204	OrderID	10263
204	ProductID	74
204	UnitPrice	8.0
204	Quantity	36
204	Discount	0.25
205	OrderID	10264
205	ProductID	2
205	UnitPrice	15.2
205	Quantity	35
205	Discount	0.0
206	OrderID	10264
206	ProductID	41
206	UnitPrice	7.7
206	Quantity	25
206	Discount	0.15
207	OrderID	10265
207	ProductID	17
207	UnitPrice	31.2
207	Quantity	30
207	Discount	0.0
208	OrderID	10265
208	ProductID	70
208	UnitPrice	12.0
208	Quantity	20
208	Discount	0.0
209	OrderID	10266
209	ProductID	12
209	UnitPrice	30.4
209	Quantity	12
209	Discount	0.05
210	OrderID	10267
210	ProductID	40
210	UnitPrice	14.7
210	Quantity	50
210	Discount	0.0
211	OrderID	10267
211	ProductID	59
211	UnitPrice	44.0
211	Quantity	70
211	Discount	0.15
212	OrderID	10267
212	ProductID	76
212	UnitPrice	14.4
212	Quantity	15
212	Discount	0.15
213	OrderID	10268
213	ProductID	29
213	UnitPrice	99.0
213	Quantity	10
213	Discount	0.0
214	OrderID	10268
214	ProductID	72
214	UnitPrice	27.8
214	Quantity	4
214	Discount	0.0
215	OrderID	10269
215	ProductID	33
215	UnitPrice	2.0
215	Quantity	60
215	Discount	0.05
216	OrderID	10269
216	ProductID	72
216	UnitPrice	27.8
216	Quantity	20
216	Discount	0.05
217	OrderID	10270
217	ProductID	36
217	UnitPrice	15.2
217	Quantity	30
217	Discount	0.0
218	OrderID	10270
218	ProductID	43
218	UnitPrice	36.8
218	Quantity	25
218	Discount	0.0
219	OrderID	10271
219	ProductID	33
219	UnitPrice	2.0
219	Quantity	24
219	Discount	0.0
220	OrderID	10272
220	ProductID	20
220	UnitPrice	64.8
220	Quantity	6
220	Discount	0.0
221	OrderID	10272
221	ProductID	31
221	UnitPrice	10.0
221	Quantity	40
221	Discount	0.0
222	OrderID	10272
222	ProductID	72
222	UnitPrice	27.8
222	Quantity	24
222	Discount	0.0
223	OrderID	10273
223	ProductID	10
223	UnitPrice	24.8
223	Quantity	24
223	Discount	0.05
224	OrderID	10273
224	ProductID	31
224	UnitPrice	10.0
224	Quantity	15
224	Discount	0.05
225	OrderID	10273
225	ProductID	33
225	UnitPrice	2.0
225	Quantity	20
225	Discount	0.0
226	OrderID	10273
226	ProductID	40
226	UnitPrice	14.7
226	Quantity	60
226	Discount	0.05
227	OrderID	10273
227	ProductID	76
227	UnitPrice	14.4
227	Quantity	33
227	Discount	0.05
228	OrderID	10274
228	ProductID	71
228	UnitPrice	17.2
228	Quantity	20
228	Discount	0.0
229	OrderID	10274
229	ProductID	72
229	UnitPrice	27.8
229	Quantity	7
229	Discount	0.0
230	OrderID	10275
230	ProductID	24
230	UnitPrice	3.6
230	Quantity	12
230	Discount	0.05
231	OrderID	10275
231	ProductID	59
231	UnitPrice	44.0
231	Quantity	6
231	Discount	0.05
232	OrderID	10276
232	ProductID	10
232	UnitPrice	24.8
232	Quantity	15
232	Discount	0.0
233	OrderID	10276
233	ProductID	13
233	UnitPrice	4.8
233	Quantity	10
233	Discount	0.0
234	OrderID	10277
234	ProductID	28
234	UnitPrice	36.4
234	Quantity	20
234	Discount	0.0
235	OrderID	10277
235	ProductID	62
235	UnitPrice	39.4
235	Quantity	12
235	Discount	0.0
236	OrderID	10278
236	ProductID	44
236	UnitPrice	15.5
236	Quantity	16
236	Discount	0.0
237	OrderID	10278
237	ProductID	59
237	UnitPrice	44.0
237	Quantity	15
237	Discount	0.0
238	OrderID	10278
238	ProductID	63
238	UnitPrice	35.1
238	Quantity	8
238	Discount	0.0
239	OrderID	10278
239	ProductID	73
239	UnitPrice	12.0
239	Quantity	25
239	Discount	0.0
240	OrderID	10279
240	ProductID	17
240	UnitPrice	31.2
240	Quantity	15
240	Discount	0.25
241	OrderID	10280
241	ProductID	24
241	UnitPrice	3.6
241	Quantity	12
241	Discount	0.0
242	OrderID	10280
242	ProductID	55
242	UnitPrice	19.2
242	Quantity	20
242	Discount	0.0
243	OrderID	10280
243	ProductID	75
243	UnitPrice	6.2
243	Quantity	30
243	Discount	0.0
244	OrderID	10281
244	ProductID	19
244	UnitPrice	7.3
244	Quantity	1
244	Discount	0.0
245	OrderID	10281
245	ProductID	24
245	UnitPrice	3.6
245	Quantity	6
245	Discount	0.0
246	OrderID	10281
246	ProductID	35
246	UnitPrice	14.4
246	Quantity	4
246	Discount	0.0
247	OrderID	10282
247	ProductID	30
247	UnitPrice	20.7
247	Quantity	6
247	Discount	0.0
248	OrderID	10282
248	ProductID	57
248	UnitPrice	15.6
248	Quantity	2
248	Discount	0.0
249	OrderID	10283
249	ProductID	15
249	UnitPrice	12.4
249	Quantity	20
249	Discount	0.0
250	OrderID	10283
250	ProductID	19
250	UnitPrice	7.3
250	Quantity	18
250	Discount	0.0
251	OrderID	10283
251	ProductID	60
251	UnitPrice	27.2
251	Quantity	35
251	Discount	0.0
252	OrderID	10283
252	ProductID	72
252	UnitPrice	27.8
252	Quantity	3
252	Discount	0.0
253	OrderID	10284
253	ProductID	27
253	UnitPrice	35.1
253	Quantity	15
253	Discount	0.25
254	OrderID	10284
254	ProductID	44
254	UnitPrice	15.5
254	Quantity	21
254	Discount	0.0
255	OrderID	10284
255	ProductID	60
255	UnitPrice	27.2
255	Quantity	20
255	Discount	0.25
256	OrderID	10284
256	ProductID	67
256	UnitPrice	11.2
256	Quantity	5
256	Discount	0.25
257	OrderID	10285
257	ProductID	1
257	UnitPrice	14.4
257	Quantity	45
257	Discount	0.2
258	OrderID	10285
258	ProductID	40
258	UnitPrice	14.7
258	Quantity	40
258	Discount	0.2
259	OrderID	10285
259	ProductID	53
259	UnitPrice	26.2
259	Quantity	36
259	Discount	0.2
260	OrderID	10286
260	ProductID	35
260	UnitPrice	14.4
260	Quantity	100
260	Discount	0.0
261	OrderID	10286
261	ProductID	62
261	UnitPrice	39.4
261	Quantity	40
261	Discount	0.0
262	OrderID	10287
262	ProductID	16
262	UnitPrice	13.9
262	Quantity	40
262	Discount	0.15
263	OrderID	10287
263	ProductID	34
263	UnitPrice	11.2
263	Quantity	20
263	Discount	0.0
264	OrderID	10287
264	ProductID	46
264	UnitPrice	9.6
264	Quantity	15
264	Discount	0.15
265	OrderID	10288
265	ProductID	54
265	UnitPrice	5.9
265	Quantity	10
265	Discount	0.1
266	OrderID	10288
266	ProductID	68
266	UnitPrice	10.0
266	Quantity	3
266	Discount	0.1
267	OrderID	10289
267	ProductID	3
267	UnitPrice	8.0
267	Quantity	30
267	Discount	0.0
268	OrderID	10289
268	ProductID	64
268	UnitPrice	26.6
268	Quantity	9
268	Discount	0.0
269	OrderID	10290
269	ProductID	5
269	UnitPrice	17.0
269	Quantity	20
269	Discount	0.0
270	OrderID	10290
270	ProductID	29
270	UnitPrice	99.0
270	Quantity	15
270	Discount	0.0
271	OrderID	10290
271	ProductID	49
271	UnitPrice	16.0
271	Quantity	15
271	Discount	0.0
272	OrderID	10290
272	ProductID	77
272	UnitPrice	10.4
272	Quantity	10
272	Discount	0.0
273	OrderID	10291
273	ProductID	13
273	UnitPrice	4.8
273	Quantity	20
273	Discount	0.1
274	OrderID	10291
274	ProductID	44
274	UnitPrice	15.5
274	Quantity	24
274	Discount	0.1
275	OrderID	10291
275	ProductID	51
275	UnitPrice	42.4
275	Quantity	2
275	Discount	0.1
276	OrderID	10292
276	ProductID	20
276	UnitPrice	64.8
276	Quantity	20
276	Discount	0.0
277	OrderID	10293
277	ProductID	18
277	UnitPrice	50.0
277	Quantity	12
277	Discount	0.0
278	OrderID	10293
278	ProductID	24
278	UnitPrice	3.6
278	Quantity	10
278	Discount	0.0
279	OrderID	10293
279	ProductID	63
279	UnitPrice	35.1
279	Quantity	5
279	Discount	0.0
280	OrderID	10293
280	ProductID	75
280	UnitPrice	6.2
280	Quantity	6
280	Discount	0.0
281	OrderID	10294
281	ProductID	1
281	UnitPrice	14.4
281	Quantity	18
281	Discount	0.0
282	OrderID	10294
282	ProductID	17
282	UnitPrice	31.2
282	Quantity	15
282	Discount	0.0
283	OrderID	10294
283	ProductID	43
283	UnitPrice	36.8
283	Quantity	15
283	Discount	0.0
284	OrderID	10294
284	ProductID	60
284	UnitPrice	27.2
284	Quantity	21
284	Discount	0.0
285	OrderID	10294
285	ProductID	75
285	UnitPrice	6.2
285	Quantity	6
285	Discount	0.0
286	OrderID	10295
286	ProductID	56
286	UnitPrice	30.4
286	Quantity	4
286	Discount	0.0
287	OrderID	10296
287	ProductID	11
287	UnitPrice	16.8
287	Quantity	12
287	Discount	0.0
288	OrderID	10296
288	ProductID	16
288	UnitPrice	13.9
288	Quantity	30
288	Discount	0.0
289	OrderID	10296
289	ProductID	69
289	UnitPrice	28.8
289	Quantity	15
289	Discount	0.0
290	OrderID	10297
290	ProductID	39
290	UnitPrice	14.4
290	Quantity	60
290	Discount	0.0
291	OrderID	10297
291	ProductID	72
291	UnitPrice	27.8
291	Quantity	20
291	Discount	0.0
292	OrderID	10298
292	ProductID	2
292	UnitPrice	15.2
292	Quantity	40
292	Discount	0.0
293	OrderID	10298
293	ProductID	36
293	UnitPrice	15.2
293	Quantity	40
293	Discount	0.25
294	OrderID	10298
294	ProductID	59
294	UnitPrice	44.0
294	Quantity	30
294	Discount	0.25
295	OrderID	10298
295	ProductID	62
295	UnitPrice	39.4
295	Quantity	15
295	Discount	0.0
296	OrderID	10299
296	ProductID	19
296	UnitPrice	7.3
296	Quantity	15
296	Discount	0.0
297	OrderID	10299
297	ProductID	70
297	UnitPrice	12.0
297	Quantity	20
297	Discount	0.0
298	OrderID	10300
298	ProductID	66
298	UnitPrice	13.6
298	Quantity	30
298	Discount	0.0
299	OrderID	10300
299	ProductID	68
299	UnitPrice	10.0
299	Quantity	20
299	Discount	0.0
300	OrderID	10301
300	ProductID	40
300	UnitPrice	14.7
300	Quantity	10
300	Discount	0.0
301	OrderID	10301
301	ProductID	56
301	UnitPrice	30.4
301	Quantity	20
301	Discount	0.0
302	OrderID	10302
302	ProductID	17
302	UnitPrice	31.2
302	Quantity	40
302	Discount	0.0
303	OrderID	10302
303	ProductID	28
303	UnitPrice	36.4
303	Quantity	28
303	Discount	0.0
304	OrderID	10302
304	ProductID	43
304	UnitPrice	36.8
304	Quantity	12
304	Discount	0.0
305	OrderID	10303
305	ProductID	40
305	UnitPrice	14.7
305	Quantity	40
305	Discount	0.1
306	OrderID	10303
306	ProductID	65
306	UnitPrice	16.8
306	Quantity	30
306	Discount	0.1
307	OrderID	10303
307	ProductID	68
307	UnitPrice	10.0
307	Quantity	15
307	Discount	0.1
308	OrderID	10304
308	ProductID	49
308	UnitPrice	16.0
308	Quantity	30
308	Discount	0.0
309	OrderID	10304
309	ProductID	59
309	UnitPrice	44.0
309	Quantity	10
309	Discount	0.0
310	OrderID	10304
310	ProductID	71
310	UnitPrice	17.2
310	Quantity	2
310	Discount	0.0
311	OrderID	10305
311	ProductID	18
311	UnitPrice	50.0
311	Quantity	25
311	Discount	0.1
312	OrderID	10305
312	ProductID	29
312	UnitPrice	99.0
312	Quantity	25
312	Discount	0.1
313	OrderID	10305
313	ProductID	39
313	UnitPrice	14.4
313	Quantity	30
313	Discount	0.1
314	OrderID	10306
314	ProductID	30
314	UnitPrice	20.7
314	Quantity	10
314	Discount	0.0
315	OrderID	10306
315	ProductID	53
315	UnitPrice	26.2
315	Quantity	10
315	Discount	0.0
316	OrderID	10306
316	ProductID	54
316	UnitPrice	5.9
316	Quantity	5
316	Discount	0.0
317	OrderID	10307
317	ProductID	62
317	UnitPrice	39.4
317	Quantity	10
317	Discount	0.0
318	OrderID	10307
318	ProductID	68
318	UnitPrice	10.0
318	Quantity	3
318	Discount	0.0
319	OrderID	10308
319	ProductID	69
319	UnitPrice	28.8
319	Quantity	1
319	Discount	0.0
320	OrderID	10308
320	ProductID	70
320	UnitPrice	12.0
320	Quantity	5
320	Discount	0.0
321	OrderID	10309
321	ProductID	4
321	UnitPrice	17.6
321	Quantity	20
321	Discount	0.0
322	OrderID	10309
322	ProductID	6
322	UnitPrice	20.0
322	Quantity	30
322	Discount	0.0
323	OrderID	10309
323	ProductID	42
323	UnitPrice	11.2
323	Quantity	2
323	Discount	0.0
324	OrderID	10309
324	ProductID	43
324	UnitPrice	36.8
324	Quantity	20
324	Discount	0.0
325	OrderID	10309
325	ProductID	71
325	UnitPrice	17.2
325	Quantity	3
325	Discount	0.0
326	OrderID	10310
326	ProductID	16
326	UnitPrice	13.9
326	Quantity	10
326	Discount	0.0
327	OrderID	10310
327	ProductID	62
327	UnitPrice	39.4
327	Quantity	5
327	Discount	0.0
328	OrderID	10311
328	ProductID	42
328	UnitPrice	11.2
328	Quantity	6
328	Discount	0.0
329	OrderID	10311
329	ProductID	69
329	UnitPrice	28.8
329	Quantity	7
329	Discount	0.0
330	OrderID	10312
330	ProductID	28
330	UnitPrice	36.4
330	Quantity	4
330	Discount	0.0
331	OrderID	10312
331	ProductID	43
331	UnitPrice	36.8
331	Quantity	24
331	Discount	0.0
332	OrderID	10312
332	ProductID	53
332	UnitPrice	26.2
332	Quantity	20
332	Discount	0.0
333	OrderID	10312
333	ProductID	75
333	UnitPrice	6.2
333	Quantity	10
333	Discount	0.0
334	OrderID	10313
334	ProductID	36
334	UnitPrice	15.2
334	Quantity	12
334	Discount	0.0
335	OrderID	10314
335	ProductID	32
335	UnitPrice	25.6
335	Quantity	40
335	Discount	0.1
336	OrderID	10314
336	ProductID	58
336	UnitPrice	10.6
336	Quantity	30
336	Discount	0.1
337	OrderID	10314
337	ProductID	62
337	UnitPrice	39.4
337	Quantity	25
337	Discount	0.1
338	OrderID	10315
338	ProductID	34
338	UnitPrice	11.2
338	Quantity	14
338	Discount	0.0
339	OrderID	10315
339	ProductID	70
339	UnitPrice	12.0
339	Quantity	30
339	Discount	0.0
340	OrderID	10316
340	ProductID	41
340	UnitPrice	7.7
340	Quantity	10
340	Discount	0.0
341	OrderID	10316
341	ProductID	62
341	UnitPrice	39.4
341	Quantity	70
341	Discount	0.0
342	OrderID	10317
342	ProductID	1
342	UnitPrice	14.4
342	Quantity	20
342	Discount	0.0
343	OrderID	10318
343	ProductID	41
343	UnitPrice	7.7
343	Quantity	20
343	Discount	0.0
344	OrderID	10318
344	ProductID	76
344	UnitPrice	14.4
344	Quantity	6
344	Discount	0.0
345	OrderID	10319
345	ProductID	17
345	UnitPrice	31.2
345	Quantity	8
345	Discount	0.0
346	OrderID	10319
346	ProductID	28
346	UnitPrice	36.4
346	Quantity	14
346	Discount	0.0
347	OrderID	10319
347	ProductID	76
347	UnitPrice	14.4
347	Quantity	30
347	Discount	0.0
348	OrderID	10320
348	ProductID	71
348	UnitPrice	17.2
348	Quantity	30
348	Discount	0.0
349	OrderID	10321
349	ProductID	35
349	UnitPrice	14.4
349	Quantity	10
349	Discount	0.0
350	OrderID	10322
350	ProductID	52
350	UnitPrice	5.6
350	Quantity	20
350	Discount	0.0
351	OrderID	10323
351	ProductID	15
351	UnitPrice	12.4
351	Quantity	5
351	Discount	0.0
352	OrderID	10323
352	ProductID	25
352	UnitPrice	11.2
352	Quantity	4
352	Discount	0.0
353	OrderID	10323
353	ProductID	39
353	UnitPrice	14.4
353	Quantity	4
353	Discount	0.0
354	OrderID	10324
354	ProductID	16
354	UnitPrice	13.9
354	Quantity	21
354	Discount	0.15
355	OrderID	10324
355	ProductID	35
355	UnitPrice	14.4
355	Quantity	70
355	Discount	0.15
356	OrderID	10324
356	ProductID	46
356	UnitPrice	9.6
356	Quantity	30
356	Discount	0.0
357	OrderID	10324
357	ProductID	59
357	UnitPrice	44.0
357	Quantity	40
357	Discount	0.15
358	OrderID	10324
358	ProductID	63
358	UnitPrice	35.1
358	Quantity	80
358	Discount	0.15
359	OrderID	10325
359	ProductID	6
359	UnitPrice	20.0
359	Quantity	6
359	Discount	0.0
360	OrderID	10325
360	ProductID	13
360	UnitPrice	4.8
360	Quantity	12
360	Discount	0.0
361	OrderID	10325
361	ProductID	14
361	UnitPrice	18.6
361	Quantity	9
361	Discount	0.0
362	OrderID	10325
362	ProductID	31
362	UnitPrice	10.0
362	Quantity	4
362	Discount	0.0
363	OrderID	10325
363	ProductID	72
363	UnitPrice	27.8
363	Quantity	40
363	Discount	0.0
364	OrderID	10326
364	ProductID	4
364	UnitPrice	17.6
364	Quantity	24
364	Discount	0.0
365	OrderID	10326
365	ProductID	57
365	UnitPrice	15.6
365	Quantity	16
365	Discount	0.0
366	OrderID	10326
366	ProductID	75
366	UnitPrice	6.2
366	Quantity	50
366	Discount	0.0
367	OrderID	10327
367	ProductID	2
367	UnitPrice	15.2
367	Quantity	25
367	Discount	0.2
368	OrderID	10327
368	ProductID	11
368	UnitPrice	16.8
368	Quantity	50
368	Discount	0.2
369	OrderID	10327
369	ProductID	30
369	UnitPrice	20.7
369	Quantity	35
369	Discount	0.2
370	OrderID	10327
370	ProductID	58
370	UnitPrice	10.6
370	Quantity	30
370	Discount	0.2
371	OrderID	10328
371	ProductID	59
371	UnitPrice	44.0
371	Quantity	9
371	Discount	0.0
372	OrderID	10328
372	ProductID	65
372	UnitPrice	16.8
372	Quantity	40
372	Discount	0.0
373	OrderID	10328
373	ProductID	68
373	UnitPrice	10.0
373	Quantity	10
373	Discount	0.0
374	OrderID	10329
374	ProductID	19
374	UnitPrice	7.3
374	Quantity	10
374	Discount	0.05
375	OrderID	10329
375	ProductID	30
375	UnitPrice	20.7
375	Quantity	8
375	Discount	0.05
376	OrderID	10329
376	ProductID	38
376	UnitPrice	210.8
376	Quantity	20
376	Discount	0.05
377	OrderID	10329
377	ProductID	56
377	UnitPrice	30.4
377	Quantity	12
377	Discount	0.05
378	OrderID	10330
378	ProductID	26
378	UnitPrice	24.9
378	Quantity	50
378	Discount	0.15
379	OrderID	10330
379	ProductID	72
379	UnitPrice	27.8
379	Quantity	25
379	Discount	0.15
380	OrderID	10331
380	ProductID	54
380	UnitPrice	5.9
380	Quantity	15
380	Discount	0.0
381	OrderID	10332
381	ProductID	18
381	UnitPrice	50.0
381	Quantity	40
381	Discount	0.2
382	OrderID	10332
382	ProductID	42
382	UnitPrice	11.2
382	Quantity	10
382	Discount	0.2
383	OrderID	10332
383	ProductID	47
383	UnitPrice	7.6
383	Quantity	16
383	Discount	0.2
384	OrderID	10333
384	ProductID	14
384	UnitPrice	18.6
384	Quantity	10
384	Discount	0.0
385	OrderID	10333
385	ProductID	21
385	UnitPrice	8.0
385	Quantity	10
385	Discount	0.1
386	OrderID	10333
386	ProductID	71
386	UnitPrice	17.2
386	Quantity	40
386	Discount	0.1
387	OrderID	10334
387	ProductID	52
387	UnitPrice	5.6
387	Quantity	8
387	Discount	0.0
388	OrderID	10334
388	ProductID	68
388	UnitPrice	10.0
388	Quantity	10
388	Discount	0.0
389	OrderID	10335
389	ProductID	2
389	UnitPrice	15.2
389	Quantity	7
389	Discount	0.2
390	OrderID	10335
390	ProductID	31
390	UnitPrice	10.0
390	Quantity	25
390	Discount	0.2
391	OrderID	10335
391	ProductID	32
391	UnitPrice	25.6
391	Quantity	6
391	Discount	0.2
392	OrderID	10335
392	ProductID	51
392	UnitPrice	42.4
392	Quantity	48
392	Discount	0.2
393	OrderID	10336
393	ProductID	4
393	UnitPrice	17.6
393	Quantity	18
393	Discount	0.1
394	OrderID	10337
394	ProductID	23
394	UnitPrice	7.2
394	Quantity	40
394	Discount	0.0
395	OrderID	10337
395	ProductID	26
395	UnitPrice	24.9
395	Quantity	24
395	Discount	0.0
396	OrderID	10337
396	ProductID	36
396	UnitPrice	15.2
396	Quantity	20
396	Discount	0.0
397	OrderID	10337
397	ProductID	37
397	UnitPrice	20.8
397	Quantity	28
397	Discount	0.0
398	OrderID	10337
398	ProductID	72
398	UnitPrice	27.8
398	Quantity	25
398	Discount	0.0
399	OrderID	10338
399	ProductID	17
399	UnitPrice	31.2
399	Quantity	20
399	Discount	0.0
400	OrderID	10338
400	ProductID	30
400	UnitPrice	20.7
400	Quantity	15
400	Discount	0.0
401	OrderID	10339
401	ProductID	4
401	UnitPrice	17.6
401	Quantity	10
401	Discount	0.0
402	OrderID	10339
402	ProductID	17
402	UnitPrice	31.2
402	Quantity	70
402	Discount	0.05
403	OrderID	10339
403	ProductID	62
403	UnitPrice	39.4
403	Quantity	28
403	Discount	0.0
404	OrderID	10340
404	ProductID	18
404	UnitPrice	50.0
404	Quantity	20
404	Discount	0.05
405	OrderID	10340
405	ProductID	41
405	UnitPrice	7.7
405	Quantity	12
405	Discount	0.05
406	OrderID	10340
406	ProductID	43
406	UnitPrice	36.8
406	Quantity	40
406	Discount	0.05
407	OrderID	10341
407	ProductID	33
407	UnitPrice	2.0
407	Quantity	8
407	Discount	0.0
408	OrderID	10341
408	ProductID	59
408	UnitPrice	44.0
408	Quantity	9
408	Discount	0.15
409	OrderID	10342
409	ProductID	2
409	UnitPrice	15.2
409	Quantity	24
409	Discount	0.2
410	OrderID	10342
410	ProductID	31
410	UnitPrice	10.0
410	Quantity	56
410	Discount	0.2
411	OrderID	10342
411	ProductID	36
411	UnitPrice	15.2
411	Quantity	40
411	Discount	0.2
412	OrderID	10342
412	ProductID	55
412	UnitPrice	19.2
412	Quantity	40
412	Discount	0.2
413	OrderID	10343
413	ProductID	64
413	UnitPrice	26.6
413	Quantity	50
413	Discount	0.0
414	OrderID	10343
414	ProductID	68
414	UnitPrice	10.0
414	Quantity	4
414	Discount	0.05
415	OrderID	10343
415	ProductID	76
415	UnitPrice	14.4
415	Quantity	15
415	Discount	0.0
416	OrderID	10344
416	ProductID	4
416	UnitPrice	17.6
416	Quantity	35
416	Discount	0.0
417	OrderID	10344
417	ProductID	8
417	UnitPrice	32.0
417	Quantity	70
417	Discount	0.25
418	OrderID	10345
418	ProductID	8
418	UnitPrice	32.0
418	Quantity	70
418	Discount	0.0
419	OrderID	10345
419	ProductID	19
419	UnitPrice	7.3
419	Quantity	80
419	Discount	0.0
420	OrderID	10345
420	ProductID	42
420	UnitPrice	11.2
420	Quantity	9
420	Discount	0.0
421	OrderID	10346
421	ProductID	17
421	UnitPrice	31.2
421	Quantity	36
421	Discount	0.1
422	OrderID	10346
422	ProductID	56
422	UnitPrice	30.4
422	Quantity	20
422	Discount	0.0
423	OrderID	10347
423	ProductID	25
423	UnitPrice	11.2
423	Quantity	10
423	Discount	0.0
424	OrderID	10347
424	ProductID	39
424	UnitPrice	14.4
424	Quantity	50
424	Discount	0.15
425	OrderID	10347
425	ProductID	40
425	UnitPrice	14.7
425	Quantity	4
425	Discount	0.0
426	OrderID	10347
426	ProductID	75
426	UnitPrice	6.2
426	Quantity	6
426	Discount	0.15
427	OrderID	10348
427	ProductID	1
427	UnitPrice	14.4
427	Quantity	15
427	Discount	0.15
428	OrderID	10348
428	ProductID	23
428	UnitPrice	7.2
428	Quantity	25
428	Discount	0.0
429	OrderID	10349
429	ProductID	54
429	UnitPrice	5.9
429	Quantity	24
429	Discount	0.0
430	OrderID	10350
430	ProductID	50
430	UnitPrice	13.0
430	Quantity	15
430	Discount	0.1
431	OrderID	10350
431	ProductID	69
431	UnitPrice	28.8
431	Quantity	18
431	Discount	0.1
432	OrderID	10351
432	ProductID	38
432	UnitPrice	210.8
432	Quantity	20
432	Discount	0.05
433	OrderID	10351
433	ProductID	41
433	UnitPrice	7.7
433	Quantity	13
433	Discount	0.0
434	OrderID	10351
434	ProductID	44
434	UnitPrice	15.5
434	Quantity	77
434	Discount	0.05
435	OrderID	10351
435	ProductID	65
435	UnitPrice	16.8
435	Quantity	10
435	Discount	0.05
436	OrderID	10352
436	ProductID	24
436	UnitPrice	3.6
436	Quantity	10
436	Discount	0.0
437	OrderID	10352
437	ProductID	54
437	UnitPrice	5.9
437	Quantity	20
437	Discount	0.15
438	OrderID	10353
438	ProductID	11
438	UnitPrice	16.8
438	Quantity	12
438	Discount	0.2
439	OrderID	10353
439	ProductID	38
439	UnitPrice	210.8
439	Quantity	50
439	Discount	0.2
440	OrderID	10354
440	ProductID	1
440	UnitPrice	14.4
440	Quantity	12
440	Discount	0.0
441	OrderID	10354
441	ProductID	29
441	UnitPrice	99.0
441	Quantity	4
441	Discount	0.0
442	OrderID	10355
442	ProductID	24
442	UnitPrice	3.6
442	Quantity	25
442	Discount	0.0
443	OrderID	10355
443	ProductID	57
443	UnitPrice	15.6
443	Quantity	25
443	Discount	0.0
444	OrderID	10356
444	ProductID	31
444	UnitPrice	10.0
444	Quantity	30
444	Discount	0.0
445	OrderID	10356
445	ProductID	55
445	UnitPrice	19.2
445	Quantity	12
445	Discount	0.0
446	OrderID	10356
446	ProductID	69
446	UnitPrice	28.8
446	Quantity	20
446	Discount	0.0
447	OrderID	10357
447	ProductID	10
447	UnitPrice	24.8
447	Quantity	30
447	Discount	0.2
448	OrderID	10357
448	ProductID	26
448	UnitPrice	24.9
448	Quantity	16
448	Discount	0.0
449	OrderID	10357
449	ProductID	60
449	UnitPrice	27.2
449	Quantity	8
449	Discount	0.2
450	OrderID	10358
450	ProductID	24
450	UnitPrice	3.6
450	Quantity	10
450	Discount	0.05
451	OrderID	10358
451	ProductID	34
451	UnitPrice	11.2
451	Quantity	10
451	Discount	0.05
452	OrderID	10358
452	ProductID	36
452	UnitPrice	15.2
452	Quantity	20
452	Discount	0.05
453	OrderID	10359
453	ProductID	16
453	UnitPrice	13.9
453	Quantity	56
453	Discount	0.05
454	OrderID	10359
454	ProductID	31
454	UnitPrice	10.0
454	Quantity	70
454	Discount	0.05
455	OrderID	10359
455	ProductID	60
455	UnitPrice	27.2
455	Quantity	80
455	Discount	0.05
456	OrderID	10360
456	ProductID	28
456	UnitPrice	36.4
456	Quantity	30
456	Discount	0.0
457	OrderID	10360
457	ProductID	29
457	UnitPrice	99.0
457	Quantity	35
457	Discount	0.0
458	OrderID	10360
458	ProductID	38
458	UnitPrice	210.8
458	Quantity	10
458	Discount	0.0
459	OrderID	10360
459	ProductID	49
459	UnitPrice	16.0
459	Quantity	35
459	Discount	0.0
460	OrderID	10360
460	ProductID	54
460	UnitPrice	5.9
460	Quantity	28
460	Discount	0.0
461	OrderID	10361
461	ProductID	39
461	UnitPrice	14.4
461	Quantity	54
461	Discount	0.1
462	OrderID	10361
462	ProductID	60
462	UnitPrice	27.2
462	Quantity	55
462	Discount	0.1
463	OrderID	10362
463	ProductID	25
463	UnitPrice	11.2
463	Quantity	50
463	Discount	0.0
464	OrderID	10362
464	ProductID	51
464	UnitPrice	42.4
464	Quantity	20
464	Discount	0.0
465	OrderID	10362
465	ProductID	54
465	UnitPrice	5.9
465	Quantity	24
465	Discount	0.0
466	OrderID	10363
466	ProductID	31
466	UnitPrice	10.0
466	Quantity	20
466	Discount	0.0
467	OrderID	10363
467	ProductID	75
467	UnitPrice	6.2
467	Quantity	12
467	Discount	0.0
468	OrderID	10363
468	ProductID	76
468	UnitPrice	14.4
468	Quantity	12
468	Discount	0.0
469	OrderID	10364
469	ProductID	69
469	UnitPrice	28.8
469	Quantity	30
469	Discount	0.0
470	OrderID	10364
470	ProductID	71
470	UnitPrice	17.2
470	Quantity	5
470	Discount	0.0
471	OrderID	10365
471	ProductID	11
471	UnitPrice	16.8
471	Quantity	24
471	Discount	0.0
472	OrderID	10366
472	ProductID	65
472	UnitPrice	16.8
472	Quantity	5
472	Discount	0.0
473	OrderID	10366
473	ProductID	77
473	UnitPrice	10.4
473	Quantity	5
473	Discount	0.0
474	OrderID	10367
474	ProductID	34
474	UnitPrice	11.2
474	Quantity	36
474	Discount	0.0
475	OrderID	10367
475	ProductID	54
475	UnitPrice	5.9
475	Quantity	18
475	Discount	0.0
476	OrderID	10367
476	ProductID	65
476	UnitPrice	16.8
476	Quantity	15
476	Discount	0.0
477	OrderID	10367
477	ProductID	77
477	UnitPrice	10.4
477	Quantity	7
477	Discount	0.0
478	OrderID	10368
478	ProductID	21
478	UnitPrice	8.0
478	Quantity	5
478	Discount	0.1
479	OrderID	10368
479	ProductID	28
479	UnitPrice	36.4
479	Quantity	13
479	Discount	0.1
480	OrderID	10368
480	ProductID	57
480	UnitPrice	15.6
480	Quantity	25
480	Discount	0.0
481	OrderID	10368
481	ProductID	64
481	UnitPrice	26.6
481	Quantity	35
481	Discount	0.1
482	OrderID	10369
482	ProductID	29
482	UnitPrice	99.0
482	Quantity	20
482	Discount	0.0
483	OrderID	10369
483	ProductID	56
483	UnitPrice	30.4
483	Quantity	18
483	Discount	0.25
484	OrderID	10370
484	ProductID	1
484	UnitPrice	14.4
484	Quantity	15
484	Discount	0.15
485	OrderID	10370
485	ProductID	64
485	UnitPrice	26.6
485	Quantity	30
485	Discount	0.0
486	OrderID	10370
486	ProductID	74
486	UnitPrice	8.0
486	Quantity	20
486	Discount	0.15
487	OrderID	10371
487	ProductID	36
487	UnitPrice	15.2
487	Quantity	6
487	Discount	0.2
488	OrderID	10372
488	ProductID	20
488	UnitPrice	64.8
488	Quantity	12
488	Discount	0.25
489	OrderID	10372
489	ProductID	38
489	UnitPrice	210.8
489	Quantity	40
489	Discount	0.25
490	OrderID	10372
490	ProductID	60
490	UnitPrice	27.2
490	Quantity	70
490	Discount	0.25
491	OrderID	10372
491	ProductID	72
491	UnitPrice	27.8
491	Quantity	42
491	Discount	0.25
492	OrderID	10373
492	ProductID	58
492	UnitPrice	10.6
492	Quantity	80
492	Discount	0.2
493	OrderID	10373
493	ProductID	71
493	UnitPrice	17.2
493	Quantity	50
493	Discount	0.2
494	OrderID	10374
494	ProductID	31
494	UnitPrice	10.0
494	Quantity	30
494	Discount	0.0
495	OrderID	10374
495	ProductID	58
495	UnitPrice	10.6
495	Quantity	15
495	Discount	0.0
496	OrderID	10375
496	ProductID	14
496	UnitPrice	18.6
496	Quantity	15
496	Discount	0.0
497	OrderID	10375
497	ProductID	54
497	UnitPrice	5.9
497	Quantity	10
497	Discount	0.0
498	OrderID	10376
498	ProductID	31
498	UnitPrice	10.0
498	Quantity	42
498	Discount	0.05
499	OrderID	10377
499	ProductID	28
499	UnitPrice	36.4
499	Quantity	20
499	Discount	0.15
500	OrderID	10377
500	ProductID	39
500	UnitPrice	14.4
500	Quantity	20
500	Discount	0.15
501	OrderID	10378
501	ProductID	71
501	UnitPrice	17.2
501	Quantity	6
501	Discount	0.0
502	OrderID	10379
502	ProductID	41
502	UnitPrice	7.7
502	Quantity	8
502	Discount	0.1
503	OrderID	10379
503	ProductID	63
503	UnitPrice	35.1
503	Quantity	16
503	Discount	0.1
504	OrderID	10379
504	ProductID	65
504	UnitPrice	16.8
504	Quantity	20
504	Discount	0.1
505	OrderID	10380
505	ProductID	30
505	UnitPrice	20.7
505	Quantity	18
505	Discount	0.1
506	OrderID	10380
506	ProductID	53
506	UnitPrice	26.2
506	Quantity	20
506	Discount	0.1
507	OrderID	10380
507	ProductID	60
507	UnitPrice	27.2
507	Quantity	6
507	Discount	0.1
508	OrderID	10380
508	ProductID	70
508	UnitPrice	12.0
508	Quantity	30
508	Discount	0.0
509	OrderID	10381
509	ProductID	74
509	UnitPrice	8.0
509	Quantity	14
509	Discount	0.0
510	OrderID	10382
510	ProductID	5
510	UnitPrice	17.0
510	Quantity	32
510	Discount	0.0
511	OrderID	10382
511	ProductID	18
511	UnitPrice	50.0
511	Quantity	9
511	Discount	0.0
512	OrderID	10382
512	ProductID	29
512	UnitPrice	99.0
512	Quantity	14
512	Discount	0.0
513	OrderID	10382
513	ProductID	33
513	UnitPrice	2.0
513	Quantity	60
513	Discount	0.0
514	OrderID	10382
514	ProductID	74
514	UnitPrice	8.0
514	Quantity	50
514	Discount	0.0
515	OrderID	10383
515	ProductID	13
515	UnitPrice	4.8
515	Quantity	20
515	Discount	0.0
516	OrderID	10383
516	ProductID	50
516	UnitPrice	13.0
516	Quantity	15
516	Discount	0.0
517	OrderID	10383
517	ProductID	56
517	UnitPrice	30.4
517	Quantity	20
517	Discount	0.0
518	OrderID	10384
518	ProductID	20
518	UnitPrice	64.8
518	Quantity	28
518	Discount	0.0
519	OrderID	10384
519	ProductID	60
519	UnitPrice	27.2
519	Quantity	15
519	Discount	0.0
520	OrderID	10385
520	ProductID	7
520	UnitPrice	24.0
520	Quantity	10
520	Discount	0.2
521	OrderID	10385
521	ProductID	60
521	UnitPrice	27.2
521	Quantity	20
521	Discount	0.2
522	OrderID	10385
522	ProductID	68
522	UnitPrice	10.0
522	Quantity	8
522	Discount	0.2
523	OrderID	10386
523	ProductID	24
523	UnitPrice	3.6
523	Quantity	15
523	Discount	0.0
524	OrderID	10386
524	ProductID	34
524	UnitPrice	11.2
524	Quantity	10
524	Discount	0.0
525	OrderID	10387
525	ProductID	24
525	UnitPrice	3.6
525	Quantity	15
525	Discount	0.0
526	OrderID	10387
526	ProductID	28
526	UnitPrice	36.4
526	Quantity	6
526	Discount	0.0
527	OrderID	10387
527	ProductID	59
527	UnitPrice	44.0
527	Quantity	12
527	Discount	0.0
528	OrderID	10387
528	ProductID	71
528	UnitPrice	17.2
528	Quantity	15
528	Discount	0.0
529	OrderID	10388
529	ProductID	45
529	UnitPrice	7.6
529	Quantity	15
529	Discount	0.2
530	OrderID	10388
530	ProductID	52
530	UnitPrice	5.6
530	Quantity	20
530	Discount	0.2
531	OrderID	10388
531	ProductID	53
531	UnitPrice	26.2
531	Quantity	40
531	Discount	0.0
532	OrderID	10389
532	ProductID	10
532	UnitPrice	24.8
532	Quantity	16
532	Discount	0.0
533	OrderID	10389
533	ProductID	55
533	UnitPrice	19.2
533	Quantity	15
533	Discount	0.0
534	OrderID	10389
534	ProductID	62
534	UnitPrice	39.4
534	Quantity	20
534	Discount	0.0
535	OrderID	10389
535	ProductID	70
535	UnitPrice	12.0
535	Quantity	30
535	Discount	0.0
536	OrderID	10390
536	ProductID	31
536	UnitPrice	10.0
536	Quantity	60
536	Discount	0.1
537	OrderID	10390
537	ProductID	35
537	UnitPrice	14.4
537	Quantity	40
537	Discount	0.1
538	OrderID	10390
538	ProductID	46
538	UnitPrice	9.6
538	Quantity	45
538	Discount	0.0
539	OrderID	10390
539	ProductID	72
539	UnitPrice	27.8
539	Quantity	24
539	Discount	0.1
540	OrderID	10391
540	ProductID	13
540	UnitPrice	4.8
540	Quantity	18
540	Discount	0.0
541	OrderID	10392
541	ProductID	69
541	UnitPrice	28.8
541	Quantity	50
541	Discount	0.0
542	OrderID	10393
542	ProductID	2
542	UnitPrice	15.2
542	Quantity	25
542	Discount	0.25
543	OrderID	10393
543	ProductID	14
543	UnitPrice	18.6
543	Quantity	42
543	Discount	0.25
544	OrderID	10393
544	ProductID	25
544	UnitPrice	11.2
544	Quantity	7
544	Discount	0.25
545	OrderID	10393
545	ProductID	26
545	UnitPrice	24.9
545	Quantity	70
545	Discount	0.25
546	OrderID	10393
546	ProductID	31
546	UnitPrice	10.0
546	Quantity	32
546	Discount	0.0
547	OrderID	10394
547	ProductID	13
547	UnitPrice	4.8
547	Quantity	10
547	Discount	0.0
548	OrderID	10394
548	ProductID	62
548	UnitPrice	39.4
548	Quantity	10
548	Discount	0.0
549	OrderID	10395
549	ProductID	46
549	UnitPrice	9.6
549	Quantity	28
549	Discount	0.1
550	OrderID	10395
550	ProductID	53
550	UnitPrice	26.2
550	Quantity	70
550	Discount	0.1
551	OrderID	10395
551	ProductID	69
551	UnitPrice	28.8
551	Quantity	8
551	Discount	0.0
552	OrderID	10396
552	ProductID	23
552	UnitPrice	7.2
552	Quantity	40
552	Discount	0.0
553	OrderID	10396
553	ProductID	71
553	UnitPrice	17.2
553	Quantity	60
553	Discount	0.0
554	OrderID	10396
554	ProductID	72
554	UnitPrice	27.8
554	Quantity	21
554	Discount	0.0
555	OrderID	10397
555	ProductID	21
555	UnitPrice	8.0
555	Quantity	10
555	Discount	0.15
556	OrderID	10397
556	ProductID	51
556	UnitPrice	42.4
556	Quantity	18
556	Discount	0.15
557	OrderID	10398
557	ProductID	35
557	UnitPrice	14.4
557	Quantity	30
557	Discount	0.0
558	OrderID	10398
558	ProductID	55
558	UnitPrice	19.2
558	Quantity	120
558	Discount	0.1
559	OrderID	10399
559	ProductID	68
559	UnitPrice	10.0
559	Quantity	60
559	Discount	0.0
560	OrderID	10399
560	ProductID	71
560	UnitPrice	17.2
560	Quantity	30
560	Discount	0.0
561	OrderID	10399
561	ProductID	76
561	UnitPrice	14.4
561	Quantity	35
561	Discount	0.0
562	OrderID	10399
562	ProductID	77
562	UnitPrice	10.4
562	Quantity	14
562	Discount	0.0
563	OrderID	10400
563	ProductID	29
563	UnitPrice	99.0
563	Quantity	21
563	Discount	0.0
564	OrderID	10400
564	ProductID	35
564	UnitPrice	14.4
564	Quantity	35
564	Discount	0.0
565	OrderID	10400
565	ProductID	49
565	UnitPrice	16.0
565	Quantity	30
565	Discount	0.0
566	OrderID	10401
566	ProductID	30
566	UnitPrice	20.7
566	Quantity	18
566	Discount	0.0
567	OrderID	10401
567	ProductID	56
567	UnitPrice	30.4
567	Quantity	70
567	Discount	0.0
568	OrderID	10401
568	ProductID	65
568	UnitPrice	16.8
568	Quantity	20
568	Discount	0.0
569	OrderID	10401
569	ProductID	71
569	UnitPrice	17.2
569	Quantity	60
569	Discount	0.0
570	OrderID	10402
570	ProductID	23
570	UnitPrice	7.2
570	Quantity	60
570	Discount	0.0
571	OrderID	10402
571	ProductID	63
571	UnitPrice	35.1
571	Quantity	65
571	Discount	0.0
572	OrderID	10403
572	ProductID	16
572	UnitPrice	13.9
572	Quantity	21
572	Discount	0.15
573	OrderID	10403
573	ProductID	48
573	UnitPrice	10.2
573	Quantity	70
573	Discount	0.15
574	OrderID	10404
574	ProductID	26
574	UnitPrice	24.9
574	Quantity	30
574	Discount	0.05
575	OrderID	10404
575	ProductID	42
575	UnitPrice	11.2
575	Quantity	40
575	Discount	0.05
576	OrderID	10404
576	ProductID	49
576	UnitPrice	16.0
576	Quantity	30
576	Discount	0.05
577	OrderID	10405
577	ProductID	3
577	UnitPrice	8.0
577	Quantity	50
577	Discount	0.0
578	OrderID	10406
578	ProductID	1
578	UnitPrice	14.4
578	Quantity	10
578	Discount	0.0
579	OrderID	10406
579	ProductID	21
579	UnitPrice	8.0
579	Quantity	30
579	Discount	0.1
580	OrderID	10406
580	ProductID	28
580	UnitPrice	36.4
580	Quantity	42
580	Discount	0.1
581	OrderID	10406
581	ProductID	36
581	UnitPrice	15.2
581	Quantity	5
581	Discount	0.1
582	OrderID	10406
582	ProductID	40
582	UnitPrice	14.7
582	Quantity	2
582	Discount	0.1
583	OrderID	10407
583	ProductID	11
583	UnitPrice	16.8
583	Quantity	30
583	Discount	0.0
584	OrderID	10407
584	ProductID	69
584	UnitPrice	28.8
584	Quantity	15
584	Discount	0.0
585	OrderID	10407
585	ProductID	71
585	UnitPrice	17.2
585	Quantity	15
585	Discount	0.0
586	OrderID	10408
586	ProductID	37
586	UnitPrice	20.8
586	Quantity	10
586	Discount	0.0
587	OrderID	10408
587	ProductID	54
587	UnitPrice	5.9
587	Quantity	6
587	Discount	0.0
588	OrderID	10408
588	ProductID	62
588	UnitPrice	39.4
588	Quantity	35
588	Discount	0.0
589	OrderID	10409
589	ProductID	14
589	UnitPrice	18.6
589	Quantity	12
589	Discount	0.0
590	OrderID	10409
590	ProductID	21
590	UnitPrice	8.0
590	Quantity	12
590	Discount	0.0
591	OrderID	10410
591	ProductID	33
591	UnitPrice	2.0
591	Quantity	49
591	Discount	0.0
592	OrderID	10410
592	ProductID	59
592	UnitPrice	44.0
592	Quantity	16
592	Discount	0.0
593	OrderID	10411
593	ProductID	41
593	UnitPrice	7.7
593	Quantity	25
593	Discount	0.2
594	OrderID	10411
594	ProductID	44
594	UnitPrice	15.5
594	Quantity	40
594	Discount	0.2
595	OrderID	10411
595	ProductID	59
595	UnitPrice	44.0
595	Quantity	9
595	Discount	0.2
596	OrderID	10412
596	ProductID	14
596	UnitPrice	18.6
596	Quantity	20
596	Discount	0.1
597	OrderID	10413
597	ProductID	1
597	UnitPrice	14.4
597	Quantity	24
597	Discount	0.0
598	OrderID	10413
598	ProductID	62
598	UnitPrice	39.4
598	Quantity	40
598	Discount	0.0
599	OrderID	10413
599	ProductID	76
599	UnitPrice	14.4
599	Quantity	14
599	Discount	0.0
600	OrderID	10414
600	ProductID	19
600	UnitPrice	7.3
600	Quantity	18
600	Discount	0.05
601	OrderID	10414
601	ProductID	33
601	UnitPrice	2.0
601	Quantity	50
601	Discount	0.0
602	OrderID	10415
602	ProductID	17
602	UnitPrice	31.2
602	Quantity	2
602	Discount	0.0
603	OrderID	10415
603	ProductID	33
603	UnitPrice	2.0
603	Quantity	20
603	Discount	0.0
604	OrderID	10416
604	ProductID	19
604	UnitPrice	7.3
604	Quantity	20
604	Discount	0.0
605	OrderID	10416
605	ProductID	53
605	UnitPrice	26.2
605	Quantity	10
605	Discount	0.0
606	OrderID	10416
606	ProductID	57
606	UnitPrice	15.6
606	Quantity	20
606	Discount	0.0
607	OrderID	10417
607	ProductID	38
607	UnitPrice	210.8
607	Quantity	50
607	Discount	0.0
608	OrderID	10417
608	ProductID	46
608	UnitPrice	9.6
608	Quantity	2
608	Discount	0.25
609	OrderID	10417
609	ProductID	68
609	UnitPrice	10.0
609	Quantity	36
609	Discount	0.25
610	OrderID	10417
610	ProductID	77
610	UnitPrice	10.4
610	Quantity	35
610	Discount	0.0
611	OrderID	10418
611	ProductID	2
611	UnitPrice	15.2
611	Quantity	60
611	Discount	0.0
612	OrderID	10418
612	ProductID	47
612	UnitPrice	7.6
612	Quantity	55
612	Discount	0.0
613	OrderID	10418
613	ProductID	61
613	UnitPrice	22.8
613	Quantity	16
613	Discount	0.0
614	OrderID	10418
614	ProductID	74
614	UnitPrice	8.0
614	Quantity	15
614	Discount	0.0
615	OrderID	10419
615	ProductID	60
615	UnitPrice	27.2
615	Quantity	60
615	Discount	0.05
616	OrderID	10419
616	ProductID	69
616	UnitPrice	28.8
616	Quantity	20
616	Discount	0.05
617	OrderID	10420
617	ProductID	9
617	UnitPrice	77.6
617	Quantity	20
617	Discount	0.1
618	OrderID	10420
618	ProductID	13
618	UnitPrice	4.8
618	Quantity	2
618	Discount	0.1
619	OrderID	10420
619	ProductID	70
619	UnitPrice	12.0
619	Quantity	8
619	Discount	0.1
620	OrderID	10420
620	ProductID	73
620	UnitPrice	12.0
620	Quantity	20
620	Discount	0.1
621	OrderID	10421
621	ProductID	19
621	UnitPrice	7.3
621	Quantity	4
621	Discount	0.15
622	OrderID	10421
622	ProductID	26
622	UnitPrice	24.9
622	Quantity	30
622	Discount	0.0
623	OrderID	10421
623	ProductID	53
623	UnitPrice	26.2
623	Quantity	15
623	Discount	0.15
624	OrderID	10421
624	ProductID	77
624	UnitPrice	10.4
624	Quantity	10
624	Discount	0.15
625	OrderID	10422
625	ProductID	26
625	UnitPrice	24.9
625	Quantity	2
625	Discount	0.0
626	OrderID	10423
626	ProductID	31
626	UnitPrice	10.0
626	Quantity	14
626	Discount	0.0
627	OrderID	10423
627	ProductID	59
627	UnitPrice	44.0
627	Quantity	20
627	Discount	0.0
628	OrderID	10424
628	ProductID	35
628	UnitPrice	14.4
628	Quantity	60
628	Discount	0.2
629	OrderID	10424
629	ProductID	38
629	UnitPrice	210.8
629	Quantity	49
629	Discount	0.2
630	OrderID	10424
630	ProductID	68
630	UnitPrice	10.0
630	Quantity	30
630	Discount	0.2
631	OrderID	10425
631	ProductID	55
631	UnitPrice	19.2
631	Quantity	10
631	Discount	0.25
632	OrderID	10425
632	ProductID	76
632	UnitPrice	14.4
632	Quantity	20
632	Discount	0.25
633	OrderID	10426
633	ProductID	56
633	UnitPrice	30.4
633	Quantity	5
633	Discount	0.0
634	OrderID	10426
634	ProductID	64
634	UnitPrice	26.6
634	Quantity	7
634	Discount	0.0
635	OrderID	10427
635	ProductID	14
635	UnitPrice	18.6
635	Quantity	35
635	Discount	0.0
636	OrderID	10428
636	ProductID	46
636	UnitPrice	9.6
636	Quantity	20
636	Discount	0.0
637	OrderID	10429
637	ProductID	50
637	UnitPrice	13.0
637	Quantity	40
637	Discount	0.0
638	OrderID	10429
638	ProductID	63
638	UnitPrice	35.1
638	Quantity	35
638	Discount	0.25
639	OrderID	10430
639	ProductID	17
639	UnitPrice	31.2
639	Quantity	45
639	Discount	0.2
640	OrderID	10430
640	ProductID	21
640	UnitPrice	8.0
640	Quantity	50
640	Discount	0.0
641	OrderID	10430
641	ProductID	56
641	UnitPrice	30.4
641	Quantity	30
641	Discount	0.0
642	OrderID	10430
642	ProductID	59
642	UnitPrice	44.0
642	Quantity	70
642	Discount	0.2
643	OrderID	10431
643	ProductID	17
643	UnitPrice	31.2
643	Quantity	50
643	Discount	0.25
644	OrderID	10431
644	ProductID	40
644	UnitPrice	14.7
644	Quantity	50
644	Discount	0.25
645	OrderID	10431
645	ProductID	47
645	UnitPrice	7.6
645	Quantity	30
645	Discount	0.25
646	OrderID	10432
646	ProductID	26
646	UnitPrice	24.9
646	Quantity	10
646	Discount	0.0
647	OrderID	10432
647	ProductID	54
647	UnitPrice	5.9
647	Quantity	40
647	Discount	0.0
648	OrderID	10433
648	ProductID	56
648	UnitPrice	30.4
648	Quantity	28
648	Discount	0.0
649	OrderID	10434
649	ProductID	11
649	UnitPrice	16.8
649	Quantity	6
649	Discount	0.0
650	OrderID	10434
650	ProductID	76
650	UnitPrice	14.4
650	Quantity	18
650	Discount	0.15
651	OrderID	10435
651	ProductID	2
651	UnitPrice	15.2
651	Quantity	10
651	Discount	0.0
652	OrderID	10435
652	ProductID	22
652	UnitPrice	16.8
652	Quantity	12
652	Discount	0.0
653	OrderID	10435
653	ProductID	72
653	UnitPrice	27.8
653	Quantity	10
653	Discount	0.0
654	OrderID	10436
654	ProductID	46
654	UnitPrice	9.6
654	Quantity	5
654	Discount	0.0
655	OrderID	10436
655	ProductID	56
655	UnitPrice	30.4
655	Quantity	40
655	Discount	0.1
656	OrderID	10436
656	ProductID	64
656	UnitPrice	26.6
656	Quantity	30
656	Discount	0.1
657	OrderID	10436
657	ProductID	75
657	UnitPrice	6.2
657	Quantity	24
657	Discount	0.1
658	OrderID	10437
658	ProductID	53
658	UnitPrice	26.2
658	Quantity	15
658	Discount	0.0
659	OrderID	10438
659	ProductID	19
659	UnitPrice	7.3
659	Quantity	15
659	Discount	0.2
660	OrderID	10438
660	ProductID	34
660	UnitPrice	11.2
660	Quantity	20
660	Discount	0.2
661	OrderID	10438
661	ProductID	57
661	UnitPrice	15.6
661	Quantity	15
661	Discount	0.2
662	OrderID	10439
662	ProductID	12
662	UnitPrice	30.4
662	Quantity	15
662	Discount	0.0
663	OrderID	10439
663	ProductID	16
663	UnitPrice	13.9
663	Quantity	16
663	Discount	0.0
664	OrderID	10439
664	ProductID	64
664	UnitPrice	26.6
664	Quantity	6
664	Discount	0.0
665	OrderID	10439
665	ProductID	74
665	UnitPrice	8.0
665	Quantity	30
665	Discount	0.0
666	OrderID	10440
666	ProductID	2
666	UnitPrice	15.2
666	Quantity	45
666	Discount	0.15
667	OrderID	10440
667	ProductID	16
667	UnitPrice	13.9
667	Quantity	49
667	Discount	0.15
668	OrderID	10440
668	ProductID	29
668	UnitPrice	99.0
668	Quantity	24
668	Discount	0.15
669	OrderID	10440
669	ProductID	61
669	UnitPrice	22.8
669	Quantity	90
669	Discount	0.15
670	OrderID	10441
670	ProductID	27
670	UnitPrice	35.1
670	Quantity	50
670	Discount	0.0
671	OrderID	10442
671	ProductID	11
671	UnitPrice	16.8
671	Quantity	30
671	Discount	0.0
672	OrderID	10442
672	ProductID	54
672	UnitPrice	5.9
672	Quantity	80
672	Discount	0.0
673	OrderID	10442
673	ProductID	66
673	UnitPrice	13.6
673	Quantity	60
673	Discount	0.0
674	OrderID	10443
674	ProductID	11
674	UnitPrice	16.8
674	Quantity	6
674	Discount	0.2
675	OrderID	10443
675	ProductID	28
675	UnitPrice	36.4
675	Quantity	12
675	Discount	0.0
676	OrderID	10444
676	ProductID	17
676	UnitPrice	31.2
676	Quantity	10
676	Discount	0.0
677	OrderID	10444
677	ProductID	26
677	UnitPrice	24.9
677	Quantity	15
677	Discount	0.0
678	OrderID	10444
678	ProductID	35
678	UnitPrice	14.4
678	Quantity	8
678	Discount	0.0
679	OrderID	10444
679	ProductID	41
679	UnitPrice	7.7
679	Quantity	30
679	Discount	0.0
680	OrderID	10445
680	ProductID	39
680	UnitPrice	14.4
680	Quantity	6
680	Discount	0.0
681	OrderID	10445
681	ProductID	54
681	UnitPrice	5.9
681	Quantity	15
681	Discount	0.0
682	OrderID	10446
682	ProductID	19
682	UnitPrice	7.3
682	Quantity	12
682	Discount	0.1
683	OrderID	10446
683	ProductID	24
683	UnitPrice	3.6
683	Quantity	20
683	Discount	0.1
684	OrderID	10446
684	ProductID	31
684	UnitPrice	10.0
684	Quantity	3
684	Discount	0.1
685	OrderID	10446
685	ProductID	52
685	UnitPrice	5.6
685	Quantity	15
685	Discount	0.1
686	OrderID	10447
686	ProductID	19
686	UnitPrice	7.3
686	Quantity	40
686	Discount	0.0
687	OrderID	10447
687	ProductID	65
687	UnitPrice	16.8
687	Quantity	35
687	Discount	0.0
688	OrderID	10447
688	ProductID	71
688	UnitPrice	17.2
688	Quantity	2
688	Discount	0.0
689	OrderID	10448
689	ProductID	26
689	UnitPrice	24.9
689	Quantity	6
689	Discount	0.0
690	OrderID	10448
690	ProductID	40
690	UnitPrice	14.7
690	Quantity	20
690	Discount	0.0
691	OrderID	10449
691	ProductID	10
691	UnitPrice	24.8
691	Quantity	14
691	Discount	0.0
692	OrderID	10449
692	ProductID	52
692	UnitPrice	5.6
692	Quantity	20
692	Discount	0.0
693	OrderID	10449
693	ProductID	62
693	UnitPrice	39.4
693	Quantity	35
693	Discount	0.0
694	OrderID	10450
694	ProductID	10
694	UnitPrice	24.8
694	Quantity	20
694	Discount	0.2
695	OrderID	10450
695	ProductID	54
695	UnitPrice	5.9
695	Quantity	6
695	Discount	0.2
696	OrderID	10451
696	ProductID	55
696	UnitPrice	19.2
696	Quantity	120
696	Discount	0.1
697	OrderID	10451
697	ProductID	64
697	UnitPrice	26.6
697	Quantity	35
697	Discount	0.1
698	OrderID	10451
698	ProductID	65
698	UnitPrice	16.8
698	Quantity	28
698	Discount	0.1
699	OrderID	10451
699	ProductID	77
699	UnitPrice	10.4
699	Quantity	55
699	Discount	0.1
700	OrderID	10452
700	ProductID	28
700	UnitPrice	36.4
700	Quantity	15
700	Discount	0.0
701	OrderID	10452
701	ProductID	44
701	UnitPrice	15.5
701	Quantity	100
701	Discount	0.05
702	OrderID	10453
702	ProductID	48
702	UnitPrice	10.2
702	Quantity	15
702	Discount	0.1
703	OrderID	10453
703	ProductID	70
703	UnitPrice	12.0
703	Quantity	25
703	Discount	0.1
704	OrderID	10454
704	ProductID	16
704	UnitPrice	13.9
704	Quantity	20
704	Discount	0.2
705	OrderID	10454
705	ProductID	33
705	UnitPrice	2.0
705	Quantity	20
705	Discount	0.2
706	OrderID	10454
706	ProductID	46
706	UnitPrice	9.6
706	Quantity	10
706	Discount	0.2
707	OrderID	10455
707	ProductID	39
707	UnitPrice	14.4
707	Quantity	20
707	Discount	0.0
708	OrderID	10455
708	ProductID	53
708	UnitPrice	26.2
708	Quantity	50
708	Discount	0.0
709	OrderID	10455
709	ProductID	61
709	UnitPrice	22.8
709	Quantity	25
709	Discount	0.0
710	OrderID	10455
710	ProductID	71
710	UnitPrice	17.2
710	Quantity	30
710	Discount	0.0
711	OrderID	10456
711	ProductID	21
711	UnitPrice	8.0
711	Quantity	40
711	Discount	0.15
712	OrderID	10456
712	ProductID	49
712	UnitPrice	16.0
712	Quantity	21
712	Discount	0.15
713	OrderID	10457
713	ProductID	59
713	UnitPrice	44.0
713	Quantity	36
713	Discount	0.0
714	OrderID	10458
714	ProductID	26
714	UnitPrice	24.9
714	Quantity	30
714	Discount	0.0
715	OrderID	10458
715	ProductID	28
715	UnitPrice	36.4
715	Quantity	30
715	Discount	0.0
716	OrderID	10458
716	ProductID	43
716	UnitPrice	36.8
716	Quantity	20
716	Discount	0.0
717	OrderID	10458
717	ProductID	56
717	UnitPrice	30.4
717	Quantity	15
717	Discount	0.0
718	OrderID	10458
718	ProductID	71
718	UnitPrice	17.2
718	Quantity	50
718	Discount	0.0
719	OrderID	10459
719	ProductID	7
719	UnitPrice	24.0
719	Quantity	16
719	Discount	0.05
720	OrderID	10459
720	ProductID	46
720	UnitPrice	9.6
720	Quantity	20
720	Discount	0.05
721	OrderID	10459
721	ProductID	72
721	UnitPrice	27.8
721	Quantity	40
721	Discount	0.0
722	OrderID	10460
722	ProductID	68
722	UnitPrice	10.0
722	Quantity	21
722	Discount	0.25
723	OrderID	10460
723	ProductID	75
723	UnitPrice	6.2
723	Quantity	4
723	Discount	0.25
724	OrderID	10461
724	ProductID	21
724	UnitPrice	8.0
724	Quantity	40
724	Discount	0.25
725	OrderID	10461
725	ProductID	30
725	UnitPrice	20.7
725	Quantity	28
725	Discount	0.25
726	OrderID	10461
726	ProductID	55
726	UnitPrice	19.2
726	Quantity	60
726	Discount	0.25
727	OrderID	10462
727	ProductID	13
727	UnitPrice	4.8
727	Quantity	1
727	Discount	0.0
728	OrderID	10462
728	ProductID	23
728	UnitPrice	7.2
728	Quantity	21
728	Discount	0.0
729	OrderID	10463
729	ProductID	19
729	UnitPrice	7.3
729	Quantity	21
729	Discount	0.0
730	OrderID	10463
730	ProductID	42
730	UnitPrice	11.2
730	Quantity	50
730	Discount	0.0
731	OrderID	10464
731	ProductID	4
731	UnitPrice	17.6
731	Quantity	16
731	Discount	0.2
732	OrderID	10464
732	ProductID	43
732	UnitPrice	36.8
732	Quantity	3
732	Discount	0.0
733	OrderID	10464
733	ProductID	56
733	UnitPrice	30.4
733	Quantity	30
733	Discount	0.2
734	OrderID	10464
734	ProductID	60
734	UnitPrice	27.2
734	Quantity	20
734	Discount	0.0
735	OrderID	10465
735	ProductID	24
735	UnitPrice	3.6
735	Quantity	25
735	Discount	0.0
736	OrderID	10465
736	ProductID	29
736	UnitPrice	99.0
736	Quantity	18
736	Discount	0.1
737	OrderID	10465
737	ProductID	40
737	UnitPrice	14.7
737	Quantity	20
737	Discount	0.0
738	OrderID	10465
738	ProductID	45
738	UnitPrice	7.6
738	Quantity	30
738	Discount	0.1
739	OrderID	10465
739	ProductID	50
739	UnitPrice	13.0
739	Quantity	25
739	Discount	0.0
740	OrderID	10466
740	ProductID	11
740	UnitPrice	16.8
740	Quantity	10
740	Discount	0.0
741	OrderID	10466
741	ProductID	46
741	UnitPrice	9.6
741	Quantity	5
741	Discount	0.0
742	OrderID	10467
742	ProductID	24
742	UnitPrice	3.6
742	Quantity	28
742	Discount	0.0
743	OrderID	10467
743	ProductID	25
743	UnitPrice	11.2
743	Quantity	12
743	Discount	0.0
744	OrderID	10468
744	ProductID	30
744	UnitPrice	20.7
744	Quantity	8
744	Discount	0.0
745	OrderID	10468
745	ProductID	43
745	UnitPrice	36.8
745	Quantity	15
745	Discount	0.0
746	OrderID	10469
746	ProductID	2
746	UnitPrice	15.2
746	Quantity	40
746	Discount	0.15
747	OrderID	10469
747	ProductID	16
747	UnitPrice	13.9
747	Quantity	35
747	Discount	0.15
748	OrderID	10469
748	ProductID	44
748	UnitPrice	15.5
748	Quantity	2
748	Discount	0.15
749	OrderID	10470
749	ProductID	18
749	UnitPrice	50.0
749	Quantity	30
749	Discount	0.0
750	OrderID	10470
750	ProductID	23
750	UnitPrice	7.2
750	Quantity	15
750	Discount	0.0
751	OrderID	10470
751	ProductID	64
751	UnitPrice	26.6
751	Quantity	8
751	Discount	0.0
752	OrderID	10471
752	ProductID	7
752	UnitPrice	24.0
752	Quantity	30
752	Discount	0.0
753	OrderID	10471
753	ProductID	56
753	UnitPrice	30.4
753	Quantity	20
753	Discount	0.0
754	OrderID	10472
754	ProductID	24
754	UnitPrice	3.6
754	Quantity	80
754	Discount	0.05
755	OrderID	10472
755	ProductID	51
755	UnitPrice	42.4
755	Quantity	18
755	Discount	0.0
756	OrderID	10473
756	ProductID	33
756	UnitPrice	2.0
756	Quantity	12
756	Discount	0.0
757	OrderID	10473
757	ProductID	71
757	UnitPrice	17.2
757	Quantity	12
757	Discount	0.0
758	OrderID	10474
758	ProductID	14
758	UnitPrice	18.6
758	Quantity	12
758	Discount	0.0
759	OrderID	10474
759	ProductID	28
759	UnitPrice	36.4
759	Quantity	18
759	Discount	0.0
760	OrderID	10474
760	ProductID	40
760	UnitPrice	14.7
760	Quantity	21
760	Discount	0.0
761	OrderID	10474
761	ProductID	75
761	UnitPrice	6.2
761	Quantity	10
761	Discount	0.0
762	OrderID	10475
762	ProductID	31
762	UnitPrice	10.0
762	Quantity	35
762	Discount	0.15
763	OrderID	10475
763	ProductID	66
763	UnitPrice	13.6
763	Quantity	60
763	Discount	0.15
764	OrderID	10475
764	ProductID	76
764	UnitPrice	14.4
764	Quantity	42
764	Discount	0.15
765	OrderID	10476
765	ProductID	55
765	UnitPrice	19.2
765	Quantity	2
765	Discount	0.05
766	OrderID	10476
766	ProductID	70
766	UnitPrice	12.0
766	Quantity	12
766	Discount	0.0
767	OrderID	10477
767	ProductID	1
767	UnitPrice	14.4
767	Quantity	15
767	Discount	0.0
768	OrderID	10477
768	ProductID	21
768	UnitPrice	8.0
768	Quantity	21
768	Discount	0.25
769	OrderID	10477
769	ProductID	39
769	UnitPrice	14.4
769	Quantity	20
769	Discount	0.25
770	OrderID	10478
770	ProductID	10
770	UnitPrice	24.8
770	Quantity	20
770	Discount	0.05
771	OrderID	10479
771	ProductID	38
771	UnitPrice	210.8
771	Quantity	30
771	Discount	0.0
772	OrderID	10479
772	ProductID	53
772	UnitPrice	26.2
772	Quantity	28
772	Discount	0.0
773	OrderID	10479
773	ProductID	59
773	UnitPrice	44.0
773	Quantity	60
773	Discount	0.0
774	OrderID	10479
774	ProductID	64
774	UnitPrice	26.6
774	Quantity	30
774	Discount	0.0
775	OrderID	10480
775	ProductID	47
775	UnitPrice	7.6
775	Quantity	30
775	Discount	0.0
776	OrderID	10480
776	ProductID	59
776	UnitPrice	44.0
776	Quantity	12
776	Discount	0.0
777	OrderID	10481
777	ProductID	49
777	UnitPrice	16.0
777	Quantity	24
777	Discount	0.0
778	OrderID	10481
778	ProductID	60
778	UnitPrice	27.2
778	Quantity	40
778	Discount	0.0
779	OrderID	10482
779	ProductID	40
779	UnitPrice	14.7
779	Quantity	10
779	Discount	0.0
780	OrderID	10483
780	ProductID	34
780	UnitPrice	11.2
780	Quantity	35
780	Discount	0.05
781	OrderID	10483
781	ProductID	77
781	UnitPrice	10.4
781	Quantity	30
781	Discount	0.05
782	OrderID	10484
782	ProductID	21
782	UnitPrice	8.0
782	Quantity	14
782	Discount	0.0
783	OrderID	10484
783	ProductID	40
783	UnitPrice	14.7
783	Quantity	10
783	Discount	0.0
784	OrderID	10484
784	ProductID	51
784	UnitPrice	42.4
784	Quantity	3
784	Discount	0.0
785	OrderID	10485
785	ProductID	2
785	UnitPrice	15.2
785	Quantity	20
785	Discount	0.1
786	OrderID	10485
786	ProductID	3
786	UnitPrice	8.0
786	Quantity	20
786	Discount	0.1
787	OrderID	10485
787	ProductID	55
787	UnitPrice	19.2
787	Quantity	30
787	Discount	0.1
788	OrderID	10485
788	ProductID	70
788	UnitPrice	12.0
788	Quantity	60
788	Discount	0.1
789	OrderID	10486
789	ProductID	11
789	UnitPrice	16.8
789	Quantity	5
789	Discount	0.0
790	OrderID	10486
790	ProductID	51
790	UnitPrice	42.4
790	Quantity	25
790	Discount	0.0
791	OrderID	10486
791	ProductID	74
791	UnitPrice	8.0
791	Quantity	16
791	Discount	0.0
792	OrderID	10487
792	ProductID	19
792	UnitPrice	7.3
792	Quantity	5
792	Discount	0.0
793	OrderID	10487
793	ProductID	26
793	UnitPrice	24.9
793	Quantity	30
793	Discount	0.0
794	OrderID	10487
794	ProductID	54
794	UnitPrice	5.9
794	Quantity	24
794	Discount	0.25
795	OrderID	10488
795	ProductID	59
795	UnitPrice	44.0
795	Quantity	30
795	Discount	0.0
796	OrderID	10488
796	ProductID	73
796	UnitPrice	12.0
796	Quantity	20
796	Discount	0.2
797	OrderID	10489
797	ProductID	11
797	UnitPrice	16.8
797	Quantity	15
797	Discount	0.25
798	OrderID	10489
798	ProductID	16
798	UnitPrice	13.9
798	Quantity	18
798	Discount	0.0
799	OrderID	10490
799	ProductID	59
799	UnitPrice	44.0
799	Quantity	60
799	Discount	0.0
800	OrderID	10490
800	ProductID	68
800	UnitPrice	10.0
800	Quantity	30
800	Discount	0.0
801	OrderID	10490
801	ProductID	75
801	UnitPrice	6.2
801	Quantity	36
801	Discount	0.0
802	OrderID	10491
802	ProductID	44
802	UnitPrice	15.5
802	Quantity	15
802	Discount	0.15
803	OrderID	10491
803	ProductID	77
803	UnitPrice	10.4
803	Quantity	7
803	Discount	0.15
804	OrderID	10492
804	ProductID	25
804	UnitPrice	11.2
804	Quantity	60
804	Discount	0.05
805	OrderID	10492
805	ProductID	42
805	UnitPrice	11.2
805	Quantity	20
805	Discount	0.05
806	OrderID	10493
806	ProductID	65
806	UnitPrice	16.8
806	Quantity	15
806	Discount	0.1
807	OrderID	10493
807	ProductID	66
807	UnitPrice	13.6
807	Quantity	10
807	Discount	0.1
808	OrderID	10493
808	ProductID	69
808	UnitPrice	28.8
808	Quantity	10
808	Discount	0.1
809	OrderID	10494
809	ProductID	56
809	UnitPrice	30.4
809	Quantity	30
809	Discount	0.0
810	OrderID	10495
810	ProductID	23
810	UnitPrice	7.2
810	Quantity	10
810	Discount	0.0
811	OrderID	10495
811	ProductID	41
811	UnitPrice	7.7
811	Quantity	20
811	Discount	0.0
812	OrderID	10495
812	ProductID	77
812	UnitPrice	10.4
812	Quantity	5
812	Discount	0.0
813	OrderID	10496
813	ProductID	31
813	UnitPrice	10.0
813	Quantity	20
813	Discount	0.05
814	OrderID	10497
814	ProductID	56
814	UnitPrice	30.4
814	Quantity	14
814	Discount	0.0
815	OrderID	10497
815	ProductID	72
815	UnitPrice	27.8
815	Quantity	25
815	Discount	0.0
816	OrderID	10497
816	ProductID	77
816	UnitPrice	10.4
816	Quantity	25
816	Discount	0.0
817	OrderID	10498
817	ProductID	24
817	UnitPrice	4.5
817	Quantity	14
817	Discount	0.0
818	OrderID	10498
818	ProductID	40
818	UnitPrice	18.4
818	Quantity	5
818	Discount	0.0
819	OrderID	10498
819	ProductID	42
819	UnitPrice	14.0
819	Quantity	30
819	Discount	0.0
820	OrderID	10499
820	ProductID	28
820	UnitPrice	45.6
820	Quantity	20
820	Discount	0.0
821	OrderID	10499
821	ProductID	49
821	UnitPrice	20.0
821	Quantity	25
821	Discount	0.0
822	OrderID	10500
822	ProductID	15
822	UnitPrice	15.5
822	Quantity	12
822	Discount	0.05
823	OrderID	10500
823	ProductID	28
823	UnitPrice	45.6
823	Quantity	8
823	Discount	0.05
824	OrderID	10501
824	ProductID	54
824	UnitPrice	7.45
824	Quantity	20
824	Discount	0.0
825	OrderID	10502
825	ProductID	45
825	UnitPrice	9.5
825	Quantity	21
825	Discount	0.0
826	OrderID	10502
826	ProductID	53
826	UnitPrice	32.8
826	Quantity	6
826	Discount	0.0
827	OrderID	10502
827	ProductID	67
827	UnitPrice	14.0
827	Quantity	30
827	Discount	0.0
828	OrderID	10503
828	ProductID	14
828	UnitPrice	23.25
828	Quantity	70
828	Discount	0.0
829	OrderID	10503
829	ProductID	65
829	UnitPrice	21.05
829	Quantity	20
829	Discount	0.0
830	OrderID	10504
830	ProductID	2
830	UnitPrice	19.0
830	Quantity	12
830	Discount	0.0
831	OrderID	10504
831	ProductID	21
831	UnitPrice	10.0
831	Quantity	12
831	Discount	0.0
832	OrderID	10504
832	ProductID	53
832	UnitPrice	32.8
832	Quantity	10
832	Discount	0.0
833	OrderID	10504
833	ProductID	61
833	UnitPrice	28.5
833	Quantity	25
833	Discount	0.0
834	OrderID	10505
834	ProductID	62
834	UnitPrice	49.3
834	Quantity	3
834	Discount	0.0
835	OrderID	10506
835	ProductID	25
835	UnitPrice	14.0
835	Quantity	18
835	Discount	0.1
836	OrderID	10506
836	ProductID	70
836	UnitPrice	15.0
836	Quantity	14
836	Discount	0.1
837	OrderID	10507
837	ProductID	43
837	UnitPrice	46.0
837	Quantity	15
837	Discount	0.15
838	OrderID	10507
838	ProductID	48
838	UnitPrice	12.75
838	Quantity	15
838	Discount	0.15
839	OrderID	10508
839	ProductID	13
839	UnitPrice	6.0
839	Quantity	10
839	Discount	0.0
840	OrderID	10508
840	ProductID	39
840	UnitPrice	18.0
840	Quantity	10
840	Discount	0.0
841	OrderID	10509
841	ProductID	28
841	UnitPrice	45.6
841	Quantity	3
841	Discount	0.0
842	OrderID	10510
842	ProductID	29
842	UnitPrice	123.79
842	Quantity	36
842	Discount	0.0
843	OrderID	10510
843	ProductID	75
843	UnitPrice	7.75
843	Quantity	36
843	Discount	0.1
844	OrderID	10511
844	ProductID	4
844	UnitPrice	22.0
844	Quantity	50
844	Discount	0.15
845	OrderID	10511
845	ProductID	7
845	UnitPrice	30.0
845	Quantity	50
845	Discount	0.15
846	OrderID	10511
846	ProductID	8
846	UnitPrice	40.0
846	Quantity	10
846	Discount	0.15
847	OrderID	10512
847	ProductID	24
847	UnitPrice	4.5
847	Quantity	10
847	Discount	0.15
848	OrderID	10512
848	ProductID	46
848	UnitPrice	12.0
848	Quantity	9
848	Discount	0.15
849	OrderID	10512
849	ProductID	47
849	UnitPrice	9.5
849	Quantity	6
849	Discount	0.15
850	OrderID	10512
850	ProductID	60
850	UnitPrice	34.0
850	Quantity	12
850	Discount	0.15
851	OrderID	10513
851	ProductID	21
851	UnitPrice	10.0
851	Quantity	40
851	Discount	0.2
852	OrderID	10513
852	ProductID	32
852	UnitPrice	32.0
852	Quantity	50
852	Discount	0.2
853	OrderID	10513
853	ProductID	61
853	UnitPrice	28.5
853	Quantity	15
853	Discount	0.2
854	OrderID	10514
854	ProductID	20
854	UnitPrice	81.0
854	Quantity	39
854	Discount	0.0
855	OrderID	10514
855	ProductID	28
855	UnitPrice	45.6
855	Quantity	35
855	Discount	0.0
856	OrderID	10514
856	ProductID	56
856	UnitPrice	38.0
856	Quantity	70
856	Discount	0.0
857	OrderID	10514
857	ProductID	65
857	UnitPrice	21.05
857	Quantity	39
857	Discount	0.0
858	OrderID	10514
858	ProductID	75
858	UnitPrice	7.75
858	Quantity	50
858	Discount	0.0
859	OrderID	10515
859	ProductID	9
859	UnitPrice	97.0
859	Quantity	16
859	Discount	0.15
860	OrderID	10515
860	ProductID	16
860	UnitPrice	17.45
860	Quantity	50
860	Discount	0.0
861	OrderID	10515
861	ProductID	27
861	UnitPrice	43.9
861	Quantity	120
861	Discount	0.0
862	OrderID	10515
862	ProductID	33
862	UnitPrice	2.5
862	Quantity	16
862	Discount	0.15
863	OrderID	10515
863	ProductID	60
863	UnitPrice	34.0
863	Quantity	84
863	Discount	0.15
864	OrderID	10516
864	ProductID	18
864	UnitPrice	62.5
864	Quantity	25
864	Discount	0.1
865	OrderID	10516
865	ProductID	41
865	UnitPrice	9.65
865	Quantity	80
865	Discount	0.1
866	OrderID	10516
866	ProductID	42
866	UnitPrice	14.0
866	Quantity	20
866	Discount	0.0
867	OrderID	10517
867	ProductID	52
867	UnitPrice	7.0
867	Quantity	6
867	Discount	0.0
868	OrderID	10517
868	ProductID	59
868	UnitPrice	55.0
868	Quantity	4
868	Discount	0.0
869	OrderID	10517
869	ProductID	70
869	UnitPrice	15.0
869	Quantity	6
869	Discount	0.0
870	OrderID	10518
870	ProductID	24
870	UnitPrice	4.5
870	Quantity	5
870	Discount	0.0
871	OrderID	10518
871	ProductID	38
871	UnitPrice	263.5
871	Quantity	15
871	Discount	0.0
872	OrderID	10518
872	ProductID	44
872	UnitPrice	19.45
872	Quantity	9
872	Discount	0.0
873	OrderID	10519
873	ProductID	10
873	UnitPrice	31.0
873	Quantity	16
873	Discount	0.05
874	OrderID	10519
874	ProductID	56
874	UnitPrice	38.0
874	Quantity	40
874	Discount	0.0
875	OrderID	10519
875	ProductID	60
875	UnitPrice	34.0
875	Quantity	10
875	Discount	0.05
876	OrderID	10520
876	ProductID	24
876	UnitPrice	4.5
876	Quantity	8
876	Discount	0.0
877	OrderID	10520
877	ProductID	53
877	UnitPrice	32.8
877	Quantity	5
877	Discount	0.0
878	OrderID	10521
878	ProductID	35
878	UnitPrice	18.0
878	Quantity	3
878	Discount	0.0
879	OrderID	10521
879	ProductID	41
879	UnitPrice	9.65
879	Quantity	10
879	Discount	0.0
880	OrderID	10521
880	ProductID	68
880	UnitPrice	12.5
880	Quantity	6
880	Discount	0.0
881	OrderID	10522
881	ProductID	1
881	UnitPrice	18.0
881	Quantity	40
881	Discount	0.2
882	OrderID	10522
882	ProductID	8
882	UnitPrice	40.0
882	Quantity	24
882	Discount	0.0
883	OrderID	10522
883	ProductID	30
883	UnitPrice	25.89
883	Quantity	20
883	Discount	0.2
884	OrderID	10522
884	ProductID	40
884	UnitPrice	18.4
884	Quantity	25
884	Discount	0.2
885	OrderID	10523
885	ProductID	17
885	UnitPrice	39.0
885	Quantity	25
885	Discount	0.1
886	OrderID	10523
886	ProductID	20
886	UnitPrice	81.0
886	Quantity	15
886	Discount	0.1
887	OrderID	10523
887	ProductID	37
887	UnitPrice	26.0
887	Quantity	18
887	Discount	0.1
888	OrderID	10523
888	ProductID	41
888	UnitPrice	9.65
888	Quantity	6
888	Discount	0.1
889	OrderID	10524
889	ProductID	10
889	UnitPrice	31.0
889	Quantity	2
889	Discount	0.0
890	OrderID	10524
890	ProductID	30
890	UnitPrice	25.89
890	Quantity	10
890	Discount	0.0
891	OrderID	10524
891	ProductID	43
891	UnitPrice	46.0
891	Quantity	60
891	Discount	0.0
892	OrderID	10524
892	ProductID	54
892	UnitPrice	7.45
892	Quantity	15
892	Discount	0.0
893	OrderID	10525
893	ProductID	36
893	UnitPrice	19.0
893	Quantity	30
893	Discount	0.0
894	OrderID	10525
894	ProductID	40
894	UnitPrice	18.4
894	Quantity	15
894	Discount	0.1
895	OrderID	10526
895	ProductID	1
895	UnitPrice	18.0
895	Quantity	8
895	Discount	0.15
896	OrderID	10526
896	ProductID	13
896	UnitPrice	6.0
896	Quantity	10
896	Discount	0.0
897	OrderID	10526
897	ProductID	56
897	UnitPrice	38.0
897	Quantity	30
897	Discount	0.15
898	OrderID	10527
898	ProductID	4
898	UnitPrice	22.0
898	Quantity	50
898	Discount	0.1
899	OrderID	10527
899	ProductID	36
899	UnitPrice	19.0
899	Quantity	30
899	Discount	0.1
900	OrderID	10528
900	ProductID	11
900	UnitPrice	21.0
900	Quantity	3
900	Discount	0.0
901	OrderID	10528
901	ProductID	33
901	UnitPrice	2.5
901	Quantity	8
901	Discount	0.2
902	OrderID	10528
902	ProductID	72
902	UnitPrice	34.8
902	Quantity	9
902	Discount	0.0
903	OrderID	10529
903	ProductID	55
903	UnitPrice	24.0
903	Quantity	14
903	Discount	0.0
904	OrderID	10529
904	ProductID	68
904	UnitPrice	12.5
904	Quantity	20
904	Discount	0.0
905	OrderID	10529
905	ProductID	69
905	UnitPrice	36.0
905	Quantity	10
905	Discount	0.0
906	OrderID	10530
906	ProductID	17
906	UnitPrice	39.0
906	Quantity	40
906	Discount	0.0
907	OrderID	10530
907	ProductID	43
907	UnitPrice	46.0
907	Quantity	25
907	Discount	0.0
908	OrderID	10530
908	ProductID	61
908	UnitPrice	28.5
908	Quantity	20
908	Discount	0.0
909	OrderID	10530
909	ProductID	76
909	UnitPrice	18.0
909	Quantity	50
909	Discount	0.0
910	OrderID	10531
910	ProductID	59
910	UnitPrice	55.0
910	Quantity	2
910	Discount	0.0
911	OrderID	10532
911	ProductID	30
911	UnitPrice	25.89
911	Quantity	15
911	Discount	0.0
912	OrderID	10532
912	ProductID	66
912	UnitPrice	17.0
912	Quantity	24
912	Discount	0.0
913	OrderID	10533
913	ProductID	4
913	UnitPrice	22.0
913	Quantity	50
913	Discount	0.05
914	OrderID	10533
914	ProductID	72
914	UnitPrice	34.8
914	Quantity	24
914	Discount	0.0
915	OrderID	10533
915	ProductID	73
915	UnitPrice	15.0
915	Quantity	24
915	Discount	0.05
916	OrderID	10534
916	ProductID	30
916	UnitPrice	25.89
916	Quantity	10
916	Discount	0.0
917	OrderID	10534
917	ProductID	40
917	UnitPrice	18.4
917	Quantity	10
917	Discount	0.2
918	OrderID	10534
918	ProductID	54
918	UnitPrice	7.45
918	Quantity	10
918	Discount	0.2
919	OrderID	10535
919	ProductID	11
919	UnitPrice	21.0
919	Quantity	50
919	Discount	0.1
920	OrderID	10535
920	ProductID	40
920	UnitPrice	18.4
920	Quantity	10
920	Discount	0.1
921	OrderID	10535
921	ProductID	57
921	UnitPrice	19.5
921	Quantity	5
921	Discount	0.1
922	OrderID	10535
922	ProductID	59
922	UnitPrice	55.0
922	Quantity	15
922	Discount	0.1
923	OrderID	10536
923	ProductID	12
923	UnitPrice	38.0
923	Quantity	15
923	Discount	0.25
924	OrderID	10536
924	ProductID	31
924	UnitPrice	12.5
924	Quantity	20
924	Discount	0.0
925	OrderID	10536
925	ProductID	33
925	UnitPrice	2.5
925	Quantity	30
925	Discount	0.0
926	OrderID	10536
926	ProductID	60
926	UnitPrice	34.0
926	Quantity	35
926	Discount	0.25
927	OrderID	10537
927	ProductID	31
927	UnitPrice	12.5
927	Quantity	30
927	Discount	0.0
928	OrderID	10537
928	ProductID	51
928	UnitPrice	53.0
928	Quantity	6
928	Discount	0.0
929	OrderID	10537
929	ProductID	58
929	UnitPrice	13.25
929	Quantity	20
929	Discount	0.0
930	OrderID	10537
930	ProductID	72
930	UnitPrice	34.8
930	Quantity	21
930	Discount	0.0
931	OrderID	10537
931	ProductID	73
931	UnitPrice	15.0
931	Quantity	9
931	Discount	0.0
932	OrderID	10538
932	ProductID	70
932	UnitPrice	15.0
932	Quantity	7
932	Discount	0.0
933	OrderID	10538
933	ProductID	72
933	UnitPrice	34.8
933	Quantity	1
933	Discount	0.0
934	OrderID	10539
934	ProductID	13
934	UnitPrice	6.0
934	Quantity	8
934	Discount	0.0
935	OrderID	10539
935	ProductID	21
935	UnitPrice	10.0
935	Quantity	15
935	Discount	0.0
936	OrderID	10539
936	ProductID	33
936	UnitPrice	2.5
936	Quantity	15
936	Discount	0.0
937	OrderID	10539
937	ProductID	49
937	UnitPrice	20.0
937	Quantity	6
937	Discount	0.0
938	OrderID	10540
938	ProductID	3
938	UnitPrice	10.0
938	Quantity	60
938	Discount	0.0
939	OrderID	10540
939	ProductID	26
939	UnitPrice	31.23
939	Quantity	40
939	Discount	0.0
940	OrderID	10540
940	ProductID	38
940	UnitPrice	263.5
940	Quantity	30
940	Discount	0.0
941	OrderID	10540
941	ProductID	68
941	UnitPrice	12.5
941	Quantity	35
941	Discount	0.0
942	OrderID	10541
942	ProductID	24
942	UnitPrice	4.5
942	Quantity	35
942	Discount	0.1
943	OrderID	10541
943	ProductID	38
943	UnitPrice	263.5
943	Quantity	4
943	Discount	0.1
944	OrderID	10541
944	ProductID	65
944	UnitPrice	21.05
944	Quantity	36
944	Discount	0.1
945	OrderID	10541
945	ProductID	71
945	UnitPrice	21.5
945	Quantity	9
945	Discount	0.1
946	OrderID	10542
946	ProductID	11
946	UnitPrice	21.0
946	Quantity	15
946	Discount	0.05
947	OrderID	10542
947	ProductID	54
947	UnitPrice	7.45
947	Quantity	24
947	Discount	0.05
948	OrderID	10543
948	ProductID	12
948	UnitPrice	38.0
948	Quantity	30
948	Discount	0.15
949	OrderID	10543
949	ProductID	23
949	UnitPrice	9.0
949	Quantity	70
949	Discount	0.15
950	OrderID	10544
950	ProductID	28
950	UnitPrice	45.6
950	Quantity	7
950	Discount	0.0
951	OrderID	10544
951	ProductID	67
951	UnitPrice	14.0
951	Quantity	7
951	Discount	0.0
952	OrderID	10545
952	ProductID	11
952	UnitPrice	21.0
952	Quantity	10
952	Discount	0.0
953	OrderID	10546
953	ProductID	7
953	UnitPrice	30.0
953	Quantity	10
953	Discount	0.0
954	OrderID	10546
954	ProductID	35
954	UnitPrice	18.0
954	Quantity	30
954	Discount	0.0
955	OrderID	10546
955	ProductID	62
955	UnitPrice	49.3
955	Quantity	40
955	Discount	0.0
956	OrderID	10547
956	ProductID	32
956	UnitPrice	32.0
956	Quantity	24
956	Discount	0.15
957	OrderID	10547
957	ProductID	36
957	UnitPrice	19.0
957	Quantity	60
957	Discount	0.0
958	OrderID	10548
958	ProductID	34
958	UnitPrice	14.0
958	Quantity	10
958	Discount	0.25
959	OrderID	10548
959	ProductID	41
959	UnitPrice	9.65
959	Quantity	14
959	Discount	0.0
960	OrderID	10549
960	ProductID	31
960	UnitPrice	12.5
960	Quantity	55
960	Discount	0.15
961	OrderID	10549
961	ProductID	45
961	UnitPrice	9.5
961	Quantity	100
961	Discount	0.15
962	OrderID	10549
962	ProductID	51
962	UnitPrice	53.0
962	Quantity	48
962	Discount	0.15
963	OrderID	10550
963	ProductID	17
963	UnitPrice	39.0
963	Quantity	8
963	Discount	0.1
964	OrderID	10550
964	ProductID	19
964	UnitPrice	9.2
964	Quantity	10
964	Discount	0.0
965	OrderID	10550
965	ProductID	21
965	UnitPrice	10.0
965	Quantity	6
965	Discount	0.1
966	OrderID	10550
966	ProductID	61
966	UnitPrice	28.5
966	Quantity	10
966	Discount	0.1
967	OrderID	10551
967	ProductID	16
967	UnitPrice	17.45
967	Quantity	40
967	Discount	0.15
968	OrderID	10551
968	ProductID	35
968	UnitPrice	18.0
968	Quantity	20
968	Discount	0.15
969	OrderID	10551
969	ProductID	44
969	UnitPrice	19.45
969	Quantity	40
969	Discount	0.0
970	OrderID	10552
970	ProductID	69
970	UnitPrice	36.0
970	Quantity	18
970	Discount	0.0
971	OrderID	10552
971	ProductID	75
971	UnitPrice	7.75
971	Quantity	30
971	Discount	0.0
972	OrderID	10553
972	ProductID	11
972	UnitPrice	21.0
972	Quantity	15
972	Discount	0.0
973	OrderID	10553
973	ProductID	16
973	UnitPrice	17.45
973	Quantity	14
973	Discount	0.0
974	OrderID	10553
974	ProductID	22
974	UnitPrice	21.0
974	Quantity	24
974	Discount	0.0
975	OrderID	10553
975	ProductID	31
975	UnitPrice	12.5
975	Quantity	30
975	Discount	0.0
976	OrderID	10553
976	ProductID	35
976	UnitPrice	18.0
976	Quantity	6
976	Discount	0.0
977	OrderID	10554
977	ProductID	16
977	UnitPrice	17.45
977	Quantity	30
977	Discount	0.05
978	OrderID	10554
978	ProductID	23
978	UnitPrice	9.0
978	Quantity	20
978	Discount	0.05
979	OrderID	10554
979	ProductID	62
979	UnitPrice	49.3
979	Quantity	20
979	Discount	0.05
980	OrderID	10554
980	ProductID	77
980	UnitPrice	13.0
980	Quantity	10
980	Discount	0.05
981	OrderID	10555
981	ProductID	14
981	UnitPrice	23.25
981	Quantity	30
981	Discount	0.2
982	OrderID	10555
982	ProductID	19
982	UnitPrice	9.2
982	Quantity	35
982	Discount	0.2
983	OrderID	10555
983	ProductID	24
983	UnitPrice	4.5
983	Quantity	18
983	Discount	0.2
984	OrderID	10555
984	ProductID	51
984	UnitPrice	53.0
984	Quantity	20
984	Discount	0.2
985	OrderID	10555
985	ProductID	56
985	UnitPrice	38.0
985	Quantity	40
985	Discount	0.2
986	OrderID	10556
986	ProductID	72
986	UnitPrice	34.8
986	Quantity	24
986	Discount	0.0
987	OrderID	10557
987	ProductID	64
987	UnitPrice	33.25
987	Quantity	30
987	Discount	0.0
988	OrderID	10557
988	ProductID	75
988	UnitPrice	7.75
988	Quantity	20
988	Discount	0.0
989	OrderID	10558
989	ProductID	47
989	UnitPrice	9.5
989	Quantity	25
989	Discount	0.0
990	OrderID	10558
990	ProductID	51
990	UnitPrice	53.0
990	Quantity	20
990	Discount	0.0
991	OrderID	10558
991	ProductID	52
991	UnitPrice	7.0
991	Quantity	30
991	Discount	0.0
992	OrderID	10558
992	ProductID	53
992	UnitPrice	32.8
992	Quantity	18
992	Discount	0.0
993	OrderID	10558
993	ProductID	73
993	UnitPrice	15.0
993	Quantity	3
993	Discount	0.0
994	OrderID	10559
994	ProductID	41
994	UnitPrice	9.65
994	Quantity	12
994	Discount	0.05
995	OrderID	10559
995	ProductID	55
995	UnitPrice	24.0
995	Quantity	18
995	Discount	0.05
996	OrderID	10560
996	ProductID	30
996	UnitPrice	25.89
996	Quantity	20
996	Discount	0.0
997	OrderID	10560
997	ProductID	62
997	UnitPrice	49.3
997	Quantity	15
997	Discount	0.25
998	OrderID	10561
998	ProductID	44
998	UnitPrice	19.45
998	Quantity	10
998	Discount	0.0
999	OrderID	10561
999	ProductID	51
999	UnitPrice	53.0
999	Quantity	50
999	Discount	0.0
1000	OrderID	10562
1000	ProductID	33
1000	UnitPrice	2.5
1000	Quantity	20
1000	Discount	0.1
1001	OrderID	10562
1001	ProductID	62
1001	UnitPrice	49.3
1001	Quantity	10
1001	Discount	0.1
1002	OrderID	10563
1002	ProductID	36
1002	UnitPrice	19.0
1002	Quantity	25
1002	Discount	0.0
1003	OrderID	10563
1003	ProductID	52
1003	UnitPrice	7.0
1003	Quantity	70
1003	Discount	0.0
1004	OrderID	10564
1004	ProductID	17
1004	UnitPrice	39.0
1004	Quantity	16
1004	Discount	0.05
1005	OrderID	10564
1005	ProductID	31
1005	UnitPrice	12.5
1005	Quantity	6
1005	Discount	0.05
1006	OrderID	10564
1006	ProductID	55
1006	UnitPrice	24.0
1006	Quantity	25
1006	Discount	0.05
1007	OrderID	10565
1007	ProductID	24
1007	UnitPrice	4.5
1007	Quantity	25
1007	Discount	0.1
1008	OrderID	10565
1008	ProductID	64
1008	UnitPrice	33.25
1008	Quantity	18
1008	Discount	0.1
1009	OrderID	10566
1009	ProductID	11
1009	UnitPrice	21.0
1009	Quantity	35
1009	Discount	0.15
1010	OrderID	10566
1010	ProductID	18
1010	UnitPrice	62.5
1010	Quantity	18
1010	Discount	0.15
1011	OrderID	10566
1011	ProductID	76
1011	UnitPrice	18.0
1011	Quantity	10
1011	Discount	0.0
1012	OrderID	10567
1012	ProductID	31
1012	UnitPrice	12.5
1012	Quantity	60
1012	Discount	0.2
1013	OrderID	10567
1013	ProductID	51
1013	UnitPrice	53.0
1013	Quantity	3
1013	Discount	0.0
1014	OrderID	10567
1014	ProductID	59
1014	UnitPrice	55.0
1014	Quantity	40
1014	Discount	0.2
1015	OrderID	10568
1015	ProductID	10
1015	UnitPrice	31.0
1015	Quantity	5
1015	Discount	0.0
1016	OrderID	10569
1016	ProductID	31
1016	UnitPrice	12.5
1016	Quantity	35
1016	Discount	0.2
1017	OrderID	10569
1017	ProductID	76
1017	UnitPrice	18.0
1017	Quantity	30
1017	Discount	0.0
1018	OrderID	10570
1018	ProductID	11
1018	UnitPrice	21.0
1018	Quantity	15
1018	Discount	0.05
1019	OrderID	10570
1019	ProductID	56
1019	UnitPrice	38.0
1019	Quantity	60
1019	Discount	0.05
1020	OrderID	10571
1020	ProductID	14
1020	UnitPrice	23.25
1020	Quantity	11
1020	Discount	0.15
1021	OrderID	10571
1021	ProductID	42
1021	UnitPrice	14.0
1021	Quantity	28
1021	Discount	0.15
1022	OrderID	10572
1022	ProductID	16
1022	UnitPrice	17.45
1022	Quantity	12
1022	Discount	0.1
1023	OrderID	10572
1023	ProductID	32
1023	UnitPrice	32.0
1023	Quantity	10
1023	Discount	0.1
1024	OrderID	10572
1024	ProductID	40
1024	UnitPrice	18.4
1024	Quantity	50
1024	Discount	0.0
1025	OrderID	10572
1025	ProductID	75
1025	UnitPrice	7.75
1025	Quantity	15
1025	Discount	0.1
1026	OrderID	10573
1026	ProductID	17
1026	UnitPrice	39.0
1026	Quantity	18
1026	Discount	0.0
1027	OrderID	10573
1027	ProductID	34
1027	UnitPrice	14.0
1027	Quantity	40
1027	Discount	0.0
1028	OrderID	10573
1028	ProductID	53
1028	UnitPrice	32.8
1028	Quantity	25
1028	Discount	0.0
1029	OrderID	10574
1029	ProductID	33
1029	UnitPrice	2.5
1029	Quantity	14
1029	Discount	0.0
1030	OrderID	10574
1030	ProductID	40
1030	UnitPrice	18.4
1030	Quantity	2
1030	Discount	0.0
1031	OrderID	10574
1031	ProductID	62
1031	UnitPrice	49.3
1031	Quantity	10
1031	Discount	0.0
1032	OrderID	10574
1032	ProductID	64
1032	UnitPrice	33.25
1032	Quantity	6
1032	Discount	0.0
1033	OrderID	10575
1033	ProductID	59
1033	UnitPrice	55.0
1033	Quantity	12
1033	Discount	0.0
1034	OrderID	10575
1034	ProductID	63
1034	UnitPrice	43.9
1034	Quantity	6
1034	Discount	0.0
1035	OrderID	10575
1035	ProductID	72
1035	UnitPrice	34.8
1035	Quantity	30
1035	Discount	0.0
1036	OrderID	10575
1036	ProductID	76
1036	UnitPrice	18.0
1036	Quantity	10
1036	Discount	0.0
1037	OrderID	10576
1037	ProductID	1
1037	UnitPrice	18.0
1037	Quantity	10
1037	Discount	0.0
1038	OrderID	10576
1038	ProductID	31
1038	UnitPrice	12.5
1038	Quantity	20
1038	Discount	0.0
1039	OrderID	10576
1039	ProductID	44
1039	UnitPrice	19.45
1039	Quantity	21
1039	Discount	0.0
1040	OrderID	10577
1040	ProductID	39
1040	UnitPrice	18.0
1040	Quantity	10
1040	Discount	0.0
1041	OrderID	10577
1041	ProductID	75
1041	UnitPrice	7.75
1041	Quantity	20
1041	Discount	0.0
1042	OrderID	10577
1042	ProductID	77
1042	UnitPrice	13.0
1042	Quantity	18
1042	Discount	0.0
1043	OrderID	10578
1043	ProductID	35
1043	UnitPrice	18.0
1043	Quantity	20
1043	Discount	0.0
1044	OrderID	10578
1044	ProductID	57
1044	UnitPrice	19.5
1044	Quantity	6
1044	Discount	0.0
1045	OrderID	10579
1045	ProductID	15
1045	UnitPrice	15.5
1045	Quantity	10
1045	Discount	0.0
1046	OrderID	10579
1046	ProductID	75
1046	UnitPrice	7.75
1046	Quantity	21
1046	Discount	0.0
1047	OrderID	10580
1047	ProductID	14
1047	UnitPrice	23.25
1047	Quantity	15
1047	Discount	0.05
1048	OrderID	10580
1048	ProductID	41
1048	UnitPrice	9.65
1048	Quantity	9
1048	Discount	0.05
1049	OrderID	10580
1049	ProductID	65
1049	UnitPrice	21.05
1049	Quantity	30
1049	Discount	0.05
1050	OrderID	10581
1050	ProductID	75
1050	UnitPrice	7.75
1050	Quantity	50
1050	Discount	0.2
1051	OrderID	10582
1051	ProductID	57
1051	UnitPrice	19.5
1051	Quantity	4
1051	Discount	0.0
1052	OrderID	10582
1052	ProductID	76
1052	UnitPrice	18.0
1052	Quantity	14
1052	Discount	0.0
1053	OrderID	10583
1053	ProductID	29
1053	UnitPrice	123.79
1053	Quantity	10
1053	Discount	0.0
1054	OrderID	10583
1054	ProductID	60
1054	UnitPrice	34.0
1054	Quantity	24
1054	Discount	0.15
1055	OrderID	10583
1055	ProductID	69
1055	UnitPrice	36.0
1055	Quantity	10
1055	Discount	0.15
1056	OrderID	10584
1056	ProductID	31
1056	UnitPrice	12.5
1056	Quantity	50
1056	Discount	0.05
1057	OrderID	10585
1057	ProductID	47
1057	UnitPrice	9.5
1057	Quantity	15
1057	Discount	0.0
1058	OrderID	10586
1058	ProductID	52
1058	UnitPrice	7.0
1058	Quantity	4
1058	Discount	0.15
1059	OrderID	10587
1059	ProductID	26
1059	UnitPrice	31.23
1059	Quantity	6
1059	Discount	0.0
1060	OrderID	10587
1060	ProductID	35
1060	UnitPrice	18.0
1060	Quantity	20
1060	Discount	0.0
1061	OrderID	10587
1061	ProductID	77
1061	UnitPrice	13.0
1061	Quantity	20
1061	Discount	0.0
1062	OrderID	10588
1062	ProductID	18
1062	UnitPrice	62.5
1062	Quantity	40
1062	Discount	0.2
1063	OrderID	10588
1063	ProductID	42
1063	UnitPrice	14.0
1063	Quantity	100
1063	Discount	0.2
1064	OrderID	10589
1064	ProductID	35
1064	UnitPrice	18.0
1064	Quantity	4
1064	Discount	0.0
1065	OrderID	10590
1065	ProductID	1
1065	UnitPrice	18.0
1065	Quantity	20
1065	Discount	0.0
1066	OrderID	10590
1066	ProductID	77
1066	UnitPrice	13.0
1066	Quantity	60
1066	Discount	0.05
1067	OrderID	10591
1067	ProductID	3
1067	UnitPrice	10.0
1067	Quantity	14
1067	Discount	0.0
1068	OrderID	10591
1068	ProductID	7
1068	UnitPrice	30.0
1068	Quantity	10
1068	Discount	0.0
1069	OrderID	10591
1069	ProductID	54
1069	UnitPrice	7.45
1069	Quantity	50
1069	Discount	0.0
1070	OrderID	10592
1070	ProductID	15
1070	UnitPrice	15.5
1070	Quantity	25
1070	Discount	0.05
1071	OrderID	10592
1071	ProductID	26
1071	UnitPrice	31.23
1071	Quantity	5
1071	Discount	0.05
1072	OrderID	10593
1072	ProductID	20
1072	UnitPrice	81.0
1072	Quantity	21
1072	Discount	0.2
1073	OrderID	10593
1073	ProductID	69
1073	UnitPrice	36.0
1073	Quantity	20
1073	Discount	0.2
1074	OrderID	10593
1074	ProductID	76
1074	UnitPrice	18.0
1074	Quantity	4
1074	Discount	0.2
1075	OrderID	10594
1075	ProductID	52
1075	UnitPrice	7.0
1075	Quantity	24
1075	Discount	0.0
1076	OrderID	10594
1076	ProductID	58
1076	UnitPrice	13.25
1076	Quantity	30
1076	Discount	0.0
1077	OrderID	10595
1077	ProductID	35
1077	UnitPrice	18.0
1077	Quantity	30
1077	Discount	0.25
1078	OrderID	10595
1078	ProductID	61
1078	UnitPrice	28.5
1078	Quantity	120
1078	Discount	0.25
1079	OrderID	10595
1079	ProductID	69
1079	UnitPrice	36.0
1079	Quantity	65
1079	Discount	0.25
1080	OrderID	10596
1080	ProductID	56
1080	UnitPrice	38.0
1080	Quantity	5
1080	Discount	0.2
1081	OrderID	10596
1081	ProductID	63
1081	UnitPrice	43.9
1081	Quantity	24
1081	Discount	0.2
1082	OrderID	10596
1082	ProductID	75
1082	UnitPrice	7.75
1082	Quantity	30
1082	Discount	0.2
1083	OrderID	10597
1083	ProductID	24
1083	UnitPrice	4.5
1083	Quantity	35
1083	Discount	0.2
1084	OrderID	10597
1084	ProductID	57
1084	UnitPrice	19.5
1084	Quantity	20
1084	Discount	0.0
1085	OrderID	10597
1085	ProductID	65
1085	UnitPrice	21.05
1085	Quantity	12
1085	Discount	0.2
1086	OrderID	10598
1086	ProductID	27
1086	UnitPrice	43.9
1086	Quantity	50
1086	Discount	0.0
1087	OrderID	10598
1087	ProductID	71
1087	UnitPrice	21.5
1087	Quantity	9
1087	Discount	0.0
1088	OrderID	10599
1088	ProductID	62
1088	UnitPrice	49.3
1088	Quantity	10
1088	Discount	0.0
1089	OrderID	10600
1089	ProductID	54
1089	UnitPrice	7.45
1089	Quantity	4
1089	Discount	0.0
1090	OrderID	10600
1090	ProductID	73
1090	UnitPrice	15.0
1090	Quantity	30
1090	Discount	0.0
1091	OrderID	10601
1091	ProductID	13
1091	UnitPrice	6.0
1091	Quantity	60
1091	Discount	0.0
1092	OrderID	10601
1092	ProductID	59
1092	UnitPrice	55.0
1092	Quantity	35
1092	Discount	0.0
1093	OrderID	10602
1093	ProductID	77
1093	UnitPrice	13.0
1093	Quantity	5
1093	Discount	0.25
1094	OrderID	10603
1094	ProductID	22
1094	UnitPrice	21.0
1094	Quantity	48
1094	Discount	0.0
1095	OrderID	10603
1095	ProductID	49
1095	UnitPrice	20.0
1095	Quantity	25
1095	Discount	0.05
1096	OrderID	10604
1096	ProductID	48
1096	UnitPrice	12.75
1096	Quantity	6
1096	Discount	0.1
1097	OrderID	10604
1097	ProductID	76
1097	UnitPrice	18.0
1097	Quantity	10
1097	Discount	0.1
1098	OrderID	10605
1098	ProductID	16
1098	UnitPrice	17.45
1098	Quantity	30
1098	Discount	0.05
1099	OrderID	10605
1099	ProductID	59
1099	UnitPrice	55.0
1099	Quantity	20
1099	Discount	0.05
1100	OrderID	10605
1100	ProductID	60
1100	UnitPrice	34.0
1100	Quantity	70
1100	Discount	0.05
1101	OrderID	10605
1101	ProductID	71
1101	UnitPrice	21.5
1101	Quantity	15
1101	Discount	0.05
1102	OrderID	10606
1102	ProductID	4
1102	UnitPrice	22.0
1102	Quantity	20
1102	Discount	0.2
1103	OrderID	10606
1103	ProductID	55
1103	UnitPrice	24.0
1103	Quantity	20
1103	Discount	0.2
1104	OrderID	10606
1104	ProductID	62
1104	UnitPrice	49.3
1104	Quantity	10
1104	Discount	0.2
1105	OrderID	10607
1105	ProductID	7
1105	UnitPrice	30.0
1105	Quantity	45
1105	Discount	0.0
1106	OrderID	10607
1106	ProductID	17
1106	UnitPrice	39.0
1106	Quantity	100
1106	Discount	0.0
1107	OrderID	10607
1107	ProductID	33
1107	UnitPrice	2.5
1107	Quantity	14
1107	Discount	0.0
1108	OrderID	10607
1108	ProductID	40
1108	UnitPrice	18.4
1108	Quantity	42
1108	Discount	0.0
1109	OrderID	10607
1109	ProductID	72
1109	UnitPrice	34.8
1109	Quantity	12
1109	Discount	0.0
1110	OrderID	10608
1110	ProductID	56
1110	UnitPrice	38.0
1110	Quantity	28
1110	Discount	0.0
1111	OrderID	10609
1111	ProductID	1
1111	UnitPrice	18.0
1111	Quantity	3
1111	Discount	0.0
1112	OrderID	10609
1112	ProductID	10
1112	UnitPrice	31.0
1112	Quantity	10
1112	Discount	0.0
1113	OrderID	10609
1113	ProductID	21
1113	UnitPrice	10.0
1113	Quantity	6
1113	Discount	0.0
1114	OrderID	10610
1114	ProductID	36
1114	UnitPrice	19.0
1114	Quantity	21
1114	Discount	0.25
1115	OrderID	10611
1115	ProductID	1
1115	UnitPrice	18.0
1115	Quantity	6
1115	Discount	0.0
1116	OrderID	10611
1116	ProductID	2
1116	UnitPrice	19.0
1116	Quantity	10
1116	Discount	0.0
1117	OrderID	10611
1117	ProductID	60
1117	UnitPrice	34.0
1117	Quantity	15
1117	Discount	0.0
1118	OrderID	10612
1118	ProductID	10
1118	UnitPrice	31.0
1118	Quantity	70
1118	Discount	0.0
1119	OrderID	10612
1119	ProductID	36
1119	UnitPrice	19.0
1119	Quantity	55
1119	Discount	0.0
1120	OrderID	10612
1120	ProductID	49
1120	UnitPrice	20.0
1120	Quantity	18
1120	Discount	0.0
1121	OrderID	10612
1121	ProductID	60
1121	UnitPrice	34.0
1121	Quantity	40
1121	Discount	0.0
1122	OrderID	10612
1122	ProductID	76
1122	UnitPrice	18.0
1122	Quantity	80
1122	Discount	0.0
1123	OrderID	10613
1123	ProductID	13
1123	UnitPrice	6.0
1123	Quantity	8
1123	Discount	0.1
1124	OrderID	10613
1124	ProductID	75
1124	UnitPrice	7.75
1124	Quantity	40
1124	Discount	0.0
1125	OrderID	10614
1125	ProductID	11
1125	UnitPrice	21.0
1125	Quantity	14
1125	Discount	0.0
1126	OrderID	10614
1126	ProductID	21
1126	UnitPrice	10.0
1126	Quantity	8
1126	Discount	0.0
1127	OrderID	10614
1127	ProductID	39
1127	UnitPrice	18.0
1127	Quantity	5
1127	Discount	0.0
1128	OrderID	10615
1128	ProductID	55
1128	UnitPrice	24.0
1128	Quantity	5
1128	Discount	0.0
1129	OrderID	10616
1129	ProductID	38
1129	UnitPrice	263.5
1129	Quantity	15
1129	Discount	0.05
1130	OrderID	10616
1130	ProductID	56
1130	UnitPrice	38.0
1130	Quantity	14
1130	Discount	0.0
1131	OrderID	10616
1131	ProductID	70
1131	UnitPrice	15.0
1131	Quantity	15
1131	Discount	0.05
1132	OrderID	10616
1132	ProductID	71
1132	UnitPrice	21.5
1132	Quantity	15
1132	Discount	0.05
1133	OrderID	10617
1133	ProductID	59
1133	UnitPrice	55.0
1133	Quantity	30
1133	Discount	0.15
1134	OrderID	10618
1134	ProductID	6
1134	UnitPrice	25.0
1134	Quantity	70
1134	Discount	0.0
1135	OrderID	10618
1135	ProductID	56
1135	UnitPrice	38.0
1135	Quantity	20
1135	Discount	0.0
1136	OrderID	10618
1136	ProductID	68
1136	UnitPrice	12.5
1136	Quantity	15
1136	Discount	0.0
1137	OrderID	10619
1137	ProductID	21
1137	UnitPrice	10.0
1137	Quantity	42
1137	Discount	0.0
1138	OrderID	10619
1138	ProductID	22
1138	UnitPrice	21.0
1138	Quantity	40
1138	Discount	0.0
1139	OrderID	10620
1139	ProductID	24
1139	UnitPrice	4.5
1139	Quantity	5
1139	Discount	0.0
1140	OrderID	10620
1140	ProductID	52
1140	UnitPrice	7.0
1140	Quantity	5
1140	Discount	0.0
1141	OrderID	10621
1141	ProductID	19
1141	UnitPrice	9.2
1141	Quantity	5
1141	Discount	0.0
1142	OrderID	10621
1142	ProductID	23
1142	UnitPrice	9.0
1142	Quantity	10
1142	Discount	0.0
1143	OrderID	10621
1143	ProductID	70
1143	UnitPrice	15.0
1143	Quantity	20
1143	Discount	0.0
1144	OrderID	10621
1144	ProductID	71
1144	UnitPrice	21.5
1144	Quantity	15
1144	Discount	0.0
1145	OrderID	10622
1145	ProductID	2
1145	UnitPrice	19.0
1145	Quantity	20
1145	Discount	0.0
1146	OrderID	10622
1146	ProductID	68
1146	UnitPrice	12.5
1146	Quantity	18
1146	Discount	0.2
1147	OrderID	10623
1147	ProductID	14
1147	UnitPrice	23.25
1147	Quantity	21
1147	Discount	0.0
1148	OrderID	10623
1148	ProductID	19
1148	UnitPrice	9.2
1148	Quantity	15
1148	Discount	0.1
1149	OrderID	10623
1149	ProductID	21
1149	UnitPrice	10.0
1149	Quantity	25
1149	Discount	0.1
1150	OrderID	10623
1150	ProductID	24
1150	UnitPrice	4.5
1150	Quantity	3
1150	Discount	0.0
1151	OrderID	10623
1151	ProductID	35
1151	UnitPrice	18.0
1151	Quantity	30
1151	Discount	0.1
1152	OrderID	10624
1152	ProductID	28
1152	UnitPrice	45.6
1152	Quantity	10
1152	Discount	0.0
1153	OrderID	10624
1153	ProductID	29
1153	UnitPrice	123.79
1153	Quantity	6
1153	Discount	0.0
1154	OrderID	10624
1154	ProductID	44
1154	UnitPrice	19.45
1154	Quantity	10
1154	Discount	0.0
1155	OrderID	10625
1155	ProductID	14
1155	UnitPrice	23.25
1155	Quantity	3
1155	Discount	0.0
1156	OrderID	10625
1156	ProductID	42
1156	UnitPrice	14.0
1156	Quantity	5
1156	Discount	0.0
1157	OrderID	10625
1157	ProductID	60
1157	UnitPrice	34.0
1157	Quantity	10
1157	Discount	0.0
1158	OrderID	10626
1158	ProductID	53
1158	UnitPrice	32.8
1158	Quantity	12
1158	Discount	0.0
1159	OrderID	10626
1159	ProductID	60
1159	UnitPrice	34.0
1159	Quantity	20
1159	Discount	0.0
1160	OrderID	10626
1160	ProductID	71
1160	UnitPrice	21.5
1160	Quantity	20
1160	Discount	0.0
1161	OrderID	10627
1161	ProductID	62
1161	UnitPrice	49.3
1161	Quantity	15
1161	Discount	0.0
1162	OrderID	10627
1162	ProductID	73
1162	UnitPrice	15.0
1162	Quantity	35
1162	Discount	0.15
1163	OrderID	10628
1163	ProductID	1
1163	UnitPrice	18.0
1163	Quantity	25
1163	Discount	0.0
1164	OrderID	10629
1164	ProductID	29
1164	UnitPrice	123.79
1164	Quantity	20
1164	Discount	0.0
1165	OrderID	10629
1165	ProductID	64
1165	UnitPrice	33.25
1165	Quantity	9
1165	Discount	0.0
1166	OrderID	10630
1166	ProductID	55
1166	UnitPrice	24.0
1166	Quantity	12
1166	Discount	0.05
1167	OrderID	10630
1167	ProductID	76
1167	UnitPrice	18.0
1167	Quantity	35
1167	Discount	0.0
1168	OrderID	10631
1168	ProductID	75
1168	UnitPrice	7.75
1168	Quantity	8
1168	Discount	0.1
1169	OrderID	10632
1169	ProductID	2
1169	UnitPrice	19.0
1169	Quantity	30
1169	Discount	0.05
1170	OrderID	10632
1170	ProductID	33
1170	UnitPrice	2.5
1170	Quantity	20
1170	Discount	0.05
1171	OrderID	10633
1171	ProductID	12
1171	UnitPrice	38.0
1171	Quantity	36
1171	Discount	0.15
1172	OrderID	10633
1172	ProductID	13
1172	UnitPrice	6.0
1172	Quantity	13
1172	Discount	0.15
1173	OrderID	10633
1173	ProductID	26
1173	UnitPrice	31.23
1173	Quantity	35
1173	Discount	0.15
1174	OrderID	10633
1174	ProductID	62
1174	UnitPrice	49.3
1174	Quantity	80
1174	Discount	0.15
1175	OrderID	10634
1175	ProductID	7
1175	UnitPrice	30.0
1175	Quantity	35
1175	Discount	0.0
1176	OrderID	10634
1176	ProductID	18
1176	UnitPrice	62.5
1176	Quantity	50
1176	Discount	0.0
1177	OrderID	10634
1177	ProductID	51
1177	UnitPrice	53.0
1177	Quantity	15
1177	Discount	0.0
1178	OrderID	10634
1178	ProductID	75
1178	UnitPrice	7.75
1178	Quantity	2
1178	Discount	0.0
1179	OrderID	10635
1179	ProductID	4
1179	UnitPrice	22.0
1179	Quantity	10
1179	Discount	0.1
1180	OrderID	10635
1180	ProductID	5
1180	UnitPrice	21.35
1180	Quantity	15
1180	Discount	0.1
1181	OrderID	10635
1181	ProductID	22
1181	UnitPrice	21.0
1181	Quantity	40
1181	Discount	0.0
1182	OrderID	10636
1182	ProductID	4
1182	UnitPrice	22.0
1182	Quantity	25
1182	Discount	0.0
1183	OrderID	10636
1183	ProductID	58
1183	UnitPrice	13.25
1183	Quantity	6
1183	Discount	0.0
1184	OrderID	10637
1184	ProductID	11
1184	UnitPrice	21.0
1184	Quantity	10
1184	Discount	0.0
1185	OrderID	10637
1185	ProductID	50
1185	UnitPrice	16.25
1185	Quantity	25
1185	Discount	0.05
1186	OrderID	10637
1186	ProductID	56
1186	UnitPrice	38.0
1186	Quantity	60
1186	Discount	0.05
1187	OrderID	10638
1187	ProductID	45
1187	UnitPrice	9.5
1187	Quantity	20
1187	Discount	0.0
1188	OrderID	10638
1188	ProductID	65
1188	UnitPrice	21.05
1188	Quantity	21
1188	Discount	0.0
1189	OrderID	10638
1189	ProductID	72
1189	UnitPrice	34.8
1189	Quantity	60
1189	Discount	0.0
1190	OrderID	10639
1190	ProductID	18
1190	UnitPrice	62.5
1190	Quantity	8
1190	Discount	0.0
1191	OrderID	10640
1191	ProductID	69
1191	UnitPrice	36.0
1191	Quantity	20
1191	Discount	0.25
1192	OrderID	10640
1192	ProductID	70
1192	UnitPrice	15.0
1192	Quantity	15
1192	Discount	0.25
1193	OrderID	10641
1193	ProductID	2
1193	UnitPrice	19.0
1193	Quantity	50
1193	Discount	0.0
1194	OrderID	10641
1194	ProductID	40
1194	UnitPrice	18.4
1194	Quantity	60
1194	Discount	0.0
1195	OrderID	10642
1195	ProductID	21
1195	UnitPrice	10.0
1195	Quantity	30
1195	Discount	0.2
1196	OrderID	10642
1196	ProductID	61
1196	UnitPrice	28.5
1196	Quantity	20
1196	Discount	0.2
1197	OrderID	10643
1197	ProductID	28
1197	UnitPrice	45.6
1197	Quantity	15
1197	Discount	0.25
1198	OrderID	10643
1198	ProductID	39
1198	UnitPrice	18.0
1198	Quantity	21
1198	Discount	0.25
1199	OrderID	10643
1199	ProductID	46
1199	UnitPrice	12.0
1199	Quantity	2
1199	Discount	0.25
1200	OrderID	10644
1200	ProductID	18
1200	UnitPrice	62.5
1200	Quantity	4
1200	Discount	0.1
1201	OrderID	10644
1201	ProductID	43
1201	UnitPrice	46.0
1201	Quantity	20
1201	Discount	0.0
1202	OrderID	10644
1202	ProductID	46
1202	UnitPrice	12.0
1202	Quantity	21
1202	Discount	0.1
1203	OrderID	10645
1203	ProductID	18
1203	UnitPrice	62.5
1203	Quantity	20
1203	Discount	0.0
1204	OrderID	10645
1204	ProductID	36
1204	UnitPrice	19.0
1204	Quantity	15
1204	Discount	0.0
1205	OrderID	10646
1205	ProductID	1
1205	UnitPrice	18.0
1205	Quantity	15
1205	Discount	0.25
1206	OrderID	10646
1206	ProductID	10
1206	UnitPrice	31.0
1206	Quantity	18
1206	Discount	0.25
1207	OrderID	10646
1207	ProductID	71
1207	UnitPrice	21.5
1207	Quantity	30
1207	Discount	0.25
1208	OrderID	10646
1208	ProductID	77
1208	UnitPrice	13.0
1208	Quantity	35
1208	Discount	0.25
1209	OrderID	10647
1209	ProductID	19
1209	UnitPrice	9.2
1209	Quantity	30
1209	Discount	0.0
1210	OrderID	10647
1210	ProductID	39
1210	UnitPrice	18.0
1210	Quantity	20
1210	Discount	0.0
1211	OrderID	10648
1211	ProductID	22
1211	UnitPrice	21.0
1211	Quantity	15
1211	Discount	0.0
1212	OrderID	10648
1212	ProductID	24
1212	UnitPrice	4.5
1212	Quantity	15
1212	Discount	0.15
1213	OrderID	10649
1213	ProductID	28
1213	UnitPrice	45.6
1213	Quantity	20
1213	Discount	0.0
1214	OrderID	10649
1214	ProductID	72
1214	UnitPrice	34.8
1214	Quantity	15
1214	Discount	0.0
1215	OrderID	10650
1215	ProductID	30
1215	UnitPrice	25.89
1215	Quantity	30
1215	Discount	0.0
1216	OrderID	10650
1216	ProductID	53
1216	UnitPrice	32.8
1216	Quantity	25
1216	Discount	0.05
1217	OrderID	10650
1217	ProductID	54
1217	UnitPrice	7.45
1217	Quantity	30
1217	Discount	0.0
1218	OrderID	10651
1218	ProductID	19
1218	UnitPrice	9.2
1218	Quantity	12
1218	Discount	0.25
1219	OrderID	10651
1219	ProductID	22
1219	UnitPrice	21.0
1219	Quantity	20
1219	Discount	0.25
1220	OrderID	10652
1220	ProductID	30
1220	UnitPrice	25.89
1220	Quantity	2
1220	Discount	0.25
1221	OrderID	10652
1221	ProductID	42
1221	UnitPrice	14.0
1221	Quantity	20
1221	Discount	0.0
1222	OrderID	10653
1222	ProductID	16
1222	UnitPrice	17.45
1222	Quantity	30
1222	Discount	0.1
1223	OrderID	10653
1223	ProductID	60
1223	UnitPrice	34.0
1223	Quantity	20
1223	Discount	0.1
1224	OrderID	10654
1224	ProductID	4
1224	UnitPrice	22.0
1224	Quantity	12
1224	Discount	0.1
1225	OrderID	10654
1225	ProductID	39
1225	UnitPrice	18.0
1225	Quantity	20
1225	Discount	0.1
1226	OrderID	10654
1226	ProductID	54
1226	UnitPrice	7.45
1226	Quantity	6
1226	Discount	0.1
1227	OrderID	10655
1227	ProductID	41
1227	UnitPrice	9.65
1227	Quantity	20
1227	Discount	0.2
1228	OrderID	10656
1228	ProductID	14
1228	UnitPrice	23.25
1228	Quantity	3
1228	Discount	0.1
1229	OrderID	10656
1229	ProductID	44
1229	UnitPrice	19.45
1229	Quantity	28
1229	Discount	0.1
1230	OrderID	10656
1230	ProductID	47
1230	UnitPrice	9.5
1230	Quantity	6
1230	Discount	0.1
1231	OrderID	10657
1231	ProductID	15
1231	UnitPrice	15.5
1231	Quantity	50
1231	Discount	0.0
1232	OrderID	10657
1232	ProductID	41
1232	UnitPrice	9.65
1232	Quantity	24
1232	Discount	0.0
1233	OrderID	10657
1233	ProductID	46
1233	UnitPrice	12.0
1233	Quantity	45
1233	Discount	0.0
1234	OrderID	10657
1234	ProductID	47
1234	UnitPrice	9.5
1234	Quantity	10
1234	Discount	0.0
1235	OrderID	10657
1235	ProductID	56
1235	UnitPrice	38.0
1235	Quantity	45
1235	Discount	0.0
1236	OrderID	10657
1236	ProductID	60
1236	UnitPrice	34.0
1236	Quantity	30
1236	Discount	0.0
1237	OrderID	10658
1237	ProductID	21
1237	UnitPrice	10.0
1237	Quantity	60
1237	Discount	0.0
1238	OrderID	10658
1238	ProductID	40
1238	UnitPrice	18.4
1238	Quantity	70
1238	Discount	0.05
1239	OrderID	10658
1239	ProductID	60
1239	UnitPrice	34.0
1239	Quantity	55
1239	Discount	0.05
1240	OrderID	10658
1240	ProductID	77
1240	UnitPrice	13.0
1240	Quantity	70
1240	Discount	0.05
1241	OrderID	10659
1241	ProductID	31
1241	UnitPrice	12.5
1241	Quantity	20
1241	Discount	0.05
1242	OrderID	10659
1242	ProductID	40
1242	UnitPrice	18.4
1242	Quantity	24
1242	Discount	0.05
1243	OrderID	10659
1243	ProductID	70
1243	UnitPrice	15.0
1243	Quantity	40
1243	Discount	0.05
1244	OrderID	10660
1244	ProductID	20
1244	UnitPrice	81.0
1244	Quantity	21
1244	Discount	0.0
1245	OrderID	10661
1245	ProductID	39
1245	UnitPrice	18.0
1245	Quantity	3
1245	Discount	0.2
1246	OrderID	10661
1246	ProductID	58
1246	UnitPrice	13.25
1246	Quantity	49
1246	Discount	0.2
1247	OrderID	10662
1247	ProductID	68
1247	UnitPrice	12.5
1247	Quantity	10
1247	Discount	0.0
1248	OrderID	10663
1248	ProductID	40
1248	UnitPrice	18.4
1248	Quantity	30
1248	Discount	0.05
1249	OrderID	10663
1249	ProductID	42
1249	UnitPrice	14.0
1249	Quantity	30
1249	Discount	0.05
1250	OrderID	10663
1250	ProductID	51
1250	UnitPrice	53.0
1250	Quantity	20
1250	Discount	0.05
1251	OrderID	10664
1251	ProductID	10
1251	UnitPrice	31.0
1251	Quantity	24
1251	Discount	0.15
1252	OrderID	10664
1252	ProductID	56
1252	UnitPrice	38.0
1252	Quantity	12
1252	Discount	0.15
1253	OrderID	10664
1253	ProductID	65
1253	UnitPrice	21.05
1253	Quantity	15
1253	Discount	0.15
1254	OrderID	10665
1254	ProductID	51
1254	UnitPrice	53.0
1254	Quantity	20
1254	Discount	0.0
1255	OrderID	10665
1255	ProductID	59
1255	UnitPrice	55.0
1255	Quantity	1
1255	Discount	0.0
1256	OrderID	10665
1256	ProductID	76
1256	UnitPrice	18.0
1256	Quantity	10
1256	Discount	0.0
1257	OrderID	10666
1257	ProductID	29
1257	UnitPrice	123.79
1257	Quantity	36
1257	Discount	0.0
1258	OrderID	10666
1258	ProductID	65
1258	UnitPrice	21.05
1258	Quantity	10
1258	Discount	0.0
1259	OrderID	10667
1259	ProductID	69
1259	UnitPrice	36.0
1259	Quantity	45
1259	Discount	0.2
1260	OrderID	10667
1260	ProductID	71
1260	UnitPrice	21.5
1260	Quantity	14
1260	Discount	0.2
1261	OrderID	10668
1261	ProductID	31
1261	UnitPrice	12.5
1261	Quantity	8
1261	Discount	0.1
1262	OrderID	10668
1262	ProductID	55
1262	UnitPrice	24.0
1262	Quantity	4
1262	Discount	0.1
1263	OrderID	10668
1263	ProductID	64
1263	UnitPrice	33.25
1263	Quantity	15
1263	Discount	0.1
1264	OrderID	10669
1264	ProductID	36
1264	UnitPrice	19.0
1264	Quantity	30
1264	Discount	0.0
1265	OrderID	10670
1265	ProductID	23
1265	UnitPrice	9.0
1265	Quantity	32
1265	Discount	0.0
1266	OrderID	10670
1266	ProductID	46
1266	UnitPrice	12.0
1266	Quantity	60
1266	Discount	0.0
1267	OrderID	10670
1267	ProductID	67
1267	UnitPrice	14.0
1267	Quantity	25
1267	Discount	0.0
1268	OrderID	10670
1268	ProductID	73
1268	UnitPrice	15.0
1268	Quantity	50
1268	Discount	0.0
1269	OrderID	10670
1269	ProductID	75
1269	UnitPrice	7.75
1269	Quantity	25
1269	Discount	0.0
1270	OrderID	10671
1270	ProductID	16
1270	UnitPrice	17.45
1270	Quantity	10
1270	Discount	0.0
1271	OrderID	10671
1271	ProductID	62
1271	UnitPrice	49.3
1271	Quantity	10
1271	Discount	0.0
1272	OrderID	10671
1272	ProductID	65
1272	UnitPrice	21.05
1272	Quantity	12
1272	Discount	0.0
1273	OrderID	10672
1273	ProductID	38
1273	UnitPrice	263.5
1273	Quantity	15
1273	Discount	0.1
1274	OrderID	10672
1274	ProductID	71
1274	UnitPrice	21.5
1274	Quantity	12
1274	Discount	0.0
1275	OrderID	10673
1275	ProductID	16
1275	UnitPrice	17.45
1275	Quantity	3
1275	Discount	0.0
1276	OrderID	10673
1276	ProductID	42
1276	UnitPrice	14.0
1276	Quantity	6
1276	Discount	0.0
1277	OrderID	10673
1277	ProductID	43
1277	UnitPrice	46.0
1277	Quantity	6
1277	Discount	0.0
1278	OrderID	10674
1278	ProductID	23
1278	UnitPrice	9.0
1278	Quantity	5
1278	Discount	0.0
1279	OrderID	10675
1279	ProductID	14
1279	UnitPrice	23.25
1279	Quantity	30
1279	Discount	0.0
1280	OrderID	10675
1280	ProductID	53
1280	UnitPrice	32.8
1280	Quantity	10
1280	Discount	0.0
1281	OrderID	10675
1281	ProductID	58
1281	UnitPrice	13.25
1281	Quantity	30
1281	Discount	0.0
1282	OrderID	10676
1282	ProductID	10
1282	UnitPrice	31.0
1282	Quantity	2
1282	Discount	0.0
1283	OrderID	10676
1283	ProductID	19
1283	UnitPrice	9.2
1283	Quantity	7
1283	Discount	0.0
1284	OrderID	10676
1284	ProductID	44
1284	UnitPrice	19.45
1284	Quantity	21
1284	Discount	0.0
1285	OrderID	10677
1285	ProductID	26
1285	UnitPrice	31.23
1285	Quantity	30
1285	Discount	0.15
1286	OrderID	10677
1286	ProductID	33
1286	UnitPrice	2.5
1286	Quantity	8
1286	Discount	0.15
1287	OrderID	10678
1287	ProductID	12
1287	UnitPrice	38.0
1287	Quantity	100
1287	Discount	0.0
1288	OrderID	10678
1288	ProductID	33
1288	UnitPrice	2.5
1288	Quantity	30
1288	Discount	0.0
1289	OrderID	10678
1289	ProductID	41
1289	UnitPrice	9.65
1289	Quantity	120
1289	Discount	0.0
1290	OrderID	10678
1290	ProductID	54
1290	UnitPrice	7.45
1290	Quantity	30
1290	Discount	0.0
1291	OrderID	10679
1291	ProductID	59
1291	UnitPrice	55.0
1291	Quantity	12
1291	Discount	0.0
1292	OrderID	10680
1292	ProductID	16
1292	UnitPrice	17.45
1292	Quantity	50
1292	Discount	0.25
1293	OrderID	10680
1293	ProductID	31
1293	UnitPrice	12.5
1293	Quantity	20
1293	Discount	0.25
1294	OrderID	10680
1294	ProductID	42
1294	UnitPrice	14.0
1294	Quantity	40
1294	Discount	0.25
1295	OrderID	10681
1295	ProductID	19
1295	UnitPrice	9.2
1295	Quantity	30
1295	Discount	0.1
1296	OrderID	10681
1296	ProductID	21
1296	UnitPrice	10.0
1296	Quantity	12
1296	Discount	0.1
1297	OrderID	10681
1297	ProductID	64
1297	UnitPrice	33.25
1297	Quantity	28
1297	Discount	0.0
1298	OrderID	10682
1298	ProductID	33
1298	UnitPrice	2.5
1298	Quantity	30
1298	Discount	0.0
1299	OrderID	10682
1299	ProductID	66
1299	UnitPrice	17.0
1299	Quantity	4
1299	Discount	0.0
1300	OrderID	10682
1300	ProductID	75
1300	UnitPrice	7.75
1300	Quantity	30
1300	Discount	0.0
1301	OrderID	10683
1301	ProductID	52
1301	UnitPrice	7.0
1301	Quantity	9
1301	Discount	0.0
1302	OrderID	10684
1302	ProductID	40
1302	UnitPrice	18.4
1302	Quantity	20
1302	Discount	0.0
1303	OrderID	10684
1303	ProductID	47
1303	UnitPrice	9.5
1303	Quantity	40
1303	Discount	0.0
1304	OrderID	10684
1304	ProductID	60
1304	UnitPrice	34.0
1304	Quantity	30
1304	Discount	0.0
1305	OrderID	10685
1305	ProductID	10
1305	UnitPrice	31.0
1305	Quantity	20
1305	Discount	0.0
1306	OrderID	10685
1306	ProductID	41
1306	UnitPrice	9.65
1306	Quantity	4
1306	Discount	0.0
1307	OrderID	10685
1307	ProductID	47
1307	UnitPrice	9.5
1307	Quantity	15
1307	Discount	0.0
1308	OrderID	10686
1308	ProductID	17
1308	UnitPrice	39.0
1308	Quantity	30
1308	Discount	0.2
1309	OrderID	10686
1309	ProductID	26
1309	UnitPrice	31.23
1309	Quantity	15
1309	Discount	0.0
1310	OrderID	10687
1310	ProductID	9
1310	UnitPrice	97.0
1310	Quantity	50
1310	Discount	0.25
1311	OrderID	10687
1311	ProductID	29
1311	UnitPrice	123.79
1311	Quantity	10
1311	Discount	0.0
1312	OrderID	10687
1312	ProductID	36
1312	UnitPrice	19.0
1312	Quantity	6
1312	Discount	0.25
1313	OrderID	10688
1313	ProductID	10
1313	UnitPrice	31.0
1313	Quantity	18
1313	Discount	0.1
1314	OrderID	10688
1314	ProductID	28
1314	UnitPrice	45.6
1314	Quantity	60
1314	Discount	0.1
1315	OrderID	10688
1315	ProductID	34
1315	UnitPrice	14.0
1315	Quantity	14
1315	Discount	0.0
1316	OrderID	10689
1316	ProductID	1
1316	UnitPrice	18.0
1316	Quantity	35
1316	Discount	0.25
1317	OrderID	10690
1317	ProductID	56
1317	UnitPrice	38.0
1317	Quantity	20
1317	Discount	0.25
1318	OrderID	10690
1318	ProductID	77
1318	UnitPrice	13.0
1318	Quantity	30
1318	Discount	0.25
1319	OrderID	10691
1319	ProductID	1
1319	UnitPrice	18.0
1319	Quantity	30
1319	Discount	0.0
1320	OrderID	10691
1320	ProductID	29
1320	UnitPrice	123.79
1320	Quantity	40
1320	Discount	0.0
1321	OrderID	10691
1321	ProductID	43
1321	UnitPrice	46.0
1321	Quantity	40
1321	Discount	0.0
1322	OrderID	10691
1322	ProductID	44
1322	UnitPrice	19.45
1322	Quantity	24
1322	Discount	0.0
1323	OrderID	10691
1323	ProductID	62
1323	UnitPrice	49.3
1323	Quantity	48
1323	Discount	0.0
1324	OrderID	10692
1324	ProductID	63
1324	UnitPrice	43.9
1324	Quantity	20
1324	Discount	0.0
1325	OrderID	10693
1325	ProductID	9
1325	UnitPrice	97.0
1325	Quantity	6
1325	Discount	0.0
1326	OrderID	10693
1326	ProductID	54
1326	UnitPrice	7.45
1326	Quantity	60
1326	Discount	0.15
1327	OrderID	10693
1327	ProductID	69
1327	UnitPrice	36.0
1327	Quantity	30
1327	Discount	0.15
1328	OrderID	10693
1328	ProductID	73
1328	UnitPrice	15.0
1328	Quantity	15
1328	Discount	0.15
1329	OrderID	10694
1329	ProductID	7
1329	UnitPrice	30.0
1329	Quantity	90
1329	Discount	0.0
1330	OrderID	10694
1330	ProductID	59
1330	UnitPrice	55.0
1330	Quantity	25
1330	Discount	0.0
1331	OrderID	10694
1331	ProductID	70
1331	UnitPrice	15.0
1331	Quantity	50
1331	Discount	0.0
1332	OrderID	10695
1332	ProductID	8
1332	UnitPrice	40.0
1332	Quantity	10
1332	Discount	0.0
1333	OrderID	10695
1333	ProductID	12
1333	UnitPrice	38.0
1333	Quantity	4
1333	Discount	0.0
1334	OrderID	10695
1334	ProductID	24
1334	UnitPrice	4.5
1334	Quantity	20
1334	Discount	0.0
1335	OrderID	10696
1335	ProductID	17
1335	UnitPrice	39.0
1335	Quantity	20
1335	Discount	0.0
1336	OrderID	10696
1336	ProductID	46
1336	UnitPrice	12.0
1336	Quantity	18
1336	Discount	0.0
1337	OrderID	10697
1337	ProductID	19
1337	UnitPrice	9.2
1337	Quantity	7
1337	Discount	0.25
1338	OrderID	10697
1338	ProductID	35
1338	UnitPrice	18.0
1338	Quantity	9
1338	Discount	0.25
1339	OrderID	10697
1339	ProductID	58
1339	UnitPrice	13.25
1339	Quantity	30
1339	Discount	0.25
1340	OrderID	10697
1340	ProductID	70
1340	UnitPrice	15.0
1340	Quantity	30
1340	Discount	0.25
1341	OrderID	10698
1341	ProductID	11
1341	UnitPrice	21.0
1341	Quantity	15
1341	Discount	0.0
1342	OrderID	10698
1342	ProductID	17
1342	UnitPrice	39.0
1342	Quantity	8
1342	Discount	0.05
1343	OrderID	10698
1343	ProductID	29
1343	UnitPrice	123.79
1343	Quantity	12
1343	Discount	0.05
1344	OrderID	10698
1344	ProductID	65
1344	UnitPrice	21.05
1344	Quantity	65
1344	Discount	0.05
1345	OrderID	10698
1345	ProductID	70
1345	UnitPrice	15.0
1345	Quantity	8
1345	Discount	0.05
1346	OrderID	10699
1346	ProductID	47
1346	UnitPrice	9.5
1346	Quantity	12
1346	Discount	0.0
1347	OrderID	10700
1347	ProductID	1
1347	UnitPrice	18.0
1347	Quantity	5
1347	Discount	0.2
1348	OrderID	10700
1348	ProductID	34
1348	UnitPrice	14.0
1348	Quantity	12
1348	Discount	0.2
1349	OrderID	10700
1349	ProductID	68
1349	UnitPrice	12.5
1349	Quantity	40
1349	Discount	0.2
1350	OrderID	10700
1350	ProductID	71
1350	UnitPrice	21.5
1350	Quantity	60
1350	Discount	0.2
1351	OrderID	10701
1351	ProductID	59
1351	UnitPrice	55.0
1351	Quantity	42
1351	Discount	0.15
1352	OrderID	10701
1352	ProductID	71
1352	UnitPrice	21.5
1352	Quantity	20
1352	Discount	0.15
1353	OrderID	10701
1353	ProductID	76
1353	UnitPrice	18.0
1353	Quantity	35
1353	Discount	0.15
1354	OrderID	10702
1354	ProductID	3
1354	UnitPrice	10.0
1354	Quantity	6
1354	Discount	0.0
1355	OrderID	10702
1355	ProductID	76
1355	UnitPrice	18.0
1355	Quantity	15
1355	Discount	0.0
1356	OrderID	10703
1356	ProductID	2
1356	UnitPrice	19.0
1356	Quantity	5
1356	Discount	0.0
1357	OrderID	10703
1357	ProductID	59
1357	UnitPrice	55.0
1357	Quantity	35
1357	Discount	0.0
1358	OrderID	10703
1358	ProductID	73
1358	UnitPrice	15.0
1358	Quantity	35
1358	Discount	0.0
1359	OrderID	10704
1359	ProductID	4
1359	UnitPrice	22.0
1359	Quantity	6
1359	Discount	0.0
1360	OrderID	10704
1360	ProductID	24
1360	UnitPrice	4.5
1360	Quantity	35
1360	Discount	0.0
1361	OrderID	10704
1361	ProductID	48
1361	UnitPrice	12.75
1361	Quantity	24
1361	Discount	0.0
1362	OrderID	10705
1362	ProductID	31
1362	UnitPrice	12.5
1362	Quantity	20
1362	Discount	0.0
1363	OrderID	10705
1363	ProductID	32
1363	UnitPrice	32.0
1363	Quantity	4
1363	Discount	0.0
1364	OrderID	10706
1364	ProductID	16
1364	UnitPrice	17.45
1364	Quantity	20
1364	Discount	0.0
1365	OrderID	10706
1365	ProductID	43
1365	UnitPrice	46.0
1365	Quantity	24
1365	Discount	0.0
1366	OrderID	10706
1366	ProductID	59
1366	UnitPrice	55.0
1366	Quantity	8
1366	Discount	0.0
1367	OrderID	10707
1367	ProductID	55
1367	UnitPrice	24.0
1367	Quantity	21
1367	Discount	0.0
1368	OrderID	10707
1368	ProductID	57
1368	UnitPrice	19.5
1368	Quantity	40
1368	Discount	0.0
1369	OrderID	10707
1369	ProductID	70
1369	UnitPrice	15.0
1369	Quantity	28
1369	Discount	0.15
1370	OrderID	10708
1370	ProductID	5
1370	UnitPrice	21.35
1370	Quantity	4
1370	Discount	0.0
1371	OrderID	10708
1371	ProductID	36
1371	UnitPrice	19.0
1371	Quantity	5
1371	Discount	0.0
1372	OrderID	10709
1372	ProductID	8
1372	UnitPrice	40.0
1372	Quantity	40
1372	Discount	0.0
1373	OrderID	10709
1373	ProductID	51
1373	UnitPrice	53.0
1373	Quantity	28
1373	Discount	0.0
1374	OrderID	10709
1374	ProductID	60
1374	UnitPrice	34.0
1374	Quantity	10
1374	Discount	0.0
1375	OrderID	10710
1375	ProductID	19
1375	UnitPrice	9.2
1375	Quantity	5
1375	Discount	0.0
1376	OrderID	10710
1376	ProductID	47
1376	UnitPrice	9.5
1376	Quantity	5
1376	Discount	0.0
1377	OrderID	10711
1377	ProductID	19
1377	UnitPrice	9.2
1377	Quantity	12
1377	Discount	0.0
1378	OrderID	10711
1378	ProductID	41
1378	UnitPrice	9.65
1378	Quantity	42
1378	Discount	0.0
1379	OrderID	10711
1379	ProductID	53
1379	UnitPrice	32.8
1379	Quantity	120
1379	Discount	0.0
1380	OrderID	10712
1380	ProductID	53
1380	UnitPrice	32.8
1380	Quantity	3
1380	Discount	0.05
1381	OrderID	10712
1381	ProductID	56
1381	UnitPrice	38.0
1381	Quantity	30
1381	Discount	0.0
1382	OrderID	10713
1382	ProductID	10
1382	UnitPrice	31.0
1382	Quantity	18
1382	Discount	0.0
1383	OrderID	10713
1383	ProductID	26
1383	UnitPrice	31.23
1383	Quantity	30
1383	Discount	0.0
1384	OrderID	10713
1384	ProductID	45
1384	UnitPrice	9.5
1384	Quantity	110
1384	Discount	0.0
1385	OrderID	10713
1385	ProductID	46
1385	UnitPrice	12.0
1385	Quantity	24
1385	Discount	0.0
1386	OrderID	10714
1386	ProductID	2
1386	UnitPrice	19.0
1386	Quantity	30
1386	Discount	0.25
1387	OrderID	10714
1387	ProductID	17
1387	UnitPrice	39.0
1387	Quantity	27
1387	Discount	0.25
1388	OrderID	10714
1388	ProductID	47
1388	UnitPrice	9.5
1388	Quantity	50
1388	Discount	0.25
1389	OrderID	10714
1389	ProductID	56
1389	UnitPrice	38.0
1389	Quantity	18
1389	Discount	0.25
1390	OrderID	10714
1390	ProductID	58
1390	UnitPrice	13.25
1390	Quantity	12
1390	Discount	0.25
1391	OrderID	10715
1391	ProductID	10
1391	UnitPrice	31.0
1391	Quantity	21
1391	Discount	0.0
1392	OrderID	10715
1392	ProductID	71
1392	UnitPrice	21.5
1392	Quantity	30
1392	Discount	0.0
1393	OrderID	10716
1393	ProductID	21
1393	UnitPrice	10.0
1393	Quantity	5
1393	Discount	0.0
1394	OrderID	10716
1394	ProductID	51
1394	UnitPrice	53.0
1394	Quantity	7
1394	Discount	0.0
1395	OrderID	10716
1395	ProductID	61
1395	UnitPrice	28.5
1395	Quantity	10
1395	Discount	0.0
1396	OrderID	10717
1396	ProductID	21
1396	UnitPrice	10.0
1396	Quantity	32
1396	Discount	0.05
1397	OrderID	10717
1397	ProductID	54
1397	UnitPrice	7.45
1397	Quantity	15
1397	Discount	0.0
1398	OrderID	10717
1398	ProductID	69
1398	UnitPrice	36.0
1398	Quantity	25
1398	Discount	0.05
1399	OrderID	10718
1399	ProductID	12
1399	UnitPrice	38.0
1399	Quantity	36
1399	Discount	0.0
1400	OrderID	10718
1400	ProductID	16
1400	UnitPrice	17.45
1400	Quantity	20
1400	Discount	0.0
1401	OrderID	10718
1401	ProductID	36
1401	UnitPrice	19.0
1401	Quantity	40
1401	Discount	0.0
1402	OrderID	10718
1402	ProductID	62
1402	UnitPrice	49.3
1402	Quantity	20
1402	Discount	0.0
1403	OrderID	10719
1403	ProductID	18
1403	UnitPrice	62.5
1403	Quantity	12
1403	Discount	0.25
1404	OrderID	10719
1404	ProductID	30
1404	UnitPrice	25.89
1404	Quantity	3
1404	Discount	0.25
1405	OrderID	10719
1405	ProductID	54
1405	UnitPrice	7.45
1405	Quantity	40
1405	Discount	0.25
1406	OrderID	10720
1406	ProductID	35
1406	UnitPrice	18.0
1406	Quantity	21
1406	Discount	0.0
1407	OrderID	10720
1407	ProductID	71
1407	UnitPrice	21.5
1407	Quantity	8
1407	Discount	0.0
1408	OrderID	10721
1408	ProductID	44
1408	UnitPrice	19.45
1408	Quantity	50
1408	Discount	0.05
1409	OrderID	10722
1409	ProductID	2
1409	UnitPrice	19.0
1409	Quantity	3
1409	Discount	0.0
1410	OrderID	10722
1410	ProductID	31
1410	UnitPrice	12.5
1410	Quantity	50
1410	Discount	0.0
1411	OrderID	10722
1411	ProductID	68
1411	UnitPrice	12.5
1411	Quantity	45
1411	Discount	0.0
1412	OrderID	10722
1412	ProductID	75
1412	UnitPrice	7.75
1412	Quantity	42
1412	Discount	0.0
1413	OrderID	10723
1413	ProductID	26
1413	UnitPrice	31.23
1413	Quantity	15
1413	Discount	0.0
1414	OrderID	10724
1414	ProductID	10
1414	UnitPrice	31.0
1414	Quantity	16
1414	Discount	0.0
1415	OrderID	10724
1415	ProductID	61
1415	UnitPrice	28.5
1415	Quantity	5
1415	Discount	0.0
1416	OrderID	10725
1416	ProductID	41
1416	UnitPrice	9.65
1416	Quantity	12
1416	Discount	0.0
1417	OrderID	10725
1417	ProductID	52
1417	UnitPrice	7.0
1417	Quantity	4
1417	Discount	0.0
1418	OrderID	10725
1418	ProductID	55
1418	UnitPrice	24.0
1418	Quantity	6
1418	Discount	0.0
1419	OrderID	10726
1419	ProductID	4
1419	UnitPrice	22.0
1419	Quantity	25
1419	Discount	0.0
1420	OrderID	10726
1420	ProductID	11
1420	UnitPrice	21.0
1420	Quantity	5
1420	Discount	0.0
1421	OrderID	10727
1421	ProductID	17
1421	UnitPrice	39.0
1421	Quantity	20
1421	Discount	0.05
1422	OrderID	10727
1422	ProductID	56
1422	UnitPrice	38.0
1422	Quantity	10
1422	Discount	0.05
1423	OrderID	10727
1423	ProductID	59
1423	UnitPrice	55.0
1423	Quantity	10
1423	Discount	0.05
1424	OrderID	10728
1424	ProductID	30
1424	UnitPrice	25.89
1424	Quantity	15
1424	Discount	0.0
1425	OrderID	10728
1425	ProductID	40
1425	UnitPrice	18.4
1425	Quantity	6
1425	Discount	0.0
1426	OrderID	10728
1426	ProductID	55
1426	UnitPrice	24.0
1426	Quantity	12
1426	Discount	0.0
1427	OrderID	10728
1427	ProductID	60
1427	UnitPrice	34.0
1427	Quantity	15
1427	Discount	0.0
1428	OrderID	10729
1428	ProductID	1
1428	UnitPrice	18.0
1428	Quantity	50
1428	Discount	0.0
1429	OrderID	10729
1429	ProductID	21
1429	UnitPrice	10.0
1429	Quantity	30
1429	Discount	0.0
1430	OrderID	10729
1430	ProductID	50
1430	UnitPrice	16.25
1430	Quantity	40
1430	Discount	0.0
1431	OrderID	10730
1431	ProductID	16
1431	UnitPrice	17.45
1431	Quantity	15
1431	Discount	0.05
1432	OrderID	10730
1432	ProductID	31
1432	UnitPrice	12.5
1432	Quantity	3
1432	Discount	0.05
1433	OrderID	10730
1433	ProductID	65
1433	UnitPrice	21.05
1433	Quantity	10
1433	Discount	0.05
1434	OrderID	10731
1434	ProductID	21
1434	UnitPrice	10.0
1434	Quantity	40
1434	Discount	0.05
1435	OrderID	10731
1435	ProductID	51
1435	UnitPrice	53.0
1435	Quantity	30
1435	Discount	0.05
1436	OrderID	10732
1436	ProductID	76
1436	UnitPrice	18.0
1436	Quantity	20
1436	Discount	0.0
1437	OrderID	10733
1437	ProductID	14
1437	UnitPrice	23.25
1437	Quantity	16
1437	Discount	0.0
1438	OrderID	10733
1438	ProductID	28
1438	UnitPrice	45.6
1438	Quantity	20
1438	Discount	0.0
1439	OrderID	10733
1439	ProductID	52
1439	UnitPrice	7.0
1439	Quantity	25
1439	Discount	0.0
1440	OrderID	10734
1440	ProductID	6
1440	UnitPrice	25.0
1440	Quantity	30
1440	Discount	0.0
1441	OrderID	10734
1441	ProductID	30
1441	UnitPrice	25.89
1441	Quantity	15
1441	Discount	0.0
1442	OrderID	10734
1442	ProductID	76
1442	UnitPrice	18.0
1442	Quantity	20
1442	Discount	0.0
1443	OrderID	10735
1443	ProductID	61
1443	UnitPrice	28.5
1443	Quantity	20
1443	Discount	0.1
1444	OrderID	10735
1444	ProductID	77
1444	UnitPrice	13.0
1444	Quantity	2
1444	Discount	0.1
1445	OrderID	10736
1445	ProductID	65
1445	UnitPrice	21.05
1445	Quantity	40
1445	Discount	0.0
1446	OrderID	10736
1446	ProductID	75
1446	UnitPrice	7.75
1446	Quantity	20
1446	Discount	0.0
1447	OrderID	10737
1447	ProductID	13
1447	UnitPrice	6.0
1447	Quantity	4
1447	Discount	0.0
1448	OrderID	10737
1448	ProductID	41
1448	UnitPrice	9.65
1448	Quantity	12
1448	Discount	0.0
1449	OrderID	10738
1449	ProductID	16
1449	UnitPrice	17.45
1449	Quantity	3
1449	Discount	0.0
1450	OrderID	10739
1450	ProductID	36
1450	UnitPrice	19.0
1450	Quantity	6
1450	Discount	0.0
1451	OrderID	10739
1451	ProductID	52
1451	UnitPrice	7.0
1451	Quantity	18
1451	Discount	0.0
1452	OrderID	10740
1452	ProductID	28
1452	UnitPrice	45.6
1452	Quantity	5
1452	Discount	0.2
1453	OrderID	10740
1453	ProductID	35
1453	UnitPrice	18.0
1453	Quantity	35
1453	Discount	0.2
1454	OrderID	10740
1454	ProductID	45
1454	UnitPrice	9.5
1454	Quantity	40
1454	Discount	0.2
1455	OrderID	10740
1455	ProductID	56
1455	UnitPrice	38.0
1455	Quantity	14
1455	Discount	0.2
1456	OrderID	10741
1456	ProductID	2
1456	UnitPrice	19.0
1456	Quantity	15
1456	Discount	0.2
1457	OrderID	10742
1457	ProductID	3
1457	UnitPrice	10.0
1457	Quantity	20
1457	Discount	0.0
1458	OrderID	10742
1458	ProductID	60
1458	UnitPrice	34.0
1458	Quantity	50
1458	Discount	0.0
1459	OrderID	10742
1459	ProductID	72
1459	UnitPrice	34.8
1459	Quantity	35
1459	Discount	0.0
1460	OrderID	10743
1460	ProductID	46
1460	UnitPrice	12.0
1460	Quantity	28
1460	Discount	0.05
1461	OrderID	10744
1461	ProductID	40
1461	UnitPrice	18.4
1461	Quantity	50
1461	Discount	0.2
1462	OrderID	10745
1462	ProductID	18
1462	UnitPrice	62.5
1462	Quantity	24
1462	Discount	0.0
1463	OrderID	10745
1463	ProductID	44
1463	UnitPrice	19.45
1463	Quantity	16
1463	Discount	0.0
1464	OrderID	10745
1464	ProductID	59
1464	UnitPrice	55.0
1464	Quantity	45
1464	Discount	0.0
1465	OrderID	10745
1465	ProductID	72
1465	UnitPrice	34.8
1465	Quantity	7
1465	Discount	0.0
1466	OrderID	10746
1466	ProductID	13
1466	UnitPrice	6.0
1466	Quantity	6
1466	Discount	0.0
1467	OrderID	10746
1467	ProductID	42
1467	UnitPrice	14.0
1467	Quantity	28
1467	Discount	0.0
1468	OrderID	10746
1468	ProductID	62
1468	UnitPrice	49.3
1468	Quantity	9
1468	Discount	0.0
1469	OrderID	10746
1469	ProductID	69
1469	UnitPrice	36.0
1469	Quantity	40
1469	Discount	0.0
1470	OrderID	10747
1470	ProductID	31
1470	UnitPrice	12.5
1470	Quantity	8
1470	Discount	0.0
1471	OrderID	10747
1471	ProductID	41
1471	UnitPrice	9.65
1471	Quantity	35
1471	Discount	0.0
1472	OrderID	10747
1472	ProductID	63
1472	UnitPrice	43.9
1472	Quantity	9
1472	Discount	0.0
1473	OrderID	10747
1473	ProductID	69
1473	UnitPrice	36.0
1473	Quantity	30
1473	Discount	0.0
1474	OrderID	10748
1474	ProductID	23
1474	UnitPrice	9.0
1474	Quantity	44
1474	Discount	0.0
1475	OrderID	10748
1475	ProductID	40
1475	UnitPrice	18.4
1475	Quantity	40
1475	Discount	0.0
1476	OrderID	10748
1476	ProductID	56
1476	UnitPrice	38.0
1476	Quantity	28
1476	Discount	0.0
1477	OrderID	10749
1477	ProductID	56
1477	UnitPrice	38.0
1477	Quantity	15
1477	Discount	0.0
1478	OrderID	10749
1478	ProductID	59
1478	UnitPrice	55.0
1478	Quantity	6
1478	Discount	0.0
1479	OrderID	10749
1479	ProductID	76
1479	UnitPrice	18.0
1479	Quantity	10
1479	Discount	0.0
1480	OrderID	10750
1480	ProductID	14
1480	UnitPrice	23.25
1480	Quantity	5
1480	Discount	0.15
1481	OrderID	10750
1481	ProductID	45
1481	UnitPrice	9.5
1481	Quantity	40
1481	Discount	0.15
1482	OrderID	10750
1482	ProductID	59
1482	UnitPrice	55.0
1482	Quantity	25
1482	Discount	0.15
1483	OrderID	10751
1483	ProductID	26
1483	UnitPrice	31.23
1483	Quantity	12
1483	Discount	0.1
1484	OrderID	10751
1484	ProductID	30
1484	UnitPrice	25.89
1484	Quantity	30
1484	Discount	0.0
1485	OrderID	10751
1485	ProductID	50
1485	UnitPrice	16.25
1485	Quantity	20
1485	Discount	0.1
1486	OrderID	10751
1486	ProductID	73
1486	UnitPrice	15.0
1486	Quantity	15
1486	Discount	0.0
1487	OrderID	10752
1487	ProductID	1
1487	UnitPrice	18.0
1487	Quantity	8
1487	Discount	0.0
1488	OrderID	10752
1488	ProductID	69
1488	UnitPrice	36.0
1488	Quantity	3
1488	Discount	0.0
1489	OrderID	10753
1489	ProductID	45
1489	UnitPrice	9.5
1489	Quantity	4
1489	Discount	0.0
1490	OrderID	10753
1490	ProductID	74
1490	UnitPrice	10.0
1490	Quantity	5
1490	Discount	0.0
1491	OrderID	10754
1491	ProductID	40
1491	UnitPrice	18.4
1491	Quantity	3
1491	Discount	0.0
1492	OrderID	10755
1492	ProductID	47
1492	UnitPrice	9.5
1492	Quantity	30
1492	Discount	0.25
1493	OrderID	10755
1493	ProductID	56
1493	UnitPrice	38.0
1493	Quantity	30
1493	Discount	0.25
1494	OrderID	10755
1494	ProductID	57
1494	UnitPrice	19.5
1494	Quantity	14
1494	Discount	0.25
1495	OrderID	10755
1495	ProductID	69
1495	UnitPrice	36.0
1495	Quantity	25
1495	Discount	0.25
1496	OrderID	10756
1496	ProductID	18
1496	UnitPrice	62.5
1496	Quantity	21
1496	Discount	0.2
1497	OrderID	10756
1497	ProductID	36
1497	UnitPrice	19.0
1497	Quantity	20
1497	Discount	0.2
1498	OrderID	10756
1498	ProductID	68
1498	UnitPrice	12.5
1498	Quantity	6
1498	Discount	0.2
1499	OrderID	10756
1499	ProductID	69
1499	UnitPrice	36.0
1499	Quantity	20
1499	Discount	0.2
1500	OrderID	10757
1500	ProductID	34
1500	UnitPrice	14.0
1500	Quantity	30
1500	Discount	0.0
1501	OrderID	10757
1501	ProductID	59
1501	UnitPrice	55.0
1501	Quantity	7
1501	Discount	0.0
1502	OrderID	10757
1502	ProductID	62
1502	UnitPrice	49.3
1502	Quantity	30
1502	Discount	0.0
1503	OrderID	10757
1503	ProductID	64
1503	UnitPrice	33.25
1503	Quantity	24
1503	Discount	0.0
1504	OrderID	10758
1504	ProductID	26
1504	UnitPrice	31.23
1504	Quantity	20
1504	Discount	0.0
1505	OrderID	10758
1505	ProductID	52
1505	UnitPrice	7.0
1505	Quantity	60
1505	Discount	0.0
1506	OrderID	10758
1506	ProductID	70
1506	UnitPrice	15.0
1506	Quantity	40
1506	Discount	0.0
1507	OrderID	10759
1507	ProductID	32
1507	UnitPrice	32.0
1507	Quantity	10
1507	Discount	0.0
1508	OrderID	10760
1508	ProductID	25
1508	UnitPrice	14.0
1508	Quantity	12
1508	Discount	0.25
1509	OrderID	10760
1509	ProductID	27
1509	UnitPrice	43.9
1509	Quantity	40
1509	Discount	0.0
1510	OrderID	10760
1510	ProductID	43
1510	UnitPrice	46.0
1510	Quantity	30
1510	Discount	0.25
1511	OrderID	10761
1511	ProductID	25
1511	UnitPrice	14.0
1511	Quantity	35
1511	Discount	0.25
1512	OrderID	10761
1512	ProductID	75
1512	UnitPrice	7.75
1512	Quantity	18
1512	Discount	0.0
1513	OrderID	10762
1513	ProductID	39
1513	UnitPrice	18.0
1513	Quantity	16
1513	Discount	0.0
1514	OrderID	10762
1514	ProductID	47
1514	UnitPrice	9.5
1514	Quantity	30
1514	Discount	0.0
1515	OrderID	10762
1515	ProductID	51
1515	UnitPrice	53.0
1515	Quantity	28
1515	Discount	0.0
1516	OrderID	10762
1516	ProductID	56
1516	UnitPrice	38.0
1516	Quantity	60
1516	Discount	0.0
1517	OrderID	10763
1517	ProductID	21
1517	UnitPrice	10.0
1517	Quantity	40
1517	Discount	0.0
1518	OrderID	10763
1518	ProductID	22
1518	UnitPrice	21.0
1518	Quantity	6
1518	Discount	0.0
1519	OrderID	10763
1519	ProductID	24
1519	UnitPrice	4.5
1519	Quantity	20
1519	Discount	0.0
1520	OrderID	10764
1520	ProductID	3
1520	UnitPrice	10.0
1520	Quantity	20
1520	Discount	0.1
1521	OrderID	10764
1521	ProductID	39
1521	UnitPrice	18.0
1521	Quantity	130
1521	Discount	0.1
1522	OrderID	10765
1522	ProductID	65
1522	UnitPrice	21.05
1522	Quantity	80
1522	Discount	0.1
1523	OrderID	10766
1523	ProductID	2
1523	UnitPrice	19.0
1523	Quantity	40
1523	Discount	0.0
1524	OrderID	10766
1524	ProductID	7
1524	UnitPrice	30.0
1524	Quantity	35
1524	Discount	0.0
1525	OrderID	10766
1525	ProductID	68
1525	UnitPrice	12.5
1525	Quantity	40
1525	Discount	0.0
1526	OrderID	10767
1526	ProductID	42
1526	UnitPrice	14.0
1526	Quantity	2
1526	Discount	0.0
1527	OrderID	10768
1527	ProductID	22
1527	UnitPrice	21.0
1527	Quantity	4
1527	Discount	0.0
1528	OrderID	10768
1528	ProductID	31
1528	UnitPrice	12.5
1528	Quantity	50
1528	Discount	0.0
1529	OrderID	10768
1529	ProductID	60
1529	UnitPrice	34.0
1529	Quantity	15
1529	Discount	0.0
1530	OrderID	10768
1530	ProductID	71
1530	UnitPrice	21.5
1530	Quantity	12
1530	Discount	0.0
1531	OrderID	10769
1531	ProductID	41
1531	UnitPrice	9.65
1531	Quantity	30
1531	Discount	0.05
1532	OrderID	10769
1532	ProductID	52
1532	UnitPrice	7.0
1532	Quantity	15
1532	Discount	0.05
1533	OrderID	10769
1533	ProductID	61
1533	UnitPrice	28.5
1533	Quantity	20
1533	Discount	0.0
1534	OrderID	10769
1534	ProductID	62
1534	UnitPrice	49.3
1534	Quantity	15
1534	Discount	0.0
1535	OrderID	10770
1535	ProductID	11
1535	UnitPrice	21.0
1535	Quantity	15
1535	Discount	0.25
1536	OrderID	10771
1536	ProductID	71
1536	UnitPrice	21.5
1536	Quantity	16
1536	Discount	0.0
1537	OrderID	10772
1537	ProductID	29
1537	UnitPrice	123.79
1537	Quantity	18
1537	Discount	0.0
1538	OrderID	10772
1538	ProductID	59
1538	UnitPrice	55.0
1538	Quantity	25
1538	Discount	0.0
1539	OrderID	10773
1539	ProductID	17
1539	UnitPrice	39.0
1539	Quantity	33
1539	Discount	0.0
1540	OrderID	10773
1540	ProductID	31
1540	UnitPrice	12.5
1540	Quantity	70
1540	Discount	0.2
1541	OrderID	10773
1541	ProductID	75
1541	UnitPrice	7.75
1541	Quantity	7
1541	Discount	0.2
1542	OrderID	10774
1542	ProductID	31
1542	UnitPrice	12.5
1542	Quantity	2
1542	Discount	0.25
1543	OrderID	10774
1543	ProductID	66
1543	UnitPrice	17.0
1543	Quantity	50
1543	Discount	0.0
1544	OrderID	10775
1544	ProductID	10
1544	UnitPrice	31.0
1544	Quantity	6
1544	Discount	0.0
1545	OrderID	10775
1545	ProductID	67
1545	UnitPrice	14.0
1545	Quantity	3
1545	Discount	0.0
1546	OrderID	10776
1546	ProductID	31
1546	UnitPrice	12.5
1546	Quantity	16
1546	Discount	0.05
1547	OrderID	10776
1547	ProductID	42
1547	UnitPrice	14.0
1547	Quantity	12
1547	Discount	0.05
1548	OrderID	10776
1548	ProductID	45
1548	UnitPrice	9.5
1548	Quantity	27
1548	Discount	0.05
1549	OrderID	10776
1549	ProductID	51
1549	UnitPrice	53.0
1549	Quantity	120
1549	Discount	0.05
1550	OrderID	10777
1550	ProductID	42
1550	UnitPrice	14.0
1550	Quantity	20
1550	Discount	0.2
1551	OrderID	10778
1551	ProductID	41
1551	UnitPrice	9.65
1551	Quantity	10
1551	Discount	0.0
1552	OrderID	10779
1552	ProductID	16
1552	UnitPrice	17.45
1552	Quantity	20
1552	Discount	0.0
1553	OrderID	10779
1553	ProductID	62
1553	UnitPrice	49.3
1553	Quantity	20
1553	Discount	0.0
1554	OrderID	10780
1554	ProductID	70
1554	UnitPrice	15.0
1554	Quantity	35
1554	Discount	0.0
1555	OrderID	10780
1555	ProductID	77
1555	UnitPrice	13.0
1555	Quantity	15
1555	Discount	0.0
1556	OrderID	10781
1556	ProductID	54
1556	UnitPrice	7.45
1556	Quantity	3
1556	Discount	0.2
1557	OrderID	10781
1557	ProductID	56
1557	UnitPrice	38.0
1557	Quantity	20
1557	Discount	0.2
1558	OrderID	10781
1558	ProductID	74
1558	UnitPrice	10.0
1558	Quantity	35
1558	Discount	0.0
1559	OrderID	10782
1559	ProductID	31
1559	UnitPrice	12.5
1559	Quantity	1
1559	Discount	0.0
1560	OrderID	10783
1560	ProductID	31
1560	UnitPrice	12.5
1560	Quantity	10
1560	Discount	0.0
1561	OrderID	10783
1561	ProductID	38
1561	UnitPrice	263.5
1561	Quantity	5
1561	Discount	0.0
1562	OrderID	10784
1562	ProductID	36
1562	UnitPrice	19.0
1562	Quantity	30
1562	Discount	0.0
1563	OrderID	10784
1563	ProductID	39
1563	UnitPrice	18.0
1563	Quantity	2
1563	Discount	0.15
1564	OrderID	10784
1564	ProductID	72
1564	UnitPrice	34.8
1564	Quantity	30
1564	Discount	0.15
1565	OrderID	10785
1565	ProductID	10
1565	UnitPrice	31.0
1565	Quantity	10
1565	Discount	0.0
1566	OrderID	10785
1566	ProductID	75
1566	UnitPrice	7.75
1566	Quantity	10
1566	Discount	0.0
1567	OrderID	10786
1567	ProductID	8
1567	UnitPrice	40.0
1567	Quantity	30
1567	Discount	0.2
1568	OrderID	10786
1568	ProductID	30
1568	UnitPrice	25.89
1568	Quantity	15
1568	Discount	0.2
1569	OrderID	10786
1569	ProductID	75
1569	UnitPrice	7.75
1569	Quantity	42
1569	Discount	0.2
1570	OrderID	10787
1570	ProductID	2
1570	UnitPrice	19.0
1570	Quantity	15
1570	Discount	0.05
1571	OrderID	10787
1571	ProductID	29
1571	UnitPrice	123.79
1571	Quantity	20
1571	Discount	0.05
1572	OrderID	10788
1572	ProductID	19
1572	UnitPrice	9.2
1572	Quantity	50
1572	Discount	0.05
1573	OrderID	10788
1573	ProductID	75
1573	UnitPrice	7.75
1573	Quantity	40
1573	Discount	0.05
1574	OrderID	10789
1574	ProductID	18
1574	UnitPrice	62.5
1574	Quantity	30
1574	Discount	0.0
1575	OrderID	10789
1575	ProductID	35
1575	UnitPrice	18.0
1575	Quantity	15
1575	Discount	0.0
1576	OrderID	10789
1576	ProductID	63
1576	UnitPrice	43.9
1576	Quantity	30
1576	Discount	0.0
1577	OrderID	10789
1577	ProductID	68
1577	UnitPrice	12.5
1577	Quantity	18
1577	Discount	0.0
1578	OrderID	10790
1578	ProductID	7
1578	UnitPrice	30.0
1578	Quantity	3
1578	Discount	0.15
1579	OrderID	10790
1579	ProductID	56
1579	UnitPrice	38.0
1579	Quantity	20
1579	Discount	0.15
1580	OrderID	10791
1580	ProductID	29
1580	UnitPrice	123.79
1580	Quantity	14
1580	Discount	0.05
1581	OrderID	10791
1581	ProductID	41
1581	UnitPrice	9.65
1581	Quantity	20
1581	Discount	0.05
1582	OrderID	10792
1582	ProductID	2
1582	UnitPrice	19.0
1582	Quantity	10
1582	Discount	0.0
1583	OrderID	10792
1583	ProductID	54
1583	UnitPrice	7.45
1583	Quantity	3
1583	Discount	0.0
1584	OrderID	10792
1584	ProductID	68
1584	UnitPrice	12.5
1584	Quantity	15
1584	Discount	0.0
1585	OrderID	10793
1585	ProductID	41
1585	UnitPrice	9.65
1585	Quantity	14
1585	Discount	0.0
1586	OrderID	10793
1586	ProductID	52
1586	UnitPrice	7.0
1586	Quantity	8
1586	Discount	0.0
1587	OrderID	10794
1587	ProductID	14
1587	UnitPrice	23.25
1587	Quantity	15
1587	Discount	0.2
1588	OrderID	10794
1588	ProductID	54
1588	UnitPrice	7.45
1588	Quantity	6
1588	Discount	0.2
1589	OrderID	10795
1589	ProductID	16
1589	UnitPrice	17.45
1589	Quantity	65
1589	Discount	0.0
1590	OrderID	10795
1590	ProductID	17
1590	UnitPrice	39.0
1590	Quantity	35
1590	Discount	0.25
1591	OrderID	10796
1591	ProductID	26
1591	UnitPrice	31.23
1591	Quantity	21
1591	Discount	0.2
1592	OrderID	10796
1592	ProductID	44
1592	UnitPrice	19.45
1592	Quantity	10
1592	Discount	0.0
1593	OrderID	10796
1593	ProductID	64
1593	UnitPrice	33.25
1593	Quantity	35
1593	Discount	0.2
1594	OrderID	10796
1594	ProductID	69
1594	UnitPrice	36.0
1594	Quantity	24
1594	Discount	0.2
1595	OrderID	10797
1595	ProductID	11
1595	UnitPrice	21.0
1595	Quantity	20
1595	Discount	0.0
1596	OrderID	10798
1596	ProductID	62
1596	UnitPrice	49.3
1596	Quantity	2
1596	Discount	0.0
1597	OrderID	10798
1597	ProductID	72
1597	UnitPrice	34.8
1597	Quantity	10
1597	Discount	0.0
1598	OrderID	10799
1598	ProductID	13
1598	UnitPrice	6.0
1598	Quantity	20
1598	Discount	0.15
1599	OrderID	10799
1599	ProductID	24
1599	UnitPrice	4.5
1599	Quantity	20
1599	Discount	0.15
1600	OrderID	10799
1600	ProductID	59
1600	UnitPrice	55.0
1600	Quantity	25
1600	Discount	0.0
1601	OrderID	10800
1601	ProductID	11
1601	UnitPrice	21.0
1601	Quantity	50
1601	Discount	0.1
1602	OrderID	10800
1602	ProductID	51
1602	UnitPrice	53.0
1602	Quantity	10
1602	Discount	0.1
1603	OrderID	10800
1603	ProductID	54
1603	UnitPrice	7.45
1603	Quantity	7
1603	Discount	0.1
1604	OrderID	10801
1604	ProductID	17
1604	UnitPrice	39.0
1604	Quantity	40
1604	Discount	0.25
1605	OrderID	10801
1605	ProductID	29
1605	UnitPrice	123.79
1605	Quantity	20
1605	Discount	0.25
1606	OrderID	10802
1606	ProductID	30
1606	UnitPrice	25.89
1606	Quantity	25
1606	Discount	0.25
1607	OrderID	10802
1607	ProductID	51
1607	UnitPrice	53.0
1607	Quantity	30
1607	Discount	0.25
1608	OrderID	10802
1608	ProductID	55
1608	UnitPrice	24.0
1608	Quantity	60
1608	Discount	0.25
1609	OrderID	10802
1609	ProductID	62
1609	UnitPrice	49.3
1609	Quantity	5
1609	Discount	0.25
1610	OrderID	10803
1610	ProductID	19
1610	UnitPrice	9.2
1610	Quantity	24
1610	Discount	0.05
1611	OrderID	10803
1611	ProductID	25
1611	UnitPrice	14.0
1611	Quantity	15
1611	Discount	0.05
1612	OrderID	10803
1612	ProductID	59
1612	UnitPrice	55.0
1612	Quantity	15
1612	Discount	0.05
1613	OrderID	10804
1613	ProductID	10
1613	UnitPrice	31.0
1613	Quantity	36
1613	Discount	0.0
1614	OrderID	10804
1614	ProductID	28
1614	UnitPrice	45.6
1614	Quantity	24
1614	Discount	0.0
1615	OrderID	10804
1615	ProductID	49
1615	UnitPrice	20.0
1615	Quantity	4
1615	Discount	0.15
1616	OrderID	10805
1616	ProductID	34
1616	UnitPrice	14.0
1616	Quantity	10
1616	Discount	0.0
1617	OrderID	10805
1617	ProductID	38
1617	UnitPrice	263.5
1617	Quantity	10
1617	Discount	0.0
1618	OrderID	10806
1618	ProductID	2
1618	UnitPrice	19.0
1618	Quantity	20
1618	Discount	0.25
1619	OrderID	10806
1619	ProductID	65
1619	UnitPrice	21.05
1619	Quantity	2
1619	Discount	0.0
1620	OrderID	10806
1620	ProductID	74
1620	UnitPrice	10.0
1620	Quantity	15
1620	Discount	0.25
1621	OrderID	10807
1621	ProductID	40
1621	UnitPrice	18.4
1621	Quantity	1
1621	Discount	0.0
1622	OrderID	10808
1622	ProductID	56
1622	UnitPrice	38.0
1622	Quantity	20
1622	Discount	0.15
1623	OrderID	10808
1623	ProductID	76
1623	UnitPrice	18.0
1623	Quantity	50
1623	Discount	0.15
1624	OrderID	10809
1624	ProductID	52
1624	UnitPrice	7.0
1624	Quantity	20
1624	Discount	0.0
1625	OrderID	10810
1625	ProductID	13
1625	UnitPrice	6.0
1625	Quantity	7
1625	Discount	0.0
1626	OrderID	10810
1626	ProductID	25
1626	UnitPrice	14.0
1626	Quantity	5
1626	Discount	0.0
1627	OrderID	10810
1627	ProductID	70
1627	UnitPrice	15.0
1627	Quantity	5
1627	Discount	0.0
1628	OrderID	10811
1628	ProductID	19
1628	UnitPrice	9.2
1628	Quantity	15
1628	Discount	0.0
1629	OrderID	10811
1629	ProductID	23
1629	UnitPrice	9.0
1629	Quantity	18
1629	Discount	0.0
1630	OrderID	10811
1630	ProductID	40
1630	UnitPrice	18.4
1630	Quantity	30
1630	Discount	0.0
1631	OrderID	10812
1631	ProductID	31
1631	UnitPrice	12.5
1631	Quantity	16
1631	Discount	0.1
1632	OrderID	10812
1632	ProductID	72
1632	UnitPrice	34.8
1632	Quantity	40
1632	Discount	0.1
1633	OrderID	10812
1633	ProductID	77
1633	UnitPrice	13.0
1633	Quantity	20
1633	Discount	0.0
1634	OrderID	10813
1634	ProductID	2
1634	UnitPrice	19.0
1634	Quantity	12
1634	Discount	0.2
1635	OrderID	10813
1635	ProductID	46
1635	UnitPrice	12.0
1635	Quantity	35
1635	Discount	0.0
1636	OrderID	10814
1636	ProductID	41
1636	UnitPrice	9.65
1636	Quantity	20
1636	Discount	0.0
1637	OrderID	10814
1637	ProductID	43
1637	UnitPrice	46.0
1637	Quantity	20
1637	Discount	0.15
1638	OrderID	10814
1638	ProductID	48
1638	UnitPrice	12.75
1638	Quantity	8
1638	Discount	0.15
1639	OrderID	10814
1639	ProductID	61
1639	UnitPrice	28.5
1639	Quantity	30
1639	Discount	0.15
1640	OrderID	10815
1640	ProductID	33
1640	UnitPrice	2.5
1640	Quantity	16
1640	Discount	0.0
1641	OrderID	10816
1641	ProductID	38
1641	UnitPrice	263.5
1641	Quantity	30
1641	Discount	0.05
1642	OrderID	10816
1642	ProductID	62
1642	UnitPrice	49.3
1642	Quantity	20
1642	Discount	0.05
1643	OrderID	10817
1643	ProductID	26
1643	UnitPrice	31.23
1643	Quantity	40
1643	Discount	0.15
1644	OrderID	10817
1644	ProductID	38
1644	UnitPrice	263.5
1644	Quantity	30
1644	Discount	0.0
1645	OrderID	10817
1645	ProductID	40
1645	UnitPrice	18.4
1645	Quantity	60
1645	Discount	0.15
1646	OrderID	10817
1646	ProductID	62
1646	UnitPrice	49.3
1646	Quantity	25
1646	Discount	0.15
1647	OrderID	10818
1647	ProductID	32
1647	UnitPrice	32.0
1647	Quantity	20
1647	Discount	0.0
1648	OrderID	10818
1648	ProductID	41
1648	UnitPrice	9.65
1648	Quantity	20
1648	Discount	0.0
1649	OrderID	10819
1649	ProductID	43
1649	UnitPrice	46.0
1649	Quantity	7
1649	Discount	0.0
1650	OrderID	10819
1650	ProductID	75
1650	UnitPrice	7.75
1650	Quantity	20
1650	Discount	0.0
1651	OrderID	10820
1651	ProductID	56
1651	UnitPrice	38.0
1651	Quantity	30
1651	Discount	0.0
1652	OrderID	10821
1652	ProductID	35
1652	UnitPrice	18.0
1652	Quantity	20
1652	Discount	0.0
1653	OrderID	10821
1653	ProductID	51
1653	UnitPrice	53.0
1653	Quantity	6
1653	Discount	0.0
1654	OrderID	10822
1654	ProductID	62
1654	UnitPrice	49.3
1654	Quantity	3
1654	Discount	0.0
1655	OrderID	10822
1655	ProductID	70
1655	UnitPrice	15.0
1655	Quantity	6
1655	Discount	0.0
1656	OrderID	10823
1656	ProductID	11
1656	UnitPrice	21.0
1656	Quantity	20
1656	Discount	0.1
1657	OrderID	10823
1657	ProductID	57
1657	UnitPrice	19.5
1657	Quantity	15
1657	Discount	0.0
1658	OrderID	10823
1658	ProductID	59
1658	UnitPrice	55.0
1658	Quantity	40
1658	Discount	0.1
1659	OrderID	10823
1659	ProductID	77
1659	UnitPrice	13.0
1659	Quantity	15
1659	Discount	0.1
1660	OrderID	10824
1660	ProductID	41
1660	UnitPrice	9.65
1660	Quantity	12
1660	Discount	0.0
1661	OrderID	10824
1661	ProductID	70
1661	UnitPrice	15.0
1661	Quantity	9
1661	Discount	0.0
1662	OrderID	10825
1662	ProductID	26
1662	UnitPrice	31.23
1662	Quantity	12
1662	Discount	0.0
1663	OrderID	10825
1663	ProductID	53
1663	UnitPrice	32.8
1663	Quantity	20
1663	Discount	0.0
1664	OrderID	10826
1664	ProductID	31
1664	UnitPrice	12.5
1664	Quantity	35
1664	Discount	0.0
1665	OrderID	10826
1665	ProductID	57
1665	UnitPrice	19.5
1665	Quantity	15
1665	Discount	0.0
1666	OrderID	10827
1666	ProductID	10
1666	UnitPrice	31.0
1666	Quantity	15
1666	Discount	0.0
1667	OrderID	10827
1667	ProductID	39
1667	UnitPrice	18.0
1667	Quantity	21
1667	Discount	0.0
1668	OrderID	10828
1668	ProductID	20
1668	UnitPrice	81.0
1668	Quantity	5
1668	Discount	0.0
1669	OrderID	10828
1669	ProductID	38
1669	UnitPrice	263.5
1669	Quantity	2
1669	Discount	0.0
1670	OrderID	10829
1670	ProductID	2
1670	UnitPrice	19.0
1670	Quantity	10
1670	Discount	0.0
1671	OrderID	10829
1671	ProductID	8
1671	UnitPrice	40.0
1671	Quantity	20
1671	Discount	0.0
1672	OrderID	10829
1672	ProductID	13
1672	UnitPrice	6.0
1672	Quantity	10
1672	Discount	0.0
1673	OrderID	10829
1673	ProductID	60
1673	UnitPrice	34.0
1673	Quantity	21
1673	Discount	0.0
1674	OrderID	10830
1674	ProductID	6
1674	UnitPrice	25.0
1674	Quantity	6
1674	Discount	0.0
1675	OrderID	10830
1675	ProductID	39
1675	UnitPrice	18.0
1675	Quantity	28
1675	Discount	0.0
1676	OrderID	10830
1676	ProductID	60
1676	UnitPrice	34.0
1676	Quantity	30
1676	Discount	0.0
1677	OrderID	10830
1677	ProductID	68
1677	UnitPrice	12.5
1677	Quantity	24
1677	Discount	0.0
1678	OrderID	10831
1678	ProductID	19
1678	UnitPrice	9.2
1678	Quantity	2
1678	Discount	0.0
1679	OrderID	10831
1679	ProductID	35
1679	UnitPrice	18.0
1679	Quantity	8
1679	Discount	0.0
1680	OrderID	10831
1680	ProductID	38
1680	UnitPrice	263.5
1680	Quantity	8
1680	Discount	0.0
1681	OrderID	10831
1681	ProductID	43
1681	UnitPrice	46.0
1681	Quantity	9
1681	Discount	0.0
1682	OrderID	10832
1682	ProductID	13
1682	UnitPrice	6.0
1682	Quantity	3
1682	Discount	0.2
1683	OrderID	10832
1683	ProductID	25
1683	UnitPrice	14.0
1683	Quantity	10
1683	Discount	0.2
1684	OrderID	10832
1684	ProductID	44
1684	UnitPrice	19.45
1684	Quantity	16
1684	Discount	0.2
1685	OrderID	10832
1685	ProductID	64
1685	UnitPrice	33.25
1685	Quantity	3
1685	Discount	0.0
1686	OrderID	10833
1686	ProductID	7
1686	UnitPrice	30.0
1686	Quantity	20
1686	Discount	0.1
1687	OrderID	10833
1687	ProductID	31
1687	UnitPrice	12.5
1687	Quantity	9
1687	Discount	0.1
1688	OrderID	10833
1688	ProductID	53
1688	UnitPrice	32.8
1688	Quantity	9
1688	Discount	0.1
1689	OrderID	10834
1689	ProductID	29
1689	UnitPrice	123.79
1689	Quantity	8
1689	Discount	0.05
1690	OrderID	10834
1690	ProductID	30
1690	UnitPrice	25.89
1690	Quantity	20
1690	Discount	0.05
1691	OrderID	10835
1691	ProductID	59
1691	UnitPrice	55.0
1691	Quantity	15
1691	Discount	0.0
1692	OrderID	10835
1692	ProductID	77
1692	UnitPrice	13.0
1692	Quantity	2
1692	Discount	0.2
1693	OrderID	10836
1693	ProductID	22
1693	UnitPrice	21.0
1693	Quantity	52
1693	Discount	0.0
1694	OrderID	10836
1694	ProductID	35
1694	UnitPrice	18.0
1694	Quantity	6
1694	Discount	0.0
1695	OrderID	10836
1695	ProductID	57
1695	UnitPrice	19.5
1695	Quantity	24
1695	Discount	0.0
1696	OrderID	10836
1696	ProductID	60
1696	UnitPrice	34.0
1696	Quantity	60
1696	Discount	0.0
1697	OrderID	10836
1697	ProductID	64
1697	UnitPrice	33.25
1697	Quantity	30
1697	Discount	0.0
1698	OrderID	10837
1698	ProductID	13
1698	UnitPrice	6.0
1698	Quantity	6
1698	Discount	0.0
1699	OrderID	10837
1699	ProductID	40
1699	UnitPrice	18.4
1699	Quantity	25
1699	Discount	0.0
1700	OrderID	10837
1700	ProductID	47
1700	UnitPrice	9.5
1700	Quantity	40
1700	Discount	0.25
1701	OrderID	10837
1701	ProductID	76
1701	UnitPrice	18.0
1701	Quantity	21
1701	Discount	0.25
1702	OrderID	10838
1702	ProductID	1
1702	UnitPrice	18.0
1702	Quantity	4
1702	Discount	0.25
1703	OrderID	10838
1703	ProductID	18
1703	UnitPrice	62.5
1703	Quantity	25
1703	Discount	0.25
1704	OrderID	10838
1704	ProductID	36
1704	UnitPrice	19.0
1704	Quantity	50
1704	Discount	0.25
1705	OrderID	10839
1705	ProductID	58
1705	UnitPrice	13.25
1705	Quantity	30
1705	Discount	0.1
1706	OrderID	10839
1706	ProductID	72
1706	UnitPrice	34.8
1706	Quantity	15
1706	Discount	0.1
1707	OrderID	10840
1707	ProductID	25
1707	UnitPrice	14.0
1707	Quantity	6
1707	Discount	0.2
1708	OrderID	10840
1708	ProductID	39
1708	UnitPrice	18.0
1708	Quantity	10
1708	Discount	0.2
1709	OrderID	10841
1709	ProductID	10
1709	UnitPrice	31.0
1709	Quantity	16
1709	Discount	0.0
1710	OrderID	10841
1710	ProductID	56
1710	UnitPrice	38.0
1710	Quantity	30
1710	Discount	0.0
1711	OrderID	10841
1711	ProductID	59
1711	UnitPrice	55.0
1711	Quantity	50
1711	Discount	0.0
1712	OrderID	10841
1712	ProductID	77
1712	UnitPrice	13.0
1712	Quantity	15
1712	Discount	0.0
1713	OrderID	10842
1713	ProductID	11
1713	UnitPrice	21.0
1713	Quantity	15
1713	Discount	0.0
1714	OrderID	10842
1714	ProductID	43
1714	UnitPrice	46.0
1714	Quantity	5
1714	Discount	0.0
1715	OrderID	10842
1715	ProductID	68
1715	UnitPrice	12.5
1715	Quantity	20
1715	Discount	0.0
1716	OrderID	10842
1716	ProductID	70
1716	UnitPrice	15.0
1716	Quantity	12
1716	Discount	0.0
1717	OrderID	10843
1717	ProductID	51
1717	UnitPrice	53.0
1717	Quantity	4
1717	Discount	0.25
1718	OrderID	10844
1718	ProductID	22
1718	UnitPrice	21.0
1718	Quantity	35
1718	Discount	0.0
1719	OrderID	10845
1719	ProductID	23
1719	UnitPrice	9.0
1719	Quantity	70
1719	Discount	0.1
1720	OrderID	10845
1720	ProductID	35
1720	UnitPrice	18.0
1720	Quantity	25
1720	Discount	0.1
1721	OrderID	10845
1721	ProductID	42
1721	UnitPrice	14.0
1721	Quantity	42
1721	Discount	0.1
1722	OrderID	10845
1722	ProductID	58
1722	UnitPrice	13.25
1722	Quantity	60
1722	Discount	0.1
1723	OrderID	10845
1723	ProductID	64
1723	UnitPrice	33.25
1723	Quantity	48
1723	Discount	0.0
1724	OrderID	10846
1724	ProductID	4
1724	UnitPrice	22.0
1724	Quantity	21
1724	Discount	0.0
1725	OrderID	10846
1725	ProductID	70
1725	UnitPrice	15.0
1725	Quantity	30
1725	Discount	0.0
1726	OrderID	10846
1726	ProductID	74
1726	UnitPrice	10.0
1726	Quantity	20
1726	Discount	0.0
1727	OrderID	10847
1727	ProductID	1
1727	UnitPrice	18.0
1727	Quantity	80
1727	Discount	0.2
1728	OrderID	10847
1728	ProductID	19
1728	UnitPrice	9.2
1728	Quantity	12
1728	Discount	0.2
1729	OrderID	10847
1729	ProductID	37
1729	UnitPrice	26.0
1729	Quantity	60
1729	Discount	0.2
1730	OrderID	10847
1730	ProductID	45
1730	UnitPrice	9.5
1730	Quantity	36
1730	Discount	0.2
1731	OrderID	10847
1731	ProductID	60
1731	UnitPrice	34.0
1731	Quantity	45
1731	Discount	0.2
1732	OrderID	10847
1732	ProductID	71
1732	UnitPrice	21.5
1732	Quantity	55
1732	Discount	0.2
1733	OrderID	10848
1733	ProductID	5
1733	UnitPrice	21.35
1733	Quantity	30
1733	Discount	0.0
1734	OrderID	10848
1734	ProductID	9
1734	UnitPrice	97.0
1734	Quantity	3
1734	Discount	0.0
1735	OrderID	10849
1735	ProductID	3
1735	UnitPrice	10.0
1735	Quantity	49
1735	Discount	0.0
1736	OrderID	10849
1736	ProductID	26
1736	UnitPrice	31.23
1736	Quantity	18
1736	Discount	0.15
1737	OrderID	10850
1737	ProductID	25
1737	UnitPrice	14.0
1737	Quantity	20
1737	Discount	0.15
1738	OrderID	10850
1738	ProductID	33
1738	UnitPrice	2.5
1738	Quantity	4
1738	Discount	0.15
1739	OrderID	10850
1739	ProductID	70
1739	UnitPrice	15.0
1739	Quantity	30
1739	Discount	0.15
1740	OrderID	10851
1740	ProductID	2
1740	UnitPrice	19.0
1740	Quantity	5
1740	Discount	0.05
1741	OrderID	10851
1741	ProductID	25
1741	UnitPrice	14.0
1741	Quantity	10
1741	Discount	0.05
1742	OrderID	10851
1742	ProductID	57
1742	UnitPrice	19.5
1742	Quantity	10
1742	Discount	0.05
1743	OrderID	10851
1743	ProductID	59
1743	UnitPrice	55.0
1743	Quantity	42
1743	Discount	0.05
1744	OrderID	10852
1744	ProductID	2
1744	UnitPrice	19.0
1744	Quantity	15
1744	Discount	0.0
1745	OrderID	10852
1745	ProductID	17
1745	UnitPrice	39.0
1745	Quantity	6
1745	Discount	0.0
1746	OrderID	10852
1746	ProductID	62
1746	UnitPrice	49.3
1746	Quantity	50
1746	Discount	0.0
1747	OrderID	10853
1747	ProductID	18
1747	UnitPrice	62.5
1747	Quantity	10
1747	Discount	0.0
1748	OrderID	10854
1748	ProductID	10
1748	UnitPrice	31.0
1748	Quantity	100
1748	Discount	0.15
1749	OrderID	10854
1749	ProductID	13
1749	UnitPrice	6.0
1749	Quantity	65
1749	Discount	0.15
1750	OrderID	10855
1750	ProductID	16
1750	UnitPrice	17.45
1750	Quantity	50
1750	Discount	0.0
1751	OrderID	10855
1751	ProductID	31
1751	UnitPrice	12.5
1751	Quantity	14
1751	Discount	0.0
1752	OrderID	10855
1752	ProductID	56
1752	UnitPrice	38.0
1752	Quantity	24
1752	Discount	0.0
1753	OrderID	10855
1753	ProductID	65
1753	UnitPrice	21.05
1753	Quantity	15
1753	Discount	0.15
1754	OrderID	10856
1754	ProductID	2
1754	UnitPrice	19.0
1754	Quantity	20
1754	Discount	0.0
1755	OrderID	10856
1755	ProductID	42
1755	UnitPrice	14.0
1755	Quantity	20
1755	Discount	0.0
1756	OrderID	10857
1756	ProductID	3
1756	UnitPrice	10.0
1756	Quantity	30
1756	Discount	0.0
1757	OrderID	10857
1757	ProductID	26
1757	UnitPrice	31.23
1757	Quantity	35
1757	Discount	0.25
1758	OrderID	10857
1758	ProductID	29
1758	UnitPrice	123.79
1758	Quantity	10
1758	Discount	0.25
1759	OrderID	10858
1759	ProductID	7
1759	UnitPrice	30.0
1759	Quantity	5
1759	Discount	0.0
1760	OrderID	10858
1760	ProductID	27
1760	UnitPrice	43.9
1760	Quantity	10
1760	Discount	0.0
1761	OrderID	10858
1761	ProductID	70
1761	UnitPrice	15.0
1761	Quantity	4
1761	Discount	0.0
1762	OrderID	10859
1762	ProductID	24
1762	UnitPrice	4.5
1762	Quantity	40
1762	Discount	0.25
1763	OrderID	10859
1763	ProductID	54
1763	UnitPrice	7.45
1763	Quantity	35
1763	Discount	0.25
1764	OrderID	10859
1764	ProductID	64
1764	UnitPrice	33.25
1764	Quantity	30
1764	Discount	0.25
1765	OrderID	10860
1765	ProductID	51
1765	UnitPrice	53.0
1765	Quantity	3
1765	Discount	0.0
1766	OrderID	10860
1766	ProductID	76
1766	UnitPrice	18.0
1766	Quantity	20
1766	Discount	0.0
1767	OrderID	10861
1767	ProductID	17
1767	UnitPrice	39.0
1767	Quantity	42
1767	Discount	0.0
1768	OrderID	10861
1768	ProductID	18
1768	UnitPrice	62.5
1768	Quantity	20
1768	Discount	0.0
1769	OrderID	10861
1769	ProductID	21
1769	UnitPrice	10.0
1769	Quantity	40
1769	Discount	0.0
1770	OrderID	10861
1770	ProductID	33
1770	UnitPrice	2.5
1770	Quantity	35
1770	Discount	0.0
1771	OrderID	10861
1771	ProductID	62
1771	UnitPrice	49.3
1771	Quantity	3
1771	Discount	0.0
1772	OrderID	10862
1772	ProductID	11
1772	UnitPrice	21.0
1772	Quantity	25
1772	Discount	0.0
1773	OrderID	10862
1773	ProductID	52
1773	UnitPrice	7.0
1773	Quantity	8
1773	Discount	0.0
1774	OrderID	10863
1774	ProductID	1
1774	UnitPrice	18.0
1774	Quantity	20
1774	Discount	0.15
1775	OrderID	10863
1775	ProductID	58
1775	UnitPrice	13.25
1775	Quantity	12
1775	Discount	0.15
1776	OrderID	10864
1776	ProductID	35
1776	UnitPrice	18.0
1776	Quantity	4
1776	Discount	0.0
1777	OrderID	10864
1777	ProductID	67
1777	UnitPrice	14.0
1777	Quantity	15
1777	Discount	0.0
1778	OrderID	10865
1778	ProductID	38
1778	UnitPrice	263.5
1778	Quantity	60
1778	Discount	0.05
1779	OrderID	10865
1779	ProductID	39
1779	UnitPrice	18.0
1779	Quantity	80
1779	Discount	0.05
1780	OrderID	10866
1780	ProductID	2
1780	UnitPrice	19.0
1780	Quantity	21
1780	Discount	0.25
1781	OrderID	10866
1781	ProductID	24
1781	UnitPrice	4.5
1781	Quantity	6
1781	Discount	0.25
1782	OrderID	10866
1782	ProductID	30
1782	UnitPrice	25.89
1782	Quantity	40
1782	Discount	0.25
1783	OrderID	10867
1783	ProductID	53
1783	UnitPrice	32.8
1783	Quantity	3
1783	Discount	0.0
1784	OrderID	10868
1784	ProductID	26
1784	UnitPrice	31.23
1784	Quantity	20
1784	Discount	0.0
1785	OrderID	10868
1785	ProductID	35
1785	UnitPrice	18.0
1785	Quantity	30
1785	Discount	0.0
1786	OrderID	10868
1786	ProductID	49
1786	UnitPrice	20.0
1786	Quantity	42
1786	Discount	0.1
1787	OrderID	10869
1787	ProductID	1
1787	UnitPrice	18.0
1787	Quantity	40
1787	Discount	0.0
1788	OrderID	10869
1788	ProductID	11
1788	UnitPrice	21.0
1788	Quantity	10
1788	Discount	0.0
1789	OrderID	10869
1789	ProductID	23
1789	UnitPrice	9.0
1789	Quantity	50
1789	Discount	0.0
1790	OrderID	10869
1790	ProductID	68
1790	UnitPrice	12.5
1790	Quantity	20
1790	Discount	0.0
1791	OrderID	10870
1791	ProductID	35
1791	UnitPrice	18.0
1791	Quantity	3
1791	Discount	0.0
1792	OrderID	10870
1792	ProductID	51
1792	UnitPrice	53.0
1792	Quantity	2
1792	Discount	0.0
1793	OrderID	10871
1793	ProductID	6
1793	UnitPrice	25.0
1793	Quantity	50
1793	Discount	0.05
1794	OrderID	10871
1794	ProductID	16
1794	UnitPrice	17.45
1794	Quantity	12
1794	Discount	0.05
1795	OrderID	10871
1795	ProductID	17
1795	UnitPrice	39.0
1795	Quantity	16
1795	Discount	0.05
1796	OrderID	10872
1796	ProductID	55
1796	UnitPrice	24.0
1796	Quantity	10
1796	Discount	0.05
1797	OrderID	10872
1797	ProductID	62
1797	UnitPrice	49.3
1797	Quantity	20
1797	Discount	0.05
1798	OrderID	10872
1798	ProductID	64
1798	UnitPrice	33.25
1798	Quantity	15
1798	Discount	0.05
1799	OrderID	10872
1799	ProductID	65
1799	UnitPrice	21.05
1799	Quantity	21
1799	Discount	0.05
1800	OrderID	10873
1800	ProductID	21
1800	UnitPrice	10.0
1800	Quantity	20
1800	Discount	0.0
1801	OrderID	10873
1801	ProductID	28
1801	UnitPrice	45.6
1801	Quantity	3
1801	Discount	0.0
1802	OrderID	10874
1802	ProductID	10
1802	UnitPrice	31.0
1802	Quantity	10
1802	Discount	0.0
1803	OrderID	10875
1803	ProductID	19
1803	UnitPrice	9.2
1803	Quantity	25
1803	Discount	0.0
1804	OrderID	10875
1804	ProductID	47
1804	UnitPrice	9.5
1804	Quantity	21
1804	Discount	0.1
1805	OrderID	10875
1805	ProductID	49
1805	UnitPrice	20.0
1805	Quantity	15
1805	Discount	0.0
1806	OrderID	10876
1806	ProductID	46
1806	UnitPrice	12.0
1806	Quantity	21
1806	Discount	0.0
1807	OrderID	10876
1807	ProductID	64
1807	UnitPrice	33.25
1807	Quantity	20
1807	Discount	0.0
1808	OrderID	10877
1808	ProductID	16
1808	UnitPrice	17.45
1808	Quantity	30
1808	Discount	0.25
1809	OrderID	10877
1809	ProductID	18
1809	UnitPrice	62.5
1809	Quantity	25
1809	Discount	0.0
1810	OrderID	10878
1810	ProductID	20
1810	UnitPrice	81.0
1810	Quantity	20
1810	Discount	0.05
1811	OrderID	10879
1811	ProductID	40
1811	UnitPrice	18.4
1811	Quantity	12
1811	Discount	0.0
1812	OrderID	10879
1812	ProductID	65
1812	UnitPrice	21.05
1812	Quantity	10
1812	Discount	0.0
1813	OrderID	10879
1813	ProductID	76
1813	UnitPrice	18.0
1813	Quantity	10
1813	Discount	0.0
1814	OrderID	10880
1814	ProductID	23
1814	UnitPrice	9.0
1814	Quantity	30
1814	Discount	0.2
1815	OrderID	10880
1815	ProductID	61
1815	UnitPrice	28.5
1815	Quantity	30
1815	Discount	0.2
1816	OrderID	10880
1816	ProductID	70
1816	UnitPrice	15.0
1816	Quantity	50
1816	Discount	0.2
1817	OrderID	10881
1817	ProductID	73
1817	UnitPrice	15.0
1817	Quantity	10
1817	Discount	0.0
1818	OrderID	10882
1818	ProductID	42
1818	UnitPrice	14.0
1818	Quantity	25
1818	Discount	0.0
1819	OrderID	10882
1819	ProductID	49
1819	UnitPrice	20.0
1819	Quantity	20
1819	Discount	0.15
1820	OrderID	10882
1820	ProductID	54
1820	UnitPrice	7.45
1820	Quantity	32
1820	Discount	0.15
1821	OrderID	10883
1821	ProductID	24
1821	UnitPrice	4.5
1821	Quantity	8
1821	Discount	0.0
1822	OrderID	10884
1822	ProductID	21
1822	UnitPrice	10.0
1822	Quantity	40
1822	Discount	0.05
1823	OrderID	10884
1823	ProductID	56
1823	UnitPrice	38.0
1823	Quantity	21
1823	Discount	0.05
1824	OrderID	10884
1824	ProductID	65
1824	UnitPrice	21.05
1824	Quantity	12
1824	Discount	0.05
1825	OrderID	10885
1825	ProductID	2
1825	UnitPrice	19.0
1825	Quantity	20
1825	Discount	0.0
1826	OrderID	10885
1826	ProductID	24
1826	UnitPrice	4.5
1826	Quantity	12
1826	Discount	0.0
1827	OrderID	10885
1827	ProductID	70
1827	UnitPrice	15.0
1827	Quantity	30
1827	Discount	0.0
1828	OrderID	10885
1828	ProductID	77
1828	UnitPrice	13.0
1828	Quantity	25
1828	Discount	0.0
1829	OrderID	10886
1829	ProductID	10
1829	UnitPrice	31.0
1829	Quantity	70
1829	Discount	0.0
1830	OrderID	10886
1830	ProductID	31
1830	UnitPrice	12.5
1830	Quantity	35
1830	Discount	0.0
1831	OrderID	10886
1831	ProductID	77
1831	UnitPrice	13.0
1831	Quantity	40
1831	Discount	0.0
1832	OrderID	10887
1832	ProductID	25
1832	UnitPrice	14.0
1832	Quantity	5
1832	Discount	0.0
1833	OrderID	10888
1833	ProductID	2
1833	UnitPrice	19.0
1833	Quantity	20
1833	Discount	0.0
1834	OrderID	10888
1834	ProductID	68
1834	UnitPrice	12.5
1834	Quantity	18
1834	Discount	0.0
1835	OrderID	10889
1835	ProductID	11
1835	UnitPrice	21.0
1835	Quantity	40
1835	Discount	0.0
1836	OrderID	10889
1836	ProductID	38
1836	UnitPrice	263.5
1836	Quantity	40
1836	Discount	0.0
1837	OrderID	10890
1837	ProductID	17
1837	UnitPrice	39.0
1837	Quantity	15
1837	Discount	0.0
1838	OrderID	10890
1838	ProductID	34
1838	UnitPrice	14.0
1838	Quantity	10
1838	Discount	0.0
1839	OrderID	10890
1839	ProductID	41
1839	UnitPrice	9.65
1839	Quantity	14
1839	Discount	0.0
1840	OrderID	10891
1840	ProductID	30
1840	UnitPrice	25.89
1840	Quantity	15
1840	Discount	0.05
1841	OrderID	10892
1841	ProductID	59
1841	UnitPrice	55.0
1841	Quantity	40
1841	Discount	0.05
1842	OrderID	10893
1842	ProductID	8
1842	UnitPrice	40.0
1842	Quantity	30
1842	Discount	0.0
1843	OrderID	10893
1843	ProductID	24
1843	UnitPrice	4.5
1843	Quantity	10
1843	Discount	0.0
1844	OrderID	10893
1844	ProductID	29
1844	UnitPrice	123.79
1844	Quantity	24
1844	Discount	0.0
1845	OrderID	10893
1845	ProductID	30
1845	UnitPrice	25.89
1845	Quantity	35
1845	Discount	0.0
1846	OrderID	10893
1846	ProductID	36
1846	UnitPrice	19.0
1846	Quantity	20
1846	Discount	0.0
1847	OrderID	10894
1847	ProductID	13
1847	UnitPrice	6.0
1847	Quantity	28
1847	Discount	0.05
1848	OrderID	10894
1848	ProductID	69
1848	UnitPrice	36.0
1848	Quantity	50
1848	Discount	0.05
1849	OrderID	10894
1849	ProductID	75
1849	UnitPrice	7.75
1849	Quantity	120
1849	Discount	0.05
1850	OrderID	10895
1850	ProductID	24
1850	UnitPrice	4.5
1850	Quantity	110
1850	Discount	0.0
1851	OrderID	10895
1851	ProductID	39
1851	UnitPrice	18.0
1851	Quantity	45
1851	Discount	0.0
1852	OrderID	10895
1852	ProductID	40
1852	UnitPrice	18.4
1852	Quantity	91
1852	Discount	0.0
1853	OrderID	10895
1853	ProductID	60
1853	UnitPrice	34.0
1853	Quantity	100
1853	Discount	0.0
1854	OrderID	10896
1854	ProductID	45
1854	UnitPrice	9.5
1854	Quantity	15
1854	Discount	0.0
1855	OrderID	10896
1855	ProductID	56
1855	UnitPrice	38.0
1855	Quantity	16
1855	Discount	0.0
1856	OrderID	10897
1856	ProductID	29
1856	UnitPrice	123.79
1856	Quantity	80
1856	Discount	0.0
1857	OrderID	10897
1857	ProductID	30
1857	UnitPrice	25.89
1857	Quantity	36
1857	Discount	0.0
1858	OrderID	10898
1858	ProductID	13
1858	UnitPrice	6.0
1858	Quantity	5
1858	Discount	0.0
1859	OrderID	10899
1859	ProductID	39
1859	UnitPrice	18.0
1859	Quantity	8
1859	Discount	0.15
1860	OrderID	10900
1860	ProductID	70
1860	UnitPrice	15.0
1860	Quantity	3
1860	Discount	0.25
1861	OrderID	10901
1861	ProductID	41
1861	UnitPrice	9.65
1861	Quantity	30
1861	Discount	0.0
1862	OrderID	10901
1862	ProductID	71
1862	UnitPrice	21.5
1862	Quantity	30
1862	Discount	0.0
1863	OrderID	10902
1863	ProductID	55
1863	UnitPrice	24.0
1863	Quantity	30
1863	Discount	0.15
1864	OrderID	10902
1864	ProductID	62
1864	UnitPrice	49.3
1864	Quantity	6
1864	Discount	0.15
1865	OrderID	10903
1865	ProductID	13
1865	UnitPrice	6.0
1865	Quantity	40
1865	Discount	0.0
1866	OrderID	10903
1866	ProductID	65
1866	UnitPrice	21.05
1866	Quantity	21
1866	Discount	0.0
1867	OrderID	10903
1867	ProductID	68
1867	UnitPrice	12.5
1867	Quantity	20
1867	Discount	0.0
1868	OrderID	10904
1868	ProductID	58
1868	UnitPrice	13.25
1868	Quantity	15
1868	Discount	0.0
1869	OrderID	10904
1869	ProductID	62
1869	UnitPrice	49.3
1869	Quantity	35
1869	Discount	0.0
1870	OrderID	10905
1870	ProductID	1
1870	UnitPrice	18.0
1870	Quantity	20
1870	Discount	0.05
1871	OrderID	10906
1871	ProductID	61
1871	UnitPrice	28.5
1871	Quantity	15
1871	Discount	0.0
1872	OrderID	10907
1872	ProductID	75
1872	UnitPrice	7.75
1872	Quantity	14
1872	Discount	0.0
1873	OrderID	10908
1873	ProductID	7
1873	UnitPrice	30.0
1873	Quantity	20
1873	Discount	0.05
1874	OrderID	10908
1874	ProductID	52
1874	UnitPrice	7.0
1874	Quantity	14
1874	Discount	0.05
1875	OrderID	10909
1875	ProductID	7
1875	UnitPrice	30.0
1875	Quantity	12
1875	Discount	0.0
1876	OrderID	10909
1876	ProductID	16
1876	UnitPrice	17.45
1876	Quantity	15
1876	Discount	0.0
1877	OrderID	10909
1877	ProductID	41
1877	UnitPrice	9.65
1877	Quantity	5
1877	Discount	0.0
1878	OrderID	10910
1878	ProductID	19
1878	UnitPrice	9.2
1878	Quantity	12
1878	Discount	0.0
1879	OrderID	10910
1879	ProductID	49
1879	UnitPrice	20.0
1879	Quantity	10
1879	Discount	0.0
1880	OrderID	10910
1880	ProductID	61
1880	UnitPrice	28.5
1880	Quantity	5
1880	Discount	0.0
1881	OrderID	10911
1881	ProductID	1
1881	UnitPrice	18.0
1881	Quantity	10
1881	Discount	0.0
1882	OrderID	10911
1882	ProductID	17
1882	UnitPrice	39.0
1882	Quantity	12
1882	Discount	0.0
1883	OrderID	10911
1883	ProductID	67
1883	UnitPrice	14.0
1883	Quantity	15
1883	Discount	0.0
1884	OrderID	10912
1884	ProductID	11
1884	UnitPrice	21.0
1884	Quantity	40
1884	Discount	0.25
1885	OrderID	10912
1885	ProductID	29
1885	UnitPrice	123.79
1885	Quantity	60
1885	Discount	0.25
1886	OrderID	10913
1886	ProductID	4
1886	UnitPrice	22.0
1886	Quantity	30
1886	Discount	0.25
1887	OrderID	10913
1887	ProductID	33
1887	UnitPrice	2.5
1887	Quantity	40
1887	Discount	0.25
1888	OrderID	10913
1888	ProductID	58
1888	UnitPrice	13.25
1888	Quantity	15
1888	Discount	0.0
1889	OrderID	10914
1889	ProductID	71
1889	UnitPrice	21.5
1889	Quantity	25
1889	Discount	0.0
1890	OrderID	10915
1890	ProductID	17
1890	UnitPrice	39.0
1890	Quantity	10
1890	Discount	0.0
1891	OrderID	10915
1891	ProductID	33
1891	UnitPrice	2.5
1891	Quantity	30
1891	Discount	0.0
1892	OrderID	10915
1892	ProductID	54
1892	UnitPrice	7.45
1892	Quantity	10
1892	Discount	0.0
1893	OrderID	10916
1893	ProductID	16
1893	UnitPrice	17.45
1893	Quantity	6
1893	Discount	0.0
1894	OrderID	10916
1894	ProductID	32
1894	UnitPrice	32.0
1894	Quantity	6
1894	Discount	0.0
1895	OrderID	10916
1895	ProductID	57
1895	UnitPrice	19.5
1895	Quantity	20
1895	Discount	0.0
1896	OrderID	10917
1896	ProductID	30
1896	UnitPrice	25.89
1896	Quantity	1
1896	Discount	0.0
1897	OrderID	10917
1897	ProductID	60
1897	UnitPrice	34.0
1897	Quantity	10
1897	Discount	0.0
1898	OrderID	10918
1898	ProductID	1
1898	UnitPrice	18.0
1898	Quantity	60
1898	Discount	0.25
1899	OrderID	10918
1899	ProductID	60
1899	UnitPrice	34.0
1899	Quantity	25
1899	Discount	0.25
1900	OrderID	10919
1900	ProductID	16
1900	UnitPrice	17.45
1900	Quantity	24
1900	Discount	0.0
1901	OrderID	10919
1901	ProductID	25
1901	UnitPrice	14.0
1901	Quantity	24
1901	Discount	0.0
1902	OrderID	10919
1902	ProductID	40
1902	UnitPrice	18.4
1902	Quantity	20
1902	Discount	0.0
1903	OrderID	10920
1903	ProductID	50
1903	UnitPrice	16.25
1903	Quantity	24
1903	Discount	0.0
1904	OrderID	10921
1904	ProductID	35
1904	UnitPrice	18.0
1904	Quantity	10
1904	Discount	0.0
1905	OrderID	10921
1905	ProductID	63
1905	UnitPrice	43.9
1905	Quantity	40
1905	Discount	0.0
1906	OrderID	10922
1906	ProductID	17
1906	UnitPrice	39.0
1906	Quantity	15
1906	Discount	0.0
1907	OrderID	10922
1907	ProductID	24
1907	UnitPrice	4.5
1907	Quantity	35
1907	Discount	0.0
1908	OrderID	10923
1908	ProductID	42
1908	UnitPrice	14.0
1908	Quantity	10
1908	Discount	0.2
1909	OrderID	10923
1909	ProductID	43
1909	UnitPrice	46.0
1909	Quantity	10
1909	Discount	0.2
1910	OrderID	10923
1910	ProductID	67
1910	UnitPrice	14.0
1910	Quantity	24
1910	Discount	0.2
1911	OrderID	10924
1911	ProductID	10
1911	UnitPrice	31.0
1911	Quantity	20
1911	Discount	0.1
1912	OrderID	10924
1912	ProductID	28
1912	UnitPrice	45.6
1912	Quantity	30
1912	Discount	0.1
1913	OrderID	10924
1913	ProductID	75
1913	UnitPrice	7.75
1913	Quantity	6
1913	Discount	0.0
1914	OrderID	10925
1914	ProductID	36
1914	UnitPrice	19.0
1914	Quantity	25
1914	Discount	0.15
1915	OrderID	10925
1915	ProductID	52
1915	UnitPrice	7.0
1915	Quantity	12
1915	Discount	0.15
1916	OrderID	10926
1916	ProductID	11
1916	UnitPrice	21.0
1916	Quantity	2
1916	Discount	0.0
1917	OrderID	10926
1917	ProductID	13
1917	UnitPrice	6.0
1917	Quantity	10
1917	Discount	0.0
1918	OrderID	10926
1918	ProductID	19
1918	UnitPrice	9.2
1918	Quantity	7
1918	Discount	0.0
1919	OrderID	10926
1919	ProductID	72
1919	UnitPrice	34.8
1919	Quantity	10
1919	Discount	0.0
1920	OrderID	10927
1920	ProductID	20
1920	UnitPrice	81.0
1920	Quantity	5
1920	Discount	0.0
1921	OrderID	10927
1921	ProductID	52
1921	UnitPrice	7.0
1921	Quantity	5
1921	Discount	0.0
1922	OrderID	10927
1922	ProductID	76
1922	UnitPrice	18.0
1922	Quantity	20
1922	Discount	0.0
1923	OrderID	10928
1923	ProductID	47
1923	UnitPrice	9.5
1923	Quantity	5
1923	Discount	0.0
1924	OrderID	10928
1924	ProductID	76
1924	UnitPrice	18.0
1924	Quantity	5
1924	Discount	0.0
1925	OrderID	10929
1925	ProductID	21
1925	UnitPrice	10.0
1925	Quantity	60
1925	Discount	0.0
1926	OrderID	10929
1926	ProductID	75
1926	UnitPrice	7.75
1926	Quantity	49
1926	Discount	0.0
1927	OrderID	10929
1927	ProductID	77
1927	UnitPrice	13.0
1927	Quantity	15
1927	Discount	0.0
1928	OrderID	10930
1928	ProductID	21
1928	UnitPrice	10.0
1928	Quantity	36
1928	Discount	0.0
1929	OrderID	10930
1929	ProductID	27
1929	UnitPrice	43.9
1929	Quantity	25
1929	Discount	0.0
1930	OrderID	10930
1930	ProductID	55
1930	UnitPrice	24.0
1930	Quantity	25
1930	Discount	0.2
1931	OrderID	10930
1931	ProductID	58
1931	UnitPrice	13.25
1931	Quantity	30
1931	Discount	0.2
1932	OrderID	10931
1932	ProductID	13
1932	UnitPrice	6.0
1932	Quantity	42
1932	Discount	0.15
1933	OrderID	10931
1933	ProductID	57
1933	UnitPrice	19.5
1933	Quantity	30
1933	Discount	0.0
1934	OrderID	10932
1934	ProductID	16
1934	UnitPrice	17.45
1934	Quantity	30
1934	Discount	0.1
1935	OrderID	10932
1935	ProductID	62
1935	UnitPrice	49.3
1935	Quantity	14
1935	Discount	0.1
1936	OrderID	10932
1936	ProductID	72
1936	UnitPrice	34.8
1936	Quantity	16
1936	Discount	0.0
1937	OrderID	10932
1937	ProductID	75
1937	UnitPrice	7.75
1937	Quantity	20
1937	Discount	0.1
1938	OrderID	10933
1938	ProductID	53
1938	UnitPrice	32.8
1938	Quantity	2
1938	Discount	0.0
1939	OrderID	10933
1939	ProductID	61
1939	UnitPrice	28.5
1939	Quantity	30
1939	Discount	0.0
1940	OrderID	10934
1940	ProductID	6
1940	UnitPrice	25.0
1940	Quantity	20
1940	Discount	0.0
1941	OrderID	10935
1941	ProductID	1
1941	UnitPrice	18.0
1941	Quantity	21
1941	Discount	0.0
1942	OrderID	10935
1942	ProductID	18
1942	UnitPrice	62.5
1942	Quantity	4
1942	Discount	0.25
1943	OrderID	10935
1943	ProductID	23
1943	UnitPrice	9.0
1943	Quantity	8
1943	Discount	0.25
1944	OrderID	10936
1944	ProductID	36
1944	UnitPrice	19.0
1944	Quantity	30
1944	Discount	0.2
1945	OrderID	10937
1945	ProductID	28
1945	UnitPrice	45.6
1945	Quantity	8
1945	Discount	0.0
1946	OrderID	10937
1946	ProductID	34
1946	UnitPrice	14.0
1946	Quantity	20
1946	Discount	0.0
1947	OrderID	10938
1947	ProductID	13
1947	UnitPrice	6.0
1947	Quantity	20
1947	Discount	0.25
1948	OrderID	10938
1948	ProductID	43
1948	UnitPrice	46.0
1948	Quantity	24
1948	Discount	0.25
1949	OrderID	10938
1949	ProductID	60
1949	UnitPrice	34.0
1949	Quantity	49
1949	Discount	0.25
1950	OrderID	10938
1950	ProductID	71
1950	UnitPrice	21.5
1950	Quantity	35
1950	Discount	0.25
1951	OrderID	10939
1951	ProductID	2
1951	UnitPrice	19.0
1951	Quantity	10
1951	Discount	0.15
1952	OrderID	10939
1952	ProductID	67
1952	UnitPrice	14.0
1952	Quantity	40
1952	Discount	0.15
1953	OrderID	10940
1953	ProductID	7
1953	UnitPrice	30.0
1953	Quantity	8
1953	Discount	0.0
1954	OrderID	10940
1954	ProductID	13
1954	UnitPrice	6.0
1954	Quantity	20
1954	Discount	0.0
1955	OrderID	10941
1955	ProductID	31
1955	UnitPrice	12.5
1955	Quantity	44
1955	Discount	0.25
1956	OrderID	10941
1956	ProductID	62
1956	UnitPrice	49.3
1956	Quantity	30
1956	Discount	0.25
1957	OrderID	10941
1957	ProductID	68
1957	UnitPrice	12.5
1957	Quantity	80
1957	Discount	0.25
1958	OrderID	10941
1958	ProductID	72
1958	UnitPrice	34.8
1958	Quantity	50
1958	Discount	0.0
1959	OrderID	10942
1959	ProductID	49
1959	UnitPrice	20.0
1959	Quantity	28
1959	Discount	0.0
1960	OrderID	10943
1960	ProductID	13
1960	UnitPrice	6.0
1960	Quantity	15
1960	Discount	0.0
1961	OrderID	10943
1961	ProductID	22
1961	UnitPrice	21.0
1961	Quantity	21
1961	Discount	0.0
1962	OrderID	10943
1962	ProductID	46
1962	UnitPrice	12.0
1962	Quantity	15
1962	Discount	0.0
1963	OrderID	10944
1963	ProductID	11
1963	UnitPrice	21.0
1963	Quantity	5
1963	Discount	0.25
1964	OrderID	10944
1964	ProductID	44
1964	UnitPrice	19.45
1964	Quantity	18
1964	Discount	0.25
1965	OrderID	10944
1965	ProductID	56
1965	UnitPrice	38.0
1965	Quantity	18
1965	Discount	0.0
1966	OrderID	10945
1966	ProductID	13
1966	UnitPrice	6.0
1966	Quantity	20
1966	Discount	0.0
1967	OrderID	10945
1967	ProductID	31
1967	UnitPrice	12.5
1967	Quantity	10
1967	Discount	0.0
1968	OrderID	10946
1968	ProductID	10
1968	UnitPrice	31.0
1968	Quantity	25
1968	Discount	0.0
1969	OrderID	10946
1969	ProductID	24
1969	UnitPrice	4.5
1969	Quantity	25
1969	Discount	0.0
1970	OrderID	10946
1970	ProductID	77
1970	UnitPrice	13.0
1970	Quantity	40
1970	Discount	0.0
1971	OrderID	10947
1971	ProductID	59
1971	UnitPrice	55.0
1971	Quantity	4
1971	Discount	0.0
1972	OrderID	10948
1972	ProductID	50
1972	UnitPrice	16.25
1972	Quantity	9
1972	Discount	0.0
1973	OrderID	10948
1973	ProductID	51
1973	UnitPrice	53.0
1973	Quantity	40
1973	Discount	0.0
1974	OrderID	10948
1974	ProductID	55
1974	UnitPrice	24.0
1974	Quantity	4
1974	Discount	0.0
1975	OrderID	10949
1975	ProductID	6
1975	UnitPrice	25.0
1975	Quantity	12
1975	Discount	0.0
1976	OrderID	10949
1976	ProductID	10
1976	UnitPrice	31.0
1976	Quantity	30
1976	Discount	0.0
1977	OrderID	10949
1977	ProductID	17
1977	UnitPrice	39.0
1977	Quantity	6
1977	Discount	0.0
1978	OrderID	10949
1978	ProductID	62
1978	UnitPrice	49.3
1978	Quantity	60
1978	Discount	0.0
1979	OrderID	10950
1979	ProductID	4
1979	UnitPrice	22.0
1979	Quantity	5
1979	Discount	0.0
1980	OrderID	10951
1980	ProductID	33
1980	UnitPrice	2.5
1980	Quantity	15
1980	Discount	0.05
1981	OrderID	10951
1981	ProductID	41
1981	UnitPrice	9.65
1981	Quantity	6
1981	Discount	0.05
1982	OrderID	10951
1982	ProductID	75
1982	UnitPrice	7.75
1982	Quantity	50
1982	Discount	0.05
1983	OrderID	10952
1983	ProductID	6
1983	UnitPrice	25.0
1983	Quantity	16
1983	Discount	0.05
1984	OrderID	10952
1984	ProductID	28
1984	UnitPrice	45.6
1984	Quantity	2
1984	Discount	0.0
1985	OrderID	10953
1985	ProductID	20
1985	UnitPrice	81.0
1985	Quantity	50
1985	Discount	0.05
1986	OrderID	10953
1986	ProductID	31
1986	UnitPrice	12.5
1986	Quantity	50
1986	Discount	0.05
1987	OrderID	10954
1987	ProductID	16
1987	UnitPrice	17.45
1987	Quantity	28
1987	Discount	0.15
1988	OrderID	10954
1988	ProductID	31
1988	UnitPrice	12.5
1988	Quantity	25
1988	Discount	0.15
1989	OrderID	10954
1989	ProductID	45
1989	UnitPrice	9.5
1989	Quantity	30
1989	Discount	0.0
1990	OrderID	10954
1990	ProductID	60
1990	UnitPrice	34.0
1990	Quantity	24
1990	Discount	0.15
1991	OrderID	10955
1991	ProductID	75
1991	UnitPrice	7.75
1991	Quantity	12
1991	Discount	0.2
1992	OrderID	10956
1992	ProductID	21
1992	UnitPrice	10.0
1992	Quantity	12
1992	Discount	0.0
1993	OrderID	10956
1993	ProductID	47
1993	UnitPrice	9.5
1993	Quantity	14
1993	Discount	0.0
1994	OrderID	10956
1994	ProductID	51
1994	UnitPrice	53.0
1994	Quantity	8
1994	Discount	0.0
1995	OrderID	10957
1995	ProductID	30
1995	UnitPrice	25.89
1995	Quantity	30
1995	Discount	0.0
1996	OrderID	10957
1996	ProductID	35
1996	UnitPrice	18.0
1996	Quantity	40
1996	Discount	0.0
1997	OrderID	10957
1997	ProductID	64
1997	UnitPrice	33.25
1997	Quantity	8
1997	Discount	0.0
1998	OrderID	10958
1998	ProductID	5
1998	UnitPrice	21.35
1998	Quantity	20
1998	Discount	0.0
1999	OrderID	10958
1999	ProductID	7
1999	UnitPrice	30.0
1999	Quantity	6
1999	Discount	0.0
2000	OrderID	10958
2000	ProductID	72
2000	UnitPrice	34.8
2000	Quantity	5
2000	Discount	0.0
2001	OrderID	10959
2001	ProductID	75
2001	UnitPrice	7.75
2001	Quantity	20
2001	Discount	0.15
2002	OrderID	10960
2002	ProductID	24
2002	UnitPrice	4.5
2002	Quantity	10
2002	Discount	0.25
2003	OrderID	10960
2003	ProductID	41
2003	UnitPrice	9.65
2003	Quantity	24
2003	Discount	0.0
2004	OrderID	10961
2004	ProductID	52
2004	UnitPrice	7.0
2004	Quantity	6
2004	Discount	0.05
2005	OrderID	10961
2005	ProductID	76
2005	UnitPrice	18.0
2005	Quantity	60
2005	Discount	0.0
2006	OrderID	10962
2006	ProductID	7
2006	UnitPrice	30.0
2006	Quantity	45
2006	Discount	0.0
2007	OrderID	10962
2007	ProductID	13
2007	UnitPrice	6.0
2007	Quantity	77
2007	Discount	0.0
2008	OrderID	10962
2008	ProductID	53
2008	UnitPrice	32.8
2008	Quantity	20
2008	Discount	0.0
2009	OrderID	10962
2009	ProductID	69
2009	UnitPrice	36.0
2009	Quantity	9
2009	Discount	0.0
2010	OrderID	10962
2010	ProductID	76
2010	UnitPrice	18.0
2010	Quantity	44
2010	Discount	0.0
2011	OrderID	10963
2011	ProductID	60
2011	UnitPrice	34.0
2011	Quantity	2
2011	Discount	0.15
2012	OrderID	10964
2012	ProductID	18
2012	UnitPrice	62.5
2012	Quantity	6
2012	Discount	0.0
2013	OrderID	10964
2013	ProductID	38
2013	UnitPrice	263.5
2013	Quantity	5
2013	Discount	0.0
2014	OrderID	10964
2014	ProductID	69
2014	UnitPrice	36.0
2014	Quantity	10
2014	Discount	0.0
2015	OrderID	10965
2015	ProductID	51
2015	UnitPrice	53.0
2015	Quantity	16
2015	Discount	0.0
2016	OrderID	10966
2016	ProductID	37
2016	UnitPrice	26.0
2016	Quantity	8
2016	Discount	0.0
2017	OrderID	10966
2017	ProductID	56
2017	UnitPrice	38.0
2017	Quantity	12
2017	Discount	0.15
2018	OrderID	10966
2018	ProductID	62
2018	UnitPrice	49.3
2018	Quantity	12
2018	Discount	0.15
2019	OrderID	10967
2019	ProductID	19
2019	UnitPrice	9.2
2019	Quantity	12
2019	Discount	0.0
2020	OrderID	10967
2020	ProductID	49
2020	UnitPrice	20.0
2020	Quantity	40
2020	Discount	0.0
2021	OrderID	10968
2021	ProductID	12
2021	UnitPrice	38.0
2021	Quantity	30
2021	Discount	0.0
2022	OrderID	10968
2022	ProductID	24
2022	UnitPrice	4.5
2022	Quantity	30
2022	Discount	0.0
2023	OrderID	10968
2023	ProductID	64
2023	UnitPrice	33.25
2023	Quantity	4
2023	Discount	0.0
2024	OrderID	10969
2024	ProductID	46
2024	UnitPrice	12.0
2024	Quantity	9
2024	Discount	0.0
2025	OrderID	10970
2025	ProductID	52
2025	UnitPrice	7.0
2025	Quantity	40
2025	Discount	0.2
2026	OrderID	10971
2026	ProductID	29
2026	UnitPrice	123.79
2026	Quantity	14
2026	Discount	0.0
2027	OrderID	10972
2027	ProductID	17
2027	UnitPrice	39.0
2027	Quantity	6
2027	Discount	0.0
2028	OrderID	10972
2028	ProductID	33
2028	UnitPrice	2.5
2028	Quantity	7
2028	Discount	0.0
2029	OrderID	10973
2029	ProductID	26
2029	UnitPrice	31.23
2029	Quantity	5
2029	Discount	0.0
2030	OrderID	10973
2030	ProductID	41
2030	UnitPrice	9.65
2030	Quantity	6
2030	Discount	0.0
2031	OrderID	10973
2031	ProductID	75
2031	UnitPrice	7.75
2031	Quantity	10
2031	Discount	0.0
2032	OrderID	10974
2032	ProductID	63
2032	UnitPrice	43.9
2032	Quantity	10
2032	Discount	0.0
2033	OrderID	10975
2033	ProductID	8
2033	UnitPrice	40.0
2033	Quantity	16
2033	Discount	0.0
2034	OrderID	10975
2034	ProductID	75
2034	UnitPrice	7.75
2034	Quantity	10
2034	Discount	0.0
2035	OrderID	10976
2035	ProductID	28
2035	UnitPrice	45.6
2035	Quantity	20
2035	Discount	0.0
2036	OrderID	10977
2036	ProductID	39
2036	UnitPrice	18.0
2036	Quantity	30
2036	Discount	0.0
2037	OrderID	10977
2037	ProductID	47
2037	UnitPrice	9.5
2037	Quantity	30
2037	Discount	0.0
2038	OrderID	10977
2038	ProductID	51
2038	UnitPrice	53.0
2038	Quantity	10
2038	Discount	0.0
2039	OrderID	10977
2039	ProductID	63
2039	UnitPrice	43.9
2039	Quantity	20
2039	Discount	0.0
2040	OrderID	10978
2040	ProductID	8
2040	UnitPrice	40.0
2040	Quantity	20
2040	Discount	0.15
2041	OrderID	10978
2041	ProductID	21
2041	UnitPrice	10.0
2041	Quantity	40
2041	Discount	0.15
2042	OrderID	10978
2042	ProductID	40
2042	UnitPrice	18.4
2042	Quantity	10
2042	Discount	0.0
2043	OrderID	10978
2043	ProductID	44
2043	UnitPrice	19.45
2043	Quantity	6
2043	Discount	0.15
2044	OrderID	10979
2044	ProductID	7
2044	UnitPrice	30.0
2044	Quantity	18
2044	Discount	0.0
2045	OrderID	10979
2045	ProductID	12
2045	UnitPrice	38.0
2045	Quantity	20
2045	Discount	0.0
2046	OrderID	10979
2046	ProductID	24
2046	UnitPrice	4.5
2046	Quantity	80
2046	Discount	0.0
2047	OrderID	10979
2047	ProductID	27
2047	UnitPrice	43.9
2047	Quantity	30
2047	Discount	0.0
2048	OrderID	10979
2048	ProductID	31
2048	UnitPrice	12.5
2048	Quantity	24
2048	Discount	0.0
2049	OrderID	10979
2049	ProductID	63
2049	UnitPrice	43.9
2049	Quantity	35
2049	Discount	0.0
2050	OrderID	10980
2050	ProductID	75
2050	UnitPrice	7.75
2050	Quantity	40
2050	Discount	0.2
2051	OrderID	10981
2051	ProductID	38
2051	UnitPrice	263.5
2051	Quantity	60
2051	Discount	0.0
2052	OrderID	10982
2052	ProductID	7
2052	UnitPrice	30.0
2052	Quantity	20
2052	Discount	0.0
2053	OrderID	10982
2053	ProductID	43
2053	UnitPrice	46.0
2053	Quantity	9
2053	Discount	0.0
2054	OrderID	10983
2054	ProductID	13
2054	UnitPrice	6.0
2054	Quantity	84
2054	Discount	0.15
2055	OrderID	10983
2055	ProductID	57
2055	UnitPrice	19.5
2055	Quantity	15
2055	Discount	0.0
2056	OrderID	10984
2056	ProductID	16
2056	UnitPrice	17.45
2056	Quantity	55
2056	Discount	0.0
2057	OrderID	10984
2057	ProductID	24
2057	UnitPrice	4.5
2057	Quantity	20
2057	Discount	0.0
2058	OrderID	10984
2058	ProductID	36
2058	UnitPrice	19.0
2058	Quantity	40
2058	Discount	0.0
2059	OrderID	10985
2059	ProductID	16
2059	UnitPrice	17.45
2059	Quantity	36
2059	Discount	0.1
2060	OrderID	10985
2060	ProductID	18
2060	UnitPrice	62.5
2060	Quantity	8
2060	Discount	0.1
2061	OrderID	10985
2061	ProductID	32
2061	UnitPrice	32.0
2061	Quantity	35
2061	Discount	0.1
2062	OrderID	10986
2062	ProductID	11
2062	UnitPrice	21.0
2062	Quantity	30
2062	Discount	0.0
2063	OrderID	10986
2063	ProductID	20
2063	UnitPrice	81.0
2063	Quantity	15
2063	Discount	0.0
2064	OrderID	10986
2064	ProductID	76
2064	UnitPrice	18.0
2064	Quantity	10
2064	Discount	0.0
2065	OrderID	10986
2065	ProductID	77
2065	UnitPrice	13.0
2065	Quantity	15
2065	Discount	0.0
2066	OrderID	10987
2066	ProductID	7
2066	UnitPrice	30.0
2066	Quantity	60
2066	Discount	0.0
2067	OrderID	10987
2067	ProductID	43
2067	UnitPrice	46.0
2067	Quantity	6
2067	Discount	0.0
2068	OrderID	10987
2068	ProductID	72
2068	UnitPrice	34.8
2068	Quantity	20
2068	Discount	0.0
2069	OrderID	10988
2069	ProductID	7
2069	UnitPrice	30.0
2069	Quantity	60
2069	Discount	0.0
2070	OrderID	10988
2070	ProductID	62
2070	UnitPrice	49.3
2070	Quantity	40
2070	Discount	0.1
2071	OrderID	10989
2071	ProductID	6
2071	UnitPrice	25.0
2071	Quantity	40
2071	Discount	0.0
2072	OrderID	10989
2072	ProductID	11
2072	UnitPrice	21.0
2072	Quantity	15
2072	Discount	0.0
2073	OrderID	10989
2073	ProductID	41
2073	UnitPrice	9.65
2073	Quantity	4
2073	Discount	0.0
2074	OrderID	10990
2074	ProductID	21
2074	UnitPrice	10.0
2074	Quantity	65
2074	Discount	0.0
2075	OrderID	10990
2075	ProductID	34
2075	UnitPrice	14.0
2075	Quantity	60
2075	Discount	0.15
2076	OrderID	10990
2076	ProductID	55
2076	UnitPrice	24.0
2076	Quantity	65
2076	Discount	0.15
2077	OrderID	10990
2077	ProductID	61
2077	UnitPrice	28.5
2077	Quantity	66
2077	Discount	0.15
2078	OrderID	10991
2078	ProductID	2
2078	UnitPrice	19.0
2078	Quantity	50
2078	Discount	0.2
2079	OrderID	10991
2079	ProductID	70
2079	UnitPrice	15.0
2079	Quantity	20
2079	Discount	0.2
2080	OrderID	10991
2080	ProductID	76
2080	UnitPrice	18.0
2080	Quantity	90
2080	Discount	0.2
2081	OrderID	10992
2081	ProductID	72
2081	UnitPrice	34.8
2081	Quantity	2
2081	Discount	0.0
2082	OrderID	10993
2082	ProductID	29
2082	UnitPrice	123.79
2082	Quantity	50
2082	Discount	0.25
2083	OrderID	10993
2083	ProductID	41
2083	UnitPrice	9.65
2083	Quantity	35
2083	Discount	0.25
2084	OrderID	10994
2084	ProductID	59
2084	UnitPrice	55.0
2084	Quantity	18
2084	Discount	0.05
2085	OrderID	10995
2085	ProductID	51
2085	UnitPrice	53.0
2085	Quantity	20
2085	Discount	0.0
2086	OrderID	10995
2086	ProductID	60
2086	UnitPrice	34.0
2086	Quantity	4
2086	Discount	0.0
2087	OrderID	10996
2087	ProductID	42
2087	UnitPrice	14.0
2087	Quantity	40
2087	Discount	0.0
2088	OrderID	10997
2088	ProductID	32
2088	UnitPrice	32.0
2088	Quantity	50
2088	Discount	0.0
2089	OrderID	10997
2089	ProductID	46
2089	UnitPrice	12.0
2089	Quantity	20
2089	Discount	0.25
2090	OrderID	10997
2090	ProductID	52
2090	UnitPrice	7.0
2090	Quantity	20
2090	Discount	0.25
2091	OrderID	10998
2091	ProductID	24
2091	UnitPrice	4.5
2091	Quantity	12
2091	Discount	0.0
2092	OrderID	10998
2092	ProductID	61
2092	UnitPrice	28.5
2092	Quantity	7
2092	Discount	0.0
2093	OrderID	10998
2093	ProductID	74
2093	UnitPrice	10.0
2093	Quantity	20
2093	Discount	0.0
2094	OrderID	10998
2094	ProductID	75
2094	UnitPrice	7.75
2094	Quantity	30
2094	Discount	0.0
2095	OrderID	10999
2095	ProductID	41
2095	UnitPrice	9.65
2095	Quantity	20
2095	Discount	0.05
2096	OrderID	10999
2096	ProductID	51
2096	UnitPrice	53.0
2096	Quantity	15
2096	Discount	0.05
2097	OrderID	10999
2097	ProductID	77
2097	UnitPrice	13.0
2097	Quantity	21
2097	Discount	0.05
2098	OrderID	11000
2098	ProductID	4
2098	UnitPrice	22.0
2098	Quantity	25
2098	Discount	0.25
2099	OrderID	11000
2099	ProductID	24
2099	UnitPrice	4.5
2099	Quantity	30
2099	Discount	0.25
2100	OrderID	11000
2100	ProductID	77
2100	UnitPrice	13.0
2100	Quantity	30
2100	Discount	0.0
2101	OrderID	11001
2101	ProductID	7
2101	UnitPrice	30.0
2101	Quantity	60
2101	Discount	0.0
2102	OrderID	11001
2102	ProductID	22
2102	UnitPrice	21.0
2102	Quantity	25
2102	Discount	0.0
2103	OrderID	11001
2103	ProductID	46
2103	UnitPrice	12.0
2103	Quantity	25
2103	Discount	0.0
2104	OrderID	11001
2104	ProductID	55
2104	UnitPrice	24.0
2104	Quantity	6
2104	Discount	0.0
2105	OrderID	11002
2105	ProductID	13
2105	UnitPrice	6.0
2105	Quantity	56
2105	Discount	0.0
2106	OrderID	11002
2106	ProductID	35
2106	UnitPrice	18.0
2106	Quantity	15
2106	Discount	0.15
2107	OrderID	11002
2107	ProductID	42
2107	UnitPrice	14.0
2107	Quantity	24
2107	Discount	0.15
2108	OrderID	11002
2108	ProductID	55
2108	UnitPrice	24.0
2108	Quantity	40
2108	Discount	0.0
2109	OrderID	11003
2109	ProductID	1
2109	UnitPrice	18.0
2109	Quantity	4
2109	Discount	0.0
2110	OrderID	11003
2110	ProductID	40
2110	UnitPrice	18.4
2110	Quantity	10
2110	Discount	0.0
2111	OrderID	11003
2111	ProductID	52
2111	UnitPrice	7.0
2111	Quantity	10
2111	Discount	0.0
2112	OrderID	11004
2112	ProductID	26
2112	UnitPrice	31.23
2112	Quantity	6
2112	Discount	0.0
2113	OrderID	11004
2113	ProductID	76
2113	UnitPrice	18.0
2113	Quantity	6
2113	Discount	0.0
2114	OrderID	11005
2114	ProductID	1
2114	UnitPrice	18.0
2114	Quantity	2
2114	Discount	0.0
2115	OrderID	11005
2115	ProductID	59
2115	UnitPrice	55.0
2115	Quantity	10
2115	Discount	0.0
2116	OrderID	11006
2116	ProductID	1
2116	UnitPrice	18.0
2116	Quantity	8
2116	Discount	0.0
2117	OrderID	11006
2117	ProductID	29
2117	UnitPrice	123.79
2117	Quantity	2
2117	Discount	0.25
2118	OrderID	11007
2118	ProductID	8
2118	UnitPrice	40.0
2118	Quantity	30
2118	Discount	0.0
2119	OrderID	11007
2119	ProductID	29
2119	UnitPrice	123.79
2119	Quantity	10
2119	Discount	0.0
2120	OrderID	11007
2120	ProductID	42
2120	UnitPrice	14.0
2120	Quantity	14
2120	Discount	0.0
2121	OrderID	11008
2121	ProductID	28
2121	UnitPrice	45.6
2121	Quantity	70
2121	Discount	0.05
2122	OrderID	11008
2122	ProductID	34
2122	UnitPrice	14.0
2122	Quantity	90
2122	Discount	0.05
2123	OrderID	11008
2123	ProductID	71
2123	UnitPrice	21.5
2123	Quantity	21
2123	Discount	0.0
2124	OrderID	11009
2124	ProductID	24
2124	UnitPrice	4.5
2124	Quantity	12
2124	Discount	0.0
2125	OrderID	11009
2125	ProductID	36
2125	UnitPrice	19.0
2125	Quantity	18
2125	Discount	0.25
2126	OrderID	11009
2126	ProductID	60
2126	UnitPrice	34.0
2126	Quantity	9
2126	Discount	0.0
2127	OrderID	11010
2127	ProductID	7
2127	UnitPrice	30.0
2127	Quantity	20
2127	Discount	0.0
2128	OrderID	11010
2128	ProductID	24
2128	UnitPrice	4.5
2128	Quantity	10
2128	Discount	0.0
2129	OrderID	11011
2129	ProductID	58
2129	UnitPrice	13.25
2129	Quantity	40
2129	Discount	0.05
2130	OrderID	11011
2130	ProductID	71
2130	UnitPrice	21.5
2130	Quantity	20
2130	Discount	0.0
2131	OrderID	11012
2131	ProductID	19
2131	UnitPrice	9.2
2131	Quantity	50
2131	Discount	0.05
2132	OrderID	11012
2132	ProductID	60
2132	UnitPrice	34.0
2132	Quantity	36
2132	Discount	0.05
2133	OrderID	11012
2133	ProductID	71
2133	UnitPrice	21.5
2133	Quantity	60
2133	Discount	0.05
2134	OrderID	11013
2134	ProductID	23
2134	UnitPrice	9.0
2134	Quantity	10
2134	Discount	0.0
2135	OrderID	11013
2135	ProductID	42
2135	UnitPrice	14.0
2135	Quantity	4
2135	Discount	0.0
2136	OrderID	11013
2136	ProductID	45
2136	UnitPrice	9.5
2136	Quantity	20
2136	Discount	0.0
2137	OrderID	11013
2137	ProductID	68
2137	UnitPrice	12.5
2137	Quantity	2
2137	Discount	0.0
2138	OrderID	11014
2138	ProductID	41
2138	UnitPrice	9.65
2138	Quantity	28
2138	Discount	0.1
2139	OrderID	11015
2139	ProductID	30
2139	UnitPrice	25.89
2139	Quantity	15
2139	Discount	0.0
2140	OrderID	11015
2140	ProductID	77
2140	UnitPrice	13.0
2140	Quantity	18
2140	Discount	0.0
2141	OrderID	11016
2141	ProductID	31
2141	UnitPrice	12.5
2141	Quantity	15
2141	Discount	0.0
2142	OrderID	11016
2142	ProductID	36
2142	UnitPrice	19.0
2142	Quantity	16
2142	Discount	0.0
2143	OrderID	11017
2143	ProductID	3
2143	UnitPrice	10.0
2143	Quantity	25
2143	Discount	0.0
2144	OrderID	11017
2144	ProductID	59
2144	UnitPrice	55.0
2144	Quantity	110
2144	Discount	0.0
2145	OrderID	11017
2145	ProductID	70
2145	UnitPrice	15.0
2145	Quantity	30
2145	Discount	0.0
2146	OrderID	11018
2146	ProductID	12
2146	UnitPrice	38.0
2146	Quantity	20
2146	Discount	0.0
2147	OrderID	11018
2147	ProductID	18
2147	UnitPrice	62.5
2147	Quantity	10
2147	Discount	0.0
2148	OrderID	11018
2148	ProductID	56
2148	UnitPrice	38.0
2148	Quantity	5
2148	Discount	0.0
2149	OrderID	11019
2149	ProductID	46
2149	UnitPrice	12.0
2149	Quantity	3
2149	Discount	0.0
2150	OrderID	11019
2150	ProductID	49
2150	UnitPrice	20.0
2150	Quantity	2
2150	Discount	0.0
2151	OrderID	11020
2151	ProductID	10
2151	UnitPrice	31.0
2151	Quantity	24
2151	Discount	0.15
2152	OrderID	11021
2152	ProductID	2
2152	UnitPrice	19.0
2152	Quantity	11
2152	Discount	0.25
2153	OrderID	11021
2153	ProductID	20
2153	UnitPrice	81.0
2153	Quantity	15
2153	Discount	0.0
2154	OrderID	11021
2154	ProductID	26
2154	UnitPrice	31.23
2154	Quantity	63
2154	Discount	0.0
2155	OrderID	11021
2155	ProductID	51
2155	UnitPrice	53.0
2155	Quantity	44
2155	Discount	0.25
2156	OrderID	11021
2156	ProductID	72
2156	UnitPrice	34.8
2156	Quantity	35
2156	Discount	0.0
2157	OrderID	11022
2157	ProductID	19
2157	UnitPrice	9.2
2157	Quantity	35
2157	Discount	0.0
2158	OrderID	11022
2158	ProductID	69
2158	UnitPrice	36.0
2158	Quantity	30
2158	Discount	0.0
2159	OrderID	11023
2159	ProductID	7
2159	UnitPrice	30.0
2159	Quantity	4
2159	Discount	0.0
2160	OrderID	11023
2160	ProductID	43
2160	UnitPrice	46.0
2160	Quantity	30
2160	Discount	0.0
2161	OrderID	11024
2161	ProductID	26
2161	UnitPrice	31.23
2161	Quantity	12
2161	Discount	0.0
2162	OrderID	11024
2162	ProductID	33
2162	UnitPrice	2.5
2162	Quantity	30
2162	Discount	0.0
2163	OrderID	11024
2163	ProductID	65
2163	UnitPrice	21.05
2163	Quantity	21
2163	Discount	0.0
2164	OrderID	11024
2164	ProductID	71
2164	UnitPrice	21.5
2164	Quantity	50
2164	Discount	0.0
2165	OrderID	11025
2165	ProductID	1
2165	UnitPrice	18.0
2165	Quantity	10
2165	Discount	0.1
2166	OrderID	11025
2166	ProductID	13
2166	UnitPrice	6.0
2166	Quantity	20
2166	Discount	0.1
2167	OrderID	11026
2167	ProductID	18
2167	UnitPrice	62.5
2167	Quantity	8
2167	Discount	0.0
2168	OrderID	11026
2168	ProductID	51
2168	UnitPrice	53.0
2168	Quantity	10
2168	Discount	0.0
2169	OrderID	11027
2169	ProductID	24
2169	UnitPrice	4.5
2169	Quantity	30
2169	Discount	0.25
2170	OrderID	11027
2170	ProductID	62
2170	UnitPrice	49.3
2170	Quantity	21
2170	Discount	0.25
2171	OrderID	11028
2171	ProductID	55
2171	UnitPrice	24.0
2171	Quantity	35
2171	Discount	0.0
2172	OrderID	11028
2172	ProductID	59
2172	UnitPrice	55.0
2172	Quantity	24
2172	Discount	0.0
2173	OrderID	11029
2173	ProductID	56
2173	UnitPrice	38.0
2173	Quantity	20
2173	Discount	0.0
2174	OrderID	11029
2174	ProductID	63
2174	UnitPrice	43.9
2174	Quantity	12
2174	Discount	0.0
2175	OrderID	11030
2175	ProductID	2
2175	UnitPrice	19.0
2175	Quantity	100
2175	Discount	0.25
2176	OrderID	11030
2176	ProductID	5
2176	UnitPrice	21.35
2176	Quantity	70
2176	Discount	0.0
2177	OrderID	11030
2177	ProductID	29
2177	UnitPrice	123.79
2177	Quantity	60
2177	Discount	0.25
2178	OrderID	11030
2178	ProductID	59
2178	UnitPrice	55.0
2178	Quantity	100
2178	Discount	0.25
2179	OrderID	11031
2179	ProductID	1
2179	UnitPrice	18.0
2179	Quantity	45
2179	Discount	0.0
2180	OrderID	11031
2180	ProductID	13
2180	UnitPrice	6.0
2180	Quantity	80
2180	Discount	0.0
2181	OrderID	11031
2181	ProductID	24
2181	UnitPrice	4.5
2181	Quantity	21
2181	Discount	0.0
2182	OrderID	11031
2182	ProductID	64
2182	UnitPrice	33.25
2182	Quantity	20
2182	Discount	0.0
2183	OrderID	11031
2183	ProductID	71
2183	UnitPrice	21.5
2183	Quantity	16
2183	Discount	0.0
2184	OrderID	11032
2184	ProductID	36
2184	UnitPrice	19.0
2184	Quantity	35
2184	Discount	0.0
2185	OrderID	11032
2185	ProductID	38
2185	UnitPrice	263.5
2185	Quantity	25
2185	Discount	0.0
2186	OrderID	11032
2186	ProductID	59
2186	UnitPrice	55.0
2186	Quantity	30
2186	Discount	0.0
2187	OrderID	11033
2187	ProductID	53
2187	UnitPrice	32.8
2187	Quantity	70
2187	Discount	0.1
2188	OrderID	11033
2188	ProductID	69
2188	UnitPrice	36.0
2188	Quantity	36
2188	Discount	0.1
2189	OrderID	11034
2189	ProductID	21
2189	UnitPrice	10.0
2189	Quantity	15
2189	Discount	0.1
2190	OrderID	11034
2190	ProductID	44
2190	UnitPrice	19.45
2190	Quantity	12
2190	Discount	0.0
2191	OrderID	11034
2191	ProductID	61
2191	UnitPrice	28.5
2191	Quantity	6
2191	Discount	0.0
2192	OrderID	11035
2192	ProductID	1
2192	UnitPrice	18.0
2192	Quantity	10
2192	Discount	0.0
2193	OrderID	11035
2193	ProductID	35
2193	UnitPrice	18.0
2193	Quantity	60
2193	Discount	0.0
2194	OrderID	11035
2194	ProductID	42
2194	UnitPrice	14.0
2194	Quantity	30
2194	Discount	0.0
2195	OrderID	11035
2195	ProductID	54
2195	UnitPrice	7.45
2195	Quantity	10
2195	Discount	0.0
2196	OrderID	11036
2196	ProductID	13
2196	UnitPrice	6.0
2196	Quantity	7
2196	Discount	0.0
2197	OrderID	11036
2197	ProductID	59
2197	UnitPrice	55.0
2197	Quantity	30
2197	Discount	0.0
2198	OrderID	11037
2198	ProductID	70
2198	UnitPrice	15.0
2198	Quantity	4
2198	Discount	0.0
2199	OrderID	11038
2199	ProductID	40
2199	UnitPrice	18.4
2199	Quantity	5
2199	Discount	0.2
2200	OrderID	11038
2200	ProductID	52
2200	UnitPrice	7.0
2200	Quantity	2
2200	Discount	0.0
2201	OrderID	11038
2201	ProductID	71
2201	UnitPrice	21.5
2201	Quantity	30
2201	Discount	0.0
2202	OrderID	11039
2202	ProductID	28
2202	UnitPrice	45.6
2202	Quantity	20
2202	Discount	0.0
2203	OrderID	11039
2203	ProductID	35
2203	UnitPrice	18.0
2203	Quantity	24
2203	Discount	0.0
2204	OrderID	11039
2204	ProductID	49
2204	UnitPrice	20.0
2204	Quantity	60
2204	Discount	0.0
2205	OrderID	11039
2205	ProductID	57
2205	UnitPrice	19.5
2205	Quantity	28
2205	Discount	0.0
2206	OrderID	11040
2206	ProductID	21
2206	UnitPrice	10.0
2206	Quantity	20
2206	Discount	0.0
2207	OrderID	11041
2207	ProductID	2
2207	UnitPrice	19.0
2207	Quantity	30
2207	Discount	0.2
2208	OrderID	11041
2208	ProductID	63
2208	UnitPrice	43.9
2208	Quantity	30
2208	Discount	0.0
2209	OrderID	11042
2209	ProductID	44
2209	UnitPrice	19.45
2209	Quantity	15
2209	Discount	0.0
2210	OrderID	11042
2210	ProductID	61
2210	UnitPrice	28.5
2210	Quantity	4
2210	Discount	0.0
2211	OrderID	11043
2211	ProductID	11
2211	UnitPrice	21.0
2211	Quantity	10
2211	Discount	0.0
2212	OrderID	11044
2212	ProductID	62
2212	UnitPrice	49.3
2212	Quantity	12
2212	Discount	0.0
2213	OrderID	11045
2213	ProductID	33
2213	UnitPrice	2.5
2213	Quantity	15
2213	Discount	0.0
2214	OrderID	11045
2214	ProductID	51
2214	UnitPrice	53.0
2214	Quantity	24
2214	Discount	0.0
2215	OrderID	11046
2215	ProductID	12
2215	UnitPrice	38.0
2215	Quantity	20
2215	Discount	0.05
2216	OrderID	11046
2216	ProductID	32
2216	UnitPrice	32.0
2216	Quantity	15
2216	Discount	0.05
2217	OrderID	11046
2217	ProductID	35
2217	UnitPrice	18.0
2217	Quantity	18
2217	Discount	0.05
2218	OrderID	11047
2218	ProductID	1
2218	UnitPrice	18.0
2218	Quantity	25
2218	Discount	0.25
2219	OrderID	11047
2219	ProductID	5
2219	UnitPrice	21.35
2219	Quantity	30
2219	Discount	0.25
2220	OrderID	11048
2220	ProductID	68
2220	UnitPrice	12.5
2220	Quantity	42
2220	Discount	0.0
2221	OrderID	11049
2221	ProductID	2
2221	UnitPrice	19.0
2221	Quantity	10
2221	Discount	0.2
2222	OrderID	11049
2222	ProductID	12
2222	UnitPrice	38.0
2222	Quantity	4
2222	Discount	0.2
2223	OrderID	11050
2223	ProductID	76
2223	UnitPrice	18.0
2223	Quantity	50
2223	Discount	0.1
2224	OrderID	11051
2224	ProductID	24
2224	UnitPrice	4.5
2224	Quantity	10
2224	Discount	0.2
2225	OrderID	11052
2225	ProductID	43
2225	UnitPrice	46.0
2225	Quantity	30
2225	Discount	0.2
2226	OrderID	11052
2226	ProductID	61
2226	UnitPrice	28.5
2226	Quantity	10
2226	Discount	0.2
2227	OrderID	11053
2227	ProductID	18
2227	UnitPrice	62.5
2227	Quantity	35
2227	Discount	0.2
2228	OrderID	11053
2228	ProductID	32
2228	UnitPrice	32.0
2228	Quantity	20
2228	Discount	0.0
2229	OrderID	11053
2229	ProductID	64
2229	UnitPrice	33.25
2229	Quantity	25
2229	Discount	0.2
2230	OrderID	11054
2230	ProductID	33
2230	UnitPrice	2.5
2230	Quantity	10
2230	Discount	0.0
2231	OrderID	11054
2231	ProductID	67
2231	UnitPrice	14.0
2231	Quantity	20
2231	Discount	0.0
2232	OrderID	11055
2232	ProductID	24
2232	UnitPrice	4.5
2232	Quantity	15
2232	Discount	0.0
2233	OrderID	11055
2233	ProductID	25
2233	UnitPrice	14.0
2233	Quantity	15
2233	Discount	0.0
2234	OrderID	11055
2234	ProductID	51
2234	UnitPrice	53.0
2234	Quantity	20
2234	Discount	0.0
2235	OrderID	11055
2235	ProductID	57
2235	UnitPrice	19.5
2235	Quantity	20
2235	Discount	0.0
2236	OrderID	11056
2236	ProductID	7
2236	UnitPrice	30.0
2236	Quantity	40
2236	Discount	0.0
2237	OrderID	11056
2237	ProductID	55
2237	UnitPrice	24.0
2237	Quantity	35
2237	Discount	0.0
2238	OrderID	11056
2238	ProductID	60
2238	UnitPrice	34.0
2238	Quantity	50
2238	Discount	0.0
2239	OrderID	11057
2239	ProductID	70
2239	UnitPrice	15.0
2239	Quantity	3
2239	Discount	0.0
2240	OrderID	11058
2240	ProductID	21
2240	UnitPrice	10.0
2240	Quantity	3
2240	Discount	0.0
2241	OrderID	11058
2241	ProductID	60
2241	UnitPrice	34.0
2241	Quantity	21
2241	Discount	0.0
2242	OrderID	11058
2242	ProductID	61
2242	UnitPrice	28.5
2242	Quantity	4
2242	Discount	0.0
2243	OrderID	11059
2243	ProductID	13
2243	UnitPrice	6.0
2243	Quantity	30
2243	Discount	0.0
2244	OrderID	11059
2244	ProductID	17
2244	UnitPrice	39.0
2244	Quantity	12
2244	Discount	0.0
2245	OrderID	11059
2245	ProductID	60
2245	UnitPrice	34.0
2245	Quantity	35
2245	Discount	0.0
2246	OrderID	11060
2246	ProductID	60
2246	UnitPrice	34.0
2246	Quantity	4
2246	Discount	0.0
2247	OrderID	11060
2247	ProductID	77
2247	UnitPrice	13.0
2247	Quantity	10
2247	Discount	0.0
2248	OrderID	11061
2248	ProductID	60
2248	UnitPrice	34.0
2248	Quantity	15
2248	Discount	0.0
2249	OrderID	11062
2249	ProductID	53
2249	UnitPrice	32.8
2249	Quantity	10
2249	Discount	0.2
2250	OrderID	11062
2250	ProductID	70
2250	UnitPrice	15.0
2250	Quantity	12
2250	Discount	0.2
2251	OrderID	11063
2251	ProductID	34
2251	UnitPrice	14.0
2251	Quantity	30
2251	Discount	0.0
2252	OrderID	11063
2252	ProductID	40
2252	UnitPrice	18.4
2252	Quantity	40
2252	Discount	0.1
2253	OrderID	11063
2253	ProductID	41
2253	UnitPrice	9.65
2253	Quantity	30
2253	Discount	0.1
2254	OrderID	11064
2254	ProductID	17
2254	UnitPrice	39.0
2254	Quantity	77
2254	Discount	0.1
2255	OrderID	11064
2255	ProductID	41
2255	UnitPrice	9.65
2255	Quantity	12
2255	Discount	0.0
2256	OrderID	11064
2256	ProductID	53
2256	UnitPrice	32.8
2256	Quantity	25
2256	Discount	0.1
2257	OrderID	11064
2257	ProductID	55
2257	UnitPrice	24.0
2257	Quantity	4
2257	Discount	0.1
2258	OrderID	11064
2258	ProductID	68
2258	UnitPrice	12.5
2258	Quantity	55
2258	Discount	0.0
2259	OrderID	11065
2259	ProductID	30
2259	UnitPrice	25.89
2259	Quantity	4
2259	Discount	0.25
2260	OrderID	11065
2260	ProductID	54
2260	UnitPrice	7.45
2260	Quantity	20
2260	Discount	0.25
2261	OrderID	11066
2261	ProductID	16
2261	UnitPrice	17.45
2261	Quantity	3
2261	Discount	0.0
2262	OrderID	11066
2262	ProductID	19
2262	UnitPrice	9.2
2262	Quantity	42
2262	Discount	0.0
2263	OrderID	11066
2263	ProductID	34
2263	UnitPrice	14.0
2263	Quantity	35
2263	Discount	0.0
2264	OrderID	11067
2264	ProductID	41
2264	UnitPrice	9.65
2264	Quantity	9
2264	Discount	0.0
2265	OrderID	11068
2265	ProductID	28
2265	UnitPrice	45.6
2265	Quantity	8
2265	Discount	0.15
2266	OrderID	11068
2266	ProductID	43
2266	UnitPrice	46.0
2266	Quantity	36
2266	Discount	0.15
2267	OrderID	11068
2267	ProductID	77
2267	UnitPrice	13.0
2267	Quantity	28
2267	Discount	0.15
2268	OrderID	11069
2268	ProductID	39
2268	UnitPrice	18.0
2268	Quantity	20
2268	Discount	0.0
2269	OrderID	11070
2269	ProductID	1
2269	UnitPrice	18.0
2269	Quantity	40
2269	Discount	0.15
2270	OrderID	11070
2270	ProductID	2
2270	UnitPrice	19.0
2270	Quantity	20
2270	Discount	0.15
2271	OrderID	11070
2271	ProductID	16
2271	UnitPrice	17.45
2271	Quantity	30
2271	Discount	0.15
2272	OrderID	11070
2272	ProductID	31
2272	UnitPrice	12.5
2272	Quantity	20
2272	Discount	0.0
2273	OrderID	11071
2273	ProductID	7
2273	UnitPrice	30.0
2273	Quantity	15
2273	Discount	0.05
2274	OrderID	11071
2274	ProductID	13
2274	UnitPrice	6.0
2274	Quantity	10
2274	Discount	0.05
2275	OrderID	11072
2275	ProductID	2
2275	UnitPrice	19.0
2275	Quantity	8
2275	Discount	0.0
2276	OrderID	11072
2276	ProductID	41
2276	UnitPrice	9.65
2276	Quantity	40
2276	Discount	0.0
2277	OrderID	11072
2277	ProductID	50
2277	UnitPrice	16.25
2277	Quantity	22
2277	Discount	0.0
2278	OrderID	11072
2278	ProductID	64
2278	UnitPrice	33.25
2278	Quantity	130
2278	Discount	0.0
2279	OrderID	11073
2279	ProductID	11
2279	UnitPrice	21.0
2279	Quantity	10
2279	Discount	0.0
2280	OrderID	11073
2280	ProductID	24
2280	UnitPrice	4.5
2280	Quantity	20
2280	Discount	0.0
2281	OrderID	11074
2281	ProductID	16
2281	UnitPrice	17.45
2281	Quantity	14
2281	Discount	0.05
2282	OrderID	11075
2282	ProductID	2
2282	UnitPrice	19.0
2282	Quantity	10
2282	Discount	0.15
2283	OrderID	11075
2283	ProductID	46
2283	UnitPrice	12.0
2283	Quantity	30
2283	Discount	0.15
2284	OrderID	11075
2284	ProductID	76
2284	UnitPrice	18.0
2284	Quantity	2
2284	Discount	0.15
2285	OrderID	11076
2285	ProductID	6
2285	UnitPrice	25.0
2285	Quantity	20
2285	Discount	0.25
2286	OrderID	11076
2286	ProductID	14
2286	UnitPrice	23.25
2286	Quantity	20
2286	Discount	0.25
2287	OrderID	11076
2287	ProductID	19
2287	UnitPrice	9.2
2287	Quantity	10
2287	Discount	0.25
2288	OrderID	11077
2288	ProductID	2
2288	UnitPrice	19.0
2288	Quantity	24
2288	Discount	0.2
2289	OrderID	11077
2289	ProductID	3
2289	UnitPrice	10.0
2289	Quantity	4
2289	Discount	0.0
2290	OrderID	11077
2290	ProductID	4
2290	UnitPrice	22.0
2290	Quantity	1
2290	Discount	0.0
2291	OrderID	11077
2291	ProductID	6
2291	UnitPrice	25.0
2291	Quantity	1
2291	Discount	0.02
2292	OrderID	11077
2292	ProductID	7
2292	UnitPrice	30.0
2292	Quantity	1
2292	Discount	0.05
2293	OrderID	11077
2293	ProductID	8
2293	UnitPrice	40.0
2293	Quantity	2
2293	Discount	0.1
2294	OrderID	11077
2294	ProductID	10
2294	UnitPrice	31.0
2294	Quantity	1
2294	Discount	0.0
2295	OrderID	11077
2295	ProductID	12
2295	UnitPrice	38.0
2295	Quantity	2
2295	Discount	0.05
2296	OrderID	11077
2296	ProductID	13
2296	UnitPrice	6.0
2296	Quantity	4
2296	Discount	0.0
2297	OrderID	11077
2297	ProductID	14
2297	UnitPrice	23.25
2297	Quantity	1
2297	Discount	0.03
2298	OrderID	11077
2298	ProductID	16
2298	UnitPrice	17.45
2298	Quantity	2
2298	Discount	0.03
2299	OrderID	11077
2299	ProductID	20
2299	UnitPrice	81.0
2299	Quantity	1
2299	Discount	0.04
2300	OrderID	11077
2300	ProductID	23
2300	UnitPrice	9.0
2300	Quantity	2
2300	Discount	0.0
2301	OrderID	11077
2301	ProductID	32
2301	UnitPrice	32.0
2301	Quantity	1
2301	Discount	0.0
2302	OrderID	11077
2302	ProductID	39
2302	UnitPrice	18.0
2302	Quantity	2
2302	Discount	0.05
2303	OrderID	11077
2303	ProductID	41
2303	UnitPrice	9.65
2303	Quantity	3
2303	Discount	0.0
2304	OrderID	11077
2304	ProductID	46
2304	UnitPrice	12.0
2304	Quantity	3
2304	Discount	0.02
2305	OrderID	11077
2305	ProductID	52
2305	UnitPrice	7.0
2305	Quantity	2
2305	Discount	0.0
2306	OrderID	11077
2306	ProductID	55
2306	UnitPrice	24.0
2306	Quantity	2
2306	Discount	0.0
2307	OrderID	11077
2307	ProductID	60
2307	UnitPrice	34.0
2307	Quantity	2
2307	Discount	0.06
2308	OrderID	11077
2308	ProductID	64
2308	UnitPrice	33.25
2308	Quantity	2
2308	Discount	0.03
2309	OrderID	11077
2309	ProductID	66
2309	UnitPrice	17.0
2309	Quantity	1
2309	Discount	0.0
2310	OrderID	11077
2310	ProductID	73
2310	UnitPrice	15.0
2310	Quantity	2
2310	Discount	0.01
2311	OrderID	11077
2311	ProductID	75
2311	UnitPrice	7.75
2311	Quantity	4
2311	Discount	0.0
2312	OrderID	11077
2312	ProductID	77
2312	UnitPrice	13.0
2312	Quantity	2
2312	Discount	0.0
2313	OrderID	10248
2313	CustomerID	VINET
2313	EmployeeID	5
2313	OrderDate	1996-07-04
2313	RequiredDate	1996-08-01
2313	ShippedDate	1996-07-16
2313	ShipVia	3
2313	Freight	32.38
2313	ShipName	Vins et alcools Chevalier
2313	ShipAddress	59 rue de l'Abbaye
2313	ShipCity	Reims
2313	ShipPostalCode	51100
2313	ShipCountry	France
2314	OrderID	10249
2314	CustomerID	TOMSP
2314	EmployeeID	6
2314	OrderDate	1996-07-05
2314	RequiredDate	1996-08-16
2314	ShippedDate	1996-07-10
2314	ShipVia	1
2314	Freight	11.61
2314	ShipName	Toms Spezialitäten
2314	ShipAddress	Luisenstr. 48
2314	ShipCity	Münster
2314	ShipPostalCode	44087
2314	ShipCountry	Germany
2315	OrderID	10250
2315	CustomerID	HANAR
2315	EmployeeID	4
2315	OrderDate	1996-07-08
2315	RequiredDate	1996-08-05
2315	ShippedDate	1996-07-12
2315	ShipVia	2
2315	Freight	65.83
2315	ShipName	Hanari Carnes
2315	ShipAddress	Rua do Paço, 67
2315	ShipCity	Rio de Janeiro
2315	ShipRegion	RJ
2315	ShipPostalCode	05454-876
2315	ShipCountry	Brazil
2316	OrderID	10251
2316	CustomerID	VICTE
2316	EmployeeID	3
2316	OrderDate	1996-07-08
2316	RequiredDate	1996-08-05
2316	ShippedDate	1996-07-15
2316	ShipVia	1
2316	Freight	41.34
2316	ShipName	Victuailles en stock
2316	ShipAddress	2, rue du Commerce
2316	ShipCity	Lyon
2316	ShipPostalCode	69004
2316	ShipCountry	France
2317	OrderID	10252
2317	CustomerID	SUPRD
2317	EmployeeID	4
2317	OrderDate	1996-07-09
2317	RequiredDate	1996-08-06
2317	ShippedDate	1996-07-11
2317	ShipVia	2
2317	Freight	51.3
2317	ShipName	Suprêmes délices
2317	ShipAddress	Boulevard Tirou, 255
2317	ShipCity	Charleroi
2317	ShipPostalCode	B-6000
2317	ShipCountry	Belgium
2318	OrderID	10253
2318	CustomerID	HANAR
2318	EmployeeID	3
2318	OrderDate	1996-07-10
2318	RequiredDate	1996-07-24
2318	ShippedDate	1996-07-16
2318	ShipVia	2
2318	Freight	58.17
2318	ShipName	Hanari Carnes
2318	ShipAddress	Rua do Paço, 67
2318	ShipCity	Rio de Janeiro
2318	ShipRegion	RJ
2318	ShipPostalCode	05454-876
2318	ShipCountry	Brazil
2319	OrderID	10254
2319	CustomerID	CHOPS
2319	EmployeeID	5
2319	OrderDate	1996-07-11
2319	RequiredDate	1996-08-08
2319	ShippedDate	1996-07-23
2319	ShipVia	2
2319	Freight	22.98
2319	ShipName	Chop-suey Chinese
2319	ShipAddress	Hauptstr. 31
2319	ShipCity	Bern
2319	ShipPostalCode	3012
2319	ShipCountry	Switzerland
2320	OrderID	10255
2320	CustomerID	RICSU
2320	EmployeeID	9
2320	OrderDate	1996-07-12
2320	RequiredDate	1996-08-09
2320	ShippedDate	1996-07-15
2320	ShipVia	3
2320	Freight	148.33
2320	ShipName	Richter Supermarkt
2320	ShipAddress	Starenweg 5
2320	ShipCity	Genève
2320	ShipPostalCode	1204
2320	ShipCountry	Switzerland
2321	OrderID	10256
2321	CustomerID	WELLI
2321	EmployeeID	3
2321	OrderDate	1996-07-15
2321	RequiredDate	1996-08-12
2321	ShippedDate	1996-07-17
2321	ShipVia	2
2321	Freight	13.97
2321	ShipName	Wellington Importadora
2321	ShipAddress	Rua do Mercado, 12
2321	ShipCity	Resende
2321	ShipRegion	SP
2321	ShipPostalCode	08737-363
2321	ShipCountry	Brazil
2322	OrderID	10257
2322	CustomerID	HILAA
2322	EmployeeID	4
2322	OrderDate	1996-07-16
2322	RequiredDate	1996-08-13
2322	ShippedDate	1996-07-22
2322	ShipVia	3
2322	Freight	81.91
2322	ShipName	HILARION-Abastos
2322	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2322	ShipCity	San Cristóbal
2322	ShipRegion	Táchira
2322	ShipPostalCode	5022
2322	ShipCountry	Venezuela
2323	OrderID	10258
2323	CustomerID	ERNSH
2323	EmployeeID	1
2323	OrderDate	1996-07-17
2323	RequiredDate	1996-08-14
2323	ShippedDate	1996-07-23
2323	ShipVia	1
2323	Freight	140.51
2323	ShipName	Ernst Handel
2323	ShipAddress	Kirchgasse 6
2323	ShipCity	Graz
2323	ShipPostalCode	8010
2323	ShipCountry	Austria
2324	OrderID	10259
2324	CustomerID	CENTC
2324	EmployeeID	4
2324	OrderDate	1996-07-18
2324	RequiredDate	1996-08-15
2324	ShippedDate	1996-07-25
2324	ShipVia	3
2324	Freight	3.25
2324	ShipName	Centro comercial Moctezuma
2324	ShipAddress	Sierras de Granada 9993
2324	ShipCity	México D.F.
2324	ShipPostalCode	05022
2324	ShipCountry	Mexico
2325	OrderID	10260
2325	CustomerID	OTTIK
2325	EmployeeID	4
2325	OrderDate	1996-07-19
2325	RequiredDate	1996-08-16
2325	ShippedDate	1996-07-29
2325	ShipVia	1
2325	Freight	55.09
2325	ShipName	Ottilies Käseladen
2325	ShipAddress	Mehrheimerstr. 369
2325	ShipCity	Köln
2325	ShipPostalCode	50739
2325	ShipCountry	Germany
2326	OrderID	10261
2326	CustomerID	QUEDE
2326	EmployeeID	4
2326	OrderDate	1996-07-19
2326	RequiredDate	1996-08-16
2326	ShippedDate	1996-07-30
2326	ShipVia	2
2326	Freight	3.05
2326	ShipName	Que Delícia
2326	ShipAddress	Rua da Panificadora, 12
2326	ShipCity	Rio de Janeiro
2326	ShipRegion	RJ
2326	ShipPostalCode	02389-673
2326	ShipCountry	Brazil
2327	OrderID	10262
2327	CustomerID	RATTC
2327	EmployeeID	8
2327	OrderDate	1996-07-22
2327	RequiredDate	1996-08-19
2327	ShippedDate	1996-07-25
2327	ShipVia	3
2327	Freight	48.29
2327	ShipName	Rattlesnake Canyon Grocery
2327	ShipAddress	2817 Milton Dr.
2327	ShipCity	Albuquerque
2327	ShipRegion	NM
2327	ShipPostalCode	87110
2327	ShipCountry	USA
2328	OrderID	10263
2328	CustomerID	ERNSH
2328	EmployeeID	9
2328	OrderDate	1996-07-23
2328	RequiredDate	1996-08-20
2328	ShippedDate	1996-07-31
2328	ShipVia	3
2328	Freight	146.06
2328	ShipName	Ernst Handel
2328	ShipAddress	Kirchgasse 6
2328	ShipCity	Graz
2328	ShipPostalCode	8010
2328	ShipCountry	Austria
2329	OrderID	10264
2329	CustomerID	FOLKO
2329	EmployeeID	6
2329	OrderDate	1996-07-24
2329	RequiredDate	1996-08-21
2329	ShippedDate	1996-08-23
2329	ShipVia	3
2329	Freight	3.67
2329	ShipName	Folk och fä HB
2329	ShipAddress	Åkergatan 24
2329	ShipCity	Bräcke
2329	ShipPostalCode	S-844 67
2329	ShipCountry	Sweden
2330	OrderID	10265
2330	CustomerID	BLONP
2330	EmployeeID	2
2330	OrderDate	1996-07-25
2330	RequiredDate	1996-08-22
2330	ShippedDate	1996-08-12
2330	ShipVia	1
2330	Freight	55.28
2330	ShipName	Blondel père et fils
2330	ShipAddress	24, place Kléber
2330	ShipCity	Strasbourg
2330	ShipPostalCode	67000
2330	ShipCountry	France
2331	OrderID	10266
2331	CustomerID	WARTH
2331	EmployeeID	3
2331	OrderDate	1996-07-26
2331	RequiredDate	1996-09-06
2331	ShippedDate	1996-07-31
2331	ShipVia	3
2331	Freight	25.73
2331	ShipName	Wartian Herkku
2331	ShipAddress	Torikatu 38
2331	ShipCity	Oulu
2331	ShipPostalCode	90110
2331	ShipCountry	Finland
2332	OrderID	10267
2332	CustomerID	FRANK
2332	EmployeeID	4
2332	OrderDate	1996-07-29
2332	RequiredDate	1996-08-26
2332	ShippedDate	1996-08-06
2332	ShipVia	1
2332	Freight	208.58
2332	ShipName	Frankenversand
2332	ShipAddress	Berliner Platz 43
2332	ShipCity	München
2332	ShipPostalCode	80805
2332	ShipCountry	Germany
2333	OrderID	10268
2333	CustomerID	GROSR
2333	EmployeeID	8
2333	OrderDate	1996-07-30
2333	RequiredDate	1996-08-27
2333	ShippedDate	1996-08-02
2333	ShipVia	3
2333	Freight	66.29
2333	ShipName	GROSELLA-Restaurante
2333	ShipAddress	5ª Ave. Los Palos Grandes
2333	ShipCity	Caracas
2333	ShipRegion	DF
2333	ShipPostalCode	1081
2333	ShipCountry	Venezuela
2334	OrderID	10269
2334	CustomerID	WHITC
2334	EmployeeID	5
2334	OrderDate	1996-07-31
2334	RequiredDate	1996-08-14
2334	ShippedDate	1996-08-09
2334	ShipVia	1
2334	Freight	4.56
2334	ShipName	White Clover Markets
2334	ShipAddress	1029 - 12th Ave. S.
2334	ShipCity	Seattle
2334	ShipRegion	WA
2334	ShipPostalCode	98124
2334	ShipCountry	USA
2335	OrderID	10270
2335	CustomerID	WARTH
2335	EmployeeID	1
2335	OrderDate	1996-08-01
2335	RequiredDate	1996-08-29
2335	ShippedDate	1996-08-02
2335	ShipVia	1
2335	Freight	136.54
2335	ShipName	Wartian Herkku
2335	ShipAddress	Torikatu 38
2335	ShipCity	Oulu
2335	ShipPostalCode	90110
2335	ShipCountry	Finland
2336	OrderID	10271
2336	CustomerID	SPLIR
2336	EmployeeID	6
2336	OrderDate	1996-08-01
2336	RequiredDate	1996-08-29
2336	ShippedDate	1996-08-30
2336	ShipVia	2
2336	Freight	4.54
2336	ShipName	Split Rail Beer & Ale
2336	ShipAddress	P.O. Box 555
2336	ShipCity	Lander
2336	ShipRegion	WY
2336	ShipPostalCode	82520
2336	ShipCountry	USA
2337	OrderID	10272
2337	CustomerID	RATTC
2337	EmployeeID	6
2337	OrderDate	1996-08-02
2337	RequiredDate	1996-08-30
2337	ShippedDate	1996-08-06
2337	ShipVia	2
2337	Freight	98.03
2337	ShipName	Rattlesnake Canyon Grocery
2337	ShipAddress	2817 Milton Dr.
2337	ShipCity	Albuquerque
2337	ShipRegion	NM
2337	ShipPostalCode	87110
2337	ShipCountry	USA
2338	OrderID	10273
2338	CustomerID	QUICK
2338	EmployeeID	3
2338	OrderDate	1996-08-05
2338	RequiredDate	1996-09-02
2338	ShippedDate	1996-08-12
2338	ShipVia	3
2338	Freight	76.07
2338	ShipName	QUICK-Stop
2338	ShipAddress	Taucherstraße 10
2338	ShipCity	Cunewalde
2338	ShipPostalCode	01307
2338	ShipCountry	Germany
2339	OrderID	10274
2339	CustomerID	VINET
2339	EmployeeID	6
2339	OrderDate	1996-08-06
2339	RequiredDate	1996-09-03
2339	ShippedDate	1996-08-16
2339	ShipVia	1
2339	Freight	6.01
2339	ShipName	Vins et alcools Chevalier
2339	ShipAddress	59 rue de l'Abbaye
2339	ShipCity	Reims
2339	ShipPostalCode	51100
2339	ShipCountry	France
2340	OrderID	10275
2340	CustomerID	MAGAA
2340	EmployeeID	1
2340	OrderDate	1996-08-07
2340	RequiredDate	1996-09-04
2340	ShippedDate	1996-08-09
2340	ShipVia	1
2340	Freight	26.93
2340	ShipName	Magazzini Alimentari Riuniti
2340	ShipAddress	Via Ludovico il Moro 22
2340	ShipCity	Bergamo
2340	ShipPostalCode	24100
2340	ShipCountry	Italy
2341	OrderID	10276
2341	CustomerID	TORTU
2341	EmployeeID	8
2341	OrderDate	1996-08-08
2341	RequiredDate	1996-08-22
2341	ShippedDate	1996-08-14
2341	ShipVia	3
2341	Freight	13.84
2341	ShipName	Tortuga Restaurante
2341	ShipAddress	Avda. Azteca 123
2341	ShipCity	México D.F.
2341	ShipPostalCode	05033
2341	ShipCountry	Mexico
2342	OrderID	10277
2342	CustomerID	MORGK
2342	EmployeeID	2
2342	OrderDate	1996-08-09
2342	RequiredDate	1996-09-06
2342	ShippedDate	1996-08-13
2342	ShipVia	3
2342	Freight	125.77
2342	ShipName	Morgenstern Gesundkost
2342	ShipAddress	Heerstr. 22
2342	ShipCity	Leipzig
2342	ShipPostalCode	04179
2342	ShipCountry	Germany
2343	OrderID	10278
2343	CustomerID	BERGS
2343	EmployeeID	8
2343	OrderDate	1996-08-12
2343	RequiredDate	1996-09-09
2343	ShippedDate	1996-08-16
2343	ShipVia	2
2343	Freight	92.69
2343	ShipName	Berglunds snabbköp
2343	ShipAddress	Berguvsvägen  8
2343	ShipCity	Luleå
2343	ShipPostalCode	S-958 22
2343	ShipCountry	Sweden
2344	OrderID	10279
2344	CustomerID	LEHMS
2344	EmployeeID	8
2344	OrderDate	1996-08-13
2344	RequiredDate	1996-09-10
2344	ShippedDate	1996-08-16
2344	ShipVia	2
2344	Freight	25.83
2344	ShipName	Lehmanns Marktstand
2344	ShipAddress	Magazinweg 7
2344	ShipCity	Frankfurt a.M.
2344	ShipPostalCode	60528
2344	ShipCountry	Germany
2345	OrderID	10280
2345	CustomerID	BERGS
2345	EmployeeID	2
2345	OrderDate	1996-08-14
2345	RequiredDate	1996-09-11
2345	ShippedDate	1996-09-12
2345	ShipVia	1
2345	Freight	8.98
2345	ShipName	Berglunds snabbköp
2345	ShipAddress	Berguvsvägen  8
2345	ShipCity	Luleå
2345	ShipPostalCode	S-958 22
2345	ShipCountry	Sweden
2346	OrderID	10281
2346	CustomerID	ROMEY
2346	EmployeeID	4
2346	OrderDate	1996-08-14
2346	RequiredDate	1996-08-28
2346	ShippedDate	1996-08-21
2346	ShipVia	1
2346	Freight	2.94
2346	ShipName	Romero y tomillo
2346	ShipAddress	Gran Vía, 1
2346	ShipCity	Madrid
2346	ShipPostalCode	28001
2346	ShipCountry	Spain
2347	OrderID	10282
2347	CustomerID	ROMEY
2347	EmployeeID	4
2347	OrderDate	1996-08-15
2347	RequiredDate	1996-09-12
2347	ShippedDate	1996-08-21
2347	ShipVia	1
2347	Freight	12.69
2347	ShipName	Romero y tomillo
2347	ShipAddress	Gran Vía, 1
2347	ShipCity	Madrid
2347	ShipPostalCode	28001
2347	ShipCountry	Spain
2348	OrderID	10283
2348	CustomerID	LILAS
2348	EmployeeID	3
2348	OrderDate	1996-08-16
2348	RequiredDate	1996-09-13
2348	ShippedDate	1996-08-23
2348	ShipVia	3
2348	Freight	84.81
2348	ShipName	LILA-Supermercado
2348	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2348	ShipCity	Barquisimeto
2348	ShipRegion	Lara
2348	ShipPostalCode	3508
2348	ShipCountry	Venezuela
2349	OrderID	10284
2349	CustomerID	LEHMS
2349	EmployeeID	4
2349	OrderDate	1996-08-19
2349	RequiredDate	1996-09-16
2349	ShippedDate	1996-08-27
2349	ShipVia	1
2349	Freight	76.56
2349	ShipName	Lehmanns Marktstand
2349	ShipAddress	Magazinweg 7
2349	ShipCity	Frankfurt a.M.
2349	ShipPostalCode	60528
2349	ShipCountry	Germany
2350	OrderID	10285
2350	CustomerID	QUICK
2350	EmployeeID	1
2350	OrderDate	1996-08-20
2350	RequiredDate	1996-09-17
2350	ShippedDate	1996-08-26
2350	ShipVia	2
2350	Freight	76.83
2350	ShipName	QUICK-Stop
2350	ShipAddress	Taucherstraße 10
2350	ShipCity	Cunewalde
2350	ShipPostalCode	01307
2350	ShipCountry	Germany
2351	OrderID	10286
2351	CustomerID	QUICK
2351	EmployeeID	8
2351	OrderDate	1996-08-21
2351	RequiredDate	1996-09-18
2351	ShippedDate	1996-08-30
2351	ShipVia	3
2351	Freight	229.24
2351	ShipName	QUICK-Stop
2351	ShipAddress	Taucherstraße 10
2351	ShipCity	Cunewalde
2351	ShipPostalCode	01307
2351	ShipCountry	Germany
2352	OrderID	10287
2352	CustomerID	RICAR
2352	EmployeeID	8
2352	OrderDate	1996-08-22
2352	RequiredDate	1996-09-19
2352	ShippedDate	1996-08-28
2352	ShipVia	3
2352	Freight	12.76
2352	ShipName	Ricardo Adocicados
2352	ShipAddress	Av. Copacabana, 267
2352	ShipCity	Rio de Janeiro
2352	ShipRegion	RJ
2352	ShipPostalCode	02389-890
2352	ShipCountry	Brazil
2353	OrderID	10288
2353	CustomerID	REGGC
2353	EmployeeID	4
2353	OrderDate	1996-08-23
2353	RequiredDate	1996-09-20
2353	ShippedDate	1996-09-03
2353	ShipVia	1
2353	Freight	7.45
2353	ShipName	Reggiani Caseifici
2353	ShipAddress	Strada Provinciale 124
2353	ShipCity	Reggio Emilia
2353	ShipPostalCode	42100
2353	ShipCountry	Italy
2354	OrderID	10289
2354	CustomerID	BSBEV
2354	EmployeeID	7
2354	OrderDate	1996-08-26
2354	RequiredDate	1996-09-23
2354	ShippedDate	1996-08-28
2354	ShipVia	3
2354	Freight	22.77
2354	ShipName	B's Beverages
2354	ShipAddress	Fauntleroy Circus
2354	ShipCity	London
2354	ShipPostalCode	EC2 5NT
2354	ShipCountry	UK
2355	OrderID	10290
2355	CustomerID	COMMI
2355	EmployeeID	8
2355	OrderDate	1996-08-27
2355	RequiredDate	1996-09-24
2355	ShippedDate	1996-09-03
2355	ShipVia	1
2355	Freight	79.7
2355	ShipName	Comércio Mineiro
2355	ShipAddress	Av. dos Lusíadas, 23
2355	ShipCity	Sao Paulo
2355	ShipRegion	SP
2355	ShipPostalCode	05432-043
2355	ShipCountry	Brazil
2356	OrderID	10291
2356	CustomerID	QUEDE
2356	EmployeeID	6
2356	OrderDate	1996-08-27
2356	RequiredDate	1996-09-24
2356	ShippedDate	1996-09-04
2356	ShipVia	2
2356	Freight	6.4
2356	ShipName	Que Delícia
2356	ShipAddress	Rua da Panificadora, 12
2356	ShipCity	Rio de Janeiro
2356	ShipRegion	RJ
2356	ShipPostalCode	02389-673
2356	ShipCountry	Brazil
2357	OrderID	10292
2357	CustomerID	TRADH
2357	EmployeeID	1
2357	OrderDate	1996-08-28
2357	RequiredDate	1996-09-25
2357	ShippedDate	1996-09-02
2357	ShipVia	2
2357	Freight	1.35
2357	ShipName	Tradiçao Hipermercados
2357	ShipAddress	Av. Inês de Castro, 414
2357	ShipCity	Sao Paulo
2357	ShipRegion	SP
2357	ShipPostalCode	05634-030
2357	ShipCountry	Brazil
2358	OrderID	10293
2358	CustomerID	TORTU
2358	EmployeeID	1
2358	OrderDate	1996-08-29
2358	RequiredDate	1996-09-26
2358	ShippedDate	1996-09-11
2358	ShipVia	3
2358	Freight	21.18
2358	ShipName	Tortuga Restaurante
2358	ShipAddress	Avda. Azteca 123
2358	ShipCity	México D.F.
2358	ShipPostalCode	05033
2358	ShipCountry	Mexico
2359	OrderID	10294
2359	CustomerID	RATTC
2359	EmployeeID	4
2359	OrderDate	1996-08-30
2359	RequiredDate	1996-09-27
2359	ShippedDate	1996-09-05
2359	ShipVia	2
2359	Freight	147.26
2359	ShipName	Rattlesnake Canyon Grocery
2359	ShipAddress	2817 Milton Dr.
2359	ShipCity	Albuquerque
2359	ShipRegion	NM
2359	ShipPostalCode	87110
2359	ShipCountry	USA
2360	OrderID	10295
2360	CustomerID	VINET
2360	EmployeeID	2
2360	OrderDate	1996-09-02
2360	RequiredDate	1996-09-30
2360	ShippedDate	1996-09-10
2360	ShipVia	2
2360	Freight	1.15
2360	ShipName	Vins et alcools Chevalier
2360	ShipAddress	59 rue de l'Abbaye
2360	ShipCity	Reims
2360	ShipPostalCode	51100
2360	ShipCountry	France
2361	OrderID	10296
2361	CustomerID	LILAS
2361	EmployeeID	6
2361	OrderDate	1996-09-03
2361	RequiredDate	1996-10-01
2361	ShippedDate	1996-09-11
2361	ShipVia	1
2361	Freight	0.12
2361	ShipName	LILA-Supermercado
2361	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2361	ShipCity	Barquisimeto
2361	ShipRegion	Lara
2361	ShipPostalCode	3508
2361	ShipCountry	Venezuela
2362	OrderID	10297
2362	CustomerID	BLONP
2362	EmployeeID	5
2362	OrderDate	1996-09-04
2362	RequiredDate	1996-10-16
2362	ShippedDate	1996-09-10
2362	ShipVia	2
2362	Freight	5.74
2362	ShipName	Blondel père et fils
2362	ShipAddress	24, place Kléber
2362	ShipCity	Strasbourg
2362	ShipPostalCode	67000
2362	ShipCountry	France
2363	OrderID	10298
2363	CustomerID	HUNGO
2363	EmployeeID	6
2363	OrderDate	1996-09-05
2363	RequiredDate	1996-10-03
2363	ShippedDate	1996-09-11
2363	ShipVia	2
2363	Freight	168.22
2363	ShipName	Hungry Owl All-Night Grocers
2363	ShipAddress	8 Johnstown Road
2363	ShipCity	Cork
2363	ShipRegion	Co. Cork
2363	ShipCountry	Ireland
2364	OrderID	10299
2364	CustomerID	RICAR
2364	EmployeeID	4
2364	OrderDate	1996-09-06
2364	RequiredDate	1996-10-04
2364	ShippedDate	1996-09-13
2364	ShipVia	2
2364	Freight	29.76
2364	ShipName	Ricardo Adocicados
2364	ShipAddress	Av. Copacabana, 267
2364	ShipCity	Rio de Janeiro
2364	ShipRegion	RJ
2364	ShipPostalCode	02389-890
2364	ShipCountry	Brazil
2365	OrderID	10300
2365	CustomerID	MAGAA
2365	EmployeeID	2
2365	OrderDate	1996-09-09
2365	RequiredDate	1996-10-07
2365	ShippedDate	1996-09-18
2365	ShipVia	2
2365	Freight	17.68
2365	ShipName	Magazzini Alimentari Riuniti
2365	ShipAddress	Via Ludovico il Moro 22
2365	ShipCity	Bergamo
2365	ShipPostalCode	24100
2365	ShipCountry	Italy
2366	OrderID	10301
2366	CustomerID	WANDK
2366	EmployeeID	8
2366	OrderDate	1996-09-09
2366	RequiredDate	1996-10-07
2366	ShippedDate	1996-09-17
2366	ShipVia	2
2366	Freight	45.08
2366	ShipName	Die Wandernde Kuh
2366	ShipAddress	Adenauerallee 900
2366	ShipCity	Stuttgart
2366	ShipPostalCode	70563
2366	ShipCountry	Germany
2367	OrderID	10302
2367	CustomerID	SUPRD
2367	EmployeeID	4
2367	OrderDate	1996-09-10
2367	RequiredDate	1996-10-08
2367	ShippedDate	1996-10-09
2367	ShipVia	2
2367	Freight	6.27
2367	ShipName	Suprêmes délices
2367	ShipAddress	Boulevard Tirou, 255
2367	ShipCity	Charleroi
2367	ShipPostalCode	B-6000
2367	ShipCountry	Belgium
2368	OrderID	10303
2368	CustomerID	GODOS
2368	EmployeeID	7
2368	OrderDate	1996-09-11
2368	RequiredDate	1996-10-09
2368	ShippedDate	1996-09-18
2368	ShipVia	2
2368	Freight	107.83
2368	ShipName	Godos Cocina Típica
2368	ShipAddress	C/ Romero, 33
2368	ShipCity	Sevilla
2368	ShipPostalCode	41101
2368	ShipCountry	Spain
2369	OrderID	10304
2369	CustomerID	TORTU
2369	EmployeeID	1
2369	OrderDate	1996-09-12
2369	RequiredDate	1996-10-10
2369	ShippedDate	1996-09-17
2369	ShipVia	2
2369	Freight	63.79
2369	ShipName	Tortuga Restaurante
2369	ShipAddress	Avda. Azteca 123
2369	ShipCity	México D.F.
2369	ShipPostalCode	05033
2369	ShipCountry	Mexico
2370	OrderID	10305
2370	CustomerID	OLDWO
2370	EmployeeID	8
2370	OrderDate	1996-09-13
2370	RequiredDate	1996-10-11
2370	ShippedDate	1996-10-09
2370	ShipVia	3
2370	Freight	257.62
2370	ShipName	Old World Delicatessen
2370	ShipAddress	2743 Bering St.
2370	ShipCity	Anchorage
2370	ShipRegion	AK
2370	ShipPostalCode	99508
2370	ShipCountry	USA
2371	OrderID	10306
2371	CustomerID	ROMEY
2371	EmployeeID	1
2371	OrderDate	1996-09-16
2371	RequiredDate	1996-10-14
2371	ShippedDate	1996-09-23
2371	ShipVia	3
2371	Freight	7.56
2371	ShipName	Romero y tomillo
2371	ShipAddress	Gran Vía, 1
2371	ShipCity	Madrid
2371	ShipPostalCode	28001
2371	ShipCountry	Spain
2372	OrderID	10307
2372	CustomerID	LONEP
2372	EmployeeID	2
2372	OrderDate	1996-09-17
2372	RequiredDate	1996-10-15
2372	ShippedDate	1996-09-25
2372	ShipVia	2
2372	Freight	0.56
2372	ShipName	Lonesome Pine Restaurant
2372	ShipAddress	89 Chiaroscuro Rd.
2372	ShipCity	Portland
2372	ShipRegion	OR
2372	ShipPostalCode	97219
2372	ShipCountry	USA
2373	OrderID	10308
2373	CustomerID	ANATR
2373	EmployeeID	7
2373	OrderDate	1996-09-18
2373	RequiredDate	1996-10-16
2373	ShippedDate	1996-09-24
2373	ShipVia	3
2373	Freight	1.61
2373	ShipName	Ana Trujillo Emparedados y helados
2373	ShipAddress	Avda. de la Constitución 2222
2373	ShipCity	México D.F.
2373	ShipPostalCode	05021
2373	ShipCountry	Mexico
2374	OrderID	10309
2374	CustomerID	HUNGO
2374	EmployeeID	3
2374	OrderDate	1996-09-19
2374	RequiredDate	1996-10-17
2374	ShippedDate	1996-10-23
2374	ShipVia	1
2374	Freight	47.3
2374	ShipName	Hungry Owl All-Night Grocers
2374	ShipAddress	8 Johnstown Road
2374	ShipCity	Cork
2374	ShipRegion	Co. Cork
2374	ShipCountry	Ireland
2375	OrderID	10310
2375	CustomerID	THEBI
2375	EmployeeID	8
2375	OrderDate	1996-09-20
2375	RequiredDate	1996-10-18
2375	ShippedDate	1996-09-27
2375	ShipVia	2
2375	Freight	17.52
2375	ShipName	The Big Cheese
2375	ShipAddress	89 Jefferson Way Suite 2
2375	ShipCity	Portland
2375	ShipRegion	OR
2375	ShipPostalCode	97201
2375	ShipCountry	USA
2376	OrderID	10311
2376	CustomerID	DUMON
2376	EmployeeID	1
2376	OrderDate	1996-09-20
2376	RequiredDate	1996-10-04
2376	ShippedDate	1996-09-26
2376	ShipVia	3
2376	Freight	24.69
2376	ShipName	Du monde entier
2376	ShipAddress	67, rue des Cinquante Otages
2376	ShipCity	Nantes
2376	ShipPostalCode	44000
2376	ShipCountry	France
2377	OrderID	10312
2377	CustomerID	WANDK
2377	EmployeeID	2
2377	OrderDate	1996-09-23
2377	RequiredDate	1996-10-21
2377	ShippedDate	1996-10-03
2377	ShipVia	2
2377	Freight	40.26
2377	ShipName	Die Wandernde Kuh
2377	ShipAddress	Adenauerallee 900
2377	ShipCity	Stuttgart
2377	ShipPostalCode	70563
2377	ShipCountry	Germany
2378	OrderID	10313
2378	CustomerID	QUICK
2378	EmployeeID	2
2378	OrderDate	1996-09-24
2378	RequiredDate	1996-10-22
2378	ShippedDate	1996-10-04
2378	ShipVia	2
2378	Freight	1.96
2378	ShipName	QUICK-Stop
2378	ShipAddress	Taucherstraße 10
2378	ShipCity	Cunewalde
2378	ShipPostalCode	01307
2378	ShipCountry	Germany
2379	OrderID	10314
2379	CustomerID	RATTC
2379	EmployeeID	1
2379	OrderDate	1996-09-25
2379	RequiredDate	1996-10-23
2379	ShippedDate	1996-10-04
2379	ShipVia	2
2379	Freight	74.16
2379	ShipName	Rattlesnake Canyon Grocery
2379	ShipAddress	2817 Milton Dr.
2379	ShipCity	Albuquerque
2379	ShipRegion	NM
2379	ShipPostalCode	87110
2379	ShipCountry	USA
2380	OrderID	10315
2380	CustomerID	ISLAT
2380	EmployeeID	4
2380	OrderDate	1996-09-26
2380	RequiredDate	1996-10-24
2380	ShippedDate	1996-10-03
2380	ShipVia	2
2380	Freight	41.76
2380	ShipName	Island Trading
2380	ShipAddress	Garden House Crowther Way
2380	ShipCity	Cowes
2380	ShipRegion	Isle of Wight
2380	ShipPostalCode	PO31 7PJ
2380	ShipCountry	UK
2381	OrderID	10316
2381	CustomerID	RATTC
2381	EmployeeID	1
2381	OrderDate	1996-09-27
2381	RequiredDate	1996-10-25
2381	ShippedDate	1996-10-08
2381	ShipVia	3
2381	Freight	150.15
2381	ShipName	Rattlesnake Canyon Grocery
2381	ShipAddress	2817 Milton Dr.
2381	ShipCity	Albuquerque
2381	ShipRegion	NM
2381	ShipPostalCode	87110
2381	ShipCountry	USA
2382	OrderID	10317
2382	CustomerID	LONEP
2382	EmployeeID	6
2382	OrderDate	1996-09-30
2382	RequiredDate	1996-10-28
2382	ShippedDate	1996-10-10
2382	ShipVia	1
2382	Freight	12.69
2382	ShipName	Lonesome Pine Restaurant
2382	ShipAddress	89 Chiaroscuro Rd.
2382	ShipCity	Portland
2382	ShipRegion	OR
2382	ShipPostalCode	97219
2382	ShipCountry	USA
2383	OrderID	10318
2383	CustomerID	ISLAT
2383	EmployeeID	8
2383	OrderDate	1996-10-01
2383	RequiredDate	1996-10-29
2383	ShippedDate	1996-10-04
2383	ShipVia	2
2383	Freight	4.73
2383	ShipName	Island Trading
2383	ShipAddress	Garden House Crowther Way
2383	ShipCity	Cowes
2383	ShipRegion	Isle of Wight
2383	ShipPostalCode	PO31 7PJ
2383	ShipCountry	UK
2384	OrderID	10319
2384	CustomerID	TORTU
2384	EmployeeID	7
2384	OrderDate	1996-10-02
2384	RequiredDate	1996-10-30
2384	ShippedDate	1996-10-11
2384	ShipVia	3
2384	Freight	64.5
2384	ShipName	Tortuga Restaurante
2384	ShipAddress	Avda. Azteca 123
2384	ShipCity	México D.F.
2384	ShipPostalCode	05033
2384	ShipCountry	Mexico
2385	OrderID	10320
2385	CustomerID	WARTH
2385	EmployeeID	5
2385	OrderDate	1996-10-03
2385	RequiredDate	1996-10-17
2385	ShippedDate	1996-10-18
2385	ShipVia	3
2385	Freight	34.57
2385	ShipName	Wartian Herkku
2385	ShipAddress	Torikatu 38
2385	ShipCity	Oulu
2385	ShipPostalCode	90110
2385	ShipCountry	Finland
2386	OrderID	10321
2386	CustomerID	ISLAT
2386	EmployeeID	3
2386	OrderDate	1996-10-03
2386	RequiredDate	1996-10-31
2386	ShippedDate	1996-10-11
2386	ShipVia	2
2386	Freight	3.43
2386	ShipName	Island Trading
2386	ShipAddress	Garden House Crowther Way
2386	ShipCity	Cowes
2386	ShipRegion	Isle of Wight
2386	ShipPostalCode	PO31 7PJ
2386	ShipCountry	UK
2387	OrderID	10322
2387	CustomerID	PERIC
2387	EmployeeID	7
2387	OrderDate	1996-10-04
2387	RequiredDate	1996-11-01
2387	ShippedDate	1996-10-23
2387	ShipVia	3
2387	Freight	0.4
2387	ShipName	Pericles Comidas clásicas
2387	ShipAddress	Calle Dr. Jorge Cash 321
2387	ShipCity	México D.F.
2387	ShipPostalCode	05033
2387	ShipCountry	Mexico
2388	OrderID	10323
2388	CustomerID	KOENE
2388	EmployeeID	4
2388	OrderDate	1996-10-07
2388	RequiredDate	1996-11-04
2388	ShippedDate	1996-10-14
2388	ShipVia	1
2388	Freight	4.88
2388	ShipName	Königlich Essen
2388	ShipAddress	Maubelstr. 90
2388	ShipCity	Brandenburg
2388	ShipPostalCode	14776
2388	ShipCountry	Germany
2389	OrderID	10324
2389	CustomerID	SAVEA
2389	EmployeeID	9
2389	OrderDate	1996-10-08
2389	RequiredDate	1996-11-05
2389	ShippedDate	1996-10-10
2389	ShipVia	1
2389	Freight	214.27
2389	ShipName	Save-a-lot Markets
2389	ShipAddress	187 Suffolk Ln.
2389	ShipCity	Boise
2389	ShipRegion	ID
2389	ShipPostalCode	83720
2389	ShipCountry	USA
2390	OrderID	10325
2390	CustomerID	KOENE
2390	EmployeeID	1
2390	OrderDate	1996-10-09
2390	RequiredDate	1996-10-23
2390	ShippedDate	1996-10-14
2390	ShipVia	3
2390	Freight	64.86
2390	ShipName	Königlich Essen
2390	ShipAddress	Maubelstr. 90
2390	ShipCity	Brandenburg
2390	ShipPostalCode	14776
2390	ShipCountry	Germany
2391	OrderID	10326
2391	CustomerID	BOLID
2391	EmployeeID	4
2391	OrderDate	1996-10-10
2391	RequiredDate	1996-11-07
2391	ShippedDate	1996-10-14
2391	ShipVia	2
2391	Freight	77.92
2391	ShipName	Bólido Comidas preparadas
2391	ShipAddress	C/ Araquil, 67
2391	ShipCity	Madrid
2391	ShipPostalCode	28023
2391	ShipCountry	Spain
2392	OrderID	10327
2392	CustomerID	FOLKO
2392	EmployeeID	2
2392	OrderDate	1996-10-11
2392	RequiredDate	1996-11-08
2392	ShippedDate	1996-10-14
2392	ShipVia	1
2392	Freight	63.36
2392	ShipName	Folk och fä HB
2392	ShipAddress	Åkergatan 24
2392	ShipCity	Bräcke
2392	ShipPostalCode	S-844 67
2392	ShipCountry	Sweden
2393	OrderID	10328
2393	CustomerID	FURIB
2393	EmployeeID	4
2393	OrderDate	1996-10-14
2393	RequiredDate	1996-11-11
2393	ShippedDate	1996-10-17
2393	ShipVia	3
2393	Freight	87.03
2393	ShipName	Furia Bacalhau e Frutos do Mar
2393	ShipAddress	Jardim das rosas n. 32
2393	ShipCity	Lisboa
2393	ShipPostalCode	1675
2393	ShipCountry	Portugal
2394	OrderID	10329
2394	CustomerID	SPLIR
2394	EmployeeID	4
2394	OrderDate	1996-10-15
2394	RequiredDate	1996-11-26
2394	ShippedDate	1996-10-23
2394	ShipVia	2
2394	Freight	191.67
2394	ShipName	Split Rail Beer & Ale
2394	ShipAddress	P.O. Box 555
2394	ShipCity	Lander
2394	ShipRegion	WY
2394	ShipPostalCode	82520
2394	ShipCountry	USA
2395	OrderID	10330
2395	CustomerID	LILAS
2395	EmployeeID	3
2395	OrderDate	1996-10-16
2395	RequiredDate	1996-11-13
2395	ShippedDate	1996-10-28
2395	ShipVia	1
2395	Freight	12.75
2395	ShipName	LILA-Supermercado
2395	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2395	ShipCity	Barquisimeto
2395	ShipRegion	Lara
2395	ShipPostalCode	3508
2395	ShipCountry	Venezuela
2396	OrderID	10331
2396	CustomerID	BONAP
2396	EmployeeID	9
2396	OrderDate	1996-10-16
2396	RequiredDate	1996-11-27
2396	ShippedDate	1996-10-21
2396	ShipVia	1
2396	Freight	10.19
2396	ShipName	Bon app'
2396	ShipAddress	12, rue des Bouchers
2396	ShipCity	Marseille
2396	ShipPostalCode	13008
2396	ShipCountry	France
2397	OrderID	10332
2397	CustomerID	MEREP
2397	EmployeeID	3
2397	OrderDate	1996-10-17
2397	RequiredDate	1996-11-28
2397	ShippedDate	1996-10-21
2397	ShipVia	2
2397	Freight	52.84
2397	ShipName	Mère Paillarde
2397	ShipAddress	43 rue St. Laurent
2397	ShipCity	Montréal
2397	ShipRegion	Québec
2397	ShipPostalCode	H1J 1C3
2397	ShipCountry	Canada
2398	OrderID	10333
2398	CustomerID	WARTH
2398	EmployeeID	5
2398	OrderDate	1996-10-18
2398	RequiredDate	1996-11-15
2398	ShippedDate	1996-10-25
2398	ShipVia	3
2398	Freight	0.59
2398	ShipName	Wartian Herkku
2398	ShipAddress	Torikatu 38
2398	ShipCity	Oulu
2398	ShipPostalCode	90110
2398	ShipCountry	Finland
2399	OrderID	10334
2399	CustomerID	VICTE
2399	EmployeeID	8
2399	OrderDate	1996-10-21
2399	RequiredDate	1996-11-18
2399	ShippedDate	1996-10-28
2399	ShipVia	2
2399	Freight	8.56
2399	ShipName	Victuailles en stock
2399	ShipAddress	2, rue du Commerce
2399	ShipCity	Lyon
2399	ShipPostalCode	69004
2399	ShipCountry	France
2400	OrderID	10335
2400	CustomerID	HUNGO
2400	EmployeeID	7
2400	OrderDate	1996-10-22
2400	RequiredDate	1996-11-19
2400	ShippedDate	1996-10-24
2400	ShipVia	2
2400	Freight	42.11
2400	ShipName	Hungry Owl All-Night Grocers
2400	ShipAddress	8 Johnstown Road
2400	ShipCity	Cork
2400	ShipRegion	Co. Cork
2400	ShipCountry	Ireland
2401	OrderID	10336
2401	CustomerID	PRINI
2401	EmployeeID	7
2401	OrderDate	1996-10-23
2401	RequiredDate	1996-11-20
2401	ShippedDate	1996-10-25
2401	ShipVia	2
2401	Freight	15.51
2401	ShipName	Princesa Isabel Vinhos
2401	ShipAddress	Estrada da saúde n. 58
2401	ShipCity	Lisboa
2401	ShipPostalCode	1756
2401	ShipCountry	Portugal
2402	OrderID	10337
2402	CustomerID	FRANK
2402	EmployeeID	4
2402	OrderDate	1996-10-24
2402	RequiredDate	1996-11-21
2402	ShippedDate	1996-10-29
2402	ShipVia	3
2402	Freight	108.26
2402	ShipName	Frankenversand
2402	ShipAddress	Berliner Platz 43
2402	ShipCity	München
2402	ShipPostalCode	80805
2402	ShipCountry	Germany
2403	OrderID	10338
2403	CustomerID	OLDWO
2403	EmployeeID	4
2403	OrderDate	1996-10-25
2403	RequiredDate	1996-11-22
2403	ShippedDate	1996-10-29
2403	ShipVia	3
2403	Freight	84.21
2403	ShipName	Old World Delicatessen
2403	ShipAddress	2743 Bering St.
2403	ShipCity	Anchorage
2403	ShipRegion	AK
2403	ShipPostalCode	99508
2403	ShipCountry	USA
2404	OrderID	10339
2404	CustomerID	MEREP
2404	EmployeeID	2
2404	OrderDate	1996-10-28
2404	RequiredDate	1996-11-25
2404	ShippedDate	1996-11-04
2404	ShipVia	2
2404	Freight	15.66
2404	ShipName	Mère Paillarde
2404	ShipAddress	43 rue St. Laurent
2404	ShipCity	Montréal
2404	ShipRegion	Québec
2404	ShipPostalCode	H1J 1C3
2404	ShipCountry	Canada
2405	OrderID	10340
2405	CustomerID	BONAP
2405	EmployeeID	1
2405	OrderDate	1996-10-29
2405	RequiredDate	1996-11-26
2405	ShippedDate	1996-11-08
2405	ShipVia	3
2405	Freight	166.31
2405	ShipName	Bon app'
2405	ShipAddress	12, rue des Bouchers
2405	ShipCity	Marseille
2405	ShipPostalCode	13008
2405	ShipCountry	France
2406	OrderID	10341
2406	CustomerID	SIMOB
2406	EmployeeID	7
2406	OrderDate	1996-10-29
2406	RequiredDate	1996-11-26
2406	ShippedDate	1996-11-05
2406	ShipVia	3
2406	Freight	26.78
2406	ShipName	Simons bistro
2406	ShipAddress	Vinbæltet 34
2406	ShipCity	Kobenhavn
2406	ShipPostalCode	1734
2406	ShipCountry	Denmark
2407	OrderID	10342
2407	CustomerID	FRANK
2407	EmployeeID	4
2407	OrderDate	1996-10-30
2407	RequiredDate	1996-11-13
2407	ShippedDate	1996-11-04
2407	ShipVia	2
2407	Freight	54.83
2407	ShipName	Frankenversand
2407	ShipAddress	Berliner Platz 43
2407	ShipCity	München
2407	ShipPostalCode	80805
2407	ShipCountry	Germany
2408	OrderID	10343
2408	CustomerID	LEHMS
2408	EmployeeID	4
2408	OrderDate	1996-10-31
2408	RequiredDate	1996-11-28
2408	ShippedDate	1996-11-06
2408	ShipVia	1
2408	Freight	110.37
2408	ShipName	Lehmanns Marktstand
2408	ShipAddress	Magazinweg 7
2408	ShipCity	Frankfurt a.M.
2408	ShipPostalCode	60528
2408	ShipCountry	Germany
2409	OrderID	10344
2409	CustomerID	WHITC
2409	EmployeeID	4
2409	OrderDate	1996-11-01
2409	RequiredDate	1996-11-29
2409	ShippedDate	1996-11-05
2409	ShipVia	2
2409	Freight	23.29
2409	ShipName	White Clover Markets
2409	ShipAddress	1029 - 12th Ave. S.
2409	ShipCity	Seattle
2409	ShipRegion	WA
2409	ShipPostalCode	98124
2409	ShipCountry	USA
2410	OrderID	10345
2410	CustomerID	QUICK
2410	EmployeeID	2
2410	OrderDate	1996-11-04
2410	RequiredDate	1996-12-02
2410	ShippedDate	1996-11-11
2410	ShipVia	2
2410	Freight	249.06
2410	ShipName	QUICK-Stop
2410	ShipAddress	Taucherstraße 10
2410	ShipCity	Cunewalde
2410	ShipPostalCode	01307
2410	ShipCountry	Germany
2411	OrderID	10346
2411	CustomerID	RATTC
2411	EmployeeID	3
2411	OrderDate	1996-11-05
2411	RequiredDate	1996-12-17
2411	ShippedDate	1996-11-08
2411	ShipVia	3
2411	Freight	142.08
2411	ShipName	Rattlesnake Canyon Grocery
2411	ShipAddress	2817 Milton Dr.
2411	ShipCity	Albuquerque
2411	ShipRegion	NM
2411	ShipPostalCode	87110
2411	ShipCountry	USA
2412	OrderID	10347
2412	CustomerID	FAMIA
2412	EmployeeID	4
2412	OrderDate	1996-11-06
2412	RequiredDate	1996-12-04
2412	ShippedDate	1996-11-08
2412	ShipVia	3
2412	Freight	3.1
2412	ShipName	Familia Arquibaldo
2412	ShipAddress	Rua Orós, 92
2412	ShipCity	Sao Paulo
2412	ShipRegion	SP
2412	ShipPostalCode	05442-030
2412	ShipCountry	Brazil
2413	OrderID	10348
2413	CustomerID	WANDK
2413	EmployeeID	4
2413	OrderDate	1996-11-07
2413	RequiredDate	1996-12-05
2413	ShippedDate	1996-11-15
2413	ShipVia	2
2413	Freight	0.78
2413	ShipName	Die Wandernde Kuh
2413	ShipAddress	Adenauerallee 900
2413	ShipCity	Stuttgart
2413	ShipPostalCode	70563
2413	ShipCountry	Germany
2414	OrderID	10349
2414	CustomerID	SPLIR
2414	EmployeeID	7
2414	OrderDate	1996-11-08
2414	RequiredDate	1996-12-06
2414	ShippedDate	1996-11-15
2414	ShipVia	1
2414	Freight	8.63
2414	ShipName	Split Rail Beer & Ale
2414	ShipAddress	P.O. Box 555
2414	ShipCity	Lander
2414	ShipRegion	WY
2414	ShipPostalCode	82520
2414	ShipCountry	USA
2415	OrderID	10350
2415	CustomerID	LAMAI
2415	EmployeeID	6
2415	OrderDate	1996-11-11
2415	RequiredDate	1996-12-09
2415	ShippedDate	1996-12-03
2415	ShipVia	2
2415	Freight	64.19
2415	ShipName	La maison d'Asie
2415	ShipAddress	1 rue Alsace-Lorraine
2415	ShipCity	Toulouse
2415	ShipPostalCode	31000
2415	ShipCountry	France
2416	OrderID	10351
2416	CustomerID	ERNSH
2416	EmployeeID	1
2416	OrderDate	1996-11-11
2416	RequiredDate	1996-12-09
2416	ShippedDate	1996-11-20
2416	ShipVia	1
2416	Freight	162.33
2416	ShipName	Ernst Handel
2416	ShipAddress	Kirchgasse 6
2416	ShipCity	Graz
2416	ShipPostalCode	8010
2416	ShipCountry	Austria
2417	OrderID	10352
2417	CustomerID	FURIB
2417	EmployeeID	3
2417	OrderDate	1996-11-12
2417	RequiredDate	1996-11-26
2417	ShippedDate	1996-11-18
2417	ShipVia	3
2417	Freight	1.3
2417	ShipName	Furia Bacalhau e Frutos do Mar
2417	ShipAddress	Jardim das rosas n. 32
2417	ShipCity	Lisboa
2417	ShipPostalCode	1675
2417	ShipCountry	Portugal
2418	OrderID	10353
2418	CustomerID	PICCO
2418	EmployeeID	7
2418	OrderDate	1996-11-13
2418	RequiredDate	1996-12-11
2418	ShippedDate	1996-11-25
2418	ShipVia	3
2418	Freight	360.63
2418	ShipName	Piccolo und mehr
2418	ShipAddress	Geislweg 14
2418	ShipCity	Salzburg
2418	ShipPostalCode	5020
2418	ShipCountry	Austria
2419	OrderID	10354
2419	CustomerID	PERIC
2419	EmployeeID	8
2419	OrderDate	1996-11-14
2419	RequiredDate	1996-12-12
2419	ShippedDate	1996-11-20
2419	ShipVia	3
2419	Freight	53.8
2419	ShipName	Pericles Comidas clásicas
2419	ShipAddress	Calle Dr. Jorge Cash 321
2419	ShipCity	México D.F.
2419	ShipPostalCode	05033
2419	ShipCountry	Mexico
2420	OrderID	10355
2420	CustomerID	AROUT
2420	EmployeeID	6
2420	OrderDate	1996-11-15
2420	RequiredDate	1996-12-13
2420	ShippedDate	1996-11-20
2420	ShipVia	1
2420	Freight	41.95
2420	ShipName	Around the Horn
2420	ShipAddress	Brook Farm Stratford St. Mary
2420	ShipCity	Colchester
2420	ShipRegion	Essex
2420	ShipPostalCode	CO7 6JX
2420	ShipCountry	UK
2421	OrderID	10356
2421	CustomerID	WANDK
2421	EmployeeID	6
2421	OrderDate	1996-11-18
2421	RequiredDate	1996-12-16
2421	ShippedDate	1996-11-27
2421	ShipVia	2
2421	Freight	36.71
2421	ShipName	Die Wandernde Kuh
2421	ShipAddress	Adenauerallee 900
2421	ShipCity	Stuttgart
2421	ShipPostalCode	70563
2421	ShipCountry	Germany
2422	OrderID	10357
2422	CustomerID	LILAS
2422	EmployeeID	1
2422	OrderDate	1996-11-19
2422	RequiredDate	1996-12-17
2422	ShippedDate	1996-12-02
2422	ShipVia	3
2422	Freight	34.88
2422	ShipName	LILA-Supermercado
2422	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2422	ShipCity	Barquisimeto
2422	ShipRegion	Lara
2422	ShipPostalCode	3508
2422	ShipCountry	Venezuela
2423	OrderID	10358
2423	CustomerID	LAMAI
2423	EmployeeID	5
2423	OrderDate	1996-11-20
2423	RequiredDate	1996-12-18
2423	ShippedDate	1996-11-27
2423	ShipVia	1
2423	Freight	19.64
2423	ShipName	La maison d'Asie
2423	ShipAddress	1 rue Alsace-Lorraine
2423	ShipCity	Toulouse
2423	ShipPostalCode	31000
2423	ShipCountry	France
2424	OrderID	10359
2424	CustomerID	SEVES
2424	EmployeeID	5
2424	OrderDate	1996-11-21
2424	RequiredDate	1996-12-19
2424	ShippedDate	1996-11-26
2424	ShipVia	3
2424	Freight	288.43
2424	ShipName	Seven Seas Imports
2424	ShipAddress	90 Wadhurst Rd.
2424	ShipCity	London
2424	ShipPostalCode	OX15 4NB
2424	ShipCountry	UK
2425	OrderID	10360
2425	CustomerID	BLONP
2425	EmployeeID	4
2425	OrderDate	1996-11-22
2425	RequiredDate	1996-12-20
2425	ShippedDate	1996-12-02
2425	ShipVia	3
2425	Freight	131.7
2425	ShipName	Blondel père et fils
2425	ShipAddress	24, place Kléber
2425	ShipCity	Strasbourg
2425	ShipPostalCode	67000
2425	ShipCountry	France
2426	OrderID	10361
2426	CustomerID	QUICK
2426	EmployeeID	1
2426	OrderDate	1996-11-22
2426	RequiredDate	1996-12-20
2426	ShippedDate	1996-12-03
2426	ShipVia	2
2426	Freight	183.17
2426	ShipName	QUICK-Stop
2426	ShipAddress	Taucherstraße 10
2426	ShipCity	Cunewalde
2426	ShipPostalCode	01307
2426	ShipCountry	Germany
2427	OrderID	10362
2427	CustomerID	BONAP
2427	EmployeeID	3
2427	OrderDate	1996-11-25
2427	RequiredDate	1996-12-23
2427	ShippedDate	1996-11-28
2427	ShipVia	1
2427	Freight	96.04
2427	ShipName	Bon app'
2427	ShipAddress	12, rue des Bouchers
2427	ShipCity	Marseille
2427	ShipPostalCode	13008
2427	ShipCountry	France
2428	OrderID	10363
2428	CustomerID	DRACD
2428	EmployeeID	4
2428	OrderDate	1996-11-26
2428	RequiredDate	1996-12-24
2428	ShippedDate	1996-12-04
2428	ShipVia	3
2428	Freight	30.54
2428	ShipName	Drachenblut Delikatessen
2428	ShipAddress	Walserweg 21
2428	ShipCity	Aachen
2428	ShipPostalCode	52066
2428	ShipCountry	Germany
2429	OrderID	10364
2429	CustomerID	EASTC
2429	EmployeeID	1
2429	OrderDate	1996-11-26
2429	RequiredDate	1997-01-07
2429	ShippedDate	1996-12-04
2429	ShipVia	1
2429	Freight	71.97
2429	ShipName	Eastern Connection
2429	ShipAddress	35 King George
2429	ShipCity	London
2429	ShipPostalCode	WX3 6FW
2429	ShipCountry	UK
2430	OrderID	10365
2430	CustomerID	ANTON
2430	EmployeeID	3
2430	OrderDate	1996-11-27
2430	RequiredDate	1996-12-25
2430	ShippedDate	1996-12-02
2430	ShipVia	2
2430	Freight	22.0
2430	ShipName	Antonio Moreno Taquería
2430	ShipAddress	Mataderos  2312
2430	ShipCity	México D.F.
2430	ShipPostalCode	05023
2430	ShipCountry	Mexico
2431	OrderID	10366
2431	CustomerID	GALED
2431	EmployeeID	8
2431	OrderDate	1996-11-28
2431	RequiredDate	1997-01-09
2431	ShippedDate	1996-12-30
2431	ShipVia	2
2431	Freight	10.14
2431	ShipName	Galería del gastronómo
2431	ShipAddress	Rambla de Cataluña, 23
2431	ShipCity	Barcelona
2431	ShipPostalCode	8022
2431	ShipCountry	Spain
2432	OrderID	10367
2432	CustomerID	VAFFE
2432	EmployeeID	7
2432	OrderDate	1996-11-28
2432	RequiredDate	1996-12-26
2432	ShippedDate	1996-12-02
2432	ShipVia	3
2432	Freight	13.55
2432	ShipName	Vaffeljernet
2432	ShipAddress	Smagsloget 45
2432	ShipCity	Århus
2432	ShipPostalCode	8200
2432	ShipCountry	Denmark
2433	OrderID	10368
2433	CustomerID	ERNSH
2433	EmployeeID	2
2433	OrderDate	1996-11-29
2433	RequiredDate	1996-12-27
2433	ShippedDate	1996-12-02
2433	ShipVia	2
2433	Freight	101.95
2433	ShipName	Ernst Handel
2433	ShipAddress	Kirchgasse 6
2433	ShipCity	Graz
2433	ShipPostalCode	8010
2433	ShipCountry	Austria
2434	OrderID	10369
2434	CustomerID	SPLIR
2434	EmployeeID	8
2434	OrderDate	1996-12-02
2434	RequiredDate	1996-12-30
2434	ShippedDate	1996-12-09
2434	ShipVia	2
2434	Freight	195.68
2434	ShipName	Split Rail Beer & Ale
2434	ShipAddress	P.O. Box 555
2434	ShipCity	Lander
2434	ShipRegion	WY
2434	ShipPostalCode	82520
2434	ShipCountry	USA
2435	OrderID	10370
2435	CustomerID	CHOPS
2435	EmployeeID	6
2435	OrderDate	1996-12-03
2435	RequiredDate	1996-12-31
2435	ShippedDate	1996-12-27
2435	ShipVia	2
2435	Freight	1.17
2435	ShipName	Chop-suey Chinese
2435	ShipAddress	Hauptstr. 31
2435	ShipCity	Bern
2435	ShipPostalCode	3012
2435	ShipCountry	Switzerland
2436	OrderID	10371
2436	CustomerID	LAMAI
2436	EmployeeID	1
2436	OrderDate	1996-12-03
2436	RequiredDate	1996-12-31
2436	ShippedDate	1996-12-24
2436	ShipVia	1
2436	Freight	0.45
2436	ShipName	La maison d'Asie
2436	ShipAddress	1 rue Alsace-Lorraine
2436	ShipCity	Toulouse
2436	ShipPostalCode	31000
2436	ShipCountry	France
2437	OrderID	10372
2437	CustomerID	QUEEN
2437	EmployeeID	5
2437	OrderDate	1996-12-04
2437	RequiredDate	1997-01-01
2437	ShippedDate	1996-12-09
2437	ShipVia	2
2437	Freight	890.78
2437	ShipName	Queen Cozinha
2437	ShipAddress	Alameda dos Canàrios, 891
2437	ShipCity	Sao Paulo
2437	ShipRegion	SP
2437	ShipPostalCode	05487-020
2437	ShipCountry	Brazil
2438	OrderID	10373
2438	CustomerID	HUNGO
2438	EmployeeID	4
2438	OrderDate	1996-12-05
2438	RequiredDate	1997-01-02
2438	ShippedDate	1996-12-11
2438	ShipVia	3
2438	Freight	124.12
2438	ShipName	Hungry Owl All-Night Grocers
2438	ShipAddress	8 Johnstown Road
2438	ShipCity	Cork
2438	ShipRegion	Co. Cork
2438	ShipCountry	Ireland
2439	OrderID	10374
2439	CustomerID	WOLZA
2439	EmployeeID	1
2439	OrderDate	1996-12-05
2439	RequiredDate	1997-01-02
2439	ShippedDate	1996-12-09
2439	ShipVia	3
2439	Freight	3.94
2439	ShipName	Wolski Zajazd
2439	ShipAddress	ul. Filtrowa 68
2439	ShipCity	Warszawa
2439	ShipPostalCode	01-012
2439	ShipCountry	Poland
2440	OrderID	10375
2440	CustomerID	HUNGC
2440	EmployeeID	3
2440	OrderDate	1996-12-06
2440	RequiredDate	1997-01-03
2440	ShippedDate	1996-12-09
2440	ShipVia	2
2440	Freight	20.12
2440	ShipName	Hungry Coyote Import Store
2440	ShipAddress	City Center Plaza 516 Main St.
2440	ShipCity	Elgin
2440	ShipRegion	OR
2440	ShipPostalCode	97827
2440	ShipCountry	USA
2441	OrderID	10376
2441	CustomerID	MEREP
2441	EmployeeID	1
2441	OrderDate	1996-12-09
2441	RequiredDate	1997-01-06
2441	ShippedDate	1996-12-13
2441	ShipVia	2
2441	Freight	20.39
2441	ShipName	Mère Paillarde
2441	ShipAddress	43 rue St. Laurent
2441	ShipCity	Montréal
2441	ShipRegion	Québec
2441	ShipPostalCode	H1J 1C3
2441	ShipCountry	Canada
2442	OrderID	10377
2442	CustomerID	SEVES
2442	EmployeeID	1
2442	OrderDate	1996-12-09
2442	RequiredDate	1997-01-06
2442	ShippedDate	1996-12-13
2442	ShipVia	3
2442	Freight	22.21
2442	ShipName	Seven Seas Imports
2442	ShipAddress	90 Wadhurst Rd.
2442	ShipCity	London
2442	ShipPostalCode	OX15 4NB
2442	ShipCountry	UK
2443	OrderID	10378
2443	CustomerID	FOLKO
2443	EmployeeID	5
2443	OrderDate	1996-12-10
2443	RequiredDate	1997-01-07
2443	ShippedDate	1996-12-19
2443	ShipVia	3
2443	Freight	5.44
2443	ShipName	Folk och fä HB
2443	ShipAddress	Åkergatan 24
2443	ShipCity	Bräcke
2443	ShipPostalCode	S-844 67
2443	ShipCountry	Sweden
2444	OrderID	10379
2444	CustomerID	QUEDE
2444	EmployeeID	2
2444	OrderDate	1996-12-11
2444	RequiredDate	1997-01-08
2444	ShippedDate	1996-12-13
2444	ShipVia	1
2444	Freight	45.03
2444	ShipName	Que Delícia
2444	ShipAddress	Rua da Panificadora, 12
2444	ShipCity	Rio de Janeiro
2444	ShipRegion	RJ
2444	ShipPostalCode	02389-673
2444	ShipCountry	Brazil
2445	OrderID	10380
2445	CustomerID	HUNGO
2445	EmployeeID	8
2445	OrderDate	1996-12-12
2445	RequiredDate	1997-01-09
2445	ShippedDate	1997-01-16
2445	ShipVia	3
2445	Freight	35.03
2445	ShipName	Hungry Owl All-Night Grocers
2445	ShipAddress	8 Johnstown Road
2445	ShipCity	Cork
2445	ShipRegion	Co. Cork
2445	ShipCountry	Ireland
2446	OrderID	10381
2446	CustomerID	LILAS
2446	EmployeeID	3
2446	OrderDate	1996-12-12
2446	RequiredDate	1997-01-09
2446	ShippedDate	1996-12-13
2446	ShipVia	3
2446	Freight	7.99
2446	ShipName	LILA-Supermercado
2446	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2446	ShipCity	Barquisimeto
2446	ShipRegion	Lara
2446	ShipPostalCode	3508
2446	ShipCountry	Venezuela
2447	OrderID	10382
2447	CustomerID	ERNSH
2447	EmployeeID	4
2447	OrderDate	1996-12-13
2447	RequiredDate	1997-01-10
2447	ShippedDate	1996-12-16
2447	ShipVia	1
2447	Freight	94.77
2447	ShipName	Ernst Handel
2447	ShipAddress	Kirchgasse 6
2447	ShipCity	Graz
2447	ShipPostalCode	8010
2447	ShipCountry	Austria
2448	OrderID	10383
2448	CustomerID	AROUT
2448	EmployeeID	8
2448	OrderDate	1996-12-16
2448	RequiredDate	1997-01-13
2448	ShippedDate	1996-12-18
2448	ShipVia	3
2448	Freight	34.24
2448	ShipName	Around the Horn
2448	ShipAddress	Brook Farm Stratford St. Mary
2448	ShipCity	Colchester
2448	ShipRegion	Essex
2448	ShipPostalCode	CO7 6JX
2448	ShipCountry	UK
2449	OrderID	10384
2449	CustomerID	BERGS
2449	EmployeeID	3
2449	OrderDate	1996-12-16
2449	RequiredDate	1997-01-13
2449	ShippedDate	1996-12-20
2449	ShipVia	3
2449	Freight	168.64
2449	ShipName	Berglunds snabbköp
2449	ShipAddress	Berguvsvägen  8
2449	ShipCity	Luleå
2449	ShipPostalCode	S-958 22
2449	ShipCountry	Sweden
2450	OrderID	10385
2450	CustomerID	SPLIR
2450	EmployeeID	1
2450	OrderDate	1996-12-17
2450	RequiredDate	1997-01-14
2450	ShippedDate	1996-12-23
2450	ShipVia	2
2450	Freight	30.96
2450	ShipName	Split Rail Beer & Ale
2450	ShipAddress	P.O. Box 555
2450	ShipCity	Lander
2450	ShipRegion	WY
2450	ShipPostalCode	82520
2450	ShipCountry	USA
2451	OrderID	10386
2451	CustomerID	FAMIA
2451	EmployeeID	9
2451	OrderDate	1996-12-18
2451	RequiredDate	1997-01-01
2451	ShippedDate	1996-12-25
2451	ShipVia	3
2451	Freight	13.99
2451	ShipName	Familia Arquibaldo
2451	ShipAddress	Rua Orós, 92
2451	ShipCity	Sao Paulo
2451	ShipRegion	SP
2451	ShipPostalCode	05442-030
2451	ShipCountry	Brazil
2452	OrderID	10387
2452	CustomerID	SANTG
2452	EmployeeID	1
2452	OrderDate	1996-12-18
2452	RequiredDate	1997-01-15
2452	ShippedDate	1996-12-20
2452	ShipVia	2
2452	Freight	93.63
2452	ShipName	Santé Gourmet
2452	ShipAddress	Erling Skakkes gate 78
2452	ShipCity	Stavern
2452	ShipPostalCode	4110
2452	ShipCountry	Norway
2453	OrderID	10388
2453	CustomerID	SEVES
2453	EmployeeID	2
2453	OrderDate	1996-12-19
2453	RequiredDate	1997-01-16
2453	ShippedDate	1996-12-20
2453	ShipVia	1
2453	Freight	34.86
2453	ShipName	Seven Seas Imports
2453	ShipAddress	90 Wadhurst Rd.
2453	ShipCity	London
2453	ShipPostalCode	OX15 4NB
2453	ShipCountry	UK
2454	OrderID	10389
2454	CustomerID	BOTTM
2454	EmployeeID	4
2454	OrderDate	1996-12-20
2454	RequiredDate	1997-01-17
2454	ShippedDate	1996-12-24
2454	ShipVia	2
2454	Freight	47.42
2454	ShipName	Bottom-Dollar Markets
2454	ShipAddress	23 Tsawassen Blvd.
2454	ShipCity	Tsawassen
2454	ShipRegion	BC
2454	ShipPostalCode	T2F 8M4
2454	ShipCountry	Canada
2455	OrderID	10390
2455	CustomerID	ERNSH
2455	EmployeeID	6
2455	OrderDate	1996-12-23
2455	RequiredDate	1997-01-20
2455	ShippedDate	1996-12-26
2455	ShipVia	1
2455	Freight	126.38
2455	ShipName	Ernst Handel
2455	ShipAddress	Kirchgasse 6
2455	ShipCity	Graz
2455	ShipPostalCode	8010
2455	ShipCountry	Austria
2456	OrderID	10391
2456	CustomerID	DRACD
2456	EmployeeID	3
2456	OrderDate	1996-12-23
2456	RequiredDate	1997-01-20
2456	ShippedDate	1996-12-31
2456	ShipVia	3
2456	Freight	5.45
2456	ShipName	Drachenblut Delikatessen
2456	ShipAddress	Walserweg 21
2456	ShipCity	Aachen
2456	ShipPostalCode	52066
2456	ShipCountry	Germany
2457	OrderID	10392
2457	CustomerID	PICCO
2457	EmployeeID	2
2457	OrderDate	1996-12-24
2457	RequiredDate	1997-01-21
2457	ShippedDate	1997-01-01
2457	ShipVia	3
2457	Freight	122.46
2457	ShipName	Piccolo und mehr
2457	ShipAddress	Geislweg 14
2457	ShipCity	Salzburg
2457	ShipPostalCode	5020
2457	ShipCountry	Austria
2458	OrderID	10393
2458	CustomerID	SAVEA
2458	EmployeeID	1
2458	OrderDate	1996-12-25
2458	RequiredDate	1997-01-22
2458	ShippedDate	1997-01-03
2458	ShipVia	3
2458	Freight	126.56
2458	ShipName	Save-a-lot Markets
2458	ShipAddress	187 Suffolk Ln.
2458	ShipCity	Boise
2458	ShipRegion	ID
2458	ShipPostalCode	83720
2458	ShipCountry	USA
2459	OrderID	10394
2459	CustomerID	HUNGC
2459	EmployeeID	1
2459	OrderDate	1996-12-25
2459	RequiredDate	1997-01-22
2459	ShippedDate	1997-01-03
2459	ShipVia	3
2459	Freight	30.34
2459	ShipName	Hungry Coyote Import Store
2459	ShipAddress	City Center Plaza 516 Main St.
2459	ShipCity	Elgin
2459	ShipRegion	OR
2459	ShipPostalCode	97827
2459	ShipCountry	USA
2460	OrderID	10395
2460	CustomerID	HILAA
2460	EmployeeID	6
2460	OrderDate	1996-12-26
2460	RequiredDate	1997-01-23
2460	ShippedDate	1997-01-03
2460	ShipVia	1
2460	Freight	184.41
2460	ShipName	HILARION-Abastos
2460	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2460	ShipCity	San Cristóbal
2460	ShipRegion	Táchira
2460	ShipPostalCode	5022
2460	ShipCountry	Venezuela
2461	OrderID	10396
2461	CustomerID	FRANK
2461	EmployeeID	1
2461	OrderDate	1996-12-27
2461	RequiredDate	1997-01-10
2461	ShippedDate	1997-01-06
2461	ShipVia	3
2461	Freight	135.35
2461	ShipName	Frankenversand
2461	ShipAddress	Berliner Platz 43
2461	ShipCity	München
2461	ShipPostalCode	80805
2461	ShipCountry	Germany
2462	OrderID	10397
2462	CustomerID	PRINI
2462	EmployeeID	5
2462	OrderDate	1996-12-27
2462	RequiredDate	1997-01-24
2462	ShippedDate	1997-01-02
2462	ShipVia	1
2462	Freight	60.26
2462	ShipName	Princesa Isabel Vinhos
2462	ShipAddress	Estrada da saúde n. 58
2462	ShipCity	Lisboa
2462	ShipPostalCode	1756
2462	ShipCountry	Portugal
2463	OrderID	10398
2463	CustomerID	SAVEA
2463	EmployeeID	2
2463	OrderDate	1996-12-30
2463	RequiredDate	1997-01-27
2463	ShippedDate	1997-01-09
2463	ShipVia	3
2463	Freight	89.16
2463	ShipName	Save-a-lot Markets
2463	ShipAddress	187 Suffolk Ln.
2463	ShipCity	Boise
2463	ShipRegion	ID
2463	ShipPostalCode	83720
2463	ShipCountry	USA
2464	OrderID	10399
2464	CustomerID	VAFFE
2464	EmployeeID	8
2464	OrderDate	1996-12-31
2464	RequiredDate	1997-01-14
2464	ShippedDate	1997-01-08
2464	ShipVia	3
2464	Freight	27.36
2464	ShipName	Vaffeljernet
2464	ShipAddress	Smagsloget 45
2464	ShipCity	Århus
2464	ShipPostalCode	8200
2464	ShipCountry	Denmark
2465	OrderID	10400
2465	CustomerID	EASTC
2465	EmployeeID	1
2465	OrderDate	1997-01-01
2465	RequiredDate	1997-01-29
2465	ShippedDate	1997-01-16
2465	ShipVia	3
2465	Freight	83.93
2465	ShipName	Eastern Connection
2465	ShipAddress	35 King George
2465	ShipCity	London
2465	ShipPostalCode	WX3 6FW
2465	ShipCountry	UK
2466	OrderID	10401
2466	CustomerID	RATTC
2466	EmployeeID	1
2466	OrderDate	1997-01-01
2466	RequiredDate	1997-01-29
2466	ShippedDate	1997-01-10
2466	ShipVia	1
2466	Freight	12.51
2466	ShipName	Rattlesnake Canyon Grocery
2466	ShipAddress	2817 Milton Dr.
2466	ShipCity	Albuquerque
2466	ShipRegion	NM
2466	ShipPostalCode	87110
2466	ShipCountry	USA
2467	OrderID	10402
2467	CustomerID	ERNSH
2467	EmployeeID	8
2467	OrderDate	1997-01-02
2467	RequiredDate	1997-02-13
2467	ShippedDate	1997-01-10
2467	ShipVia	2
2467	Freight	67.88
2467	ShipName	Ernst Handel
2467	ShipAddress	Kirchgasse 6
2467	ShipCity	Graz
2467	ShipPostalCode	8010
2467	ShipCountry	Austria
2468	OrderID	10403
2468	CustomerID	ERNSH
2468	EmployeeID	4
2468	OrderDate	1997-01-03
2468	RequiredDate	1997-01-31
2468	ShippedDate	1997-01-09
2468	ShipVia	3
2468	Freight	73.79
2468	ShipName	Ernst Handel
2468	ShipAddress	Kirchgasse 6
2468	ShipCity	Graz
2468	ShipPostalCode	8010
2468	ShipCountry	Austria
2469	OrderID	10404
2469	CustomerID	MAGAA
2469	EmployeeID	2
2469	OrderDate	1997-01-03
2469	RequiredDate	1997-01-31
2469	ShippedDate	1997-01-08
2469	ShipVia	1
2469	Freight	155.97
2469	ShipName	Magazzini Alimentari Riuniti
2469	ShipAddress	Via Ludovico il Moro 22
2469	ShipCity	Bergamo
2469	ShipPostalCode	24100
2469	ShipCountry	Italy
2470	OrderID	10405
2470	CustomerID	LINOD
2470	EmployeeID	1
2470	OrderDate	1997-01-06
2470	RequiredDate	1997-02-03
2470	ShippedDate	1997-01-22
2470	ShipVia	1
2470	Freight	34.82
2470	ShipName	LINO-Delicateses
2470	ShipAddress	Ave. 5 de Mayo Porlamar
2470	ShipCity	I. de Margarita
2470	ShipRegion	Nueva Esparta
2470	ShipPostalCode	4980
2470	ShipCountry	Venezuela
2471	OrderID	10406
2471	CustomerID	QUEEN
2471	EmployeeID	7
2471	OrderDate	1997-01-07
2471	RequiredDate	1997-02-18
2471	ShippedDate	1997-01-13
2471	ShipVia	1
2471	Freight	108.04
2471	ShipName	Queen Cozinha
2471	ShipAddress	Alameda dos Canàrios, 891
2471	ShipCity	Sao Paulo
2471	ShipRegion	SP
2471	ShipPostalCode	05487-020
2471	ShipCountry	Brazil
2472	OrderID	10407
2472	CustomerID	OTTIK
2472	EmployeeID	2
2472	OrderDate	1997-01-07
2472	RequiredDate	1997-02-04
2472	ShippedDate	1997-01-30
2472	ShipVia	2
2472	Freight	91.48
2472	ShipName	Ottilies Käseladen
2472	ShipAddress	Mehrheimerstr. 369
2472	ShipCity	Köln
2472	ShipPostalCode	50739
2472	ShipCountry	Germany
2473	OrderID	10408
2473	CustomerID	FOLIG
2473	EmployeeID	8
2473	OrderDate	1997-01-08
2473	RequiredDate	1997-02-05
2473	ShippedDate	1997-01-14
2473	ShipVia	1
2473	Freight	11.26
2473	ShipName	Folies gourmandes
2473	ShipAddress	184, chaussée de Tournai
2473	ShipCity	Lille
2473	ShipPostalCode	59000
2473	ShipCountry	France
2474	OrderID	10409
2474	CustomerID	OCEAN
2474	EmployeeID	3
2474	OrderDate	1997-01-09
2474	RequiredDate	1997-02-06
2474	ShippedDate	1997-01-14
2474	ShipVia	1
2474	Freight	29.83
2474	ShipName	Océano Atlántico Ltda.
2474	ShipAddress	Ing. Gustavo Moncada 8585 Piso 20-A
2474	ShipCity	Buenos Aires
2474	ShipPostalCode	1010
2474	ShipCountry	Argentina
2475	OrderID	10410
2475	CustomerID	BOTTM
2475	EmployeeID	3
2475	OrderDate	1997-01-10
2475	RequiredDate	1997-02-07
2475	ShippedDate	1997-01-15
2475	ShipVia	3
2475	Freight	2.4
2475	ShipName	Bottom-Dollar Markets
2475	ShipAddress	23 Tsawassen Blvd.
2475	ShipCity	Tsawassen
2475	ShipRegion	BC
2475	ShipPostalCode	T2F 8M4
2475	ShipCountry	Canada
2476	OrderID	10411
2476	CustomerID	BOTTM
2476	EmployeeID	9
2476	OrderDate	1997-01-10
2476	RequiredDate	1997-02-07
2476	ShippedDate	1997-01-21
2476	ShipVia	3
2476	Freight	23.65
2476	ShipName	Bottom-Dollar Markets
2476	ShipAddress	23 Tsawassen Blvd.
2476	ShipCity	Tsawassen
2476	ShipRegion	BC
2476	ShipPostalCode	T2F 8M4
2476	ShipCountry	Canada
2477	OrderID	10412
2477	CustomerID	WARTH
2477	EmployeeID	8
2477	OrderDate	1997-01-13
2477	RequiredDate	1997-02-10
2477	ShippedDate	1997-01-15
2477	ShipVia	2
2477	Freight	3.77
2477	ShipName	Wartian Herkku
2477	ShipAddress	Torikatu 38
2477	ShipCity	Oulu
2477	ShipPostalCode	90110
2477	ShipCountry	Finland
2478	OrderID	10413
2478	CustomerID	LAMAI
2478	EmployeeID	3
2478	OrderDate	1997-01-14
2478	RequiredDate	1997-02-11
2478	ShippedDate	1997-01-16
2478	ShipVia	2
2478	Freight	95.66
2478	ShipName	La maison d'Asie
2478	ShipAddress	1 rue Alsace-Lorraine
2478	ShipCity	Toulouse
2478	ShipPostalCode	31000
2478	ShipCountry	France
2479	OrderID	10414
2479	CustomerID	FAMIA
2479	EmployeeID	2
2479	OrderDate	1997-01-14
2479	RequiredDate	1997-02-11
2479	ShippedDate	1997-01-17
2479	ShipVia	3
2479	Freight	21.48
2479	ShipName	Familia Arquibaldo
2479	ShipAddress	Rua Orós, 92
2479	ShipCity	Sao Paulo
2479	ShipRegion	SP
2479	ShipPostalCode	05442-030
2479	ShipCountry	Brazil
2480	OrderID	10415
2480	CustomerID	HUNGC
2480	EmployeeID	3
2480	OrderDate	1997-01-15
2480	RequiredDate	1997-02-12
2480	ShippedDate	1997-01-24
2480	ShipVia	1
2480	Freight	0.2
2480	ShipName	Hungry Coyote Import Store
2480	ShipAddress	City Center Plaza 516 Main St.
2480	ShipCity	Elgin
2480	ShipRegion	OR
2480	ShipPostalCode	97827
2480	ShipCountry	USA
2481	OrderID	10416
2481	CustomerID	WARTH
2481	EmployeeID	8
2481	OrderDate	1997-01-16
2481	RequiredDate	1997-02-13
2481	ShippedDate	1997-01-27
2481	ShipVia	3
2481	Freight	22.72
2481	ShipName	Wartian Herkku
2481	ShipAddress	Torikatu 38
2481	ShipCity	Oulu
2481	ShipPostalCode	90110
2481	ShipCountry	Finland
2482	OrderID	10417
2482	CustomerID	SIMOB
2482	EmployeeID	4
2482	OrderDate	1997-01-16
2482	RequiredDate	1997-02-13
2482	ShippedDate	1997-01-28
2482	ShipVia	3
2482	Freight	70.29
2482	ShipName	Simons bistro
2482	ShipAddress	Vinbæltet 34
2482	ShipCity	Kobenhavn
2482	ShipPostalCode	1734
2482	ShipCountry	Denmark
2483	OrderID	10418
2483	CustomerID	QUICK
2483	EmployeeID	4
2483	OrderDate	1997-01-17
2483	RequiredDate	1997-02-14
2483	ShippedDate	1997-01-24
2483	ShipVia	1
2483	Freight	17.55
2483	ShipName	QUICK-Stop
2483	ShipAddress	Taucherstraße 10
2483	ShipCity	Cunewalde
2483	ShipPostalCode	01307
2483	ShipCountry	Germany
2484	OrderID	10419
2484	CustomerID	RICSU
2484	EmployeeID	4
2484	OrderDate	1997-01-20
2484	RequiredDate	1997-02-17
2484	ShippedDate	1997-01-30
2484	ShipVia	2
2484	Freight	137.35
2484	ShipName	Richter Supermarkt
2484	ShipAddress	Starenweg 5
2484	ShipCity	Genève
2484	ShipPostalCode	1204
2484	ShipCountry	Switzerland
2485	OrderID	10420
2485	CustomerID	WELLI
2485	EmployeeID	3
2485	OrderDate	1997-01-21
2485	RequiredDate	1997-02-18
2485	ShippedDate	1997-01-27
2485	ShipVia	1
2485	Freight	44.12
2485	ShipName	Wellington Importadora
2485	ShipAddress	Rua do Mercado, 12
2485	ShipCity	Resende
2485	ShipRegion	SP
2485	ShipPostalCode	08737-363
2485	ShipCountry	Brazil
2486	OrderID	10421
2486	CustomerID	QUEDE
2486	EmployeeID	8
2486	OrderDate	1997-01-21
2486	RequiredDate	1997-03-04
2486	ShippedDate	1997-01-27
2486	ShipVia	1
2486	Freight	99.23
2486	ShipName	Que Delícia
2486	ShipAddress	Rua da Panificadora, 12
2486	ShipCity	Rio de Janeiro
2486	ShipRegion	RJ
2486	ShipPostalCode	02389-673
2486	ShipCountry	Brazil
2487	OrderID	10422
2487	CustomerID	FRANS
2487	EmployeeID	2
2487	OrderDate	1997-01-22
2487	RequiredDate	1997-02-19
2487	ShippedDate	1997-01-31
2487	ShipVia	1
2487	Freight	3.02
2487	ShipName	Franchi S.p.A.
2487	ShipAddress	Via Monte Bianco 34
2487	ShipCity	Torino
2487	ShipPostalCode	10100
2487	ShipCountry	Italy
2488	OrderID	10423
2488	CustomerID	GOURL
2488	EmployeeID	6
2488	OrderDate	1997-01-23
2488	RequiredDate	1997-02-06
2488	ShippedDate	1997-02-24
2488	ShipVia	3
2488	Freight	24.5
2488	ShipName	Gourmet Lanchonetes
2488	ShipAddress	Av. Brasil, 442
2488	ShipCity	Campinas
2488	ShipRegion	SP
2488	ShipPostalCode	04876-786
2488	ShipCountry	Brazil
2489	OrderID	10424
2489	CustomerID	MEREP
2489	EmployeeID	7
2489	OrderDate	1997-01-23
2489	RequiredDate	1997-02-20
2489	ShippedDate	1997-01-27
2489	ShipVia	2
2489	Freight	370.61
2489	ShipName	Mère Paillarde
2489	ShipAddress	43 rue St. Laurent
2489	ShipCity	Montréal
2489	ShipRegion	Québec
2489	ShipPostalCode	H1J 1C3
2489	ShipCountry	Canada
2490	OrderID	10425
2490	CustomerID	LAMAI
2490	EmployeeID	6
2490	OrderDate	1997-01-24
2490	RequiredDate	1997-02-21
2490	ShippedDate	1997-02-14
2490	ShipVia	2
2490	Freight	7.93
2490	ShipName	La maison d'Asie
2490	ShipAddress	1 rue Alsace-Lorraine
2490	ShipCity	Toulouse
2490	ShipPostalCode	31000
2490	ShipCountry	France
2491	OrderID	10426
2491	CustomerID	GALED
2491	EmployeeID	4
2491	OrderDate	1997-01-27
2491	RequiredDate	1997-02-24
2491	ShippedDate	1997-02-06
2491	ShipVia	1
2491	Freight	18.69
2491	ShipName	Galería del gastronómo
2491	ShipAddress	Rambla de Cataluña, 23
2491	ShipCity	Barcelona
2491	ShipPostalCode	8022
2491	ShipCountry	Spain
2492	OrderID	10427
2492	CustomerID	PICCO
2492	EmployeeID	4
2492	OrderDate	1997-01-27
2492	RequiredDate	1997-02-24
2492	ShippedDate	1997-03-03
2492	ShipVia	2
2492	Freight	31.29
2492	ShipName	Piccolo und mehr
2492	ShipAddress	Geislweg 14
2492	ShipCity	Salzburg
2492	ShipPostalCode	5020
2492	ShipCountry	Austria
2493	OrderID	10428
2493	CustomerID	REGGC
2493	EmployeeID	7
2493	OrderDate	1997-01-28
2493	RequiredDate	1997-02-25
2493	ShippedDate	1997-02-04
2493	ShipVia	1
2493	Freight	11.09
2493	ShipName	Reggiani Caseifici
2493	ShipAddress	Strada Provinciale 124
2493	ShipCity	Reggio Emilia
2493	ShipPostalCode	42100
2493	ShipCountry	Italy
2494	OrderID	10429
2494	CustomerID	HUNGO
2494	EmployeeID	3
2494	OrderDate	1997-01-29
2494	RequiredDate	1997-03-12
2494	ShippedDate	1997-02-07
2494	ShipVia	2
2494	Freight	56.63
2494	ShipName	Hungry Owl All-Night Grocers
2494	ShipAddress	8 Johnstown Road
2494	ShipCity	Cork
2494	ShipRegion	Co. Cork
2494	ShipCountry	Ireland
2495	OrderID	10430
2495	CustomerID	ERNSH
2495	EmployeeID	4
2495	OrderDate	1997-01-30
2495	RequiredDate	1997-02-13
2495	ShippedDate	1997-02-03
2495	ShipVia	1
2495	Freight	458.78
2495	ShipName	Ernst Handel
2495	ShipAddress	Kirchgasse 6
2495	ShipCity	Graz
2495	ShipPostalCode	8010
2495	ShipCountry	Austria
2496	OrderID	10431
2496	CustomerID	BOTTM
2496	EmployeeID	4
2496	OrderDate	1997-01-30
2496	RequiredDate	1997-02-13
2496	ShippedDate	1997-02-07
2496	ShipVia	2
2496	Freight	44.17
2496	ShipName	Bottom-Dollar Markets
2496	ShipAddress	23 Tsawassen Blvd.
2496	ShipCity	Tsawassen
2496	ShipRegion	BC
2496	ShipPostalCode	T2F 8M4
2496	ShipCountry	Canada
2497	OrderID	10432
2497	CustomerID	SPLIR
2497	EmployeeID	3
2497	OrderDate	1997-01-31
2497	RequiredDate	1997-02-14
2497	ShippedDate	1997-02-07
2497	ShipVia	2
2497	Freight	4.34
2497	ShipName	Split Rail Beer & Ale
2497	ShipAddress	P.O. Box 555
2497	ShipCity	Lander
2497	ShipRegion	WY
2497	ShipPostalCode	82520
2497	ShipCountry	USA
2498	OrderID	10433
2498	CustomerID	PRINI
2498	EmployeeID	3
2498	OrderDate	1997-02-03
2498	RequiredDate	1997-03-03
2498	ShippedDate	1997-03-04
2498	ShipVia	3
2498	Freight	73.83
2498	ShipName	Princesa Isabel Vinhos
2498	ShipAddress	Estrada da saúde n. 58
2498	ShipCity	Lisboa
2498	ShipPostalCode	1756
2498	ShipCountry	Portugal
2499	OrderID	10434
2499	CustomerID	FOLKO
2499	EmployeeID	3
2499	OrderDate	1997-02-03
2499	RequiredDate	1997-03-03
2499	ShippedDate	1997-02-13
2499	ShipVia	2
2499	Freight	17.92
2499	ShipName	Folk och fä HB
2499	ShipAddress	Åkergatan 24
2499	ShipCity	Bräcke
2499	ShipPostalCode	S-844 67
2499	ShipCountry	Sweden
2500	OrderID	10435
2500	CustomerID	CONSH
2500	EmployeeID	8
2500	OrderDate	1997-02-04
2500	RequiredDate	1997-03-18
2500	ShippedDate	1997-02-07
2500	ShipVia	2
2500	Freight	9.21
2500	ShipName	Consolidated Holdings
2500	ShipAddress	Berkeley Gardens 12  Brewery
2500	ShipCity	London
2500	ShipPostalCode	WX1 6LT
2500	ShipCountry	UK
2501	OrderID	10436
2501	CustomerID	BLONP
2501	EmployeeID	3
2501	OrderDate	1997-02-05
2501	RequiredDate	1997-03-05
2501	ShippedDate	1997-02-11
2501	ShipVia	2
2501	Freight	156.66
2501	ShipName	Blondel père et fils
2501	ShipAddress	24, place Kléber
2501	ShipCity	Strasbourg
2501	ShipPostalCode	67000
2501	ShipCountry	France
2502	OrderID	10437
2502	CustomerID	WARTH
2502	EmployeeID	8
2502	OrderDate	1997-02-05
2502	RequiredDate	1997-03-05
2502	ShippedDate	1997-02-12
2502	ShipVia	1
2502	Freight	19.97
2502	ShipName	Wartian Herkku
2502	ShipAddress	Torikatu 38
2502	ShipCity	Oulu
2502	ShipPostalCode	90110
2502	ShipCountry	Finland
2503	OrderID	10438
2503	CustomerID	TOMSP
2503	EmployeeID	3
2503	OrderDate	1997-02-06
2503	RequiredDate	1997-03-06
2503	ShippedDate	1997-02-14
2503	ShipVia	2
2503	Freight	8.24
2503	ShipName	Toms Spezialitäten
2503	ShipAddress	Luisenstr. 48
2503	ShipCity	Münster
2503	ShipPostalCode	44087
2503	ShipCountry	Germany
2504	OrderID	10439
2504	CustomerID	MEREP
2504	EmployeeID	6
2504	OrderDate	1997-02-07
2504	RequiredDate	1997-03-07
2504	ShippedDate	1997-02-10
2504	ShipVia	3
2504	Freight	4.07
2504	ShipName	Mère Paillarde
2504	ShipAddress	43 rue St. Laurent
2504	ShipCity	Montréal
2504	ShipRegion	Québec
2504	ShipPostalCode	H1J 1C3
2504	ShipCountry	Canada
2505	OrderID	10440
2505	CustomerID	SAVEA
2505	EmployeeID	4
2505	OrderDate	1997-02-10
2505	RequiredDate	1997-03-10
2505	ShippedDate	1997-02-28
2505	ShipVia	2
2505	Freight	86.53
2505	ShipName	Save-a-lot Markets
2505	ShipAddress	187 Suffolk Ln.
2505	ShipCity	Boise
2505	ShipRegion	ID
2505	ShipPostalCode	83720
2505	ShipCountry	USA
2506	OrderID	10441
2506	CustomerID	OLDWO
2506	EmployeeID	3
2506	OrderDate	1997-02-10
2506	RequiredDate	1997-03-24
2506	ShippedDate	1997-03-14
2506	ShipVia	2
2506	Freight	73.02
2506	ShipName	Old World Delicatessen
2506	ShipAddress	2743 Bering St.
2506	ShipCity	Anchorage
2506	ShipRegion	AK
2506	ShipPostalCode	99508
2506	ShipCountry	USA
2507	OrderID	10442
2507	CustomerID	ERNSH
2507	EmployeeID	3
2507	OrderDate	1997-02-11
2507	RequiredDate	1997-03-11
2507	ShippedDate	1997-02-18
2507	ShipVia	2
2507	Freight	47.94
2507	ShipName	Ernst Handel
2507	ShipAddress	Kirchgasse 6
2507	ShipCity	Graz
2507	ShipPostalCode	8010
2507	ShipCountry	Austria
2508	OrderID	10443
2508	CustomerID	REGGC
2508	EmployeeID	8
2508	OrderDate	1997-02-12
2508	RequiredDate	1997-03-12
2508	ShippedDate	1997-02-14
2508	ShipVia	1
2508	Freight	13.95
2508	ShipName	Reggiani Caseifici
2508	ShipAddress	Strada Provinciale 124
2508	ShipCity	Reggio Emilia
2508	ShipPostalCode	42100
2508	ShipCountry	Italy
2509	OrderID	10444
2509	CustomerID	BERGS
2509	EmployeeID	3
2509	OrderDate	1997-02-12
2509	RequiredDate	1997-03-12
2509	ShippedDate	1997-02-21
2509	ShipVia	3
2509	Freight	3.5
2509	ShipName	Berglunds snabbköp
2509	ShipAddress	Berguvsvägen  8
2509	ShipCity	Luleå
2509	ShipPostalCode	S-958 22
2509	ShipCountry	Sweden
2510	OrderID	10445
2510	CustomerID	BERGS
2510	EmployeeID	3
2510	OrderDate	1997-02-13
2510	RequiredDate	1997-03-13
2510	ShippedDate	1997-02-20
2510	ShipVia	1
2510	Freight	9.3
2510	ShipName	Berglunds snabbköp
2510	ShipAddress	Berguvsvägen  8
2510	ShipCity	Luleå
2510	ShipPostalCode	S-958 22
2510	ShipCountry	Sweden
2511	OrderID	10446
2511	CustomerID	TOMSP
2511	EmployeeID	6
2511	OrderDate	1997-02-14
2511	RequiredDate	1997-03-14
2511	ShippedDate	1997-02-19
2511	ShipVia	1
2511	Freight	14.68
2511	ShipName	Toms Spezialitäten
2511	ShipAddress	Luisenstr. 48
2511	ShipCity	Münster
2511	ShipPostalCode	44087
2511	ShipCountry	Germany
2512	OrderID	10447
2512	CustomerID	RICAR
2512	EmployeeID	4
2512	OrderDate	1997-02-14
2512	RequiredDate	1997-03-14
2512	ShippedDate	1997-03-07
2512	ShipVia	2
2512	Freight	68.66
2512	ShipName	Ricardo Adocicados
2512	ShipAddress	Av. Copacabana, 267
2512	ShipCity	Rio de Janeiro
2512	ShipRegion	RJ
2512	ShipPostalCode	02389-890
2512	ShipCountry	Brazil
2513	OrderID	10448
2513	CustomerID	RANCH
2513	EmployeeID	4
2513	OrderDate	1997-02-17
2513	RequiredDate	1997-03-17
2513	ShippedDate	1997-02-24
2513	ShipVia	2
2513	Freight	38.82
2513	ShipName	Rancho grande
2513	ShipAddress	Av. del Libertador 900
2513	ShipCity	Buenos Aires
2513	ShipPostalCode	1010
2513	ShipCountry	Argentina
2514	OrderID	10449
2514	CustomerID	BLONP
2514	EmployeeID	3
2514	OrderDate	1997-02-18
2514	RequiredDate	1997-03-18
2514	ShippedDate	1997-02-27
2514	ShipVia	2
2514	Freight	53.3
2514	ShipName	Blondel père et fils
2514	ShipAddress	24, place Kléber
2514	ShipCity	Strasbourg
2514	ShipPostalCode	67000
2514	ShipCountry	France
2515	OrderID	10450
2515	CustomerID	VICTE
2515	EmployeeID	8
2515	OrderDate	1997-02-19
2515	RequiredDate	1997-03-19
2515	ShippedDate	1997-03-11
2515	ShipVia	2
2515	Freight	7.23
2515	ShipName	Victuailles en stock
2515	ShipAddress	2, rue du Commerce
2515	ShipCity	Lyon
2515	ShipPostalCode	69004
2515	ShipCountry	France
2516	OrderID	10451
2516	CustomerID	QUICK
2516	EmployeeID	4
2516	OrderDate	1997-02-19
2516	RequiredDate	1997-03-05
2516	ShippedDate	1997-03-12
2516	ShipVia	3
2516	Freight	189.09
2516	ShipName	QUICK-Stop
2516	ShipAddress	Taucherstraße 10
2516	ShipCity	Cunewalde
2516	ShipPostalCode	01307
2516	ShipCountry	Germany
2517	OrderID	10452
2517	CustomerID	SAVEA
2517	EmployeeID	8
2517	OrderDate	1997-02-20
2517	RequiredDate	1997-03-20
2517	ShippedDate	1997-02-26
2517	ShipVia	1
2517	Freight	140.26
2517	ShipName	Save-a-lot Markets
2517	ShipAddress	187 Suffolk Ln.
2517	ShipCity	Boise
2517	ShipRegion	ID
2517	ShipPostalCode	83720
2517	ShipCountry	USA
2518	OrderID	10453
2518	CustomerID	AROUT
2518	EmployeeID	1
2518	OrderDate	1997-02-21
2518	RequiredDate	1997-03-21
2518	ShippedDate	1997-02-26
2518	ShipVia	2
2518	Freight	25.36
2518	ShipName	Around the Horn
2518	ShipAddress	Brook Farm Stratford St. Mary
2518	ShipCity	Colchester
2518	ShipRegion	Essex
2518	ShipPostalCode	CO7 6JX
2518	ShipCountry	UK
2519	OrderID	10454
2519	CustomerID	LAMAI
2519	EmployeeID	4
2519	OrderDate	1997-02-21
2519	RequiredDate	1997-03-21
2519	ShippedDate	1997-02-25
2519	ShipVia	3
2519	Freight	2.74
2519	ShipName	La maison d'Asie
2519	ShipAddress	1 rue Alsace-Lorraine
2519	ShipCity	Toulouse
2519	ShipPostalCode	31000
2519	ShipCountry	France
2520	OrderID	10455
2520	CustomerID	WARTH
2520	EmployeeID	8
2520	OrderDate	1997-02-24
2520	RequiredDate	1997-04-07
2520	ShippedDate	1997-03-03
2520	ShipVia	2
2520	Freight	180.45
2520	ShipName	Wartian Herkku
2520	ShipAddress	Torikatu 38
2520	ShipCity	Oulu
2520	ShipPostalCode	90110
2520	ShipCountry	Finland
2521	OrderID	10456
2521	CustomerID	KOENE
2521	EmployeeID	8
2521	OrderDate	1997-02-25
2521	RequiredDate	1997-04-08
2521	ShippedDate	1997-02-28
2521	ShipVia	2
2521	Freight	8.12
2521	ShipName	Königlich Essen
2521	ShipAddress	Maubelstr. 90
2521	ShipCity	Brandenburg
2521	ShipPostalCode	14776
2521	ShipCountry	Germany
2522	OrderID	10457
2522	CustomerID	KOENE
2522	EmployeeID	2
2522	OrderDate	1997-02-25
2522	RequiredDate	1997-03-25
2522	ShippedDate	1997-03-03
2522	ShipVia	1
2522	Freight	11.57
2522	ShipName	Königlich Essen
2522	ShipAddress	Maubelstr. 90
2522	ShipCity	Brandenburg
2522	ShipPostalCode	14776
2522	ShipCountry	Germany
2523	OrderID	10458
2523	CustomerID	SUPRD
2523	EmployeeID	7
2523	OrderDate	1997-02-26
2523	RequiredDate	1997-03-26
2523	ShippedDate	1997-03-04
2523	ShipVia	3
2523	Freight	147.06
2523	ShipName	Suprêmes délices
2523	ShipAddress	Boulevard Tirou, 255
2523	ShipCity	Charleroi
2523	ShipPostalCode	B-6000
2523	ShipCountry	Belgium
2524	OrderID	10459
2524	CustomerID	VICTE
2524	EmployeeID	4
2524	OrderDate	1997-02-27
2524	RequiredDate	1997-03-27
2524	ShippedDate	1997-02-28
2524	ShipVia	2
2524	Freight	25.09
2524	ShipName	Victuailles en stock
2524	ShipAddress	2, rue du Commerce
2524	ShipCity	Lyon
2524	ShipPostalCode	69004
2524	ShipCountry	France
2525	OrderID	10460
2525	CustomerID	FOLKO
2525	EmployeeID	8
2525	OrderDate	1997-02-28
2525	RequiredDate	1997-03-28
2525	ShippedDate	1997-03-03
2525	ShipVia	1
2525	Freight	16.27
2525	ShipName	Folk och fä HB
2525	ShipAddress	Åkergatan 24
2525	ShipCity	Bräcke
2525	ShipPostalCode	S-844 67
2525	ShipCountry	Sweden
2526	OrderID	10461
2526	CustomerID	LILAS
2526	EmployeeID	1
2526	OrderDate	1997-02-28
2526	RequiredDate	1997-03-28
2526	ShippedDate	1997-03-05
2526	ShipVia	3
2526	Freight	148.61
2526	ShipName	LILA-Supermercado
2526	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2526	ShipCity	Barquisimeto
2526	ShipRegion	Lara
2526	ShipPostalCode	3508
2526	ShipCountry	Venezuela
2527	OrderID	10462
2527	CustomerID	CONSH
2527	EmployeeID	2
2527	OrderDate	1997-03-03
2527	RequiredDate	1997-03-31
2527	ShippedDate	1997-03-18
2527	ShipVia	1
2527	Freight	6.17
2527	ShipName	Consolidated Holdings
2527	ShipAddress	Berkeley Gardens 12  Brewery
2527	ShipCity	London
2527	ShipPostalCode	WX1 6LT
2527	ShipCountry	UK
2528	OrderID	10463
2528	CustomerID	SUPRD
2528	EmployeeID	5
2528	OrderDate	1997-03-04
2528	RequiredDate	1997-04-01
2528	ShippedDate	1997-03-06
2528	ShipVia	3
2528	Freight	14.78
2528	ShipName	Suprêmes délices
2528	ShipAddress	Boulevard Tirou, 255
2528	ShipCity	Charleroi
2528	ShipPostalCode	B-6000
2528	ShipCountry	Belgium
2529	OrderID	10464
2529	CustomerID	FURIB
2529	EmployeeID	4
2529	OrderDate	1997-03-04
2529	RequiredDate	1997-04-01
2529	ShippedDate	1997-03-14
2529	ShipVia	2
2529	Freight	89.0
2529	ShipName	Furia Bacalhau e Frutos do Mar
2529	ShipAddress	Jardim das rosas n. 32
2529	ShipCity	Lisboa
2529	ShipPostalCode	1675
2529	ShipCountry	Portugal
2530	OrderID	10465
2530	CustomerID	VAFFE
2530	EmployeeID	1
2530	OrderDate	1997-03-05
2530	RequiredDate	1997-04-02
2530	ShippedDate	1997-03-14
2530	ShipVia	3
2530	Freight	145.04
2530	ShipName	Vaffeljernet
2530	ShipAddress	Smagsloget 45
2530	ShipCity	Århus
2530	ShipPostalCode	8200
2530	ShipCountry	Denmark
2531	OrderID	10466
2531	CustomerID	COMMI
2531	EmployeeID	4
2531	OrderDate	1997-03-06
2531	RequiredDate	1997-04-03
2531	ShippedDate	1997-03-13
2531	ShipVia	1
2531	Freight	11.93
2531	ShipName	Comércio Mineiro
2531	ShipAddress	Av. dos Lusíadas, 23
2531	ShipCity	Sao Paulo
2531	ShipRegion	SP
2531	ShipPostalCode	05432-043
2531	ShipCountry	Brazil
2532	OrderID	10467
2532	CustomerID	MAGAA
2532	EmployeeID	8
2532	OrderDate	1997-03-06
2532	RequiredDate	1997-04-03
2532	ShippedDate	1997-03-11
2532	ShipVia	2
2532	Freight	4.93
2532	ShipName	Magazzini Alimentari Riuniti
2532	ShipAddress	Via Ludovico il Moro 22
2532	ShipCity	Bergamo
2532	ShipPostalCode	24100
2532	ShipCountry	Italy
2533	OrderID	10468
2533	CustomerID	KOENE
2533	EmployeeID	3
2533	OrderDate	1997-03-07
2533	RequiredDate	1997-04-04
2533	ShippedDate	1997-03-12
2533	ShipVia	3
2533	Freight	44.12
2533	ShipName	Königlich Essen
2533	ShipAddress	Maubelstr. 90
2533	ShipCity	Brandenburg
2533	ShipPostalCode	14776
2533	ShipCountry	Germany
2534	OrderID	10469
2534	CustomerID	WHITC
2534	EmployeeID	1
2534	OrderDate	1997-03-10
2534	RequiredDate	1997-04-07
2534	ShippedDate	1997-03-14
2534	ShipVia	1
2534	Freight	60.18
2534	ShipName	White Clover Markets
2534	ShipAddress	1029 - 12th Ave. S.
2534	ShipCity	Seattle
2534	ShipRegion	WA
2534	ShipPostalCode	98124
2534	ShipCountry	USA
2535	OrderID	10470
2535	CustomerID	BONAP
2535	EmployeeID	4
2535	OrderDate	1997-03-11
2535	RequiredDate	1997-04-08
2535	ShippedDate	1997-03-14
2535	ShipVia	2
2535	Freight	64.56
2535	ShipName	Bon app'
2535	ShipAddress	12, rue des Bouchers
2535	ShipCity	Marseille
2535	ShipPostalCode	13008
2535	ShipCountry	France
2536	OrderID	10471
2536	CustomerID	BSBEV
2536	EmployeeID	2
2536	OrderDate	1997-03-11
2536	RequiredDate	1997-04-08
2536	ShippedDate	1997-03-18
2536	ShipVia	3
2536	Freight	45.59
2536	ShipName	B's Beverages
2536	ShipAddress	Fauntleroy Circus
2536	ShipCity	London
2536	ShipPostalCode	EC2 5NT
2536	ShipCountry	UK
2537	OrderID	10472
2537	CustomerID	SEVES
2537	EmployeeID	8
2537	OrderDate	1997-03-12
2537	RequiredDate	1997-04-09
2537	ShippedDate	1997-03-19
2537	ShipVia	1
2537	Freight	4.2
2537	ShipName	Seven Seas Imports
2537	ShipAddress	90 Wadhurst Rd.
2537	ShipCity	London
2537	ShipPostalCode	OX15 4NB
2537	ShipCountry	UK
2538	OrderID	10473
2538	CustomerID	ISLAT
2538	EmployeeID	1
2538	OrderDate	1997-03-13
2538	RequiredDate	1997-03-27
2538	ShippedDate	1997-03-21
2538	ShipVia	3
2538	Freight	16.37
2538	ShipName	Island Trading
2538	ShipAddress	Garden House Crowther Way
2538	ShipCity	Cowes
2538	ShipRegion	Isle of Wight
2538	ShipPostalCode	PO31 7PJ
2538	ShipCountry	UK
2539	OrderID	10474
2539	CustomerID	PERIC
2539	EmployeeID	5
2539	OrderDate	1997-03-13
2539	RequiredDate	1997-04-10
2539	ShippedDate	1997-03-21
2539	ShipVia	2
2539	Freight	83.49
2539	ShipName	Pericles Comidas clásicas
2539	ShipAddress	Calle Dr. Jorge Cash 321
2539	ShipCity	México D.F.
2539	ShipPostalCode	05033
2539	ShipCountry	Mexico
2540	OrderID	10475
2540	CustomerID	SUPRD
2540	EmployeeID	9
2540	OrderDate	1997-03-14
2540	RequiredDate	1997-04-11
2540	ShippedDate	1997-04-04
2540	ShipVia	1
2540	Freight	68.52
2540	ShipName	Suprêmes délices
2540	ShipAddress	Boulevard Tirou, 255
2540	ShipCity	Charleroi
2540	ShipPostalCode	B-6000
2540	ShipCountry	Belgium
2541	OrderID	10476
2541	CustomerID	HILAA
2541	EmployeeID	8
2541	OrderDate	1997-03-17
2541	RequiredDate	1997-04-14
2541	ShippedDate	1997-03-24
2541	ShipVia	3
2541	Freight	4.41
2541	ShipName	HILARION-Abastos
2541	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2541	ShipCity	San Cristóbal
2541	ShipRegion	Táchira
2541	ShipPostalCode	5022
2541	ShipCountry	Venezuela
2542	OrderID	10477
2542	CustomerID	PRINI
2542	EmployeeID	5
2542	OrderDate	1997-03-17
2542	RequiredDate	1997-04-14
2542	ShippedDate	1997-03-25
2542	ShipVia	2
2542	Freight	13.02
2542	ShipName	Princesa Isabel Vinhos
2542	ShipAddress	Estrada da saúde n. 58
2542	ShipCity	Lisboa
2542	ShipPostalCode	1756
2542	ShipCountry	Portugal
2543	OrderID	10478
2543	CustomerID	VICTE
2543	EmployeeID	2
2543	OrderDate	1997-03-18
2543	RequiredDate	1997-04-01
2543	ShippedDate	1997-03-26
2543	ShipVia	3
2543	Freight	4.81
2543	ShipName	Victuailles en stock
2543	ShipAddress	2, rue du Commerce
2543	ShipCity	Lyon
2543	ShipPostalCode	69004
2543	ShipCountry	France
2544	OrderID	10479
2544	CustomerID	RATTC
2544	EmployeeID	3
2544	OrderDate	1997-03-19
2544	RequiredDate	1997-04-16
2544	ShippedDate	1997-03-21
2544	ShipVia	3
2544	Freight	708.95
2544	ShipName	Rattlesnake Canyon Grocery
2544	ShipAddress	2817 Milton Dr.
2544	ShipCity	Albuquerque
2544	ShipRegion	NM
2544	ShipPostalCode	87110
2544	ShipCountry	USA
2545	OrderID	10480
2545	CustomerID	FOLIG
2545	EmployeeID	6
2545	OrderDate	1997-03-20
2545	RequiredDate	1997-04-17
2545	ShippedDate	1997-03-24
2545	ShipVia	2
2545	Freight	1.35
2545	ShipName	Folies gourmandes
2545	ShipAddress	184, chaussée de Tournai
2545	ShipCity	Lille
2545	ShipPostalCode	59000
2545	ShipCountry	France
2546	OrderID	10481
2546	CustomerID	RICAR
2546	EmployeeID	8
2546	OrderDate	1997-03-20
2546	RequiredDate	1997-04-17
2546	ShippedDate	1997-03-25
2546	ShipVia	2
2546	Freight	64.33
2546	ShipName	Ricardo Adocicados
2546	ShipAddress	Av. Copacabana, 267
2546	ShipCity	Rio de Janeiro
2546	ShipRegion	RJ
2546	ShipPostalCode	02389-890
2546	ShipCountry	Brazil
2547	OrderID	10482
2547	CustomerID	LAZYK
2547	EmployeeID	1
2547	OrderDate	1997-03-21
2547	RequiredDate	1997-04-18
2547	ShippedDate	1997-04-10
2547	ShipVia	3
2547	Freight	7.48
2547	ShipName	Lazy K Kountry Store
2547	ShipAddress	12 Orchestra Terrace
2547	ShipCity	Walla Walla
2547	ShipRegion	WA
2547	ShipPostalCode	99362
2547	ShipCountry	USA
2548	OrderID	10483
2548	CustomerID	WHITC
2548	EmployeeID	7
2548	OrderDate	1997-03-24
2548	RequiredDate	1997-04-21
2548	ShippedDate	1997-04-25
2548	ShipVia	2
2548	Freight	15.28
2548	ShipName	White Clover Markets
2548	ShipAddress	1029 - 12th Ave. S.
2548	ShipCity	Seattle
2548	ShipRegion	WA
2548	ShipPostalCode	98124
2548	ShipCountry	USA
2549	OrderID	10484
2549	CustomerID	BSBEV
2549	EmployeeID	3
2549	OrderDate	1997-03-24
2549	RequiredDate	1997-04-21
2549	ShippedDate	1997-04-01
2549	ShipVia	3
2549	Freight	6.88
2549	ShipName	B's Beverages
2549	ShipAddress	Fauntleroy Circus
2549	ShipCity	London
2549	ShipPostalCode	EC2 5NT
2549	ShipCountry	UK
2550	OrderID	10485
2550	CustomerID	LINOD
2550	EmployeeID	4
2550	OrderDate	1997-03-25
2550	RequiredDate	1997-04-08
2550	ShippedDate	1997-03-31
2550	ShipVia	2
2550	Freight	64.45
2550	ShipName	LINO-Delicateses
2550	ShipAddress	Ave. 5 de Mayo Porlamar
2550	ShipCity	I. de Margarita
2550	ShipRegion	Nueva Esparta
2550	ShipPostalCode	4980
2550	ShipCountry	Venezuela
2551	OrderID	10486
2551	CustomerID	HILAA
2551	EmployeeID	1
2551	OrderDate	1997-03-26
2551	RequiredDate	1997-04-23
2551	ShippedDate	1997-04-02
2551	ShipVia	2
2551	Freight	30.53
2551	ShipName	HILARION-Abastos
2551	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2551	ShipCity	San Cristóbal
2551	ShipRegion	Táchira
2551	ShipPostalCode	5022
2551	ShipCountry	Venezuela
2552	OrderID	10487
2552	CustomerID	QUEEN
2552	EmployeeID	2
2552	OrderDate	1997-03-26
2552	RequiredDate	1997-04-23
2552	ShippedDate	1997-03-28
2552	ShipVia	2
2552	Freight	71.07
2552	ShipName	Queen Cozinha
2552	ShipAddress	Alameda dos Canàrios, 891
2552	ShipCity	Sao Paulo
2552	ShipRegion	SP
2552	ShipPostalCode	05487-020
2552	ShipCountry	Brazil
2553	OrderID	10488
2553	CustomerID	FRANK
2553	EmployeeID	8
2553	OrderDate	1997-03-27
2553	RequiredDate	1997-04-24
2553	ShippedDate	1997-04-02
2553	ShipVia	2
2553	Freight	4.93
2553	ShipName	Frankenversand
2553	ShipAddress	Berliner Platz 43
2553	ShipCity	München
2553	ShipPostalCode	80805
2553	ShipCountry	Germany
2554	OrderID	10489
2554	CustomerID	PICCO
2554	EmployeeID	6
2554	OrderDate	1997-03-28
2554	RequiredDate	1997-04-25
2554	ShippedDate	1997-04-09
2554	ShipVia	2
2554	Freight	5.29
2554	ShipName	Piccolo und mehr
2554	ShipAddress	Geislweg 14
2554	ShipCity	Salzburg
2554	ShipPostalCode	5020
2554	ShipCountry	Austria
2555	OrderID	10490
2555	CustomerID	HILAA
2555	EmployeeID	7
2555	OrderDate	1997-03-31
2555	RequiredDate	1997-04-28
2555	ShippedDate	1997-04-03
2555	ShipVia	2
2555	Freight	210.19
2555	ShipName	HILARION-Abastos
2555	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2555	ShipCity	San Cristóbal
2555	ShipRegion	Táchira
2555	ShipPostalCode	5022
2555	ShipCountry	Venezuela
2556	OrderID	10491
2556	CustomerID	FURIB
2556	EmployeeID	8
2556	OrderDate	1997-03-31
2556	RequiredDate	1997-04-28
2556	ShippedDate	1997-04-08
2556	ShipVia	3
2556	Freight	16.96
2556	ShipName	Furia Bacalhau e Frutos do Mar
2556	ShipAddress	Jardim das rosas n. 32
2556	ShipCity	Lisboa
2556	ShipPostalCode	1675
2556	ShipCountry	Portugal
2557	OrderID	10492
2557	CustomerID	BOTTM
2557	EmployeeID	3
2557	OrderDate	1997-04-01
2557	RequiredDate	1997-04-29
2557	ShippedDate	1997-04-11
2557	ShipVia	1
2557	Freight	62.89
2557	ShipName	Bottom-Dollar Markets
2557	ShipAddress	23 Tsawassen Blvd.
2557	ShipCity	Tsawassen
2557	ShipRegion	BC
2557	ShipPostalCode	T2F 8M4
2557	ShipCountry	Canada
2558	OrderID	10493
2558	CustomerID	LAMAI
2558	EmployeeID	4
2558	OrderDate	1997-04-02
2558	RequiredDate	1997-04-30
2558	ShippedDate	1997-04-10
2558	ShipVia	3
2558	Freight	10.64
2558	ShipName	La maison d'Asie
2558	ShipAddress	1 rue Alsace-Lorraine
2558	ShipCity	Toulouse
2558	ShipPostalCode	31000
2558	ShipCountry	France
2559	OrderID	10494
2559	CustomerID	COMMI
2559	EmployeeID	4
2559	OrderDate	1997-04-02
2559	RequiredDate	1997-04-30
2559	ShippedDate	1997-04-09
2559	ShipVia	2
2559	Freight	65.99
2559	ShipName	Comércio Mineiro
2559	ShipAddress	Av. dos Lusíadas, 23
2559	ShipCity	Sao Paulo
2559	ShipRegion	SP
2559	ShipPostalCode	05432-043
2559	ShipCountry	Brazil
2560	OrderID	10495
2560	CustomerID	LAUGB
2560	EmployeeID	3
2560	OrderDate	1997-04-03
2560	RequiredDate	1997-05-01
2560	ShippedDate	1997-04-11
2560	ShipVia	3
2560	Freight	4.65
2560	ShipName	Laughing Bacchus Wine Cellars
2560	ShipAddress	2319 Elm St.
2560	ShipCity	Vancouver
2560	ShipRegion	BC
2560	ShipPostalCode	V3F 2K1
2560	ShipCountry	Canada
2561	OrderID	10496
2561	CustomerID	TRADH
2561	EmployeeID	7
2561	OrderDate	1997-04-04
2561	RequiredDate	1997-05-02
2561	ShippedDate	1997-04-07
2561	ShipVia	2
2561	Freight	46.77
2561	ShipName	Tradiçao Hipermercados
2561	ShipAddress	Av. Inês de Castro, 414
2561	ShipCity	Sao Paulo
2561	ShipRegion	SP
2561	ShipPostalCode	05634-030
2561	ShipCountry	Brazil
2562	OrderID	10497
2562	CustomerID	LEHMS
2562	EmployeeID	7
2562	OrderDate	1997-04-04
2562	RequiredDate	1997-05-02
2562	ShippedDate	1997-04-07
2562	ShipVia	1
2562	Freight	36.21
2562	ShipName	Lehmanns Marktstand
2562	ShipAddress	Magazinweg 7
2562	ShipCity	Frankfurt a.M.
2562	ShipPostalCode	60528
2562	ShipCountry	Germany
2563	OrderID	10498
2563	CustomerID	HILAA
2563	EmployeeID	8
2563	OrderDate	1997-04-07
2563	RequiredDate	1997-05-05
2563	ShippedDate	1997-04-11
2563	ShipVia	2
2563	Freight	29.75
2563	ShipName	HILARION-Abastos
2563	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2563	ShipCity	San Cristóbal
2563	ShipRegion	Táchira
2563	ShipPostalCode	5022
2563	ShipCountry	Venezuela
2564	OrderID	10499
2564	CustomerID	LILAS
2564	EmployeeID	4
2564	OrderDate	1997-04-08
2564	RequiredDate	1997-05-06
2564	ShippedDate	1997-04-16
2564	ShipVia	2
2564	Freight	102.02
2564	ShipName	LILA-Supermercado
2564	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2564	ShipCity	Barquisimeto
2564	ShipRegion	Lara
2564	ShipPostalCode	3508
2564	ShipCountry	Venezuela
2565	OrderID	10500
2565	CustomerID	LAMAI
2565	EmployeeID	6
2565	OrderDate	1997-04-09
2565	RequiredDate	1997-05-07
2565	ShippedDate	1997-04-17
2565	ShipVia	1
2565	Freight	42.68
2565	ShipName	La maison d'Asie
2565	ShipAddress	1 rue Alsace-Lorraine
2565	ShipCity	Toulouse
2565	ShipPostalCode	31000
2565	ShipCountry	France
2566	OrderID	10501
2566	CustomerID	BLAUS
2566	EmployeeID	9
2566	OrderDate	1997-04-09
2566	RequiredDate	1997-05-07
2566	ShippedDate	1997-04-16
2566	ShipVia	3
2566	Freight	8.85
2566	ShipName	Blauer See Delikatessen
2566	ShipAddress	Forsterstr. 57
2566	ShipCity	Mannheim
2566	ShipPostalCode	68306
2566	ShipCountry	Germany
2567	OrderID	10502
2567	CustomerID	PERIC
2567	EmployeeID	2
2567	OrderDate	1997-04-10
2567	RequiredDate	1997-05-08
2567	ShippedDate	1997-04-29
2567	ShipVia	1
2567	Freight	69.32
2567	ShipName	Pericles Comidas clásicas
2567	ShipAddress	Calle Dr. Jorge Cash 321
2567	ShipCity	México D.F.
2567	ShipPostalCode	05033
2567	ShipCountry	Mexico
2568	OrderID	10503
2568	CustomerID	HUNGO
2568	EmployeeID	6
2568	OrderDate	1997-04-11
2568	RequiredDate	1997-05-09
2568	ShippedDate	1997-04-16
2568	ShipVia	2
2568	Freight	16.74
2568	ShipName	Hungry Owl All-Night Grocers
2568	ShipAddress	8 Johnstown Road
2568	ShipCity	Cork
2568	ShipRegion	Co. Cork
2568	ShipCountry	Ireland
2569	OrderID	10504
2569	CustomerID	WHITC
2569	EmployeeID	4
2569	OrderDate	1997-04-11
2569	RequiredDate	1997-05-09
2569	ShippedDate	1997-04-18
2569	ShipVia	3
2569	Freight	59.13
2569	ShipName	White Clover Markets
2569	ShipAddress	1029 - 12th Ave. S.
2569	ShipCity	Seattle
2569	ShipRegion	WA
2569	ShipPostalCode	98124
2569	ShipCountry	USA
2570	OrderID	10505
2570	CustomerID	MEREP
2570	EmployeeID	3
2570	OrderDate	1997-04-14
2570	RequiredDate	1997-05-12
2570	ShippedDate	1997-04-21
2570	ShipVia	3
2570	Freight	7.13
2570	ShipName	Mère Paillarde
2570	ShipAddress	43 rue St. Laurent
2570	ShipCity	Montréal
2570	ShipRegion	Québec
2570	ShipPostalCode	H1J 1C3
2570	ShipCountry	Canada
2571	OrderID	10506
2571	CustomerID	KOENE
2571	EmployeeID	9
2571	OrderDate	1997-04-15
2571	RequiredDate	1997-05-13
2571	ShippedDate	1997-05-02
2571	ShipVia	2
2571	Freight	21.19
2571	ShipName	Königlich Essen
2571	ShipAddress	Maubelstr. 90
2571	ShipCity	Brandenburg
2571	ShipPostalCode	14776
2571	ShipCountry	Germany
2572	OrderID	10507
2572	CustomerID	ANTON
2572	EmployeeID	7
2572	OrderDate	1997-04-15
2572	RequiredDate	1997-05-13
2572	ShippedDate	1997-04-22
2572	ShipVia	1
2572	Freight	47.45
2572	ShipName	Antonio Moreno Taquería
2572	ShipAddress	Mataderos  2312
2572	ShipCity	México D.F.
2572	ShipPostalCode	05023
2572	ShipCountry	Mexico
2573	OrderID	10508
2573	CustomerID	OTTIK
2573	EmployeeID	1
2573	OrderDate	1997-04-16
2573	RequiredDate	1997-05-14
2573	ShippedDate	1997-05-13
2573	ShipVia	2
2573	Freight	4.99
2573	ShipName	Ottilies Käseladen
2573	ShipAddress	Mehrheimerstr. 369
2573	ShipCity	Köln
2573	ShipPostalCode	50739
2573	ShipCountry	Germany
2574	OrderID	10509
2574	CustomerID	BLAUS
2574	EmployeeID	4
2574	OrderDate	1997-04-17
2574	RequiredDate	1997-05-15
2574	ShippedDate	1997-04-29
2574	ShipVia	1
2574	Freight	0.15
2574	ShipName	Blauer See Delikatessen
2574	ShipAddress	Forsterstr. 57
2574	ShipCity	Mannheim
2574	ShipPostalCode	68306
2574	ShipCountry	Germany
2575	OrderID	10510
2575	CustomerID	SAVEA
2575	EmployeeID	6
2575	OrderDate	1997-04-18
2575	RequiredDate	1997-05-16
2575	ShippedDate	1997-04-28
2575	ShipVia	3
2575	Freight	367.63
2575	ShipName	Save-a-lot Markets
2575	ShipAddress	187 Suffolk Ln.
2575	ShipCity	Boise
2575	ShipRegion	ID
2575	ShipPostalCode	83720
2575	ShipCountry	USA
2576	OrderID	10511
2576	CustomerID	BONAP
2576	EmployeeID	4
2576	OrderDate	1997-04-18
2576	RequiredDate	1997-05-16
2576	ShippedDate	1997-04-21
2576	ShipVia	3
2576	Freight	350.64
2576	ShipName	Bon app'
2576	ShipAddress	12, rue des Bouchers
2576	ShipCity	Marseille
2576	ShipPostalCode	13008
2576	ShipCountry	France
2577	OrderID	10512
2577	CustomerID	FAMIA
2577	EmployeeID	7
2577	OrderDate	1997-04-21
2577	RequiredDate	1997-05-19
2577	ShippedDate	1997-04-24
2577	ShipVia	2
2577	Freight	3.53
2577	ShipName	Familia Arquibaldo
2577	ShipAddress	Rua Orós, 92
2577	ShipCity	Sao Paulo
2577	ShipRegion	SP
2577	ShipPostalCode	05442-030
2577	ShipCountry	Brazil
2578	OrderID	10513
2578	CustomerID	WANDK
2578	EmployeeID	7
2578	OrderDate	1997-04-22
2578	RequiredDate	1997-06-03
2578	ShippedDate	1997-04-28
2578	ShipVia	1
2578	Freight	105.65
2578	ShipName	Die Wandernde Kuh
2578	ShipAddress	Adenauerallee 900
2578	ShipCity	Stuttgart
2578	ShipPostalCode	70563
2578	ShipCountry	Germany
2579	OrderID	10514
2579	CustomerID	ERNSH
2579	EmployeeID	3
2579	OrderDate	1997-04-22
2579	RequiredDate	1997-05-20
2579	ShippedDate	1997-05-16
2579	ShipVia	2
2579	Freight	789.95
2579	ShipName	Ernst Handel
2579	ShipAddress	Kirchgasse 6
2579	ShipCity	Graz
2579	ShipPostalCode	8010
2579	ShipCountry	Austria
2580	OrderID	10515
2580	CustomerID	QUICK
2580	EmployeeID	2
2580	OrderDate	1997-04-23
2580	RequiredDate	1997-05-07
2580	ShippedDate	1997-05-23
2580	ShipVia	1
2580	Freight	204.47
2580	ShipName	QUICK-Stop
2580	ShipAddress	Taucherstraße 10
2580	ShipCity	Cunewalde
2580	ShipPostalCode	01307
2580	ShipCountry	Germany
2581	OrderID	10516
2581	CustomerID	HUNGO
2581	EmployeeID	2
2581	OrderDate	1997-04-24
2581	RequiredDate	1997-05-22
2581	ShippedDate	1997-05-01
2581	ShipVia	3
2581	Freight	62.78
2581	ShipName	Hungry Owl All-Night Grocers
2581	ShipAddress	8 Johnstown Road
2581	ShipCity	Cork
2581	ShipRegion	Co. Cork
2581	ShipCountry	Ireland
2582	OrderID	10517
2582	CustomerID	NORTS
2582	EmployeeID	3
2582	OrderDate	1997-04-24
2582	RequiredDate	1997-05-22
2582	ShippedDate	1997-04-29
2582	ShipVia	3
2582	Freight	32.07
2582	ShipName	North/South
2582	ShipAddress	South House 300 Queensbridge
2582	ShipCity	London
2582	ShipPostalCode	SW7 1RZ
2582	ShipCountry	UK
2583	OrderID	10518
2583	CustomerID	TORTU
2583	EmployeeID	4
2583	OrderDate	1997-04-25
2583	RequiredDate	1997-05-09
2583	ShippedDate	1997-05-05
2583	ShipVia	2
2583	Freight	218.15
2583	ShipName	Tortuga Restaurante
2583	ShipAddress	Avda. Azteca 123
2583	ShipCity	México D.F.
2583	ShipPostalCode	05033
2583	ShipCountry	Mexico
2584	OrderID	10519
2584	CustomerID	CHOPS
2584	EmployeeID	6
2584	OrderDate	1997-04-28
2584	RequiredDate	1997-05-26
2584	ShippedDate	1997-05-01
2584	ShipVia	3
2584	Freight	91.76
2584	ShipName	Chop-suey Chinese
2584	ShipAddress	Hauptstr. 31
2584	ShipCity	Bern
2584	ShipPostalCode	3012
2584	ShipCountry	Switzerland
2585	OrderID	10520
2585	CustomerID	SANTG
2585	EmployeeID	7
2585	OrderDate	1997-04-29
2585	RequiredDate	1997-05-27
2585	ShippedDate	1997-05-01
2585	ShipVia	1
2585	Freight	13.37
2585	ShipName	Santé Gourmet
2585	ShipAddress	Erling Skakkes gate 78
2585	ShipCity	Stavern
2585	ShipPostalCode	4110
2585	ShipCountry	Norway
2586	OrderID	10521
2586	CustomerID	CACTU
2586	EmployeeID	8
2586	OrderDate	1997-04-29
2586	RequiredDate	1997-05-27
2586	ShippedDate	1997-05-02
2586	ShipVia	2
2586	Freight	17.22
2586	ShipName	Cactus Comidas para llevar
2586	ShipAddress	Cerrito 333
2586	ShipCity	Buenos Aires
2586	ShipPostalCode	1010
2586	ShipCountry	Argentina
2587	OrderID	10522
2587	CustomerID	LEHMS
2587	EmployeeID	4
2587	OrderDate	1997-04-30
2587	RequiredDate	1997-05-28
2587	ShippedDate	1997-05-06
2587	ShipVia	1
2587	Freight	45.33
2587	ShipName	Lehmanns Marktstand
2587	ShipAddress	Magazinweg 7
2587	ShipCity	Frankfurt a.M.
2587	ShipPostalCode	60528
2587	ShipCountry	Germany
2588	OrderID	10523
2588	CustomerID	SEVES
2588	EmployeeID	7
2588	OrderDate	1997-05-01
2588	RequiredDate	1997-05-29
2588	ShippedDate	1997-05-30
2588	ShipVia	2
2588	Freight	77.63
2588	ShipName	Seven Seas Imports
2588	ShipAddress	90 Wadhurst Rd.
2588	ShipCity	London
2588	ShipPostalCode	OX15 4NB
2588	ShipCountry	UK
2589	OrderID	10524
2589	CustomerID	BERGS
2589	EmployeeID	1
2589	OrderDate	1997-05-01
2589	RequiredDate	1997-05-29
2589	ShippedDate	1997-05-07
2589	ShipVia	2
2589	Freight	244.79
2589	ShipName	Berglunds snabbköp
2589	ShipAddress	Berguvsvägen  8
2589	ShipCity	Luleå
2589	ShipPostalCode	S-958 22
2589	ShipCountry	Sweden
2590	OrderID	10525
2590	CustomerID	BONAP
2590	EmployeeID	1
2590	OrderDate	1997-05-02
2590	RequiredDate	1997-05-30
2590	ShippedDate	1997-05-23
2590	ShipVia	2
2590	Freight	11.06
2590	ShipName	Bon app'
2590	ShipAddress	12, rue des Bouchers
2590	ShipCity	Marseille
2590	ShipPostalCode	13008
2590	ShipCountry	France
2591	OrderID	10526
2591	CustomerID	WARTH
2591	EmployeeID	4
2591	OrderDate	1997-05-05
2591	RequiredDate	1997-06-02
2591	ShippedDate	1997-05-15
2591	ShipVia	2
2591	Freight	58.59
2591	ShipName	Wartian Herkku
2591	ShipAddress	Torikatu 38
2591	ShipCity	Oulu
2591	ShipPostalCode	90110
2591	ShipCountry	Finland
2592	OrderID	10527
2592	CustomerID	QUICK
2592	EmployeeID	7
2592	OrderDate	1997-05-05
2592	RequiredDate	1997-06-02
2592	ShippedDate	1997-05-07
2592	ShipVia	1
2592	Freight	41.9
2592	ShipName	QUICK-Stop
2592	ShipAddress	Taucherstraße 10
2592	ShipCity	Cunewalde
2592	ShipPostalCode	01307
2592	ShipCountry	Germany
2593	OrderID	10528
2593	CustomerID	GREAL
2593	EmployeeID	6
2593	OrderDate	1997-05-06
2593	RequiredDate	1997-05-20
2593	ShippedDate	1997-05-09
2593	ShipVia	2
2593	Freight	3.35
2593	ShipName	Great Lakes Food Market
2593	ShipAddress	2732 Baker Blvd.
2593	ShipCity	Eugene
2593	ShipRegion	OR
2593	ShipPostalCode	97403
2593	ShipCountry	USA
2594	OrderID	10529
2594	CustomerID	MAISD
2594	EmployeeID	5
2594	OrderDate	1997-05-07
2594	RequiredDate	1997-06-04
2594	ShippedDate	1997-05-09
2594	ShipVia	2
2594	Freight	66.69
2594	ShipName	Maison Dewey
2594	ShipAddress	Rue Joseph-Bens 532
2594	ShipCity	Bruxelles
2594	ShipPostalCode	B-1180
2594	ShipCountry	Belgium
2595	OrderID	10530
2595	CustomerID	PICCO
2595	EmployeeID	3
2595	OrderDate	1997-05-08
2595	RequiredDate	1997-06-05
2595	ShippedDate	1997-05-12
2595	ShipVia	2
2595	Freight	339.22
2595	ShipName	Piccolo und mehr
2595	ShipAddress	Geislweg 14
2595	ShipCity	Salzburg
2595	ShipPostalCode	5020
2595	ShipCountry	Austria
2596	OrderID	10531
2596	CustomerID	OCEAN
2596	EmployeeID	7
2596	OrderDate	1997-05-08
2596	RequiredDate	1997-06-05
2596	ShippedDate	1997-05-19
2596	ShipVia	1
2596	Freight	8.12
2596	ShipName	Océano Atlántico Ltda.
2596	ShipAddress	Ing. Gustavo Moncada 8585 Piso 20-A
2596	ShipCity	Buenos Aires
2596	ShipPostalCode	1010
2596	ShipCountry	Argentina
2597	OrderID	10532
2597	CustomerID	EASTC
2597	EmployeeID	7
2597	OrderDate	1997-05-09
2597	RequiredDate	1997-06-06
2597	ShippedDate	1997-05-12
2597	ShipVia	3
2597	Freight	74.46
2597	ShipName	Eastern Connection
2597	ShipAddress	35 King George
2597	ShipCity	London
2597	ShipPostalCode	WX3 6FW
2597	ShipCountry	UK
2598	OrderID	10533
2598	CustomerID	FOLKO
2598	EmployeeID	8
2598	OrderDate	1997-05-12
2598	RequiredDate	1997-06-09
2598	ShippedDate	1997-05-22
2598	ShipVia	1
2598	Freight	188.04
2598	ShipName	Folk och fä HB
2598	ShipAddress	Åkergatan 24
2598	ShipCity	Bräcke
2598	ShipPostalCode	S-844 67
2598	ShipCountry	Sweden
2599	OrderID	10534
2599	CustomerID	LEHMS
2599	EmployeeID	8
2599	OrderDate	1997-05-12
2599	RequiredDate	1997-06-09
2599	ShippedDate	1997-05-14
2599	ShipVia	2
2599	Freight	27.94
2599	ShipName	Lehmanns Marktstand
2599	ShipAddress	Magazinweg 7
2599	ShipCity	Frankfurt a.M.
2599	ShipPostalCode	60528
2599	ShipCountry	Germany
2600	OrderID	10535
2600	CustomerID	ANTON
2600	EmployeeID	4
2600	OrderDate	1997-05-13
2600	RequiredDate	1997-06-10
2600	ShippedDate	1997-05-21
2600	ShipVia	1
2600	Freight	15.64
2600	ShipName	Antonio Moreno Taquería
2600	ShipAddress	Mataderos  2312
2600	ShipCity	México D.F.
2600	ShipPostalCode	05023
2600	ShipCountry	Mexico
2601	OrderID	10536
2601	CustomerID	LEHMS
2601	EmployeeID	3
2601	OrderDate	1997-05-14
2601	RequiredDate	1997-06-11
2601	ShippedDate	1997-06-06
2601	ShipVia	2
2601	Freight	58.88
2601	ShipName	Lehmanns Marktstand
2601	ShipAddress	Magazinweg 7
2601	ShipCity	Frankfurt a.M.
2601	ShipPostalCode	60528
2601	ShipCountry	Germany
2602	OrderID	10537
2602	CustomerID	RICSU
2602	EmployeeID	1
2602	OrderDate	1997-05-14
2602	RequiredDate	1997-05-28
2602	ShippedDate	1997-05-19
2602	ShipVia	1
2602	Freight	78.85
2602	ShipName	Richter Supermarkt
2602	ShipAddress	Starenweg 5
2602	ShipCity	Genève
2602	ShipPostalCode	1204
2602	ShipCountry	Switzerland
2603	OrderID	10538
2603	CustomerID	BSBEV
2603	EmployeeID	9
2603	OrderDate	1997-05-15
2603	RequiredDate	1997-06-12
2603	ShippedDate	1997-05-16
2603	ShipVia	3
2603	Freight	4.87
2603	ShipName	B's Beverages
2603	ShipAddress	Fauntleroy Circus
2603	ShipCity	London
2603	ShipPostalCode	EC2 5NT
2603	ShipCountry	UK
2604	OrderID	10539
2604	CustomerID	BSBEV
2604	EmployeeID	6
2604	OrderDate	1997-05-16
2604	RequiredDate	1997-06-13
2604	ShippedDate	1997-05-23
2604	ShipVia	3
2604	Freight	12.36
2604	ShipName	B's Beverages
2604	ShipAddress	Fauntleroy Circus
2604	ShipCity	London
2604	ShipPostalCode	EC2 5NT
2604	ShipCountry	UK
2605	OrderID	10540
2605	CustomerID	QUICK
2605	EmployeeID	3
2605	OrderDate	1997-05-19
2605	RequiredDate	1997-06-16
2605	ShippedDate	1997-06-13
2605	ShipVia	3
2605	Freight	1007.64
2605	ShipName	QUICK-Stop
2605	ShipAddress	Taucherstraße 10
2605	ShipCity	Cunewalde
2605	ShipPostalCode	01307
2605	ShipCountry	Germany
2606	OrderID	10541
2606	CustomerID	HANAR
2606	EmployeeID	2
2606	OrderDate	1997-05-19
2606	RequiredDate	1997-06-16
2606	ShippedDate	1997-05-29
2606	ShipVia	1
2606	Freight	68.65
2606	ShipName	Hanari Carnes
2606	ShipAddress	Rua do Paço, 67
2606	ShipCity	Rio de Janeiro
2606	ShipRegion	RJ
2606	ShipPostalCode	05454-876
2606	ShipCountry	Brazil
2607	OrderID	10542
2607	CustomerID	KOENE
2607	EmployeeID	1
2607	OrderDate	1997-05-20
2607	RequiredDate	1997-06-17
2607	ShippedDate	1997-05-26
2607	ShipVia	3
2607	Freight	10.95
2607	ShipName	Königlich Essen
2607	ShipAddress	Maubelstr. 90
2607	ShipCity	Brandenburg
2607	ShipPostalCode	14776
2607	ShipCountry	Germany
2608	OrderID	10543
2608	CustomerID	LILAS
2608	EmployeeID	8
2608	OrderDate	1997-05-21
2608	RequiredDate	1997-06-18
2608	ShippedDate	1997-05-23
2608	ShipVia	2
2608	Freight	48.17
2608	ShipName	LILA-Supermercado
2608	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2608	ShipCity	Barquisimeto
2608	ShipRegion	Lara
2608	ShipPostalCode	3508
2608	ShipCountry	Venezuela
2609	OrderID	10544
2609	CustomerID	LONEP
2609	EmployeeID	4
2609	OrderDate	1997-05-21
2609	RequiredDate	1997-06-18
2609	ShippedDate	1997-05-30
2609	ShipVia	1
2609	Freight	24.91
2609	ShipName	Lonesome Pine Restaurant
2609	ShipAddress	89 Chiaroscuro Rd.
2609	ShipCity	Portland
2609	ShipRegion	OR
2609	ShipPostalCode	97219
2609	ShipCountry	USA
2610	OrderID	10545
2610	CustomerID	LAZYK
2610	EmployeeID	8
2610	OrderDate	1997-05-22
2610	RequiredDate	1997-06-19
2610	ShippedDate	1997-06-26
2610	ShipVia	2
2610	Freight	11.92
2610	ShipName	Lazy K Kountry Store
2610	ShipAddress	12 Orchestra Terrace
2610	ShipCity	Walla Walla
2610	ShipRegion	WA
2610	ShipPostalCode	99362
2610	ShipCountry	USA
2611	OrderID	10546
2611	CustomerID	VICTE
2611	EmployeeID	1
2611	OrderDate	1997-05-23
2611	RequiredDate	1997-06-20
2611	ShippedDate	1997-05-27
2611	ShipVia	3
2611	Freight	194.72
2611	ShipName	Victuailles en stock
2611	ShipAddress	2, rue du Commerce
2611	ShipCity	Lyon
2611	ShipPostalCode	69004
2611	ShipCountry	France
2612	OrderID	10547
2612	CustomerID	SEVES
2612	EmployeeID	3
2612	OrderDate	1997-05-23
2612	RequiredDate	1997-06-20
2612	ShippedDate	1997-06-02
2612	ShipVia	2
2612	Freight	178.43
2612	ShipName	Seven Seas Imports
2612	ShipAddress	90 Wadhurst Rd.
2612	ShipCity	London
2612	ShipPostalCode	OX15 4NB
2612	ShipCountry	UK
2613	OrderID	10548
2613	CustomerID	TOMSP
2613	EmployeeID	3
2613	OrderDate	1997-05-26
2613	RequiredDate	1997-06-23
2613	ShippedDate	1997-06-02
2613	ShipVia	2
2613	Freight	1.43
2613	ShipName	Toms Spezialitäten
2613	ShipAddress	Luisenstr. 48
2613	ShipCity	Münster
2613	ShipPostalCode	44087
2613	ShipCountry	Germany
2614	OrderID	10549
2614	CustomerID	QUICK
2614	EmployeeID	5
2614	OrderDate	1997-05-27
2614	RequiredDate	1997-06-10
2614	ShippedDate	1997-05-30
2614	ShipVia	1
2614	Freight	171.24
2614	ShipName	QUICK-Stop
2614	ShipAddress	Taucherstraße 10
2614	ShipCity	Cunewalde
2614	ShipPostalCode	01307
2614	ShipCountry	Germany
2615	OrderID	10550
2615	CustomerID	GODOS
2615	EmployeeID	7
2615	OrderDate	1997-05-28
2615	RequiredDate	1997-06-25
2615	ShippedDate	1997-06-06
2615	ShipVia	3
2615	Freight	4.32
2615	ShipName	Godos Cocina Típica
2615	ShipAddress	C/ Romero, 33
2615	ShipCity	Sevilla
2615	ShipPostalCode	41101
2615	ShipCountry	Spain
2616	OrderID	10551
2616	CustomerID	FURIB
2616	EmployeeID	4
2616	OrderDate	1997-05-28
2616	RequiredDate	1997-07-09
2616	ShippedDate	1997-06-06
2616	ShipVia	3
2616	Freight	72.95
2616	ShipName	Furia Bacalhau e Frutos do Mar
2616	ShipAddress	Jardim das rosas n. 32
2616	ShipCity	Lisboa
2616	ShipPostalCode	1675
2616	ShipCountry	Portugal
2617	OrderID	10552
2617	CustomerID	HILAA
2617	EmployeeID	2
2617	OrderDate	1997-05-29
2617	RequiredDate	1997-06-26
2617	ShippedDate	1997-06-05
2617	ShipVia	1
2617	Freight	83.22
2617	ShipName	HILARION-Abastos
2617	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2617	ShipCity	San Cristóbal
2617	ShipRegion	Táchira
2617	ShipPostalCode	5022
2617	ShipCountry	Venezuela
2618	OrderID	10553
2618	CustomerID	WARTH
2618	EmployeeID	2
2618	OrderDate	1997-05-30
2618	RequiredDate	1997-06-27
2618	ShippedDate	1997-06-03
2618	ShipVia	2
2618	Freight	149.49
2618	ShipName	Wartian Herkku
2618	ShipAddress	Torikatu 38
2618	ShipCity	Oulu
2618	ShipPostalCode	90110
2618	ShipCountry	Finland
2619	OrderID	10554
2619	CustomerID	OTTIK
2619	EmployeeID	4
2619	OrderDate	1997-05-30
2619	RequiredDate	1997-06-27
2619	ShippedDate	1997-06-05
2619	ShipVia	3
2619	Freight	120.97
2619	ShipName	Ottilies Käseladen
2619	ShipAddress	Mehrheimerstr. 369
2619	ShipCity	Köln
2619	ShipPostalCode	50739
2619	ShipCountry	Germany
2620	OrderID	10555
2620	CustomerID	SAVEA
2620	EmployeeID	6
2620	OrderDate	1997-06-02
2620	RequiredDate	1997-06-30
2620	ShippedDate	1997-06-04
2620	ShipVia	3
2620	Freight	252.49
2620	ShipName	Save-a-lot Markets
2620	ShipAddress	187 Suffolk Ln.
2620	ShipCity	Boise
2620	ShipRegion	ID
2620	ShipPostalCode	83720
2620	ShipCountry	USA
2621	OrderID	10556
2621	CustomerID	SIMOB
2621	EmployeeID	2
2621	OrderDate	1997-06-03
2621	RequiredDate	1997-07-15
2621	ShippedDate	1997-06-13
2621	ShipVia	1
2621	Freight	9.8
2621	ShipName	Simons bistro
2621	ShipAddress	Vinbæltet 34
2621	ShipCity	Kobenhavn
2621	ShipPostalCode	1734
2621	ShipCountry	Denmark
2622	OrderID	10557
2622	CustomerID	LEHMS
2622	EmployeeID	9
2622	OrderDate	1997-06-03
2622	RequiredDate	1997-06-17
2622	ShippedDate	1997-06-06
2622	ShipVia	2
2622	Freight	96.72
2622	ShipName	Lehmanns Marktstand
2622	ShipAddress	Magazinweg 7
2622	ShipCity	Frankfurt a.M.
2622	ShipPostalCode	60528
2622	ShipCountry	Germany
2623	OrderID	10558
2623	CustomerID	AROUT
2623	EmployeeID	1
2623	OrderDate	1997-06-04
2623	RequiredDate	1997-07-02
2623	ShippedDate	1997-06-10
2623	ShipVia	2
2623	Freight	72.97
2623	ShipName	Around the Horn
2623	ShipAddress	Brook Farm Stratford St. Mary
2623	ShipCity	Colchester
2623	ShipRegion	Essex
2623	ShipPostalCode	CO7 6JX
2623	ShipCountry	UK
2624	OrderID	10559
2624	CustomerID	BLONP
2624	EmployeeID	6
2624	OrderDate	1997-06-05
2624	RequiredDate	1997-07-03
2624	ShippedDate	1997-06-13
2624	ShipVia	1
2624	Freight	8.05
2624	ShipName	Blondel père et fils
2624	ShipAddress	24, place Kléber
2624	ShipCity	Strasbourg
2624	ShipPostalCode	67000
2624	ShipCountry	France
2625	OrderID	10560
2625	CustomerID	FRANK
2625	EmployeeID	8
2625	OrderDate	1997-06-06
2625	RequiredDate	1997-07-04
2625	ShippedDate	1997-06-09
2625	ShipVia	1
2625	Freight	36.65
2625	ShipName	Frankenversand
2625	ShipAddress	Berliner Platz 43
2625	ShipCity	München
2625	ShipPostalCode	80805
2625	ShipCountry	Germany
2626	OrderID	10561
2626	CustomerID	FOLKO
2626	EmployeeID	2
2626	OrderDate	1997-06-06
2626	RequiredDate	1997-07-04
2626	ShippedDate	1997-06-09
2626	ShipVia	2
2626	Freight	242.21
2626	ShipName	Folk och fä HB
2626	ShipAddress	Åkergatan 24
2626	ShipCity	Bräcke
2626	ShipPostalCode	S-844 67
2626	ShipCountry	Sweden
2627	OrderID	10562
2627	CustomerID	REGGC
2627	EmployeeID	1
2627	OrderDate	1997-06-09
2627	RequiredDate	1997-07-07
2627	ShippedDate	1997-06-12
2627	ShipVia	1
2627	Freight	22.95
2627	ShipName	Reggiani Caseifici
2627	ShipAddress	Strada Provinciale 124
2627	ShipCity	Reggio Emilia
2627	ShipPostalCode	42100
2627	ShipCountry	Italy
2628	OrderID	10563
2628	CustomerID	RICAR
2628	EmployeeID	2
2628	OrderDate	1997-06-10
2628	RequiredDate	1997-07-22
2628	ShippedDate	1997-06-24
2628	ShipVia	2
2628	Freight	60.43
2628	ShipName	Ricardo Adocicados
2628	ShipAddress	Av. Copacabana, 267
2628	ShipCity	Rio de Janeiro
2628	ShipRegion	RJ
2628	ShipPostalCode	02389-890
2628	ShipCountry	Brazil
2629	OrderID	10564
2629	CustomerID	RATTC
2629	EmployeeID	4
2629	OrderDate	1997-06-10
2629	RequiredDate	1997-07-08
2629	ShippedDate	1997-06-16
2629	ShipVia	3
2629	Freight	13.75
2629	ShipName	Rattlesnake Canyon Grocery
2629	ShipAddress	2817 Milton Dr.
2629	ShipCity	Albuquerque
2629	ShipRegion	NM
2629	ShipPostalCode	87110
2629	ShipCountry	USA
2630	OrderID	10565
2630	CustomerID	MEREP
2630	EmployeeID	8
2630	OrderDate	1997-06-11
2630	RequiredDate	1997-07-09
2630	ShippedDate	1997-06-18
2630	ShipVia	2
2630	Freight	7.15
2630	ShipName	Mère Paillarde
2630	ShipAddress	43 rue St. Laurent
2630	ShipCity	Montréal
2630	ShipRegion	Québec
2630	ShipPostalCode	H1J 1C3
2630	ShipCountry	Canada
2631	OrderID	10566
2631	CustomerID	BLONP
2631	EmployeeID	9
2631	OrderDate	1997-06-12
2631	RequiredDate	1997-07-10
2631	ShippedDate	1997-06-18
2631	ShipVia	1
2631	Freight	88.4
2631	ShipName	Blondel père et fils
2631	ShipAddress	24, place Kléber
2631	ShipCity	Strasbourg
2631	ShipPostalCode	67000
2631	ShipCountry	France
2632	OrderID	10567
2632	CustomerID	HUNGO
2632	EmployeeID	1
2632	OrderDate	1997-06-12
2632	RequiredDate	1997-07-10
2632	ShippedDate	1997-06-17
2632	ShipVia	1
2632	Freight	33.97
2632	ShipName	Hungry Owl All-Night Grocers
2632	ShipAddress	8 Johnstown Road
2632	ShipCity	Cork
2632	ShipRegion	Co. Cork
2632	ShipCountry	Ireland
2633	OrderID	10568
2633	CustomerID	GALED
2633	EmployeeID	3
2633	OrderDate	1997-06-13
2633	RequiredDate	1997-07-11
2633	ShippedDate	1997-07-09
2633	ShipVia	3
2633	Freight	6.54
2633	ShipName	Galería del gastronómo
2633	ShipAddress	Rambla de Cataluña, 23
2633	ShipCity	Barcelona
2633	ShipPostalCode	8022
2633	ShipCountry	Spain
2634	OrderID	10569
2634	CustomerID	RATTC
2634	EmployeeID	5
2634	OrderDate	1997-06-16
2634	RequiredDate	1997-07-14
2634	ShippedDate	1997-07-11
2634	ShipVia	1
2634	Freight	58.98
2634	ShipName	Rattlesnake Canyon Grocery
2634	ShipAddress	2817 Milton Dr.
2634	ShipCity	Albuquerque
2634	ShipRegion	NM
2634	ShipPostalCode	87110
2634	ShipCountry	USA
2635	OrderID	10570
2635	CustomerID	MEREP
2635	EmployeeID	3
2635	OrderDate	1997-06-17
2635	RequiredDate	1997-07-15
2635	ShippedDate	1997-06-19
2635	ShipVia	3
2635	Freight	188.99
2635	ShipName	Mère Paillarde
2635	ShipAddress	43 rue St. Laurent
2635	ShipCity	Montréal
2635	ShipRegion	Québec
2635	ShipPostalCode	H1J 1C3
2635	ShipCountry	Canada
2636	OrderID	10571
2636	CustomerID	ERNSH
2636	EmployeeID	8
2636	OrderDate	1997-06-17
2636	RequiredDate	1997-07-29
2636	ShippedDate	1997-07-04
2636	ShipVia	3
2636	Freight	26.06
2636	ShipName	Ernst Handel
2636	ShipAddress	Kirchgasse 6
2636	ShipCity	Graz
2636	ShipPostalCode	8010
2636	ShipCountry	Austria
2637	OrderID	10572
2637	CustomerID	BERGS
2637	EmployeeID	3
2637	OrderDate	1997-06-18
2637	RequiredDate	1997-07-16
2637	ShippedDate	1997-06-25
2637	ShipVia	2
2637	Freight	116.43
2637	ShipName	Berglunds snabbköp
2637	ShipAddress	Berguvsvägen  8
2637	ShipCity	Luleå
2637	ShipPostalCode	S-958 22
2637	ShipCountry	Sweden
2638	OrderID	10573
2638	CustomerID	ANTON
2638	EmployeeID	7
2638	OrderDate	1997-06-19
2638	RequiredDate	1997-07-17
2638	ShippedDate	1997-06-20
2638	ShipVia	3
2638	Freight	84.84
2638	ShipName	Antonio Moreno Taquería
2638	ShipAddress	Mataderos  2312
2638	ShipCity	México D.F.
2638	ShipPostalCode	05023
2638	ShipCountry	Mexico
2639	OrderID	10574
2639	CustomerID	TRAIH
2639	EmployeeID	4
2639	OrderDate	1997-06-19
2639	RequiredDate	1997-07-17
2639	ShippedDate	1997-06-30
2639	ShipVia	2
2639	Freight	37.6
2639	ShipName	Trail's Head Gourmet Provisioners
2639	ShipAddress	722 DaVinci Blvd.
2639	ShipCity	Kirkland
2639	ShipRegion	WA
2639	ShipPostalCode	98034
2639	ShipCountry	USA
2640	OrderID	10575
2640	CustomerID	MORGK
2640	EmployeeID	5
2640	OrderDate	1997-06-20
2640	RequiredDate	1997-07-04
2640	ShippedDate	1997-06-30
2640	ShipVia	1
2640	Freight	127.34
2640	ShipName	Morgenstern Gesundkost
2640	ShipAddress	Heerstr. 22
2640	ShipCity	Leipzig
2640	ShipPostalCode	04179
2640	ShipCountry	Germany
2641	OrderID	10576
2641	CustomerID	TORTU
2641	EmployeeID	3
2641	OrderDate	1997-06-23
2641	RequiredDate	1997-07-07
2641	ShippedDate	1997-06-30
2641	ShipVia	3
2641	Freight	18.56
2641	ShipName	Tortuga Restaurante
2641	ShipAddress	Avda. Azteca 123
2641	ShipCity	México D.F.
2641	ShipPostalCode	05033
2641	ShipCountry	Mexico
2642	OrderID	10577
2642	CustomerID	TRAIH
2642	EmployeeID	9
2642	OrderDate	1997-06-23
2642	RequiredDate	1997-08-04
2642	ShippedDate	1997-06-30
2642	ShipVia	2
2642	Freight	25.41
2642	ShipName	Trail's Head Gourmet Provisioners
2642	ShipAddress	722 DaVinci Blvd.
2642	ShipCity	Kirkland
2642	ShipRegion	WA
2642	ShipPostalCode	98034
2642	ShipCountry	USA
2643	OrderID	10578
2643	CustomerID	BSBEV
2643	EmployeeID	4
2643	OrderDate	1997-06-24
2643	RequiredDate	1997-07-22
2643	ShippedDate	1997-07-25
2643	ShipVia	3
2643	Freight	29.6
2643	ShipName	B's Beverages
2643	ShipAddress	Fauntleroy Circus
2643	ShipCity	London
2643	ShipPostalCode	EC2 5NT
2643	ShipCountry	UK
2644	OrderID	10579
2644	CustomerID	LETSS
2644	EmployeeID	1
2644	OrderDate	1997-06-25
2644	RequiredDate	1997-07-23
2644	ShippedDate	1997-07-04
2644	ShipVia	2
2644	Freight	13.73
2644	ShipName	Let's Stop N Shop
2644	ShipAddress	87 Polk St. Suite 5
2644	ShipCity	San Francisco
2644	ShipRegion	CA
2644	ShipPostalCode	94117
2644	ShipCountry	USA
2645	OrderID	10580
2645	CustomerID	OTTIK
2645	EmployeeID	4
2645	OrderDate	1997-06-26
2645	RequiredDate	1997-07-24
2645	ShippedDate	1997-07-01
2645	ShipVia	3
2645	Freight	75.89
2645	ShipName	Ottilies Käseladen
2645	ShipAddress	Mehrheimerstr. 369
2645	ShipCity	Köln
2645	ShipPostalCode	50739
2645	ShipCountry	Germany
2646	OrderID	10581
2646	CustomerID	FAMIA
2646	EmployeeID	3
2646	OrderDate	1997-06-26
2646	RequiredDate	1997-07-24
2646	ShippedDate	1997-07-02
2646	ShipVia	1
2646	Freight	3.01
2646	ShipName	Familia Arquibaldo
2646	ShipAddress	Rua Orós, 92
2646	ShipCity	Sao Paulo
2646	ShipRegion	SP
2646	ShipPostalCode	05442-030
2646	ShipCountry	Brazil
2647	OrderID	10582
2647	CustomerID	BLAUS
2647	EmployeeID	3
2647	OrderDate	1997-06-27
2647	RequiredDate	1997-07-25
2647	ShippedDate	1997-07-14
2647	ShipVia	2
2647	Freight	27.71
2647	ShipName	Blauer See Delikatessen
2647	ShipAddress	Forsterstr. 57
2647	ShipCity	Mannheim
2647	ShipPostalCode	68306
2647	ShipCountry	Germany
2648	OrderID	10583
2648	CustomerID	WARTH
2648	EmployeeID	2
2648	OrderDate	1997-06-30
2648	RequiredDate	1997-07-28
2648	ShippedDate	1997-07-04
2648	ShipVia	2
2648	Freight	7.28
2648	ShipName	Wartian Herkku
2648	ShipAddress	Torikatu 38
2648	ShipCity	Oulu
2648	ShipPostalCode	90110
2648	ShipCountry	Finland
2649	OrderID	10584
2649	CustomerID	BLONP
2649	EmployeeID	4
2649	OrderDate	1997-06-30
2649	RequiredDate	1997-07-28
2649	ShippedDate	1997-07-04
2649	ShipVia	1
2649	Freight	59.14
2649	ShipName	Blondel père et fils
2649	ShipAddress	24, place Kléber
2649	ShipCity	Strasbourg
2649	ShipPostalCode	67000
2649	ShipCountry	France
2650	OrderID	10585
2650	CustomerID	WELLI
2650	EmployeeID	7
2650	OrderDate	1997-07-01
2650	RequiredDate	1997-07-29
2650	ShippedDate	1997-07-10
2650	ShipVia	1
2650	Freight	13.41
2650	ShipName	Wellington Importadora
2650	ShipAddress	Rua do Mercado, 12
2650	ShipCity	Resende
2650	ShipRegion	SP
2650	ShipPostalCode	08737-363
2650	ShipCountry	Brazil
2651	OrderID	10586
2651	CustomerID	REGGC
2651	EmployeeID	9
2651	OrderDate	1997-07-02
2651	RequiredDate	1997-07-30
2651	ShippedDate	1997-07-09
2651	ShipVia	1
2651	Freight	0.48
2651	ShipName	Reggiani Caseifici
2651	ShipAddress	Strada Provinciale 124
2651	ShipCity	Reggio Emilia
2651	ShipPostalCode	42100
2651	ShipCountry	Italy
2652	OrderID	10587
2652	CustomerID	QUEDE
2652	EmployeeID	1
2652	OrderDate	1997-07-02
2652	RequiredDate	1997-07-30
2652	ShippedDate	1997-07-09
2652	ShipVia	1
2652	Freight	62.52
2652	ShipName	Que Delícia
2652	ShipAddress	Rua da Panificadora, 12
2652	ShipCity	Rio de Janeiro
2652	ShipRegion	RJ
2652	ShipPostalCode	02389-673
2652	ShipCountry	Brazil
2653	OrderID	10588
2653	CustomerID	QUICK
2653	EmployeeID	2
2653	OrderDate	1997-07-03
2653	RequiredDate	1997-07-31
2653	ShippedDate	1997-07-10
2653	ShipVia	3
2653	Freight	194.67
2653	ShipName	QUICK-Stop
2653	ShipAddress	Taucherstraße 10
2653	ShipCity	Cunewalde
2653	ShipPostalCode	01307
2653	ShipCountry	Germany
2654	OrderID	10589
2654	CustomerID	GREAL
2654	EmployeeID	8
2654	OrderDate	1997-07-04
2654	RequiredDate	1997-08-01
2654	ShippedDate	1997-07-14
2654	ShipVia	2
2654	Freight	4.42
2654	ShipName	Great Lakes Food Market
2654	ShipAddress	2732 Baker Blvd.
2654	ShipCity	Eugene
2654	ShipRegion	OR
2654	ShipPostalCode	97403
2654	ShipCountry	USA
2655	OrderID	10590
2655	CustomerID	MEREP
2655	EmployeeID	4
2655	OrderDate	1997-07-07
2655	RequiredDate	1997-08-04
2655	ShippedDate	1997-07-14
2655	ShipVia	3
2655	Freight	44.77
2655	ShipName	Mère Paillarde
2655	ShipAddress	43 rue St. Laurent
2655	ShipCity	Montréal
2655	ShipRegion	Québec
2655	ShipPostalCode	H1J 1C3
2655	ShipCountry	Canada
2656	OrderID	10591
2656	CustomerID	VAFFE
2656	EmployeeID	1
2656	OrderDate	1997-07-07
2656	RequiredDate	1997-07-21
2656	ShippedDate	1997-07-16
2656	ShipVia	1
2656	Freight	55.92
2656	ShipName	Vaffeljernet
2656	ShipAddress	Smagsloget 45
2656	ShipCity	Århus
2656	ShipPostalCode	8200
2656	ShipCountry	Denmark
2657	OrderID	10592
2657	CustomerID	LEHMS
2657	EmployeeID	3
2657	OrderDate	1997-07-08
2657	RequiredDate	1997-08-05
2657	ShippedDate	1997-07-16
2657	ShipVia	1
2657	Freight	32.1
2657	ShipName	Lehmanns Marktstand
2657	ShipAddress	Magazinweg 7
2657	ShipCity	Frankfurt a.M.
2657	ShipPostalCode	60528
2657	ShipCountry	Germany
2658	OrderID	10593
2658	CustomerID	LEHMS
2658	EmployeeID	7
2658	OrderDate	1997-07-09
2658	RequiredDate	1997-08-06
2658	ShippedDate	1997-08-13
2658	ShipVia	2
2658	Freight	174.2
2658	ShipName	Lehmanns Marktstand
2658	ShipAddress	Magazinweg 7
2658	ShipCity	Frankfurt a.M.
2658	ShipPostalCode	60528
2658	ShipCountry	Germany
2659	OrderID	10594
2659	CustomerID	OLDWO
2659	EmployeeID	3
2659	OrderDate	1997-07-09
2659	RequiredDate	1997-08-06
2659	ShippedDate	1997-07-16
2659	ShipVia	2
2659	Freight	5.24
2659	ShipName	Old World Delicatessen
2659	ShipAddress	2743 Bering St.
2659	ShipCity	Anchorage
2659	ShipRegion	AK
2659	ShipPostalCode	99508
2659	ShipCountry	USA
2660	OrderID	10595
2660	CustomerID	ERNSH
2660	EmployeeID	2
2660	OrderDate	1997-07-10
2660	RequiredDate	1997-08-07
2660	ShippedDate	1997-07-14
2660	ShipVia	1
2660	Freight	96.78
2660	ShipName	Ernst Handel
2660	ShipAddress	Kirchgasse 6
2660	ShipCity	Graz
2660	ShipPostalCode	8010
2660	ShipCountry	Austria
2661	OrderID	10596
2661	CustomerID	WHITC
2661	EmployeeID	8
2661	OrderDate	1997-07-11
2661	RequiredDate	1997-08-08
2661	ShippedDate	1997-08-12
2661	ShipVia	1
2661	Freight	16.34
2661	ShipName	White Clover Markets
2661	ShipAddress	1029 - 12th Ave. S.
2661	ShipCity	Seattle
2661	ShipRegion	WA
2661	ShipPostalCode	98124
2661	ShipCountry	USA
2662	OrderID	10597
2662	CustomerID	PICCO
2662	EmployeeID	7
2662	OrderDate	1997-07-11
2662	RequiredDate	1997-08-08
2662	ShippedDate	1997-07-18
2662	ShipVia	3
2662	Freight	35.12
2662	ShipName	Piccolo und mehr
2662	ShipAddress	Geislweg 14
2662	ShipCity	Salzburg
2662	ShipPostalCode	5020
2662	ShipCountry	Austria
2663	OrderID	10598
2663	CustomerID	RATTC
2663	EmployeeID	1
2663	OrderDate	1997-07-14
2663	RequiredDate	1997-08-11
2663	ShippedDate	1997-07-18
2663	ShipVia	3
2663	Freight	44.42
2663	ShipName	Rattlesnake Canyon Grocery
2663	ShipAddress	2817 Milton Dr.
2663	ShipCity	Albuquerque
2663	ShipRegion	NM
2663	ShipPostalCode	87110
2663	ShipCountry	USA
2664	OrderID	10599
2664	CustomerID	BSBEV
2664	EmployeeID	6
2664	OrderDate	1997-07-15
2664	RequiredDate	1997-08-26
2664	ShippedDate	1997-07-21
2664	ShipVia	3
2664	Freight	29.98
2664	ShipName	B's Beverages
2664	ShipAddress	Fauntleroy Circus
2664	ShipCity	London
2664	ShipPostalCode	EC2 5NT
2664	ShipCountry	UK
2665	OrderID	10600
2665	CustomerID	HUNGC
2665	EmployeeID	4
2665	OrderDate	1997-07-16
2665	RequiredDate	1997-08-13
2665	ShippedDate	1997-07-21
2665	ShipVia	1
2665	Freight	45.13
2665	ShipName	Hungry Coyote Import Store
2665	ShipAddress	City Center Plaza 516 Main St.
2665	ShipCity	Elgin
2665	ShipRegion	OR
2665	ShipPostalCode	97827
2665	ShipCountry	USA
2666	OrderID	10601
2666	CustomerID	HILAA
2666	EmployeeID	7
2666	OrderDate	1997-07-16
2666	RequiredDate	1997-08-27
2666	ShippedDate	1997-07-22
2666	ShipVia	1
2666	Freight	58.3
2666	ShipName	HILARION-Abastos
2666	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2666	ShipCity	San Cristóbal
2666	ShipRegion	Táchira
2666	ShipPostalCode	5022
2666	ShipCountry	Venezuela
2667	OrderID	10602
2667	CustomerID	VAFFE
2667	EmployeeID	8
2667	OrderDate	1997-07-17
2667	RequiredDate	1997-08-14
2667	ShippedDate	1997-07-22
2667	ShipVia	2
2667	Freight	2.92
2667	ShipName	Vaffeljernet
2667	ShipAddress	Smagsloget 45
2667	ShipCity	Århus
2667	ShipPostalCode	8200
2667	ShipCountry	Denmark
2668	OrderID	10603
2668	CustomerID	SAVEA
2668	EmployeeID	8
2668	OrderDate	1997-07-18
2668	RequiredDate	1997-08-15
2668	ShippedDate	1997-08-08
2668	ShipVia	2
2668	Freight	48.77
2668	ShipName	Save-a-lot Markets
2668	ShipAddress	187 Suffolk Ln.
2668	ShipCity	Boise
2668	ShipRegion	ID
2668	ShipPostalCode	83720
2668	ShipCountry	USA
2669	OrderID	10604
2669	CustomerID	FURIB
2669	EmployeeID	1
2669	OrderDate	1997-07-18
2669	RequiredDate	1997-08-15
2669	ShippedDate	1997-07-29
2669	ShipVia	1
2669	Freight	7.46
2669	ShipName	Furia Bacalhau e Frutos do Mar
2669	ShipAddress	Jardim das rosas n. 32
2669	ShipCity	Lisboa
2669	ShipPostalCode	1675
2669	ShipCountry	Portugal
2670	OrderID	10605
2670	CustomerID	MEREP
2670	EmployeeID	1
2670	OrderDate	1997-07-21
2670	RequiredDate	1997-08-18
2670	ShippedDate	1997-07-29
2670	ShipVia	2
2670	Freight	379.13
2670	ShipName	Mère Paillarde
2670	ShipAddress	43 rue St. Laurent
2670	ShipCity	Montréal
2670	ShipRegion	Québec
2670	ShipPostalCode	H1J 1C3
2670	ShipCountry	Canada
2671	OrderID	10606
2671	CustomerID	TRADH
2671	EmployeeID	4
2671	OrderDate	1997-07-22
2671	RequiredDate	1997-08-19
2671	ShippedDate	1997-07-31
2671	ShipVia	3
2671	Freight	79.4
2671	ShipName	Tradiçao Hipermercados
2671	ShipAddress	Av. Inês de Castro, 414
2671	ShipCity	Sao Paulo
2671	ShipRegion	SP
2671	ShipPostalCode	05634-030
2671	ShipCountry	Brazil
2672	OrderID	10607
2672	CustomerID	SAVEA
2672	EmployeeID	5
2672	OrderDate	1997-07-22
2672	RequiredDate	1997-08-19
2672	ShippedDate	1997-07-25
2672	ShipVia	1
2672	Freight	200.24
2672	ShipName	Save-a-lot Markets
2672	ShipAddress	187 Suffolk Ln.
2672	ShipCity	Boise
2672	ShipRegion	ID
2672	ShipPostalCode	83720
2672	ShipCountry	USA
2673	OrderID	10608
2673	CustomerID	TOMSP
2673	EmployeeID	4
2673	OrderDate	1997-07-23
2673	RequiredDate	1997-08-20
2673	ShippedDate	1997-08-01
2673	ShipVia	2
2673	Freight	27.79
2673	ShipName	Toms Spezialitäten
2673	ShipAddress	Luisenstr. 48
2673	ShipCity	Münster
2673	ShipPostalCode	44087
2673	ShipCountry	Germany
2674	OrderID	10609
2674	CustomerID	DUMON
2674	EmployeeID	7
2674	OrderDate	1997-07-24
2674	RequiredDate	1997-08-21
2674	ShippedDate	1997-07-30
2674	ShipVia	2
2674	Freight	1.85
2674	ShipName	Du monde entier
2674	ShipAddress	67, rue des Cinquante Otages
2674	ShipCity	Nantes
2674	ShipPostalCode	44000
2674	ShipCountry	France
2675	OrderID	10610
2675	CustomerID	LAMAI
2675	EmployeeID	8
2675	OrderDate	1997-07-25
2675	RequiredDate	1997-08-22
2675	ShippedDate	1997-08-06
2675	ShipVia	1
2675	Freight	26.78
2675	ShipName	La maison d'Asie
2675	ShipAddress	1 rue Alsace-Lorraine
2675	ShipCity	Toulouse
2675	ShipPostalCode	31000
2675	ShipCountry	France
2676	OrderID	10611
2676	CustomerID	WOLZA
2676	EmployeeID	6
2676	OrderDate	1997-07-25
2676	RequiredDate	1997-08-22
2676	ShippedDate	1997-08-01
2676	ShipVia	2
2676	Freight	80.65
2676	ShipName	Wolski Zajazd
2676	ShipAddress	ul. Filtrowa 68
2676	ShipCity	Warszawa
2676	ShipPostalCode	01-012
2676	ShipCountry	Poland
2677	OrderID	10612
2677	CustomerID	SAVEA
2677	EmployeeID	1
2677	OrderDate	1997-07-28
2677	RequiredDate	1997-08-25
2677	ShippedDate	1997-08-01
2677	ShipVia	2
2677	Freight	544.08
2677	ShipName	Save-a-lot Markets
2677	ShipAddress	187 Suffolk Ln.
2677	ShipCity	Boise
2677	ShipRegion	ID
2677	ShipPostalCode	83720
2677	ShipCountry	USA
2678	OrderID	10613
2678	CustomerID	HILAA
2678	EmployeeID	4
2678	OrderDate	1997-07-29
2678	RequiredDate	1997-08-26
2678	ShippedDate	1997-08-01
2678	ShipVia	2
2678	Freight	8.11
2678	ShipName	HILARION-Abastos
2678	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2678	ShipCity	San Cristóbal
2678	ShipRegion	Táchira
2678	ShipPostalCode	5022
2678	ShipCountry	Venezuela
2679	OrderID	10614
2679	CustomerID	BLAUS
2679	EmployeeID	8
2679	OrderDate	1997-07-29
2679	RequiredDate	1997-08-26
2679	ShippedDate	1997-08-01
2679	ShipVia	3
2679	Freight	1.93
2679	ShipName	Blauer See Delikatessen
2679	ShipAddress	Forsterstr. 57
2679	ShipCity	Mannheim
2679	ShipPostalCode	68306
2679	ShipCountry	Germany
2680	OrderID	10615
2680	CustomerID	WILMK
2680	EmployeeID	2
2680	OrderDate	1997-07-30
2680	RequiredDate	1997-08-27
2680	ShippedDate	1997-08-06
2680	ShipVia	3
2680	Freight	0.75
2680	ShipName	Wilman Kala
2680	ShipAddress	Keskuskatu 45
2680	ShipCity	Helsinki
2680	ShipPostalCode	21240
2680	ShipCountry	Finland
2681	OrderID	10616
2681	CustomerID	GREAL
2681	EmployeeID	1
2681	OrderDate	1997-07-31
2681	RequiredDate	1997-08-28
2681	ShippedDate	1997-08-05
2681	ShipVia	2
2681	Freight	116.53
2681	ShipName	Great Lakes Food Market
2681	ShipAddress	2732 Baker Blvd.
2681	ShipCity	Eugene
2681	ShipRegion	OR
2681	ShipPostalCode	97403
2681	ShipCountry	USA
2682	OrderID	10617
2682	CustomerID	GREAL
2682	EmployeeID	4
2682	OrderDate	1997-07-31
2682	RequiredDate	1997-08-28
2682	ShippedDate	1997-08-04
2682	ShipVia	2
2682	Freight	18.53
2682	ShipName	Great Lakes Food Market
2682	ShipAddress	2732 Baker Blvd.
2682	ShipCity	Eugene
2682	ShipRegion	OR
2682	ShipPostalCode	97403
2682	ShipCountry	USA
2683	OrderID	10618
2683	CustomerID	MEREP
2683	EmployeeID	1
2683	OrderDate	1997-08-01
2683	RequiredDate	1997-09-12
2683	ShippedDate	1997-08-08
2683	ShipVia	1
2683	Freight	154.68
2683	ShipName	Mère Paillarde
2683	ShipAddress	43 rue St. Laurent
2683	ShipCity	Montréal
2683	ShipRegion	Québec
2683	ShipPostalCode	H1J 1C3
2683	ShipCountry	Canada
2684	OrderID	10619
2684	CustomerID	MEREP
2684	EmployeeID	3
2684	OrderDate	1997-08-04
2684	RequiredDate	1997-09-01
2684	ShippedDate	1997-08-07
2684	ShipVia	3
2684	Freight	91.05
2684	ShipName	Mère Paillarde
2684	ShipAddress	43 rue St. Laurent
2684	ShipCity	Montréal
2684	ShipRegion	Québec
2684	ShipPostalCode	H1J 1C3
2684	ShipCountry	Canada
2685	OrderID	10620
2685	CustomerID	LAUGB
2685	EmployeeID	2
2685	OrderDate	1997-08-05
2685	RequiredDate	1997-09-02
2685	ShippedDate	1997-08-14
2685	ShipVia	3
2685	Freight	0.94
2685	ShipName	Laughing Bacchus Wine Cellars
2685	ShipAddress	2319 Elm St.
2685	ShipCity	Vancouver
2685	ShipRegion	BC
2685	ShipPostalCode	V3F 2K1
2685	ShipCountry	Canada
2686	OrderID	10621
2686	CustomerID	ISLAT
2686	EmployeeID	4
2686	OrderDate	1997-08-05
2686	RequiredDate	1997-09-02
2686	ShippedDate	1997-08-11
2686	ShipVia	2
2686	Freight	23.73
2686	ShipName	Island Trading
2686	ShipAddress	Garden House Crowther Way
2686	ShipCity	Cowes
2686	ShipRegion	Isle of Wight
2686	ShipPostalCode	PO31 7PJ
2686	ShipCountry	UK
2687	OrderID	10622
2687	CustomerID	RICAR
2687	EmployeeID	4
2687	OrderDate	1997-08-06
2687	RequiredDate	1997-09-03
2687	ShippedDate	1997-08-11
2687	ShipVia	3
2687	Freight	50.97
2687	ShipName	Ricardo Adocicados
2687	ShipAddress	Av. Copacabana, 267
2687	ShipCity	Rio de Janeiro
2687	ShipRegion	RJ
2687	ShipPostalCode	02389-890
2687	ShipCountry	Brazil
2688	OrderID	10623
2688	CustomerID	FRANK
2688	EmployeeID	8
2688	OrderDate	1997-08-07
2688	RequiredDate	1997-09-04
2688	ShippedDate	1997-08-12
2688	ShipVia	2
2688	Freight	97.18
2688	ShipName	Frankenversand
2688	ShipAddress	Berliner Platz 43
2688	ShipCity	München
2688	ShipPostalCode	80805
2688	ShipCountry	Germany
2689	OrderID	10624
2689	CustomerID	THECR
2689	EmployeeID	4
2689	OrderDate	1997-08-07
2689	RequiredDate	1997-09-04
2689	ShippedDate	1997-08-19
2689	ShipVia	2
2689	Freight	94.8
2689	ShipName	The Cracker Box
2689	ShipAddress	55 Grizzly Peak Rd.
2689	ShipCity	Butte
2689	ShipRegion	MT
2689	ShipPostalCode	59801
2689	ShipCountry	USA
2690	OrderID	10625
2690	CustomerID	ANATR
2690	EmployeeID	3
2690	OrderDate	1997-08-08
2690	RequiredDate	1997-09-05
2690	ShippedDate	1997-08-14
2690	ShipVia	1
2690	Freight	43.9
2690	ShipName	Ana Trujillo Emparedados y helados
2690	ShipAddress	Avda. de la Constitución 2222
2690	ShipCity	México D.F.
2690	ShipPostalCode	05021
2690	ShipCountry	Mexico
2691	OrderID	10626
2691	CustomerID	BERGS
2691	EmployeeID	1
2691	OrderDate	1997-08-11
2691	RequiredDate	1997-09-08
2691	ShippedDate	1997-08-20
2691	ShipVia	2
2691	Freight	138.69
2691	ShipName	Berglunds snabbköp
2691	ShipAddress	Berguvsvägen  8
2691	ShipCity	Luleå
2691	ShipPostalCode	S-958 22
2691	ShipCountry	Sweden
2692	OrderID	10627
2692	CustomerID	SAVEA
2692	EmployeeID	8
2692	OrderDate	1997-08-11
2692	RequiredDate	1997-09-22
2692	ShippedDate	1997-08-21
2692	ShipVia	3
2692	Freight	107.46
2692	ShipName	Save-a-lot Markets
2692	ShipAddress	187 Suffolk Ln.
2692	ShipCity	Boise
2692	ShipRegion	ID
2692	ShipPostalCode	83720
2692	ShipCountry	USA
2693	OrderID	10628
2693	CustomerID	BLONP
2693	EmployeeID	4
2693	OrderDate	1997-08-12
2693	RequiredDate	1997-09-09
2693	ShippedDate	1997-08-20
2693	ShipVia	3
2693	Freight	30.36
2693	ShipName	Blondel père et fils
2693	ShipAddress	24, place Kléber
2693	ShipCity	Strasbourg
2693	ShipPostalCode	67000
2693	ShipCountry	France
2694	OrderID	10629
2694	CustomerID	GODOS
2694	EmployeeID	4
2694	OrderDate	1997-08-12
2694	RequiredDate	1997-09-09
2694	ShippedDate	1997-08-20
2694	ShipVia	3
2694	Freight	85.46
2694	ShipName	Godos Cocina Típica
2694	ShipAddress	C/ Romero, 33
2694	ShipCity	Sevilla
2694	ShipPostalCode	41101
2694	ShipCountry	Spain
2695	OrderID	10630
2695	CustomerID	KOENE
2695	EmployeeID	1
2695	OrderDate	1997-08-13
2695	RequiredDate	1997-09-10
2695	ShippedDate	1997-08-19
2695	ShipVia	2
2695	Freight	32.35
2695	ShipName	Königlich Essen
2695	ShipAddress	Maubelstr. 90
2695	ShipCity	Brandenburg
2695	ShipPostalCode	14776
2695	ShipCountry	Germany
2696	OrderID	10631
2696	CustomerID	LAMAI
2696	EmployeeID	8
2696	OrderDate	1997-08-14
2696	RequiredDate	1997-09-11
2696	ShippedDate	1997-08-15
2696	ShipVia	1
2696	Freight	0.87
2696	ShipName	La maison d'Asie
2696	ShipAddress	1 rue Alsace-Lorraine
2696	ShipCity	Toulouse
2696	ShipPostalCode	31000
2696	ShipCountry	France
2697	OrderID	10632
2697	CustomerID	WANDK
2697	EmployeeID	8
2697	OrderDate	1997-08-14
2697	RequiredDate	1997-09-11
2697	ShippedDate	1997-08-19
2697	ShipVia	1
2697	Freight	41.38
2697	ShipName	Die Wandernde Kuh
2697	ShipAddress	Adenauerallee 900
2697	ShipCity	Stuttgart
2697	ShipPostalCode	70563
2697	ShipCountry	Germany
2698	OrderID	10633
2698	CustomerID	ERNSH
2698	EmployeeID	7
2698	OrderDate	1997-08-15
2698	RequiredDate	1997-09-12
2698	ShippedDate	1997-08-18
2698	ShipVia	3
2698	Freight	477.9
2698	ShipName	Ernst Handel
2698	ShipAddress	Kirchgasse 6
2698	ShipCity	Graz
2698	ShipPostalCode	8010
2698	ShipCountry	Austria
2699	OrderID	10634
2699	CustomerID	FOLIG
2699	EmployeeID	4
2699	OrderDate	1997-08-15
2699	RequiredDate	1997-09-12
2699	ShippedDate	1997-08-21
2699	ShipVia	3
2699	Freight	487.38
2699	ShipName	Folies gourmandes
2699	ShipAddress	184, chaussée de Tournai
2699	ShipCity	Lille
2699	ShipPostalCode	59000
2699	ShipCountry	France
2700	OrderID	10635
2700	CustomerID	MAGAA
2700	EmployeeID	8
2700	OrderDate	1997-08-18
2700	RequiredDate	1997-09-15
2700	ShippedDate	1997-08-21
2700	ShipVia	3
2700	Freight	47.46
2700	ShipName	Magazzini Alimentari Riuniti
2700	ShipAddress	Via Ludovico il Moro 22
2700	ShipCity	Bergamo
2700	ShipPostalCode	24100
2700	ShipCountry	Italy
2701	OrderID	10636
2701	CustomerID	WARTH
2701	EmployeeID	4
2701	OrderDate	1997-08-19
2701	RequiredDate	1997-09-16
2701	ShippedDate	1997-08-26
2701	ShipVia	1
2701	Freight	1.15
2701	ShipName	Wartian Herkku
2701	ShipAddress	Torikatu 38
2701	ShipCity	Oulu
2701	ShipPostalCode	90110
2701	ShipCountry	Finland
2702	OrderID	10637
2702	CustomerID	QUEEN
2702	EmployeeID	6
2702	OrderDate	1997-08-19
2702	RequiredDate	1997-09-16
2702	ShippedDate	1997-08-26
2702	ShipVia	1
2702	Freight	201.29
2702	ShipName	Queen Cozinha
2702	ShipAddress	Alameda dos Canàrios, 891
2702	ShipCity	Sao Paulo
2702	ShipRegion	SP
2702	ShipPostalCode	05487-020
2702	ShipCountry	Brazil
2703	OrderID	10638
2703	CustomerID	LINOD
2703	EmployeeID	3
2703	OrderDate	1997-08-20
2703	RequiredDate	1997-09-17
2703	ShippedDate	1997-09-01
2703	ShipVia	1
2703	Freight	158.44
2703	ShipName	LINO-Delicateses
2703	ShipAddress	Ave. 5 de Mayo Porlamar
2703	ShipCity	I. de Margarita
2703	ShipRegion	Nueva Esparta
2703	ShipPostalCode	4980
2703	ShipCountry	Venezuela
2704	OrderID	10639
2704	CustomerID	SANTG
2704	EmployeeID	7
2704	OrderDate	1997-08-20
2704	RequiredDate	1997-09-17
2704	ShippedDate	1997-08-27
2704	ShipVia	3
2704	Freight	38.64
2704	ShipName	Santé Gourmet
2704	ShipAddress	Erling Skakkes gate 78
2704	ShipCity	Stavern
2704	ShipPostalCode	4110
2704	ShipCountry	Norway
2705	OrderID	10640
2705	CustomerID	WANDK
2705	EmployeeID	4
2705	OrderDate	1997-08-21
2705	RequiredDate	1997-09-18
2705	ShippedDate	1997-08-28
2705	ShipVia	1
2705	Freight	23.55
2705	ShipName	Die Wandernde Kuh
2705	ShipAddress	Adenauerallee 900
2705	ShipCity	Stuttgart
2705	ShipPostalCode	70563
2705	ShipCountry	Germany
2706	OrderID	10641
2706	CustomerID	HILAA
2706	EmployeeID	4
2706	OrderDate	1997-08-22
2706	RequiredDate	1997-09-19
2706	ShippedDate	1997-08-26
2706	ShipVia	2
2706	Freight	179.61
2706	ShipName	HILARION-Abastos
2706	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2706	ShipCity	San Cristóbal
2706	ShipRegion	Táchira
2706	ShipPostalCode	5022
2706	ShipCountry	Venezuela
2707	OrderID	10642
2707	CustomerID	SIMOB
2707	EmployeeID	7
2707	OrderDate	1997-08-22
2707	RequiredDate	1997-09-19
2707	ShippedDate	1997-09-05
2707	ShipVia	3
2707	Freight	41.89
2707	ShipName	Simons bistro
2707	ShipAddress	Vinbæltet 34
2707	ShipCity	Kobenhavn
2707	ShipPostalCode	1734
2707	ShipCountry	Denmark
2708	OrderID	10643
2708	CustomerID	ALFKI
2708	EmployeeID	6
2708	OrderDate	1997-08-25
2708	RequiredDate	1997-09-22
2708	ShippedDate	1997-09-02
2708	ShipVia	1
2708	Freight	29.46
2708	ShipName	Alfreds Futterkiste
2708	ShipAddress	Obere Str. 57
2708	ShipCity	Berlin
2708	ShipPostalCode	12209
2708	ShipCountry	Germany
2709	OrderID	10644
2709	CustomerID	WELLI
2709	EmployeeID	3
2709	OrderDate	1997-08-25
2709	RequiredDate	1997-09-22
2709	ShippedDate	1997-09-01
2709	ShipVia	2
2709	Freight	0.14
2709	ShipName	Wellington Importadora
2709	ShipAddress	Rua do Mercado, 12
2709	ShipCity	Resende
2709	ShipRegion	SP
2709	ShipPostalCode	08737-363
2709	ShipCountry	Brazil
2710	OrderID	10645
2710	CustomerID	HANAR
2710	EmployeeID	4
2710	OrderDate	1997-08-26
2710	RequiredDate	1997-09-23
2710	ShippedDate	1997-09-02
2710	ShipVia	1
2710	Freight	12.41
2710	ShipName	Hanari Carnes
2710	ShipAddress	Rua do Paço, 67
2710	ShipCity	Rio de Janeiro
2710	ShipRegion	RJ
2710	ShipPostalCode	05454-876
2710	ShipCountry	Brazil
2711	OrderID	10646
2711	CustomerID	HUNGO
2711	EmployeeID	9
2711	OrderDate	1997-08-27
2711	RequiredDate	1997-10-08
2711	ShippedDate	1997-09-03
2711	ShipVia	3
2711	Freight	142.33
2711	ShipName	Hungry Owl All-Night Grocers
2711	ShipAddress	8 Johnstown Road
2711	ShipCity	Cork
2711	ShipRegion	Co. Cork
2711	ShipCountry	Ireland
2712	OrderID	10647
2712	CustomerID	QUEDE
2712	EmployeeID	4
2712	OrderDate	1997-08-27
2712	RequiredDate	1997-09-10
2712	ShippedDate	1997-09-03
2712	ShipVia	2
2712	Freight	45.54
2712	ShipName	Que Delícia
2712	ShipAddress	Rua da Panificadora, 12
2712	ShipCity	Rio de Janeiro
2712	ShipRegion	RJ
2712	ShipPostalCode	02389-673
2712	ShipCountry	Brazil
2713	OrderID	10648
2713	CustomerID	RICAR
2713	EmployeeID	5
2713	OrderDate	1997-08-28
2713	RequiredDate	1997-10-09
2713	ShippedDate	1997-09-09
2713	ShipVia	2
2713	Freight	14.25
2713	ShipName	Ricardo Adocicados
2713	ShipAddress	Av. Copacabana, 267
2713	ShipCity	Rio de Janeiro
2713	ShipRegion	RJ
2713	ShipPostalCode	02389-890
2713	ShipCountry	Brazil
2714	OrderID	10649
2714	CustomerID	MAISD
2714	EmployeeID	5
2714	OrderDate	1997-08-28
2714	RequiredDate	1997-09-25
2714	ShippedDate	1997-08-29
2714	ShipVia	3
2714	Freight	6.2
2714	ShipName	Maison Dewey
2714	ShipAddress	Rue Joseph-Bens 532
2714	ShipCity	Bruxelles
2714	ShipPostalCode	B-1180
2714	ShipCountry	Belgium
2715	OrderID	10650
2715	CustomerID	FAMIA
2715	EmployeeID	5
2715	OrderDate	1997-08-29
2715	RequiredDate	1997-09-26
2715	ShippedDate	1997-09-03
2715	ShipVia	3
2715	Freight	176.81
2715	ShipName	Familia Arquibaldo
2715	ShipAddress	Rua Orós, 92
2715	ShipCity	Sao Paulo
2715	ShipRegion	SP
2715	ShipPostalCode	05442-030
2715	ShipCountry	Brazil
2716	OrderID	10651
2716	CustomerID	WANDK
2716	EmployeeID	8
2716	OrderDate	1997-09-01
2716	RequiredDate	1997-09-29
2716	ShippedDate	1997-09-11
2716	ShipVia	2
2716	Freight	20.6
2716	ShipName	Die Wandernde Kuh
2716	ShipAddress	Adenauerallee 900
2716	ShipCity	Stuttgart
2716	ShipPostalCode	70563
2716	ShipCountry	Germany
2717	OrderID	10652
2717	CustomerID	GOURL
2717	EmployeeID	4
2717	OrderDate	1997-09-01
2717	RequiredDate	1997-09-29
2717	ShippedDate	1997-09-08
2717	ShipVia	2
2717	Freight	7.14
2717	ShipName	Gourmet Lanchonetes
2717	ShipAddress	Av. Brasil, 442
2717	ShipCity	Campinas
2717	ShipRegion	SP
2717	ShipPostalCode	04876-786
2717	ShipCountry	Brazil
2718	OrderID	10653
2718	CustomerID	FRANK
2718	EmployeeID	1
2718	OrderDate	1997-09-02
2718	RequiredDate	1997-09-30
2718	ShippedDate	1997-09-19
2718	ShipVia	1
2718	Freight	93.25
2718	ShipName	Frankenversand
2718	ShipAddress	Berliner Platz 43
2718	ShipCity	München
2718	ShipPostalCode	80805
2718	ShipCountry	Germany
2719	OrderID	10654
2719	CustomerID	BERGS
2719	EmployeeID	5
2719	OrderDate	1997-09-02
2719	RequiredDate	1997-09-30
2719	ShippedDate	1997-09-11
2719	ShipVia	1
2719	Freight	55.26
2719	ShipName	Berglunds snabbköp
2719	ShipAddress	Berguvsvägen  8
2719	ShipCity	Luleå
2719	ShipPostalCode	S-958 22
2719	ShipCountry	Sweden
2720	OrderID	10655
2720	CustomerID	REGGC
2720	EmployeeID	1
2720	OrderDate	1997-09-03
2720	RequiredDate	1997-10-01
2720	ShippedDate	1997-09-11
2720	ShipVia	2
2720	Freight	4.41
2720	ShipName	Reggiani Caseifici
2720	ShipAddress	Strada Provinciale 124
2720	ShipCity	Reggio Emilia
2720	ShipPostalCode	42100
2720	ShipCountry	Italy
2721	OrderID	10656
2721	CustomerID	GREAL
2721	EmployeeID	6
2721	OrderDate	1997-09-04
2721	RequiredDate	1997-10-02
2721	ShippedDate	1997-09-10
2721	ShipVia	1
2721	Freight	57.15
2721	ShipName	Great Lakes Food Market
2721	ShipAddress	2732 Baker Blvd.
2721	ShipCity	Eugene
2721	ShipRegion	OR
2721	ShipPostalCode	97403
2721	ShipCountry	USA
2722	OrderID	10657
2722	CustomerID	SAVEA
2722	EmployeeID	2
2722	OrderDate	1997-09-04
2722	RequiredDate	1997-10-02
2722	ShippedDate	1997-09-15
2722	ShipVia	2
2722	Freight	352.69
2722	ShipName	Save-a-lot Markets
2722	ShipAddress	187 Suffolk Ln.
2722	ShipCity	Boise
2722	ShipRegion	ID
2722	ShipPostalCode	83720
2722	ShipCountry	USA
2723	OrderID	10658
2723	CustomerID	QUICK
2723	EmployeeID	4
2723	OrderDate	1997-09-05
2723	RequiredDate	1997-10-03
2723	ShippedDate	1997-09-08
2723	ShipVia	1
2723	Freight	364.15
2723	ShipName	QUICK-Stop
2723	ShipAddress	Taucherstraße 10
2723	ShipCity	Cunewalde
2723	ShipPostalCode	01307
2723	ShipCountry	Germany
2724	OrderID	10659
2724	CustomerID	QUEEN
2724	EmployeeID	7
2724	OrderDate	1997-09-05
2724	RequiredDate	1997-10-03
2724	ShippedDate	1997-09-10
2724	ShipVia	2
2724	Freight	105.81
2724	ShipName	Queen Cozinha
2724	ShipAddress	Alameda dos Canàrios, 891
2724	ShipCity	Sao Paulo
2724	ShipRegion	SP
2724	ShipPostalCode	05487-020
2724	ShipCountry	Brazil
2725	OrderID	10660
2725	CustomerID	HUNGC
2725	EmployeeID	8
2725	OrderDate	1997-09-08
2725	RequiredDate	1997-10-06
2725	ShippedDate	1997-10-15
2725	ShipVia	1
2725	Freight	111.29
2725	ShipName	Hungry Coyote Import Store
2725	ShipAddress	City Center Plaza 516 Main St.
2725	ShipCity	Elgin
2725	ShipRegion	OR
2725	ShipPostalCode	97827
2725	ShipCountry	USA
2726	OrderID	10661
2726	CustomerID	HUNGO
2726	EmployeeID	7
2726	OrderDate	1997-09-09
2726	RequiredDate	1997-10-07
2726	ShippedDate	1997-09-15
2726	ShipVia	3
2726	Freight	17.55
2726	ShipName	Hungry Owl All-Night Grocers
2726	ShipAddress	8 Johnstown Road
2726	ShipCity	Cork
2726	ShipRegion	Co. Cork
2726	ShipCountry	Ireland
2727	OrderID	10662
2727	CustomerID	LONEP
2727	EmployeeID	3
2727	OrderDate	1997-09-09
2727	RequiredDate	1997-10-07
2727	ShippedDate	1997-09-18
2727	ShipVia	2
2727	Freight	1.28
2727	ShipName	Lonesome Pine Restaurant
2727	ShipAddress	89 Chiaroscuro Rd.
2727	ShipCity	Portland
2727	ShipRegion	OR
2727	ShipPostalCode	97219
2727	ShipCountry	USA
2728	OrderID	10663
2728	CustomerID	BONAP
2728	EmployeeID	2
2728	OrderDate	1997-09-10
2728	RequiredDate	1997-09-24
2728	ShippedDate	1997-10-03
2728	ShipVia	2
2728	Freight	113.15
2728	ShipName	Bon app'
2728	ShipAddress	12, rue des Bouchers
2728	ShipCity	Marseille
2728	ShipPostalCode	13008
2728	ShipCountry	France
2729	OrderID	10664
2729	CustomerID	FURIB
2729	EmployeeID	1
2729	OrderDate	1997-09-10
2729	RequiredDate	1997-10-08
2729	ShippedDate	1997-09-19
2729	ShipVia	3
2729	Freight	1.27
2729	ShipName	Furia Bacalhau e Frutos do Mar
2729	ShipAddress	Jardim das rosas n. 32
2729	ShipCity	Lisboa
2729	ShipPostalCode	1675
2729	ShipCountry	Portugal
2730	OrderID	10665
2730	CustomerID	LONEP
2730	EmployeeID	1
2730	OrderDate	1997-09-11
2730	RequiredDate	1997-10-09
2730	ShippedDate	1997-09-17
2730	ShipVia	2
2730	Freight	26.31
2730	ShipName	Lonesome Pine Restaurant
2730	ShipAddress	89 Chiaroscuro Rd.
2730	ShipCity	Portland
2730	ShipRegion	OR
2730	ShipPostalCode	97219
2730	ShipCountry	USA
2731	OrderID	10666
2731	CustomerID	RICSU
2731	EmployeeID	7
2731	OrderDate	1997-09-12
2731	RequiredDate	1997-10-10
2731	ShippedDate	1997-09-22
2731	ShipVia	2
2731	Freight	232.42
2731	ShipName	Richter Supermarkt
2731	ShipAddress	Starenweg 5
2731	ShipCity	Genève
2731	ShipPostalCode	1204
2731	ShipCountry	Switzerland
2732	OrderID	10667
2732	CustomerID	ERNSH
2732	EmployeeID	7
2732	OrderDate	1997-09-12
2732	RequiredDate	1997-10-10
2732	ShippedDate	1997-09-19
2732	ShipVia	1
2732	Freight	78.09
2732	ShipName	Ernst Handel
2732	ShipAddress	Kirchgasse 6
2732	ShipCity	Graz
2732	ShipPostalCode	8010
2732	ShipCountry	Austria
2733	OrderID	10668
2733	CustomerID	WANDK
2733	EmployeeID	1
2733	OrderDate	1997-09-15
2733	RequiredDate	1997-10-13
2733	ShippedDate	1997-09-23
2733	ShipVia	2
2733	Freight	47.22
2733	ShipName	Die Wandernde Kuh
2733	ShipAddress	Adenauerallee 900
2733	ShipCity	Stuttgart
2733	ShipPostalCode	70563
2733	ShipCountry	Germany
2734	OrderID	10669
2734	CustomerID	SIMOB
2734	EmployeeID	2
2734	OrderDate	1997-09-15
2734	RequiredDate	1997-10-13
2734	ShippedDate	1997-09-22
2734	ShipVia	1
2734	Freight	24.39
2734	ShipName	Simons bistro
2734	ShipAddress	Vinbæltet 34
2734	ShipCity	Kobenhavn
2734	ShipPostalCode	1734
2734	ShipCountry	Denmark
2735	OrderID	10670
2735	CustomerID	FRANK
2735	EmployeeID	4
2735	OrderDate	1997-09-16
2735	RequiredDate	1997-10-14
2735	ShippedDate	1997-09-18
2735	ShipVia	1
2735	Freight	203.48
2735	ShipName	Frankenversand
2735	ShipAddress	Berliner Platz 43
2735	ShipCity	München
2735	ShipPostalCode	80805
2735	ShipCountry	Germany
2736	OrderID	10671
2736	CustomerID	FRANR
2736	EmployeeID	1
2736	OrderDate	1997-09-17
2736	RequiredDate	1997-10-15
2736	ShippedDate	1997-09-24
2736	ShipVia	1
2736	Freight	30.34
2736	ShipName	France restauration
2736	ShipAddress	54, rue Royale
2736	ShipCity	Nantes
2736	ShipPostalCode	44000
2736	ShipCountry	France
2737	OrderID	10672
2737	CustomerID	BERGS
2737	EmployeeID	9
2737	OrderDate	1997-09-17
2737	RequiredDate	1997-10-01
2737	ShippedDate	1997-09-26
2737	ShipVia	2
2737	Freight	95.75
2737	ShipName	Berglunds snabbköp
2737	ShipAddress	Berguvsvägen  8
2737	ShipCity	Luleå
2737	ShipPostalCode	S-958 22
2737	ShipCountry	Sweden
2738	OrderID	10673
2738	CustomerID	WILMK
2738	EmployeeID	2
2738	OrderDate	1997-09-18
2738	RequiredDate	1997-10-16
2738	ShippedDate	1997-09-19
2738	ShipVia	1
2738	Freight	22.76
2738	ShipName	Wilman Kala
2738	ShipAddress	Keskuskatu 45
2738	ShipCity	Helsinki
2738	ShipPostalCode	21240
2738	ShipCountry	Finland
2739	OrderID	10674
2739	CustomerID	ISLAT
2739	EmployeeID	4
2739	OrderDate	1997-09-18
2739	RequiredDate	1997-10-16
2739	ShippedDate	1997-09-30
2739	ShipVia	2
2739	Freight	0.9
2739	ShipName	Island Trading
2739	ShipAddress	Garden House Crowther Way
2739	ShipCity	Cowes
2739	ShipRegion	Isle of Wight
2739	ShipPostalCode	PO31 7PJ
2739	ShipCountry	UK
2740	OrderID	10675
2740	CustomerID	FRANK
2740	EmployeeID	5
2740	OrderDate	1997-09-19
2740	RequiredDate	1997-10-17
2740	ShippedDate	1997-09-23
2740	ShipVia	2
2740	Freight	31.85
2740	ShipName	Frankenversand
2740	ShipAddress	Berliner Platz 43
2740	ShipCity	München
2740	ShipPostalCode	80805
2740	ShipCountry	Germany
2741	OrderID	10676
2741	CustomerID	TORTU
2741	EmployeeID	2
2741	OrderDate	1997-09-22
2741	RequiredDate	1997-10-20
2741	ShippedDate	1997-09-29
2741	ShipVia	2
2741	Freight	2.01
2741	ShipName	Tortuga Restaurante
2741	ShipAddress	Avda. Azteca 123
2741	ShipCity	México D.F.
2741	ShipPostalCode	05033
2741	ShipCountry	Mexico
2742	OrderID	10677
2742	CustomerID	ANTON
2742	EmployeeID	1
2742	OrderDate	1997-09-22
2742	RequiredDate	1997-10-20
2742	ShippedDate	1997-09-26
2742	ShipVia	3
2742	Freight	4.03
2742	ShipName	Antonio Moreno Taquería
2742	ShipAddress	Mataderos  2312
2742	ShipCity	México D.F.
2742	ShipPostalCode	05023
2742	ShipCountry	Mexico
2743	OrderID	10678
2743	CustomerID	SAVEA
2743	EmployeeID	7
2743	OrderDate	1997-09-23
2743	RequiredDate	1997-10-21
2743	ShippedDate	1997-10-16
2743	ShipVia	3
2743	Freight	388.98
2743	ShipName	Save-a-lot Markets
2743	ShipAddress	187 Suffolk Ln.
2743	ShipCity	Boise
2743	ShipRegion	ID
2743	ShipPostalCode	83720
2743	ShipCountry	USA
2744	OrderID	10679
2744	CustomerID	BLONP
2744	EmployeeID	8
2744	OrderDate	1997-09-23
2744	RequiredDate	1997-10-21
2744	ShippedDate	1997-09-30
2744	ShipVia	3
2744	Freight	27.94
2744	ShipName	Blondel père et fils
2744	ShipAddress	24, place Kléber
2744	ShipCity	Strasbourg
2744	ShipPostalCode	67000
2744	ShipCountry	France
2745	OrderID	10680
2745	CustomerID	OLDWO
2745	EmployeeID	1
2745	OrderDate	1997-09-24
2745	RequiredDate	1997-10-22
2745	ShippedDate	1997-09-26
2745	ShipVia	1
2745	Freight	26.61
2745	ShipName	Old World Delicatessen
2745	ShipAddress	2743 Bering St.
2745	ShipCity	Anchorage
2745	ShipRegion	AK
2745	ShipPostalCode	99508
2745	ShipCountry	USA
2746	OrderID	10681
2746	CustomerID	GREAL
2746	EmployeeID	3
2746	OrderDate	1997-09-25
2746	RequiredDate	1997-10-23
2746	ShippedDate	1997-09-30
2746	ShipVia	3
2746	Freight	76.13
2746	ShipName	Great Lakes Food Market
2746	ShipAddress	2732 Baker Blvd.
2746	ShipCity	Eugene
2746	ShipRegion	OR
2746	ShipPostalCode	97403
2746	ShipCountry	USA
2747	OrderID	10682
2747	CustomerID	ANTON
2747	EmployeeID	3
2747	OrderDate	1997-09-25
2747	RequiredDate	1997-10-23
2747	ShippedDate	1997-10-01
2747	ShipVia	2
2747	Freight	36.13
2747	ShipName	Antonio Moreno Taquería
2747	ShipAddress	Mataderos  2312
2747	ShipCity	México D.F.
2747	ShipPostalCode	05023
2747	ShipCountry	Mexico
2748	OrderID	10683
2748	CustomerID	DUMON
2748	EmployeeID	2
2748	OrderDate	1997-09-26
2748	RequiredDate	1997-10-24
2748	ShippedDate	1997-10-01
2748	ShipVia	1
2748	Freight	4.4
2748	ShipName	Du monde entier
2748	ShipAddress	67, rue des Cinquante Otages
2748	ShipCity	Nantes
2748	ShipPostalCode	44000
2748	ShipCountry	France
2749	OrderID	10684
2749	CustomerID	OTTIK
2749	EmployeeID	3
2749	OrderDate	1997-09-26
2749	RequiredDate	1997-10-24
2749	ShippedDate	1997-09-30
2749	ShipVia	1
2749	Freight	145.63
2749	ShipName	Ottilies Käseladen
2749	ShipAddress	Mehrheimerstr. 369
2749	ShipCity	Köln
2749	ShipPostalCode	50739
2749	ShipCountry	Germany
2750	OrderID	10685
2750	CustomerID	GOURL
2750	EmployeeID	4
2750	OrderDate	1997-09-29
2750	RequiredDate	1997-10-13
2750	ShippedDate	1997-10-03
2750	ShipVia	2
2750	Freight	33.75
2750	ShipName	Gourmet Lanchonetes
2750	ShipAddress	Av. Brasil, 442
2750	ShipCity	Campinas
2750	ShipRegion	SP
2750	ShipPostalCode	04876-786
2750	ShipCountry	Brazil
2751	OrderID	10686
2751	CustomerID	PICCO
2751	EmployeeID	2
2751	OrderDate	1997-09-30
2751	RequiredDate	1997-10-28
2751	ShippedDate	1997-10-08
2751	ShipVia	1
2751	Freight	96.5
2751	ShipName	Piccolo und mehr
2751	ShipAddress	Geislweg 14
2751	ShipCity	Salzburg
2751	ShipPostalCode	5020
2751	ShipCountry	Austria
2752	OrderID	10687
2752	CustomerID	HUNGO
2752	EmployeeID	9
2752	OrderDate	1997-09-30
2752	RequiredDate	1997-10-28
2752	ShippedDate	1997-10-30
2752	ShipVia	2
2752	Freight	296.43
2752	ShipName	Hungry Owl All-Night Grocers
2752	ShipAddress	8 Johnstown Road
2752	ShipCity	Cork
2752	ShipRegion	Co. Cork
2752	ShipCountry	Ireland
2753	OrderID	10688
2753	CustomerID	VAFFE
2753	EmployeeID	4
2753	OrderDate	1997-10-01
2753	RequiredDate	1997-10-15
2753	ShippedDate	1997-10-07
2753	ShipVia	2
2753	Freight	299.09
2753	ShipName	Vaffeljernet
2753	ShipAddress	Smagsloget 45
2753	ShipCity	Århus
2753	ShipPostalCode	8200
2753	ShipCountry	Denmark
2754	OrderID	10689
2754	CustomerID	BERGS
2754	EmployeeID	1
2754	OrderDate	1997-10-01
2754	RequiredDate	1997-10-29
2754	ShippedDate	1997-10-07
2754	ShipVia	2
2754	Freight	13.42
2754	ShipName	Berglunds snabbköp
2754	ShipAddress	Berguvsvägen  8
2754	ShipCity	Luleå
2754	ShipPostalCode	S-958 22
2754	ShipCountry	Sweden
2755	OrderID	10690
2755	CustomerID	HANAR
2755	EmployeeID	1
2755	OrderDate	1997-10-02
2755	RequiredDate	1997-10-30
2755	ShippedDate	1997-10-03
2755	ShipVia	1
2755	Freight	15.8
2755	ShipName	Hanari Carnes
2755	ShipAddress	Rua do Paço, 67
2755	ShipCity	Rio de Janeiro
2755	ShipRegion	RJ
2755	ShipPostalCode	05454-876
2755	ShipCountry	Brazil
2756	OrderID	10691
2756	CustomerID	QUICK
2756	EmployeeID	2
2756	OrderDate	1997-10-03
2756	RequiredDate	1997-11-14
2756	ShippedDate	1997-10-22
2756	ShipVia	2
2756	Freight	810.05
2756	ShipName	QUICK-Stop
2756	ShipAddress	Taucherstraße 10
2756	ShipCity	Cunewalde
2756	ShipPostalCode	01307
2756	ShipCountry	Germany
2757	OrderID	10692
2757	CustomerID	ALFKI
2757	EmployeeID	4
2757	OrderDate	1997-10-03
2757	RequiredDate	1997-10-31
2757	ShippedDate	1997-10-13
2757	ShipVia	2
2757	Freight	61.02
2757	ShipName	Alfred's Futterkiste
2757	ShipAddress	Obere Str. 57
2757	ShipCity	Berlin
2757	ShipPostalCode	12209
2757	ShipCountry	Germany
2758	OrderID	10693
2758	CustomerID	WHITC
2758	EmployeeID	3
2758	OrderDate	1997-10-06
2758	RequiredDate	1997-10-20
2758	ShippedDate	1997-10-10
2758	ShipVia	3
2758	Freight	139.34
2758	ShipName	White Clover Markets
2758	ShipAddress	1029 - 12th Ave. S.
2758	ShipCity	Seattle
2758	ShipRegion	WA
2758	ShipPostalCode	98124
2758	ShipCountry	USA
2759	OrderID	10694
2759	CustomerID	QUICK
2759	EmployeeID	8
2759	OrderDate	1997-10-06
2759	RequiredDate	1997-11-03
2759	ShippedDate	1997-10-09
2759	ShipVia	3
2759	Freight	398.36
2759	ShipName	QUICK-Stop
2759	ShipAddress	Taucherstraße 10
2759	ShipCity	Cunewalde
2759	ShipPostalCode	01307
2759	ShipCountry	Germany
2760	OrderID	10695
2760	CustomerID	WILMK
2760	EmployeeID	7
2760	OrderDate	1997-10-07
2760	RequiredDate	1997-11-18
2760	ShippedDate	1997-10-14
2760	ShipVia	1
2760	Freight	16.72
2760	ShipName	Wilman Kala
2760	ShipAddress	Keskuskatu 45
2760	ShipCity	Helsinki
2760	ShipPostalCode	21240
2760	ShipCountry	Finland
2761	OrderID	10696
2761	CustomerID	WHITC
2761	EmployeeID	8
2761	OrderDate	1997-10-08
2761	RequiredDate	1997-11-19
2761	ShippedDate	1997-10-14
2761	ShipVia	3
2761	Freight	102.55
2761	ShipName	White Clover Markets
2761	ShipAddress	1029 - 12th Ave. S.
2761	ShipCity	Seattle
2761	ShipRegion	WA
2761	ShipPostalCode	98124
2761	ShipCountry	USA
2762	OrderID	10697
2762	CustomerID	LINOD
2762	EmployeeID	3
2762	OrderDate	1997-10-08
2762	RequiredDate	1997-11-05
2762	ShippedDate	1997-10-14
2762	ShipVia	1
2762	Freight	45.52
2762	ShipName	LINO-Delicateses
2762	ShipAddress	Ave. 5 de Mayo Porlamar
2762	ShipCity	I. de Margarita
2762	ShipRegion	Nueva Esparta
2762	ShipPostalCode	4980
2762	ShipCountry	Venezuela
2763	OrderID	10698
2763	CustomerID	ERNSH
2763	EmployeeID	4
2763	OrderDate	1997-10-09
2763	RequiredDate	1997-11-06
2763	ShippedDate	1997-10-17
2763	ShipVia	1
2763	Freight	272.47
2763	ShipName	Ernst Handel
2763	ShipAddress	Kirchgasse 6
2763	ShipCity	Graz
2763	ShipPostalCode	8010
2763	ShipCountry	Austria
2764	OrderID	10699
2764	CustomerID	MORGK
2764	EmployeeID	3
2764	OrderDate	1997-10-09
2764	RequiredDate	1997-11-06
2764	ShippedDate	1997-10-13
2764	ShipVia	3
2764	Freight	0.58
2764	ShipName	Morgenstern Gesundkost
2764	ShipAddress	Heerstr. 22
2764	ShipCity	Leipzig
2764	ShipPostalCode	04179
2764	ShipCountry	Germany
2765	OrderID	10700
2765	CustomerID	SAVEA
2765	EmployeeID	3
2765	OrderDate	1997-10-10
2765	RequiredDate	1997-11-07
2765	ShippedDate	1997-10-16
2765	ShipVia	1
2765	Freight	65.1
2765	ShipName	Save-a-lot Markets
2765	ShipAddress	187 Suffolk Ln.
2765	ShipCity	Boise
2765	ShipRegion	ID
2765	ShipPostalCode	83720
2765	ShipCountry	USA
2766	OrderID	10701
2766	CustomerID	HUNGO
2766	EmployeeID	6
2766	OrderDate	1997-10-13
2766	RequiredDate	1997-10-27
2766	ShippedDate	1997-10-15
2766	ShipVia	3
2766	Freight	220.31
2766	ShipName	Hungry Owl All-Night Grocers
2766	ShipAddress	8 Johnstown Road
2766	ShipCity	Cork
2766	ShipRegion	Co. Cork
2766	ShipCountry	Ireland
2767	OrderID	10702
2767	CustomerID	ALFKI
2767	EmployeeID	4
2767	OrderDate	1997-10-13
2767	RequiredDate	1997-11-24
2767	ShippedDate	1997-10-21
2767	ShipVia	1
2767	Freight	23.94
2767	ShipName	Alfred's Futterkiste
2767	ShipAddress	Obere Str. 57
2767	ShipCity	Berlin
2767	ShipPostalCode	12209
2767	ShipCountry	Germany
2768	OrderID	10703
2768	CustomerID	FOLKO
2768	EmployeeID	6
2768	OrderDate	1997-10-14
2768	RequiredDate	1997-11-11
2768	ShippedDate	1997-10-20
2768	ShipVia	2
2768	Freight	152.3
2768	ShipName	Folk och fä HB
2768	ShipAddress	Åkergatan 24
2768	ShipCity	Bräcke
2768	ShipPostalCode	S-844 67
2768	ShipCountry	Sweden
2769	OrderID	10704
2769	CustomerID	QUEEN
2769	EmployeeID	6
2769	OrderDate	1997-10-14
2769	RequiredDate	1997-11-11
2769	ShippedDate	1997-11-07
2769	ShipVia	1
2769	Freight	4.78
2769	ShipName	Queen Cozinha
2769	ShipAddress	Alameda dos Canàrios, 891
2769	ShipCity	Sao Paulo
2769	ShipRegion	SP
2769	ShipPostalCode	05487-020
2769	ShipCountry	Brazil
2770	OrderID	10705
2770	CustomerID	HILAA
2770	EmployeeID	9
2770	OrderDate	1997-10-15
2770	RequiredDate	1997-11-12
2770	ShippedDate	1997-11-18
2770	ShipVia	2
2770	Freight	3.52
2770	ShipName	HILARION-Abastos
2770	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2770	ShipCity	San Cristóbal
2770	ShipRegion	Táchira
2770	ShipPostalCode	5022
2770	ShipCountry	Venezuela
2771	OrderID	10706
2771	CustomerID	OLDWO
2771	EmployeeID	8
2771	OrderDate	1997-10-16
2771	RequiredDate	1997-11-13
2771	ShippedDate	1997-10-21
2771	ShipVia	3
2771	Freight	135.63
2771	ShipName	Old World Delicatessen
2771	ShipAddress	2743 Bering St.
2771	ShipCity	Anchorage
2771	ShipRegion	AK
2771	ShipPostalCode	99508
2771	ShipCountry	USA
2772	OrderID	10707
2772	CustomerID	AROUT
2772	EmployeeID	4
2772	OrderDate	1997-10-16
2772	RequiredDate	1997-10-30
2772	ShippedDate	1997-10-23
2772	ShipVia	3
2772	Freight	21.74
2772	ShipName	Around the Horn
2772	ShipAddress	Brook Farm Stratford St. Mary
2772	ShipCity	Colchester
2772	ShipRegion	Essex
2772	ShipPostalCode	CO7 6JX
2772	ShipCountry	UK
2773	OrderID	10708
2773	CustomerID	THEBI
2773	EmployeeID	6
2773	OrderDate	1997-10-17
2773	RequiredDate	1997-11-28
2773	ShippedDate	1997-11-05
2773	ShipVia	2
2773	Freight	2.96
2773	ShipName	The Big Cheese
2773	ShipAddress	89 Jefferson Way Suite 2
2773	ShipCity	Portland
2773	ShipRegion	OR
2773	ShipPostalCode	97201
2773	ShipCountry	USA
2774	OrderID	10709
2774	CustomerID	GOURL
2774	EmployeeID	1
2774	OrderDate	1997-10-17
2774	RequiredDate	1997-11-14
2774	ShippedDate	1997-11-20
2774	ShipVia	3
2774	Freight	210.8
2774	ShipName	Gourmet Lanchonetes
2774	ShipAddress	Av. Brasil, 442
2774	ShipCity	Campinas
2774	ShipRegion	SP
2774	ShipPostalCode	04876-786
2774	ShipCountry	Brazil
2775	OrderID	10710
2775	CustomerID	FRANS
2775	EmployeeID	1
2775	OrderDate	1997-10-20
2775	RequiredDate	1997-11-17
2775	ShippedDate	1997-10-23
2775	ShipVia	1
2775	Freight	4.98
2775	ShipName	Franchi S.p.A.
2775	ShipAddress	Via Monte Bianco 34
2775	ShipCity	Torino
2775	ShipPostalCode	10100
2775	ShipCountry	Italy
2776	OrderID	10711
2776	CustomerID	SAVEA
2776	EmployeeID	5
2776	OrderDate	1997-10-21
2776	RequiredDate	1997-12-02
2776	ShippedDate	1997-10-29
2776	ShipVia	2
2776	Freight	52.41
2776	ShipName	Save-a-lot Markets
2776	ShipAddress	187 Suffolk Ln.
2776	ShipCity	Boise
2776	ShipRegion	ID
2776	ShipPostalCode	83720
2776	ShipCountry	USA
2777	OrderID	10712
2777	CustomerID	HUNGO
2777	EmployeeID	3
2777	OrderDate	1997-10-21
2777	RequiredDate	1997-11-18
2777	ShippedDate	1997-10-31
2777	ShipVia	1
2777	Freight	89.93
2777	ShipName	Hungry Owl All-Night Grocers
2777	ShipAddress	8 Johnstown Road
2777	ShipCity	Cork
2777	ShipRegion	Co. Cork
2777	ShipCountry	Ireland
2778	OrderID	10713
2778	CustomerID	SAVEA
2778	EmployeeID	1
2778	OrderDate	1997-10-22
2778	RequiredDate	1997-11-19
2778	ShippedDate	1997-10-24
2778	ShipVia	1
2778	Freight	167.05
2778	ShipName	Save-a-lot Markets
2778	ShipAddress	187 Suffolk Ln.
2778	ShipCity	Boise
2778	ShipRegion	ID
2778	ShipPostalCode	83720
2778	ShipCountry	USA
2779	OrderID	10714
2779	CustomerID	SAVEA
2779	EmployeeID	5
2779	OrderDate	1997-10-22
2779	RequiredDate	1997-11-19
2779	ShippedDate	1997-10-27
2779	ShipVia	3
2779	Freight	24.49
2779	ShipName	Save-a-lot Markets
2779	ShipAddress	187 Suffolk Ln.
2779	ShipCity	Boise
2779	ShipRegion	ID
2779	ShipPostalCode	83720
2779	ShipCountry	USA
2780	OrderID	10715
2780	CustomerID	BONAP
2780	EmployeeID	3
2780	OrderDate	1997-10-23
2780	RequiredDate	1997-11-06
2780	ShippedDate	1997-10-29
2780	ShipVia	1
2780	Freight	63.2
2780	ShipName	Bon app'
2780	ShipAddress	12, rue des Bouchers
2780	ShipCity	Marseille
2780	ShipPostalCode	13008
2780	ShipCountry	France
2781	OrderID	10716
2781	CustomerID	RANCH
2781	EmployeeID	4
2781	OrderDate	1997-10-24
2781	RequiredDate	1997-11-21
2781	ShippedDate	1997-10-27
2781	ShipVia	2
2781	Freight	22.57
2781	ShipName	Rancho grande
2781	ShipAddress	Av. del Libertador 900
2781	ShipCity	Buenos Aires
2781	ShipPostalCode	1010
2781	ShipCountry	Argentina
2782	OrderID	10717
2782	CustomerID	FRANK
2782	EmployeeID	1
2782	OrderDate	1997-10-24
2782	RequiredDate	1997-11-21
2782	ShippedDate	1997-10-29
2782	ShipVia	2
2782	Freight	59.25
2782	ShipName	Frankenversand
2782	ShipAddress	Berliner Platz 43
2782	ShipCity	München
2782	ShipPostalCode	80805
2782	ShipCountry	Germany
2783	OrderID	10718
2783	CustomerID	KOENE
2783	EmployeeID	1
2783	OrderDate	1997-10-27
2783	RequiredDate	1997-11-24
2783	ShippedDate	1997-10-29
2783	ShipVia	3
2783	Freight	170.88
2783	ShipName	Königlich Essen
2783	ShipAddress	Maubelstr. 90
2783	ShipCity	Brandenburg
2783	ShipPostalCode	14776
2783	ShipCountry	Germany
2784	OrderID	10719
2784	CustomerID	LETSS
2784	EmployeeID	8
2784	OrderDate	1997-10-27
2784	RequiredDate	1997-11-24
2784	ShippedDate	1997-11-05
2784	ShipVia	2
2784	Freight	51.44
2784	ShipName	Let's Stop N Shop
2784	ShipAddress	87 Polk St. Suite 5
2784	ShipCity	San Francisco
2784	ShipRegion	CA
2784	ShipPostalCode	94117
2784	ShipCountry	USA
2785	OrderID	10720
2785	CustomerID	QUEDE
2785	EmployeeID	8
2785	OrderDate	1997-10-28
2785	RequiredDate	1997-11-11
2785	ShippedDate	1997-11-05
2785	ShipVia	2
2785	Freight	9.53
2785	ShipName	Que Delícia
2785	ShipAddress	Rua da Panificadora, 12
2785	ShipCity	Rio de Janeiro
2785	ShipRegion	RJ
2785	ShipPostalCode	02389-673
2785	ShipCountry	Brazil
2786	OrderID	10721
2786	CustomerID	QUICK
2786	EmployeeID	5
2786	OrderDate	1997-10-29
2786	RequiredDate	1997-11-26
2786	ShippedDate	1997-10-31
2786	ShipVia	3
2786	Freight	48.92
2786	ShipName	QUICK-Stop
2786	ShipAddress	Taucherstraße 10
2786	ShipCity	Cunewalde
2786	ShipPostalCode	01307
2786	ShipCountry	Germany
2787	OrderID	10722
2787	CustomerID	SAVEA
2787	EmployeeID	8
2787	OrderDate	1997-10-29
2787	RequiredDate	1997-12-10
2787	ShippedDate	1997-11-04
2787	ShipVia	1
2787	Freight	74.58
2787	ShipName	Save-a-lot Markets
2787	ShipAddress	187 Suffolk Ln.
2787	ShipCity	Boise
2787	ShipRegion	ID
2787	ShipPostalCode	83720
2787	ShipCountry	USA
2788	OrderID	10723
2788	CustomerID	WHITC
2788	EmployeeID	3
2788	OrderDate	1997-10-30
2788	RequiredDate	1997-11-27
2788	ShippedDate	1997-11-25
2788	ShipVia	1
2788	Freight	21.72
2788	ShipName	White Clover Markets
2788	ShipAddress	1029 - 12th Ave. S.
2788	ShipCity	Seattle
2788	ShipRegion	WA
2788	ShipPostalCode	98124
2788	ShipCountry	USA
2789	OrderID	10724
2789	CustomerID	MEREP
2789	EmployeeID	8
2789	OrderDate	1997-10-30
2789	RequiredDate	1997-12-11
2789	ShippedDate	1997-11-05
2789	ShipVia	2
2789	Freight	57.75
2789	ShipName	Mère Paillarde
2789	ShipAddress	43 rue St. Laurent
2789	ShipCity	Montréal
2789	ShipRegion	Québec
2789	ShipPostalCode	H1J 1C3
2789	ShipCountry	Canada
2790	OrderID	10725
2790	CustomerID	FAMIA
2790	EmployeeID	4
2790	OrderDate	1997-10-31
2790	RequiredDate	1997-11-28
2790	ShippedDate	1997-11-05
2790	ShipVia	3
2790	Freight	10.83
2790	ShipName	Familia Arquibaldo
2790	ShipAddress	Rua Orós, 92
2790	ShipCity	Sao Paulo
2790	ShipRegion	SP
2790	ShipPostalCode	05442-030
2790	ShipCountry	Brazil
2791	OrderID	10726
2791	CustomerID	EASTC
2791	EmployeeID	4
2791	OrderDate	1997-11-03
2791	RequiredDate	1997-11-17
2791	ShippedDate	1997-12-05
2791	ShipVia	1
2791	Freight	16.56
2791	ShipName	Eastern Connection
2791	ShipAddress	35 King George
2791	ShipCity	London
2791	ShipPostalCode	WX3 6FW
2791	ShipCountry	UK
2792	OrderID	10727
2792	CustomerID	REGGC
2792	EmployeeID	2
2792	OrderDate	1997-11-03
2792	RequiredDate	1997-12-01
2792	ShippedDate	1997-12-05
2792	ShipVia	1
2792	Freight	89.9
2792	ShipName	Reggiani Caseifici
2792	ShipAddress	Strada Provinciale 124
2792	ShipCity	Reggio Emilia
2792	ShipPostalCode	42100
2792	ShipCountry	Italy
2793	OrderID	10728
2793	CustomerID	QUEEN
2793	EmployeeID	4
2793	OrderDate	1997-11-04
2793	RequiredDate	1997-12-02
2793	ShippedDate	1997-11-11
2793	ShipVia	2
2793	Freight	58.33
2793	ShipName	Queen Cozinha
2793	ShipAddress	Alameda dos Canàrios, 891
2793	ShipCity	Sao Paulo
2793	ShipRegion	SP
2793	ShipPostalCode	05487-020
2793	ShipCountry	Brazil
2794	OrderID	10729
2794	CustomerID	LINOD
2794	EmployeeID	8
2794	OrderDate	1997-11-04
2794	RequiredDate	1997-12-16
2794	ShippedDate	1997-11-14
2794	ShipVia	3
2794	Freight	141.06
2794	ShipName	LINO-Delicateses
2794	ShipAddress	Ave. 5 de Mayo Porlamar
2794	ShipCity	I. de Margarita
2794	ShipRegion	Nueva Esparta
2794	ShipPostalCode	4980
2794	ShipCountry	Venezuela
2795	OrderID	10730
2795	CustomerID	BONAP
2795	EmployeeID	5
2795	OrderDate	1997-11-05
2795	RequiredDate	1997-12-03
2795	ShippedDate	1997-11-14
2795	ShipVia	1
2795	Freight	20.12
2795	ShipName	Bon app'
2795	ShipAddress	12, rue des Bouchers
2795	ShipCity	Marseille
2795	ShipPostalCode	13008
2795	ShipCountry	France
2796	OrderID	10731
2796	CustomerID	CHOPS
2796	EmployeeID	7
2796	OrderDate	1997-11-06
2796	RequiredDate	1997-12-04
2796	ShippedDate	1997-11-14
2796	ShipVia	1
2796	Freight	96.65
2796	ShipName	Chop-suey Chinese
2796	ShipAddress	Hauptstr. 31
2796	ShipCity	Bern
2796	ShipPostalCode	3012
2796	ShipCountry	Switzerland
2797	OrderID	10732
2797	CustomerID	BONAP
2797	EmployeeID	3
2797	OrderDate	1997-11-06
2797	RequiredDate	1997-12-04
2797	ShippedDate	1997-11-07
2797	ShipVia	1
2797	Freight	16.97
2797	ShipName	Bon app'
2797	ShipAddress	12, rue des Bouchers
2797	ShipCity	Marseille
2797	ShipPostalCode	13008
2797	ShipCountry	France
2798	OrderID	10733
2798	CustomerID	BERGS
2798	EmployeeID	1
2798	OrderDate	1997-11-07
2798	RequiredDate	1997-12-05
2798	ShippedDate	1997-11-10
2798	ShipVia	3
2798	Freight	110.11
2798	ShipName	Berglunds snabbköp
2798	ShipAddress	Berguvsvägen  8
2798	ShipCity	Luleå
2798	ShipPostalCode	S-958 22
2798	ShipCountry	Sweden
2799	OrderID	10734
2799	CustomerID	GOURL
2799	EmployeeID	2
2799	OrderDate	1997-11-07
2799	RequiredDate	1997-12-05
2799	ShippedDate	1997-11-12
2799	ShipVia	3
2799	Freight	1.63
2799	ShipName	Gourmet Lanchonetes
2799	ShipAddress	Av. Brasil, 442
2799	ShipCity	Campinas
2799	ShipRegion	SP
2799	ShipPostalCode	04876-786
2799	ShipCountry	Brazil
2800	OrderID	10735
2800	CustomerID	LETSS
2800	EmployeeID	6
2800	OrderDate	1997-11-10
2800	RequiredDate	1997-12-08
2800	ShippedDate	1997-11-21
2800	ShipVia	2
2800	Freight	45.97
2800	ShipName	Let's Stop N Shop
2800	ShipAddress	87 Polk St. Suite 5
2800	ShipCity	San Francisco
2800	ShipRegion	CA
2800	ShipPostalCode	94117
2800	ShipCountry	USA
2801	OrderID	10736
2801	CustomerID	HUNGO
2801	EmployeeID	9
2801	OrderDate	1997-11-11
2801	RequiredDate	1997-12-09
2801	ShippedDate	1997-11-21
2801	ShipVia	2
2801	Freight	44.1
2801	ShipName	Hungry Owl All-Night Grocers
2801	ShipAddress	8 Johnstown Road
2801	ShipCity	Cork
2801	ShipRegion	Co. Cork
2801	ShipCountry	Ireland
2802	OrderID	10737
2802	CustomerID	VINET
2802	EmployeeID	2
2802	OrderDate	1997-11-11
2802	RequiredDate	1997-12-09
2802	ShippedDate	1997-11-18
2802	ShipVia	2
2802	Freight	7.79
2802	ShipName	Vins et alcools Chevalier
2802	ShipAddress	59 rue de l'Abbaye
2802	ShipCity	Reims
2802	ShipPostalCode	51100
2802	ShipCountry	France
2803	OrderID	10738
2803	CustomerID	SPECD
2803	EmployeeID	2
2803	OrderDate	1997-11-12
2803	RequiredDate	1997-12-10
2803	ShippedDate	1997-11-18
2803	ShipVia	1
2803	Freight	2.91
2803	ShipName	Spécialités du monde
2803	ShipAddress	25, rue Lauriston
2803	ShipCity	Paris
2803	ShipPostalCode	75016
2803	ShipCountry	France
2804	OrderID	10739
2804	CustomerID	VINET
2804	EmployeeID	3
2804	OrderDate	1997-11-12
2804	RequiredDate	1997-12-10
2804	ShippedDate	1997-11-17
2804	ShipVia	3
2804	Freight	11.08
2804	ShipName	Vins et alcools Chevalier
2804	ShipAddress	59 rue de l'Abbaye
2804	ShipCity	Reims
2804	ShipPostalCode	51100
2804	ShipCountry	France
2805	OrderID	10740
2805	CustomerID	WHITC
2805	EmployeeID	4
2805	OrderDate	1997-11-13
2805	RequiredDate	1997-12-11
2805	ShippedDate	1997-11-25
2805	ShipVia	2
2805	Freight	81.88
2805	ShipName	White Clover Markets
2805	ShipAddress	1029 - 12th Ave. S.
2805	ShipCity	Seattle
2805	ShipRegion	WA
2805	ShipPostalCode	98124
2805	ShipCountry	USA
2806	OrderID	10741
2806	CustomerID	AROUT
2806	EmployeeID	4
2806	OrderDate	1997-11-14
2806	RequiredDate	1997-11-28
2806	ShippedDate	1997-11-18
2806	ShipVia	3
2806	Freight	10.96
2806	ShipName	Around the Horn
2806	ShipAddress	Brook Farm Stratford St. Mary
2806	ShipCity	Colchester
2806	ShipRegion	Essex
2806	ShipPostalCode	CO7 6JX
2806	ShipCountry	UK
2807	OrderID	10742
2807	CustomerID	BOTTM
2807	EmployeeID	3
2807	OrderDate	1997-11-14
2807	RequiredDate	1997-12-12
2807	ShippedDate	1997-11-18
2807	ShipVia	3
2807	Freight	243.73
2807	ShipName	Bottom-Dollar Markets
2807	ShipAddress	23 Tsawassen Blvd.
2807	ShipCity	Tsawassen
2807	ShipRegion	BC
2807	ShipPostalCode	T2F 8M4
2807	ShipCountry	Canada
2808	OrderID	10743
2808	CustomerID	AROUT
2808	EmployeeID	1
2808	OrderDate	1997-11-17
2808	RequiredDate	1997-12-15
2808	ShippedDate	1997-11-21
2808	ShipVia	2
2808	Freight	23.72
2808	ShipName	Around the Horn
2808	ShipAddress	Brook Farm Stratford St. Mary
2808	ShipCity	Colchester
2808	ShipRegion	Essex
2808	ShipPostalCode	CO7 6JX
2808	ShipCountry	UK
2809	OrderID	10744
2809	CustomerID	VAFFE
2809	EmployeeID	6
2809	OrderDate	1997-11-17
2809	RequiredDate	1997-12-15
2809	ShippedDate	1997-11-24
2809	ShipVia	1
2809	Freight	69.19
2809	ShipName	Vaffeljernet
2809	ShipAddress	Smagsloget 45
2809	ShipCity	Århus
2809	ShipPostalCode	8200
2809	ShipCountry	Denmark
2810	OrderID	10745
2810	CustomerID	QUICK
2810	EmployeeID	9
2810	OrderDate	1997-11-18
2810	RequiredDate	1997-12-16
2810	ShippedDate	1997-11-27
2810	ShipVia	1
2810	Freight	3.52
2810	ShipName	QUICK-Stop
2810	ShipAddress	Taucherstraße 10
2810	ShipCity	Cunewalde
2810	ShipPostalCode	01307
2810	ShipCountry	Germany
2811	OrderID	10746
2811	CustomerID	CHOPS
2811	EmployeeID	1
2811	OrderDate	1997-11-19
2811	RequiredDate	1997-12-17
2811	ShippedDate	1997-11-21
2811	ShipVia	3
2811	Freight	31.43
2811	ShipName	Chop-suey Chinese
2811	ShipAddress	Hauptstr. 31
2811	ShipCity	Bern
2811	ShipPostalCode	3012
2811	ShipCountry	Switzerland
2812	OrderID	10747
2812	CustomerID	PICCO
2812	EmployeeID	6
2812	OrderDate	1997-11-19
2812	RequiredDate	1997-12-17
2812	ShippedDate	1997-11-26
2812	ShipVia	1
2812	Freight	117.33
2812	ShipName	Piccolo und mehr
2812	ShipAddress	Geislweg 14
2812	ShipCity	Salzburg
2812	ShipPostalCode	5020
2812	ShipCountry	Austria
2813	OrderID	10748
2813	CustomerID	SAVEA
2813	EmployeeID	3
2813	OrderDate	1997-11-20
2813	RequiredDate	1997-12-18
2813	ShippedDate	1997-11-28
2813	ShipVia	1
2813	Freight	232.55
2813	ShipName	Save-a-lot Markets
2813	ShipAddress	187 Suffolk Ln.
2813	ShipCity	Boise
2813	ShipRegion	ID
2813	ShipPostalCode	83720
2813	ShipCountry	USA
2814	OrderID	10749
2814	CustomerID	ISLAT
2814	EmployeeID	4
2814	OrderDate	1997-11-20
2814	RequiredDate	1997-12-18
2814	ShippedDate	1997-12-19
2814	ShipVia	2
2814	Freight	61.53
2814	ShipName	Island Trading
2814	ShipAddress	Garden House Crowther Way
2814	ShipCity	Cowes
2814	ShipRegion	Isle of Wight
2814	ShipPostalCode	PO31 7PJ
2814	ShipCountry	UK
2815	OrderID	10750
2815	CustomerID	WARTH
2815	EmployeeID	9
2815	OrderDate	1997-11-21
2815	RequiredDate	1997-12-19
2815	ShippedDate	1997-11-24
2815	ShipVia	1
2815	Freight	79.3
2815	ShipName	Wartian Herkku
2815	ShipAddress	Torikatu 38
2815	ShipCity	Oulu
2815	ShipPostalCode	90110
2815	ShipCountry	Finland
2816	OrderID	10751
2816	CustomerID	RICSU
2816	EmployeeID	3
2816	OrderDate	1997-11-24
2816	RequiredDate	1997-12-22
2816	ShippedDate	1997-12-03
2816	ShipVia	3
2816	Freight	130.79
2816	ShipName	Richter Supermarkt
2816	ShipAddress	Starenweg 5
2816	ShipCity	Genève
2816	ShipPostalCode	1204
2816	ShipCountry	Switzerland
2817	OrderID	10752
2817	CustomerID	NORTS
2817	EmployeeID	2
2817	OrderDate	1997-11-24
2817	RequiredDate	1997-12-22
2817	ShippedDate	1997-11-28
2817	ShipVia	3
2817	Freight	1.39
2817	ShipName	North/South
2817	ShipAddress	South House 300 Queensbridge
2817	ShipCity	London
2817	ShipPostalCode	SW7 1RZ
2817	ShipCountry	UK
2818	OrderID	10753
2818	CustomerID	FRANS
2818	EmployeeID	3
2818	OrderDate	1997-11-25
2818	RequiredDate	1997-12-23
2818	ShippedDate	1997-11-27
2818	ShipVia	1
2818	Freight	7.7
2818	ShipName	Franchi S.p.A.
2818	ShipAddress	Via Monte Bianco 34
2818	ShipCity	Torino
2818	ShipPostalCode	10100
2818	ShipCountry	Italy
2819	OrderID	10754
2819	CustomerID	MAGAA
2819	EmployeeID	6
2819	OrderDate	1997-11-25
2819	RequiredDate	1997-12-23
2819	ShippedDate	1997-11-27
2819	ShipVia	3
2819	Freight	2.38
2819	ShipName	Magazzini Alimentari Riuniti
2819	ShipAddress	Via Ludovico il Moro 22
2819	ShipCity	Bergamo
2819	ShipPostalCode	24100
2819	ShipCountry	Italy
2820	OrderID	10755
2820	CustomerID	BONAP
2820	EmployeeID	4
2820	OrderDate	1997-11-26
2820	RequiredDate	1997-12-24
2820	ShippedDate	1997-11-28
2820	ShipVia	2
2820	Freight	16.71
2820	ShipName	Bon app'
2820	ShipAddress	12, rue des Bouchers
2820	ShipCity	Marseille
2820	ShipPostalCode	13008
2820	ShipCountry	France
2821	OrderID	10756
2821	CustomerID	SPLIR
2821	EmployeeID	8
2821	OrderDate	1997-11-27
2821	RequiredDate	1997-12-25
2821	ShippedDate	1997-12-02
2821	ShipVia	2
2821	Freight	73.21
2821	ShipName	Split Rail Beer & Ale
2821	ShipAddress	P.O. Box 555
2821	ShipCity	Lander
2821	ShipRegion	WY
2821	ShipPostalCode	82520
2821	ShipCountry	USA
2822	OrderID	10757
2822	CustomerID	SAVEA
2822	EmployeeID	6
2822	OrderDate	1997-11-27
2822	RequiredDate	1997-12-25
2822	ShippedDate	1997-12-15
2822	ShipVia	1
2822	Freight	8.19
2822	ShipName	Save-a-lot Markets
2822	ShipAddress	187 Suffolk Ln.
2822	ShipCity	Boise
2822	ShipRegion	ID
2822	ShipPostalCode	83720
2822	ShipCountry	USA
2823	OrderID	10758
2823	CustomerID	RICSU
2823	EmployeeID	3
2823	OrderDate	1997-11-28
2823	RequiredDate	1997-12-26
2823	ShippedDate	1997-12-04
2823	ShipVia	3
2823	Freight	138.17
2823	ShipName	Richter Supermarkt
2823	ShipAddress	Starenweg 5
2823	ShipCity	Genève
2823	ShipPostalCode	1204
2823	ShipCountry	Switzerland
2824	OrderID	10759
2824	CustomerID	ANATR
2824	EmployeeID	3
2824	OrderDate	1997-11-28
2824	RequiredDate	1997-12-26
2824	ShippedDate	1997-12-12
2824	ShipVia	3
2824	Freight	11.99
2824	ShipName	Ana Trujillo Emparedados y helados
2824	ShipAddress	Avda. de la Constitución 2222
2824	ShipCity	México D.F.
2824	ShipPostalCode	05021
2824	ShipCountry	Mexico
2825	OrderID	10760
2825	CustomerID	MAISD
2825	EmployeeID	4
2825	OrderDate	1997-12-01
2825	RequiredDate	1997-12-29
2825	ShippedDate	1997-12-10
2825	ShipVia	1
2825	Freight	155.64
2825	ShipName	Maison Dewey
2825	ShipAddress	Rue Joseph-Bens 532
2825	ShipCity	Bruxelles
2825	ShipPostalCode	B-1180
2825	ShipCountry	Belgium
2826	OrderID	10761
2826	CustomerID	RATTC
2826	EmployeeID	5
2826	OrderDate	1997-12-02
2826	RequiredDate	1997-12-30
2826	ShippedDate	1997-12-08
2826	ShipVia	2
2826	Freight	18.66
2826	ShipName	Rattlesnake Canyon Grocery
2826	ShipAddress	2817 Milton Dr.
2826	ShipCity	Albuquerque
2826	ShipRegion	NM
2826	ShipPostalCode	87110
2826	ShipCountry	USA
2827	OrderID	10762
2827	CustomerID	FOLKO
2827	EmployeeID	3
2827	OrderDate	1997-12-02
2827	RequiredDate	1997-12-30
2827	ShippedDate	1997-12-09
2827	ShipVia	1
2827	Freight	328.74
2827	ShipName	Folk och fä HB
2827	ShipAddress	Åkergatan 24
2827	ShipCity	Bräcke
2827	ShipPostalCode	S-844 67
2827	ShipCountry	Sweden
2828	OrderID	10763
2828	CustomerID	FOLIG
2828	EmployeeID	3
2828	OrderDate	1997-12-03
2828	RequiredDate	1997-12-31
2828	ShippedDate	1997-12-08
2828	ShipVia	3
2828	Freight	37.35
2828	ShipName	Folies gourmandes
2828	ShipAddress	184, chaussée de Tournai
2828	ShipCity	Lille
2828	ShipPostalCode	59000
2828	ShipCountry	France
2829	OrderID	10764
2829	CustomerID	ERNSH
2829	EmployeeID	6
2829	OrderDate	1997-12-03
2829	RequiredDate	1997-12-31
2829	ShippedDate	1997-12-08
2829	ShipVia	3
2829	Freight	145.45
2829	ShipName	Ernst Handel
2829	ShipAddress	Kirchgasse 6
2829	ShipCity	Graz
2829	ShipPostalCode	8010
2829	ShipCountry	Austria
2830	OrderID	10765
2830	CustomerID	QUICK
2830	EmployeeID	3
2830	OrderDate	1997-12-04
2830	RequiredDate	1998-01-01
2830	ShippedDate	1997-12-09
2830	ShipVia	3
2830	Freight	42.74
2830	ShipName	QUICK-Stop
2830	ShipAddress	Taucherstraße 10
2830	ShipCity	Cunewalde
2830	ShipPostalCode	01307
2830	ShipCountry	Germany
2831	OrderID	10766
2831	CustomerID	OTTIK
2831	EmployeeID	4
2831	OrderDate	1997-12-05
2831	RequiredDate	1998-01-02
2831	ShippedDate	1997-12-09
2831	ShipVia	1
2831	Freight	157.55
2831	ShipName	Ottilies Käseladen
2831	ShipAddress	Mehrheimerstr. 369
2831	ShipCity	Köln
2831	ShipPostalCode	50739
2831	ShipCountry	Germany
2832	OrderID	10767
2832	CustomerID	SUPRD
2832	EmployeeID	4
2832	OrderDate	1997-12-05
2832	RequiredDate	1998-01-02
2832	ShippedDate	1997-12-15
2832	ShipVia	3
2832	Freight	1.59
2832	ShipName	Suprêmes délices
2832	ShipAddress	Boulevard Tirou, 255
2832	ShipCity	Charleroi
2832	ShipPostalCode	B-6000
2832	ShipCountry	Belgium
2833	OrderID	10768
2833	CustomerID	AROUT
2833	EmployeeID	3
2833	OrderDate	1997-12-08
2833	RequiredDate	1998-01-05
2833	ShippedDate	1997-12-15
2833	ShipVia	2
2833	Freight	146.32
2833	ShipName	Around the Horn
2833	ShipAddress	Brook Farm Stratford St. Mary
2833	ShipCity	Colchester
2833	ShipRegion	Essex
2833	ShipPostalCode	CO7 6JX
2833	ShipCountry	UK
2834	OrderID	10769
2834	CustomerID	VAFFE
2834	EmployeeID	3
2834	OrderDate	1997-12-08
2834	RequiredDate	1998-01-05
2834	ShippedDate	1997-12-12
2834	ShipVia	1
2834	Freight	65.06
2834	ShipName	Vaffeljernet
2834	ShipAddress	Smagsloget 45
2834	ShipCity	Århus
2834	ShipPostalCode	8200
2834	ShipCountry	Denmark
2835	OrderID	10770
2835	CustomerID	HANAR
2835	EmployeeID	8
2835	OrderDate	1997-12-09
2835	RequiredDate	1998-01-06
2835	ShippedDate	1997-12-17
2835	ShipVia	3
2835	Freight	5.32
2835	ShipName	Hanari Carnes
2835	ShipAddress	Rua do Paço, 67
2835	ShipCity	Rio de Janeiro
2835	ShipRegion	RJ
2835	ShipPostalCode	05454-876
2835	ShipCountry	Brazil
2836	OrderID	10771
2836	CustomerID	ERNSH
2836	EmployeeID	9
2836	OrderDate	1997-12-10
2836	RequiredDate	1998-01-07
2836	ShippedDate	1998-01-02
2836	ShipVia	2
2836	Freight	11.19
2836	ShipName	Ernst Handel
2836	ShipAddress	Kirchgasse 6
2836	ShipCity	Graz
2836	ShipPostalCode	8010
2836	ShipCountry	Austria
2837	OrderID	10772
2837	CustomerID	LEHMS
2837	EmployeeID	3
2837	OrderDate	1997-12-10
2837	RequiredDate	1998-01-07
2837	ShippedDate	1997-12-19
2837	ShipVia	2
2837	Freight	91.28
2837	ShipName	Lehmanns Marktstand
2837	ShipAddress	Magazinweg 7
2837	ShipCity	Frankfurt a.M.
2837	ShipPostalCode	60528
2837	ShipCountry	Germany
2838	OrderID	10773
2838	CustomerID	ERNSH
2838	EmployeeID	1
2838	OrderDate	1997-12-11
2838	RequiredDate	1998-01-08
2838	ShippedDate	1997-12-16
2838	ShipVia	3
2838	Freight	96.43
2838	ShipName	Ernst Handel
2838	ShipAddress	Kirchgasse 6
2838	ShipCity	Graz
2838	ShipPostalCode	8010
2838	ShipCountry	Austria
2839	OrderID	10774
2839	CustomerID	FOLKO
2839	EmployeeID	4
2839	OrderDate	1997-12-11
2839	RequiredDate	1997-12-25
2839	ShippedDate	1997-12-12
2839	ShipVia	1
2839	Freight	48.2
2839	ShipName	Folk och fä HB
2839	ShipAddress	Åkergatan 24
2839	ShipCity	Bräcke
2839	ShipPostalCode	S-844 67
2839	ShipCountry	Sweden
2840	OrderID	10775
2840	CustomerID	THECR
2840	EmployeeID	7
2840	OrderDate	1997-12-12
2840	RequiredDate	1998-01-09
2840	ShippedDate	1997-12-26
2840	ShipVia	1
2840	Freight	20.25
2840	ShipName	The Cracker Box
2840	ShipAddress	55 Grizzly Peak Rd.
2840	ShipCity	Butte
2840	ShipRegion	MT
2840	ShipPostalCode	59801
2840	ShipCountry	USA
2841	OrderID	10776
2841	CustomerID	ERNSH
2841	EmployeeID	1
2841	OrderDate	1997-12-15
2841	RequiredDate	1998-01-12
2841	ShippedDate	1997-12-18
2841	ShipVia	3
2841	Freight	351.53
2841	ShipName	Ernst Handel
2841	ShipAddress	Kirchgasse 6
2841	ShipCity	Graz
2841	ShipPostalCode	8010
2841	ShipCountry	Austria
2842	OrderID	10777
2842	CustomerID	GOURL
2842	EmployeeID	7
2842	OrderDate	1997-12-15
2842	RequiredDate	1997-12-29
2842	ShippedDate	1998-01-21
2842	ShipVia	2
2842	Freight	3.01
2842	ShipName	Gourmet Lanchonetes
2842	ShipAddress	Av. Brasil, 442
2842	ShipCity	Campinas
2842	ShipRegion	SP
2842	ShipPostalCode	04876-786
2842	ShipCountry	Brazil
2843	OrderID	10778
2843	CustomerID	BERGS
2843	EmployeeID	3
2843	OrderDate	1997-12-16
2843	RequiredDate	1998-01-13
2843	ShippedDate	1997-12-24
2843	ShipVia	1
2843	Freight	6.79
2843	ShipName	Berglunds snabbköp
2843	ShipAddress	Berguvsvägen  8
2843	ShipCity	Luleå
2843	ShipPostalCode	S-958 22
2843	ShipCountry	Sweden
2844	OrderID	10779
2844	CustomerID	MORGK
2844	EmployeeID	3
2844	OrderDate	1997-12-16
2844	RequiredDate	1998-01-13
2844	ShippedDate	1998-01-14
2844	ShipVia	2
2844	Freight	58.13
2844	ShipName	Morgenstern Gesundkost
2844	ShipAddress	Heerstr. 22
2844	ShipCity	Leipzig
2844	ShipPostalCode	04179
2844	ShipCountry	Germany
2845	OrderID	10780
2845	CustomerID	LILAS
2845	EmployeeID	2
2845	OrderDate	1997-12-16
2845	RequiredDate	1997-12-30
2845	ShippedDate	1997-12-25
2845	ShipVia	1
2845	Freight	42.13
2845	ShipName	LILA-Supermercado
2845	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2845	ShipCity	Barquisimeto
2845	ShipRegion	Lara
2845	ShipPostalCode	3508
2845	ShipCountry	Venezuela
2846	OrderID	10781
2846	CustomerID	WARTH
2846	EmployeeID	2
2846	OrderDate	1997-12-17
2846	RequiredDate	1998-01-14
2846	ShippedDate	1997-12-19
2846	ShipVia	3
2846	Freight	73.16
2846	ShipName	Wartian Herkku
2846	ShipAddress	Torikatu 38
2846	ShipCity	Oulu
2846	ShipPostalCode	90110
2846	ShipCountry	Finland
2847	OrderID	10782
2847	CustomerID	CACTU
2847	EmployeeID	9
2847	OrderDate	1997-12-17
2847	RequiredDate	1998-01-14
2847	ShippedDate	1997-12-22
2847	ShipVia	3
2847	Freight	1.1
2847	ShipName	Cactus Comidas para llevar
2847	ShipAddress	Cerrito 333
2847	ShipCity	Buenos Aires
2847	ShipPostalCode	1010
2847	ShipCountry	Argentina
2848	OrderID	10783
2848	CustomerID	HANAR
2848	EmployeeID	4
2848	OrderDate	1997-12-18
2848	RequiredDate	1998-01-15
2848	ShippedDate	1997-12-19
2848	ShipVia	2
2848	Freight	124.98
2848	ShipName	Hanari Carnes
2848	ShipAddress	Rua do Paço, 67
2848	ShipCity	Rio de Janeiro
2848	ShipRegion	RJ
2848	ShipPostalCode	05454-876
2848	ShipCountry	Brazil
2849	OrderID	10784
2849	CustomerID	MAGAA
2849	EmployeeID	4
2849	OrderDate	1997-12-18
2849	RequiredDate	1998-01-15
2849	ShippedDate	1997-12-22
2849	ShipVia	3
2849	Freight	70.09
2849	ShipName	Magazzini Alimentari Riuniti
2849	ShipAddress	Via Ludovico il Moro 22
2849	ShipCity	Bergamo
2849	ShipPostalCode	24100
2849	ShipCountry	Italy
2850	OrderID	10785
2850	CustomerID	GROSR
2850	EmployeeID	1
2850	OrderDate	1997-12-18
2850	RequiredDate	1998-01-15
2850	ShippedDate	1997-12-24
2850	ShipVia	3
2850	Freight	1.51
2850	ShipName	GROSELLA-Restaurante
2850	ShipAddress	5ª Ave. Los Palos Grandes
2850	ShipCity	Caracas
2850	ShipRegion	DF
2850	ShipPostalCode	1081
2850	ShipCountry	Venezuela
2851	OrderID	10786
2851	CustomerID	QUEEN
2851	EmployeeID	8
2851	OrderDate	1997-12-19
2851	RequiredDate	1998-01-16
2851	ShippedDate	1997-12-23
2851	ShipVia	1
2851	Freight	110.87
2851	ShipName	Queen Cozinha
2851	ShipAddress	Alameda dos Canàrios, 891
2851	ShipCity	Sao Paulo
2851	ShipRegion	SP
2851	ShipPostalCode	05487-020
2851	ShipCountry	Brazil
2852	OrderID	10787
2852	CustomerID	LAMAI
2852	EmployeeID	2
2852	OrderDate	1997-12-19
2852	RequiredDate	1998-01-02
2852	ShippedDate	1997-12-26
2852	ShipVia	1
2852	Freight	249.93
2852	ShipName	La maison d'Asie
2852	ShipAddress	1 rue Alsace-Lorraine
2852	ShipCity	Toulouse
2852	ShipPostalCode	31000
2852	ShipCountry	France
2853	OrderID	10788
2853	CustomerID	QUICK
2853	EmployeeID	1
2853	OrderDate	1997-12-22
2853	RequiredDate	1998-01-19
2853	ShippedDate	1998-01-19
2853	ShipVia	2
2853	Freight	42.7
2853	ShipName	QUICK-Stop
2853	ShipAddress	Taucherstraße 10
2853	ShipCity	Cunewalde
2853	ShipPostalCode	01307
2853	ShipCountry	Germany
2854	OrderID	10789
2854	CustomerID	FOLIG
2854	EmployeeID	1
2854	OrderDate	1997-12-22
2854	RequiredDate	1998-01-19
2854	ShippedDate	1997-12-31
2854	ShipVia	2
2854	Freight	100.6
2854	ShipName	Folies gourmandes
2854	ShipAddress	184, chaussée de Tournai
2854	ShipCity	Lille
2854	ShipPostalCode	59000
2854	ShipCountry	France
2855	OrderID	10790
2855	CustomerID	GOURL
2855	EmployeeID	6
2855	OrderDate	1997-12-22
2855	RequiredDate	1998-01-19
2855	ShippedDate	1997-12-26
2855	ShipVia	1
2855	Freight	28.23
2855	ShipName	Gourmet Lanchonetes
2855	ShipAddress	Av. Brasil, 442
2855	ShipCity	Campinas
2855	ShipRegion	SP
2855	ShipPostalCode	04876-786
2855	ShipCountry	Brazil
2856	OrderID	10791
2856	CustomerID	FRANK
2856	EmployeeID	6
2856	OrderDate	1997-12-23
2856	RequiredDate	1998-01-20
2856	ShippedDate	1998-01-01
2856	ShipVia	2
2856	Freight	16.85
2856	ShipName	Frankenversand
2856	ShipAddress	Berliner Platz 43
2856	ShipCity	München
2856	ShipPostalCode	80805
2856	ShipCountry	Germany
2857	OrderID	10792
2857	CustomerID	WOLZA
2857	EmployeeID	1
2857	OrderDate	1997-12-23
2857	RequiredDate	1998-01-20
2857	ShippedDate	1997-12-31
2857	ShipVia	3
2857	Freight	23.79
2857	ShipName	Wolski Zajazd
2857	ShipAddress	ul. Filtrowa 68
2857	ShipCity	Warszawa
2857	ShipPostalCode	01-012
2857	ShipCountry	Poland
2858	OrderID	10793
2858	CustomerID	AROUT
2858	EmployeeID	3
2858	OrderDate	1997-12-24
2858	RequiredDate	1998-01-21
2858	ShippedDate	1998-01-08
2858	ShipVia	3
2858	Freight	4.52
2858	ShipName	Around the Horn
2858	ShipAddress	Brook Farm Stratford St. Mary
2858	ShipCity	Colchester
2858	ShipRegion	Essex
2858	ShipPostalCode	CO7 6JX
2858	ShipCountry	UK
2859	OrderID	10794
2859	CustomerID	QUEDE
2859	EmployeeID	6
2859	OrderDate	1997-12-24
2859	RequiredDate	1998-01-21
2859	ShippedDate	1998-01-02
2859	ShipVia	1
2859	Freight	21.49
2859	ShipName	Que Delícia
2859	ShipAddress	Rua da Panificadora, 12
2859	ShipCity	Rio de Janeiro
2859	ShipRegion	RJ
2859	ShipPostalCode	02389-673
2859	ShipCountry	Brazil
2860	OrderID	10795
2860	CustomerID	ERNSH
2860	EmployeeID	8
2860	OrderDate	1997-12-24
2860	RequiredDate	1998-01-21
2860	ShippedDate	1998-01-20
2860	ShipVia	2
2860	Freight	126.66
2860	ShipName	Ernst Handel
2860	ShipAddress	Kirchgasse 6
2860	ShipCity	Graz
2860	ShipPostalCode	8010
2860	ShipCountry	Austria
2861	OrderID	10796
2861	CustomerID	HILAA
2861	EmployeeID	3
2861	OrderDate	1997-12-25
2861	RequiredDate	1998-01-22
2861	ShippedDate	1998-01-14
2861	ShipVia	1
2861	Freight	26.52
2861	ShipName	HILARION-Abastos
2861	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2861	ShipCity	San Cristóbal
2861	ShipRegion	Táchira
2861	ShipPostalCode	5022
2861	ShipCountry	Venezuela
2862	OrderID	10797
2862	CustomerID	DRACD
2862	EmployeeID	7
2862	OrderDate	1997-12-25
2862	RequiredDate	1998-01-22
2862	ShippedDate	1998-01-05
2862	ShipVia	2
2862	Freight	33.35
2862	ShipName	Drachenblut Delikatessen
2862	ShipAddress	Walserweg 21
2862	ShipCity	Aachen
2862	ShipPostalCode	52066
2862	ShipCountry	Germany
2863	OrderID	10798
2863	CustomerID	ISLAT
2863	EmployeeID	2
2863	OrderDate	1997-12-26
2863	RequiredDate	1998-01-23
2863	ShippedDate	1998-01-05
2863	ShipVia	1
2863	Freight	2.33
2863	ShipName	Island Trading
2863	ShipAddress	Garden House Crowther Way
2863	ShipCity	Cowes
2863	ShipRegion	Isle of Wight
2863	ShipPostalCode	PO31 7PJ
2863	ShipCountry	UK
2864	OrderID	10799
2864	CustomerID	KOENE
2864	EmployeeID	9
2864	OrderDate	1997-12-26
2864	RequiredDate	1998-02-06
2864	ShippedDate	1998-01-05
2864	ShipVia	3
2864	Freight	30.76
2864	ShipName	Königlich Essen
2864	ShipAddress	Maubelstr. 90
2864	ShipCity	Brandenburg
2864	ShipPostalCode	14776
2864	ShipCountry	Germany
2865	OrderID	10800
2865	CustomerID	SEVES
2865	EmployeeID	1
2865	OrderDate	1997-12-26
2865	RequiredDate	1998-01-23
2865	ShippedDate	1998-01-05
2865	ShipVia	3
2865	Freight	137.44
2865	ShipName	Seven Seas Imports
2865	ShipAddress	90 Wadhurst Rd.
2865	ShipCity	London
2865	ShipPostalCode	OX15 4NB
2865	ShipCountry	UK
2866	OrderID	10801
2866	CustomerID	BOLID
2866	EmployeeID	4
2866	OrderDate	1997-12-29
2866	RequiredDate	1998-01-26
2866	ShippedDate	1997-12-31
2866	ShipVia	2
2866	Freight	97.09
2866	ShipName	Bólido Comidas preparadas
2866	ShipAddress	C/ Araquil, 67
2866	ShipCity	Madrid
2866	ShipPostalCode	28023
2866	ShipCountry	Spain
2867	OrderID	10802
2867	CustomerID	SIMOB
2867	EmployeeID	4
2867	OrderDate	1997-12-29
2867	RequiredDate	1998-01-26
2867	ShippedDate	1998-01-02
2867	ShipVia	2
2867	Freight	257.26
2867	ShipName	Simons bistro
2867	ShipAddress	Vinbæltet 34
2867	ShipCity	Kobenhavn
2867	ShipPostalCode	1734
2867	ShipCountry	Denmark
2868	OrderID	10803
2868	CustomerID	WELLI
2868	EmployeeID	4
2868	OrderDate	1997-12-30
2868	RequiredDate	1998-01-27
2868	ShippedDate	1998-01-06
2868	ShipVia	1
2868	Freight	55.23
2868	ShipName	Wellington Importadora
2868	ShipAddress	Rua do Mercado, 12
2868	ShipCity	Resende
2868	ShipRegion	SP
2868	ShipPostalCode	08737-363
2868	ShipCountry	Brazil
2869	OrderID	10804
2869	CustomerID	SEVES
2869	EmployeeID	6
2869	OrderDate	1997-12-30
2869	RequiredDate	1998-01-27
2869	ShippedDate	1998-01-07
2869	ShipVia	2
2869	Freight	27.33
2869	ShipName	Seven Seas Imports
2869	ShipAddress	90 Wadhurst Rd.
2869	ShipCity	London
2869	ShipPostalCode	OX15 4NB
2869	ShipCountry	UK
2870	OrderID	10805
2870	CustomerID	THEBI
2870	EmployeeID	2
2870	OrderDate	1997-12-30
2870	RequiredDate	1998-01-27
2870	ShippedDate	1998-01-09
2870	ShipVia	3
2870	Freight	237.34
2870	ShipName	The Big Cheese
2870	ShipAddress	89 Jefferson Way Suite 2
2870	ShipCity	Portland
2870	ShipRegion	OR
2870	ShipPostalCode	97201
2870	ShipCountry	USA
2871	OrderID	10806
2871	CustomerID	VICTE
2871	EmployeeID	3
2871	OrderDate	1997-12-31
2871	RequiredDate	1998-01-28
2871	ShippedDate	1998-01-05
2871	ShipVia	2
2871	Freight	22.11
2871	ShipName	Victuailles en stock
2871	ShipAddress	2, rue du Commerce
2871	ShipCity	Lyon
2871	ShipPostalCode	69004
2871	ShipCountry	France
2872	OrderID	10807
2872	CustomerID	FRANS
2872	EmployeeID	4
2872	OrderDate	1997-12-31
2872	RequiredDate	1998-01-28
2872	ShippedDate	1998-01-30
2872	ShipVia	1
2872	Freight	1.36
2872	ShipName	Franchi S.p.A.
2872	ShipAddress	Via Monte Bianco 34
2872	ShipCity	Torino
2872	ShipPostalCode	10100
2872	ShipCountry	Italy
2873	OrderID	10808
2873	CustomerID	OLDWO
2873	EmployeeID	2
2873	OrderDate	1998-01-01
2873	RequiredDate	1998-01-29
2873	ShippedDate	1998-01-09
2873	ShipVia	3
2873	Freight	45.53
2873	ShipName	Old World Delicatessen
2873	ShipAddress	2743 Bering St.
2873	ShipCity	Anchorage
2873	ShipRegion	AK
2873	ShipPostalCode	99508
2873	ShipCountry	USA
2874	OrderID	10809
2874	CustomerID	WELLI
2874	EmployeeID	7
2874	OrderDate	1998-01-01
2874	RequiredDate	1998-01-29
2874	ShippedDate	1998-01-07
2874	ShipVia	1
2874	Freight	4.87
2874	ShipName	Wellington Importadora
2874	ShipAddress	Rua do Mercado, 12
2874	ShipCity	Resende
2874	ShipRegion	SP
2874	ShipPostalCode	08737-363
2874	ShipCountry	Brazil
2875	OrderID	10810
2875	CustomerID	LAUGB
2875	EmployeeID	2
2875	OrderDate	1998-01-01
2875	RequiredDate	1998-01-29
2875	ShippedDate	1998-01-07
2875	ShipVia	3
2875	Freight	4.33
2875	ShipName	Laughing Bacchus Wine Cellars
2875	ShipAddress	2319 Elm St.
2875	ShipCity	Vancouver
2875	ShipRegion	BC
2875	ShipPostalCode	V3F 2K1
2875	ShipCountry	Canada
2876	OrderID	10811
2876	CustomerID	LINOD
2876	EmployeeID	8
2876	OrderDate	1998-01-02
2876	RequiredDate	1998-01-30
2876	ShippedDate	1998-01-08
2876	ShipVia	1
2876	Freight	31.22
2876	ShipName	LINO-Delicateses
2876	ShipAddress	Ave. 5 de Mayo Porlamar
2876	ShipCity	I. de Margarita
2876	ShipRegion	Nueva Esparta
2876	ShipPostalCode	4980
2876	ShipCountry	Venezuela
2877	OrderID	10812
2877	CustomerID	REGGC
2877	EmployeeID	5
2877	OrderDate	1998-01-02
2877	RequiredDate	1998-01-30
2877	ShippedDate	1998-01-12
2877	ShipVia	1
2877	Freight	59.78
2877	ShipName	Reggiani Caseifici
2877	ShipAddress	Strada Provinciale 124
2877	ShipCity	Reggio Emilia
2877	ShipPostalCode	42100
2877	ShipCountry	Italy
2878	OrderID	10813
2878	CustomerID	RICAR
2878	EmployeeID	1
2878	OrderDate	1998-01-05
2878	RequiredDate	1998-02-02
2878	ShippedDate	1998-01-09
2878	ShipVia	1
2878	Freight	47.38
2878	ShipName	Ricardo Adocicados
2878	ShipAddress	Av. Copacabana, 267
2878	ShipCity	Rio de Janeiro
2878	ShipRegion	RJ
2878	ShipPostalCode	02389-890
2878	ShipCountry	Brazil
2879	OrderID	10814
2879	CustomerID	VICTE
2879	EmployeeID	3
2879	OrderDate	1998-01-05
2879	RequiredDate	1998-02-02
2879	ShippedDate	1998-01-14
2879	ShipVia	3
2879	Freight	130.94
2879	ShipName	Victuailles en stock
2879	ShipAddress	2, rue du Commerce
2879	ShipCity	Lyon
2879	ShipPostalCode	69004
2879	ShipCountry	France
2880	OrderID	10815
2880	CustomerID	SAVEA
2880	EmployeeID	2
2880	OrderDate	1998-01-05
2880	RequiredDate	1998-02-02
2880	ShippedDate	1998-01-14
2880	ShipVia	3
2880	Freight	14.62
2880	ShipName	Save-a-lot Markets
2880	ShipAddress	187 Suffolk Ln.
2880	ShipCity	Boise
2880	ShipRegion	ID
2880	ShipPostalCode	83720
2880	ShipCountry	USA
2881	OrderID	10816
2881	CustomerID	GREAL
2881	EmployeeID	4
2881	OrderDate	1998-01-06
2881	RequiredDate	1998-02-03
2881	ShippedDate	1998-02-04
2881	ShipVia	2
2881	Freight	719.78
2881	ShipName	Great Lakes Food Market
2881	ShipAddress	2732 Baker Blvd.
2881	ShipCity	Eugene
2881	ShipRegion	OR
2881	ShipPostalCode	97403
2881	ShipCountry	USA
2882	OrderID	10817
2882	CustomerID	KOENE
2882	EmployeeID	3
2882	OrderDate	1998-01-06
2882	RequiredDate	1998-01-20
2882	ShippedDate	1998-01-13
2882	ShipVia	2
2882	Freight	306.07
2882	ShipName	Königlich Essen
2882	ShipAddress	Maubelstr. 90
2882	ShipCity	Brandenburg
2882	ShipPostalCode	14776
2882	ShipCountry	Germany
2883	OrderID	10818
2883	CustomerID	MAGAA
2883	EmployeeID	7
2883	OrderDate	1998-01-07
2883	RequiredDate	1998-02-04
2883	ShippedDate	1998-01-12
2883	ShipVia	3
2883	Freight	65.48
2883	ShipName	Magazzini Alimentari Riuniti
2883	ShipAddress	Via Ludovico il Moro 22
2883	ShipCity	Bergamo
2883	ShipPostalCode	24100
2883	ShipCountry	Italy
2884	OrderID	10819
2884	CustomerID	CACTU
2884	EmployeeID	2
2884	OrderDate	1998-01-07
2884	RequiredDate	1998-02-04
2884	ShippedDate	1998-01-16
2884	ShipVia	3
2884	Freight	19.76
2884	ShipName	Cactus Comidas para llevar
2884	ShipAddress	Cerrito 333
2884	ShipCity	Buenos Aires
2884	ShipPostalCode	1010
2884	ShipCountry	Argentina
2885	OrderID	10820
2885	CustomerID	RATTC
2885	EmployeeID	3
2885	OrderDate	1998-01-07
2885	RequiredDate	1998-02-04
2885	ShippedDate	1998-01-13
2885	ShipVia	2
2885	Freight	37.52
2885	ShipName	Rattlesnake Canyon Grocery
2885	ShipAddress	2817 Milton Dr.
2885	ShipCity	Albuquerque
2885	ShipRegion	NM
2885	ShipPostalCode	87110
2885	ShipCountry	USA
2886	OrderID	10821
2886	CustomerID	SPLIR
2886	EmployeeID	1
2886	OrderDate	1998-01-08
2886	RequiredDate	1998-02-05
2886	ShippedDate	1998-01-15
2886	ShipVia	1
2886	Freight	36.68
2886	ShipName	Split Rail Beer & Ale
2886	ShipAddress	P.O. Box 555
2886	ShipCity	Lander
2886	ShipRegion	WY
2886	ShipPostalCode	82520
2886	ShipCountry	USA
2887	OrderID	10822
2887	CustomerID	TRAIH
2887	EmployeeID	6
2887	OrderDate	1998-01-08
2887	RequiredDate	1998-02-05
2887	ShippedDate	1998-01-16
2887	ShipVia	3
2887	Freight	7.0
2887	ShipName	Trail's Head Gourmet Provisioners
2887	ShipAddress	722 DaVinci Blvd.
2887	ShipCity	Kirkland
2887	ShipRegion	WA
2887	ShipPostalCode	98034
2887	ShipCountry	USA
2888	OrderID	10823
2888	CustomerID	LILAS
2888	EmployeeID	5
2888	OrderDate	1998-01-09
2888	RequiredDate	1998-02-06
2888	ShippedDate	1998-01-13
2888	ShipVia	2
2888	Freight	163.97
2888	ShipName	LILA-Supermercado
2888	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2888	ShipCity	Barquisimeto
2888	ShipRegion	Lara
2888	ShipPostalCode	3508
2888	ShipCountry	Venezuela
2889	OrderID	10824
2889	CustomerID	FOLKO
2889	EmployeeID	8
2889	OrderDate	1998-01-09
2889	RequiredDate	1998-02-06
2889	ShippedDate	1998-01-30
2889	ShipVia	1
2889	Freight	1.23
2889	ShipName	Folk och fä HB
2889	ShipAddress	Åkergatan 24
2889	ShipCity	Bräcke
2889	ShipPostalCode	S-844 67
2889	ShipCountry	Sweden
2890	OrderID	10825
2890	CustomerID	DRACD
2890	EmployeeID	1
2890	OrderDate	1998-01-09
2890	RequiredDate	1998-02-06
2890	ShippedDate	1998-01-14
2890	ShipVia	1
2890	Freight	79.25
2890	ShipName	Drachenblut Delikatessen
2890	ShipAddress	Walserweg 21
2890	ShipCity	Aachen
2890	ShipPostalCode	52066
2890	ShipCountry	Germany
2891	OrderID	10826
2891	CustomerID	BLONP
2891	EmployeeID	6
2891	OrderDate	1998-01-12
2891	RequiredDate	1998-02-09
2891	ShippedDate	1998-02-06
2891	ShipVia	1
2891	Freight	7.09
2891	ShipName	Blondel père et fils
2891	ShipAddress	24, place Kléber
2891	ShipCity	Strasbourg
2891	ShipPostalCode	67000
2891	ShipCountry	France
2892	OrderID	10827
2892	CustomerID	BONAP
2892	EmployeeID	1
2892	OrderDate	1998-01-12
2892	RequiredDate	1998-01-26
2892	ShippedDate	1998-02-06
2892	ShipVia	2
2892	Freight	63.54
2892	ShipName	Bon app'
2892	ShipAddress	12, rue des Bouchers
2892	ShipCity	Marseille
2892	ShipPostalCode	13008
2892	ShipCountry	France
2893	OrderID	10828
2893	CustomerID	RANCH
2893	EmployeeID	9
2893	OrderDate	1998-01-13
2893	RequiredDate	1998-01-27
2893	ShippedDate	1998-02-04
2893	ShipVia	1
2893	Freight	90.85
2893	ShipName	Rancho grande
2893	ShipAddress	Av. del Libertador 900
2893	ShipCity	Buenos Aires
2893	ShipPostalCode	1010
2893	ShipCountry	Argentina
2894	OrderID	10829
2894	CustomerID	ISLAT
2894	EmployeeID	9
2894	OrderDate	1998-01-13
2894	RequiredDate	1998-02-10
2894	ShippedDate	1998-01-23
2894	ShipVia	1
2894	Freight	154.72
2894	ShipName	Island Trading
2894	ShipAddress	Garden House Crowther Way
2894	ShipCity	Cowes
2894	ShipRegion	Isle of Wight
2894	ShipPostalCode	PO31 7PJ
2894	ShipCountry	UK
2895	OrderID	10830
2895	CustomerID	TRADH
2895	EmployeeID	4
2895	OrderDate	1998-01-13
2895	RequiredDate	1998-02-24
2895	ShippedDate	1998-01-21
2895	ShipVia	2
2895	Freight	81.83
2895	ShipName	Tradiçao Hipermercados
2895	ShipAddress	Av. Inês de Castro, 414
2895	ShipCity	Sao Paulo
2895	ShipRegion	SP
2895	ShipPostalCode	05634-030
2895	ShipCountry	Brazil
2896	OrderID	10831
2896	CustomerID	SANTG
2896	EmployeeID	3
2896	OrderDate	1998-01-14
2896	RequiredDate	1998-02-11
2896	ShippedDate	1998-01-23
2896	ShipVia	2
2896	Freight	72.19
2896	ShipName	Santé Gourmet
2896	ShipAddress	Erling Skakkes gate 78
2896	ShipCity	Stavern
2896	ShipPostalCode	4110
2896	ShipCountry	Norway
2897	OrderID	10832
2897	CustomerID	LAMAI
2897	EmployeeID	2
2897	OrderDate	1998-01-14
2897	RequiredDate	1998-02-11
2897	ShippedDate	1998-01-19
2897	ShipVia	2
2897	Freight	43.26
2897	ShipName	La maison d'Asie
2897	ShipAddress	1 rue Alsace-Lorraine
2897	ShipCity	Toulouse
2897	ShipPostalCode	31000
2897	ShipCountry	France
2898	OrderID	10833
2898	CustomerID	OTTIK
2898	EmployeeID	6
2898	OrderDate	1998-01-15
2898	RequiredDate	1998-02-12
2898	ShippedDate	1998-01-23
2898	ShipVia	2
2898	Freight	71.49
2898	ShipName	Ottilies Käseladen
2898	ShipAddress	Mehrheimerstr. 369
2898	ShipCity	Köln
2898	ShipPostalCode	50739
2898	ShipCountry	Germany
2899	OrderID	10834
2899	CustomerID	TRADH
2899	EmployeeID	1
2899	OrderDate	1998-01-15
2899	RequiredDate	1998-02-12
2899	ShippedDate	1998-01-19
2899	ShipVia	3
2899	Freight	29.78
2899	ShipName	Tradiçao Hipermercados
2899	ShipAddress	Av. Inês de Castro, 414
2899	ShipCity	Sao Paulo
2899	ShipRegion	SP
2899	ShipPostalCode	05634-030
2899	ShipCountry	Brazil
2900	OrderID	10835
2900	CustomerID	ALFKI
2900	EmployeeID	1
2900	OrderDate	1998-01-15
2900	RequiredDate	1998-02-12
2900	ShippedDate	1998-01-21
2900	ShipVia	3
2900	Freight	69.53
2900	ShipName	Alfred's Futterkiste
2900	ShipAddress	Obere Str. 57
2900	ShipCity	Berlin
2900	ShipPostalCode	12209
2900	ShipCountry	Germany
2901	OrderID	10836
2901	CustomerID	ERNSH
2901	EmployeeID	7
2901	OrderDate	1998-01-16
2901	RequiredDate	1998-02-13
2901	ShippedDate	1998-01-21
2901	ShipVia	1
2901	Freight	411.88
2901	ShipName	Ernst Handel
2901	ShipAddress	Kirchgasse 6
2901	ShipCity	Graz
2901	ShipPostalCode	8010
2901	ShipCountry	Austria
2902	OrderID	10837
2902	CustomerID	BERGS
2902	EmployeeID	9
2902	OrderDate	1998-01-16
2902	RequiredDate	1998-02-13
2902	ShippedDate	1998-01-23
2902	ShipVia	3
2902	Freight	13.32
2902	ShipName	Berglunds snabbköp
2902	ShipAddress	Berguvsvägen  8
2902	ShipCity	Luleå
2902	ShipPostalCode	S-958 22
2902	ShipCountry	Sweden
2903	OrderID	10838
2903	CustomerID	LINOD
2903	EmployeeID	3
2903	OrderDate	1998-01-19
2903	RequiredDate	1998-02-16
2903	ShippedDate	1998-01-23
2903	ShipVia	3
2903	Freight	59.28
2903	ShipName	LINO-Delicateses
2903	ShipAddress	Ave. 5 de Mayo Porlamar
2903	ShipCity	I. de Margarita
2903	ShipRegion	Nueva Esparta
2903	ShipPostalCode	4980
2903	ShipCountry	Venezuela
2904	OrderID	10839
2904	CustomerID	TRADH
2904	EmployeeID	3
2904	OrderDate	1998-01-19
2904	RequiredDate	1998-02-16
2904	ShippedDate	1998-01-22
2904	ShipVia	3
2904	Freight	35.43
2904	ShipName	Tradiçao Hipermercados
2904	ShipAddress	Av. Inês de Castro, 414
2904	ShipCity	Sao Paulo
2904	ShipRegion	SP
2904	ShipPostalCode	05634-030
2904	ShipCountry	Brazil
2905	OrderID	10840
2905	CustomerID	LINOD
2905	EmployeeID	4
2905	OrderDate	1998-01-19
2905	RequiredDate	1998-03-02
2905	ShippedDate	1998-02-16
2905	ShipVia	2
2905	Freight	2.71
2905	ShipName	LINO-Delicateses
2905	ShipAddress	Ave. 5 de Mayo Porlamar
2905	ShipCity	I. de Margarita
2905	ShipRegion	Nueva Esparta
2905	ShipPostalCode	4980
2905	ShipCountry	Venezuela
2906	OrderID	10841
2906	CustomerID	SUPRD
2906	EmployeeID	5
2906	OrderDate	1998-01-20
2906	RequiredDate	1998-02-17
2906	ShippedDate	1998-01-29
2906	ShipVia	2
2906	Freight	424.3
2906	ShipName	Suprêmes délices
2906	ShipAddress	Boulevard Tirou, 255
2906	ShipCity	Charleroi
2906	ShipPostalCode	B-6000
2906	ShipCountry	Belgium
2907	OrderID	10842
2907	CustomerID	TORTU
2907	EmployeeID	1
2907	OrderDate	1998-01-20
2907	RequiredDate	1998-02-17
2907	ShippedDate	1998-01-29
2907	ShipVia	3
2907	Freight	54.42
2907	ShipName	Tortuga Restaurante
2907	ShipAddress	Avda. Azteca 123
2907	ShipCity	México D.F.
2907	ShipPostalCode	05033
2907	ShipCountry	Mexico
2908	OrderID	10843
2908	CustomerID	VICTE
2908	EmployeeID	4
2908	OrderDate	1998-01-21
2908	RequiredDate	1998-02-18
2908	ShippedDate	1998-01-26
2908	ShipVia	2
2908	Freight	9.26
2908	ShipName	Victuailles en stock
2908	ShipAddress	2, rue du Commerce
2908	ShipCity	Lyon
2908	ShipPostalCode	69004
2908	ShipCountry	France
2909	OrderID	10844
2909	CustomerID	PICCO
2909	EmployeeID	8
2909	OrderDate	1998-01-21
2909	RequiredDate	1998-02-18
2909	ShippedDate	1998-01-26
2909	ShipVia	2
2909	Freight	25.22
2909	ShipName	Piccolo und mehr
2909	ShipAddress	Geislweg 14
2909	ShipCity	Salzburg
2909	ShipPostalCode	5020
2909	ShipCountry	Austria
2910	OrderID	10845
2910	CustomerID	QUICK
2910	EmployeeID	8
2910	OrderDate	1998-01-21
2910	RequiredDate	1998-02-04
2910	ShippedDate	1998-01-30
2910	ShipVia	1
2910	Freight	212.98
2910	ShipName	QUICK-Stop
2910	ShipAddress	Taucherstraße 10
2910	ShipCity	Cunewalde
2910	ShipPostalCode	01307
2910	ShipCountry	Germany
2911	OrderID	10846
2911	CustomerID	SUPRD
2911	EmployeeID	2
2911	OrderDate	1998-01-22
2911	RequiredDate	1998-03-05
2911	ShippedDate	1998-01-23
2911	ShipVia	3
2911	Freight	56.46
2911	ShipName	Suprêmes délices
2911	ShipAddress	Boulevard Tirou, 255
2911	ShipCity	Charleroi
2911	ShipPostalCode	B-6000
2911	ShipCountry	Belgium
2912	OrderID	10847
2912	CustomerID	SAVEA
2912	EmployeeID	4
2912	OrderDate	1998-01-22
2912	RequiredDate	1998-02-05
2912	ShippedDate	1998-02-10
2912	ShipVia	3
2912	Freight	487.57
2912	ShipName	Save-a-lot Markets
2912	ShipAddress	187 Suffolk Ln.
2912	ShipCity	Boise
2912	ShipRegion	ID
2912	ShipPostalCode	83720
2912	ShipCountry	USA
2913	OrderID	10848
2913	CustomerID	CONSH
2913	EmployeeID	7
2913	OrderDate	1998-01-23
2913	RequiredDate	1998-02-20
2913	ShippedDate	1998-01-29
2913	ShipVia	2
2913	Freight	38.24
2913	ShipName	Consolidated Holdings
2913	ShipAddress	Berkeley Gardens 12  Brewery
2913	ShipCity	London
2913	ShipPostalCode	WX1 6LT
2913	ShipCountry	UK
2914	OrderID	10849
2914	CustomerID	KOENE
2914	EmployeeID	9
2914	OrderDate	1998-01-23
2914	RequiredDate	1998-02-20
2914	ShippedDate	1998-01-30
2914	ShipVia	2
2914	Freight	0.56
2914	ShipName	Königlich Essen
2914	ShipAddress	Maubelstr. 90
2914	ShipCity	Brandenburg
2914	ShipPostalCode	14776
2914	ShipCountry	Germany
2915	OrderID	10850
2915	CustomerID	VICTE
2915	EmployeeID	1
2915	OrderDate	1998-01-23
2915	RequiredDate	1998-03-06
2915	ShippedDate	1998-01-30
2915	ShipVia	1
2915	Freight	49.19
2915	ShipName	Victuailles en stock
2915	ShipAddress	2, rue du Commerce
2915	ShipCity	Lyon
2915	ShipPostalCode	69004
2915	ShipCountry	France
2916	OrderID	10851
2916	CustomerID	RICAR
2916	EmployeeID	5
2916	OrderDate	1998-01-26
2916	RequiredDate	1998-02-23
2916	ShippedDate	1998-02-02
2916	ShipVia	1
2916	Freight	160.55
2916	ShipName	Ricardo Adocicados
2916	ShipAddress	Av. Copacabana, 267
2916	ShipCity	Rio de Janeiro
2916	ShipRegion	RJ
2916	ShipPostalCode	02389-890
2916	ShipCountry	Brazil
2917	OrderID	10852
2917	CustomerID	RATTC
2917	EmployeeID	8
2917	OrderDate	1998-01-26
2917	RequiredDate	1998-02-09
2917	ShippedDate	1998-01-30
2917	ShipVia	1
2917	Freight	174.05
2917	ShipName	Rattlesnake Canyon Grocery
2917	ShipAddress	2817 Milton Dr.
2917	ShipCity	Albuquerque
2917	ShipRegion	NM
2917	ShipPostalCode	87110
2917	ShipCountry	USA
2918	OrderID	10853
2918	CustomerID	BLAUS
2918	EmployeeID	9
2918	OrderDate	1998-01-27
2918	RequiredDate	1998-02-24
2918	ShippedDate	1998-02-03
2918	ShipVia	2
2918	Freight	53.83
2918	ShipName	Blauer See Delikatessen
2918	ShipAddress	Forsterstr. 57
2918	ShipCity	Mannheim
2918	ShipPostalCode	68306
2918	ShipCountry	Germany
2919	OrderID	10854
2919	CustomerID	ERNSH
2919	EmployeeID	3
2919	OrderDate	1998-01-27
2919	RequiredDate	1998-02-24
2919	ShippedDate	1998-02-05
2919	ShipVia	2
2919	Freight	100.22
2919	ShipName	Ernst Handel
2919	ShipAddress	Kirchgasse 6
2919	ShipCity	Graz
2919	ShipPostalCode	8010
2919	ShipCountry	Austria
2920	OrderID	10855
2920	CustomerID	OLDWO
2920	EmployeeID	3
2920	OrderDate	1998-01-27
2920	RequiredDate	1998-02-24
2920	ShippedDate	1998-02-04
2920	ShipVia	1
2920	Freight	170.97
2920	ShipName	Old World Delicatessen
2920	ShipAddress	2743 Bering St.
2920	ShipCity	Anchorage
2920	ShipRegion	AK
2920	ShipPostalCode	99508
2920	ShipCountry	USA
2921	OrderID	10856
2921	CustomerID	ANTON
2921	EmployeeID	3
2921	OrderDate	1998-01-28
2921	RequiredDate	1998-02-25
2921	ShippedDate	1998-02-10
2921	ShipVia	2
2921	Freight	58.43
2921	ShipName	Antonio Moreno Taquería
2921	ShipAddress	Mataderos  2312
2921	ShipCity	México D.F.
2921	ShipPostalCode	05023
2921	ShipCountry	Mexico
2922	OrderID	10857
2922	CustomerID	BERGS
2922	EmployeeID	8
2922	OrderDate	1998-01-28
2922	RequiredDate	1998-02-25
2922	ShippedDate	1998-02-06
2922	ShipVia	2
2922	Freight	188.85
2922	ShipName	Berglunds snabbköp
2922	ShipAddress	Berguvsvägen  8
2922	ShipCity	Luleå
2922	ShipPostalCode	S-958 22
2922	ShipCountry	Sweden
2923	OrderID	10858
2923	CustomerID	LACOR
2923	EmployeeID	2
2923	OrderDate	1998-01-29
2923	RequiredDate	1998-02-26
2923	ShippedDate	1998-02-03
2923	ShipVia	1
2923	Freight	52.51
2923	ShipName	La corne d'abondance
2923	ShipAddress	67, avenue de l'Europe
2923	ShipCity	Versailles
2923	ShipPostalCode	78000
2923	ShipCountry	France
2924	OrderID	10859
2924	CustomerID	FRANK
2924	EmployeeID	1
2924	OrderDate	1998-01-29
2924	RequiredDate	1998-02-26
2924	ShippedDate	1998-02-02
2924	ShipVia	2
2924	Freight	76.1
2924	ShipName	Frankenversand
2924	ShipAddress	Berliner Platz 43
2924	ShipCity	München
2924	ShipPostalCode	80805
2924	ShipCountry	Germany
2925	OrderID	10860
2925	CustomerID	FRANR
2925	EmployeeID	3
2925	OrderDate	1998-01-29
2925	RequiredDate	1998-02-26
2925	ShippedDate	1998-02-04
2925	ShipVia	3
2925	Freight	19.26
2925	ShipName	France restauration
2925	ShipAddress	54, rue Royale
2925	ShipCity	Nantes
2925	ShipPostalCode	44000
2925	ShipCountry	France
2926	OrderID	10861
2926	CustomerID	WHITC
2926	EmployeeID	4
2926	OrderDate	1998-01-30
2926	RequiredDate	1998-02-27
2926	ShippedDate	1998-02-17
2926	ShipVia	2
2926	Freight	14.93
2926	ShipName	White Clover Markets
2926	ShipAddress	1029 - 12th Ave. S.
2926	ShipCity	Seattle
2926	ShipRegion	WA
2926	ShipPostalCode	98124
2926	ShipCountry	USA
2927	OrderID	10862
2927	CustomerID	LEHMS
2927	EmployeeID	8
2927	OrderDate	1998-01-30
2927	RequiredDate	1998-03-13
2927	ShippedDate	1998-02-02
2927	ShipVia	2
2927	Freight	53.23
2927	ShipName	Lehmanns Marktstand
2927	ShipAddress	Magazinweg 7
2927	ShipCity	Frankfurt a.M.
2927	ShipPostalCode	60528
2927	ShipCountry	Germany
2928	OrderID	10863
2928	CustomerID	HILAA
2928	EmployeeID	4
2928	OrderDate	1998-02-02
2928	RequiredDate	1998-03-02
2928	ShippedDate	1998-02-17
2928	ShipVia	2
2928	Freight	30.26
2928	ShipName	HILARION-Abastos
2928	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2928	ShipCity	San Cristóbal
2928	ShipRegion	Táchira
2928	ShipPostalCode	5022
2928	ShipCountry	Venezuela
2929	OrderID	10864
2929	CustomerID	AROUT
2929	EmployeeID	4
2929	OrderDate	1998-02-02
2929	RequiredDate	1998-03-02
2929	ShippedDate	1998-02-09
2929	ShipVia	2
2929	Freight	3.04
2929	ShipName	Around the Horn
2929	ShipAddress	Brook Farm Stratford St. Mary
2929	ShipCity	Colchester
2929	ShipRegion	Essex
2929	ShipPostalCode	CO7 6JX
2929	ShipCountry	UK
2930	OrderID	10865
2930	CustomerID	QUICK
2930	EmployeeID	2
2930	OrderDate	1998-02-02
2930	RequiredDate	1998-02-16
2930	ShippedDate	1998-02-12
2930	ShipVia	1
2930	Freight	348.14
2930	ShipName	QUICK-Stop
2930	ShipAddress	Taucherstraße 10
2930	ShipCity	Cunewalde
2930	ShipPostalCode	01307
2930	ShipCountry	Germany
2931	OrderID	10866
2931	CustomerID	BERGS
2931	EmployeeID	5
2931	OrderDate	1998-02-03
2931	RequiredDate	1998-03-03
2931	ShippedDate	1998-02-12
2931	ShipVia	1
2931	Freight	109.11
2931	ShipName	Berglunds snabbköp
2931	ShipAddress	Berguvsvägen  8
2931	ShipCity	Luleå
2931	ShipPostalCode	S-958 22
2931	ShipCountry	Sweden
2932	OrderID	10867
2932	CustomerID	LONEP
2932	EmployeeID	6
2932	OrderDate	1998-02-03
2932	RequiredDate	1998-03-17
2932	ShippedDate	1998-02-11
2932	ShipVia	1
2932	Freight	1.93
2932	ShipName	Lonesome Pine Restaurant
2932	ShipAddress	89 Chiaroscuro Rd.
2932	ShipCity	Portland
2932	ShipRegion	OR
2932	ShipPostalCode	97219
2932	ShipCountry	USA
2933	OrderID	10868
2933	CustomerID	QUEEN
2933	EmployeeID	7
2933	OrderDate	1998-02-04
2933	RequiredDate	1998-03-04
2933	ShippedDate	1998-02-23
2933	ShipVia	2
2933	Freight	191.27
2933	ShipName	Queen Cozinha
2933	ShipAddress	Alameda dos Canàrios, 891
2933	ShipCity	Sao Paulo
2933	ShipRegion	SP
2933	ShipPostalCode	05487-020
2933	ShipCountry	Brazil
2934	OrderID	10869
2934	CustomerID	SEVES
2934	EmployeeID	5
2934	OrderDate	1998-02-04
2934	RequiredDate	1998-03-04
2934	ShippedDate	1998-02-09
2934	ShipVia	1
2934	Freight	143.28
2934	ShipName	Seven Seas Imports
2934	ShipAddress	90 Wadhurst Rd.
2934	ShipCity	London
2934	ShipPostalCode	OX15 4NB
2934	ShipCountry	UK
2935	OrderID	10870
2935	CustomerID	WOLZA
2935	EmployeeID	5
2935	OrderDate	1998-02-04
2935	RequiredDate	1998-03-04
2935	ShippedDate	1998-02-13
2935	ShipVia	3
2935	Freight	12.04
2935	ShipName	Wolski Zajazd
2935	ShipAddress	ul. Filtrowa 68
2935	ShipCity	Warszawa
2935	ShipPostalCode	01-012
2935	ShipCountry	Poland
2936	OrderID	10871
2936	CustomerID	BONAP
2936	EmployeeID	9
2936	OrderDate	1998-02-05
2936	RequiredDate	1998-03-05
2936	ShippedDate	1998-02-10
2936	ShipVia	2
2936	Freight	112.27
2936	ShipName	Bon app'
2936	ShipAddress	12, rue des Bouchers
2936	ShipCity	Marseille
2936	ShipPostalCode	13008
2936	ShipCountry	France
2937	OrderID	10872
2937	CustomerID	GODOS
2937	EmployeeID	5
2937	OrderDate	1998-02-05
2937	RequiredDate	1998-03-05
2937	ShippedDate	1998-02-09
2937	ShipVia	2
2937	Freight	175.32
2937	ShipName	Godos Cocina Típica
2937	ShipAddress	C/ Romero, 33
2937	ShipCity	Sevilla
2937	ShipPostalCode	41101
2937	ShipCountry	Spain
2938	OrderID	10873
2938	CustomerID	WILMK
2938	EmployeeID	4
2938	OrderDate	1998-02-06
2938	RequiredDate	1998-03-06
2938	ShippedDate	1998-02-09
2938	ShipVia	1
2938	Freight	0.82
2938	ShipName	Wilman Kala
2938	ShipAddress	Keskuskatu 45
2938	ShipCity	Helsinki
2938	ShipPostalCode	21240
2938	ShipCountry	Finland
2939	OrderID	10874
2939	CustomerID	GODOS
2939	EmployeeID	5
2939	OrderDate	1998-02-06
2939	RequiredDate	1998-03-06
2939	ShippedDate	1998-02-11
2939	ShipVia	2
2939	Freight	19.58
2939	ShipName	Godos Cocina Típica
2939	ShipAddress	C/ Romero, 33
2939	ShipCity	Sevilla
2939	ShipPostalCode	41101
2939	ShipCountry	Spain
2940	OrderID	10875
2940	CustomerID	BERGS
2940	EmployeeID	4
2940	OrderDate	1998-02-06
2940	RequiredDate	1998-03-06
2940	ShippedDate	1998-03-03
2940	ShipVia	2
2940	Freight	32.37
2940	ShipName	Berglunds snabbköp
2940	ShipAddress	Berguvsvägen  8
2940	ShipCity	Luleå
2940	ShipPostalCode	S-958 22
2940	ShipCountry	Sweden
2941	OrderID	10876
2941	CustomerID	BONAP
2941	EmployeeID	7
2941	OrderDate	1998-02-09
2941	RequiredDate	1998-03-09
2941	ShippedDate	1998-02-12
2941	ShipVia	3
2941	Freight	60.42
2941	ShipName	Bon app'
2941	ShipAddress	12, rue des Bouchers
2941	ShipCity	Marseille
2941	ShipPostalCode	13008
2941	ShipCountry	France
2942	OrderID	10877
2942	CustomerID	RICAR
2942	EmployeeID	1
2942	OrderDate	1998-02-09
2942	RequiredDate	1998-03-09
2942	ShippedDate	1998-02-19
2942	ShipVia	1
2942	Freight	38.06
2942	ShipName	Ricardo Adocicados
2942	ShipAddress	Av. Copacabana, 267
2942	ShipCity	Rio de Janeiro
2942	ShipRegion	RJ
2942	ShipPostalCode	02389-890
2942	ShipCountry	Brazil
2943	OrderID	10878
2943	CustomerID	QUICK
2943	EmployeeID	4
2943	OrderDate	1998-02-10
2943	RequiredDate	1998-03-10
2943	ShippedDate	1998-02-12
2943	ShipVia	1
2943	Freight	46.69
2943	ShipName	QUICK-Stop
2943	ShipAddress	Taucherstraße 10
2943	ShipCity	Cunewalde
2943	ShipPostalCode	01307
2943	ShipCountry	Germany
2944	OrderID	10879
2944	CustomerID	WILMK
2944	EmployeeID	3
2944	OrderDate	1998-02-10
2944	RequiredDate	1998-03-10
2944	ShippedDate	1998-02-12
2944	ShipVia	3
2944	Freight	8.5
2944	ShipName	Wilman Kala
2944	ShipAddress	Keskuskatu 45
2944	ShipCity	Helsinki
2944	ShipPostalCode	21240
2944	ShipCountry	Finland
2945	OrderID	10880
2945	CustomerID	FOLKO
2945	EmployeeID	7
2945	OrderDate	1998-02-10
2945	RequiredDate	1998-03-24
2945	ShippedDate	1998-02-18
2945	ShipVia	1
2945	Freight	88.01
2945	ShipName	Folk och fä HB
2945	ShipAddress	Åkergatan 24
2945	ShipCity	Bräcke
2945	ShipPostalCode	S-844 67
2945	ShipCountry	Sweden
2946	OrderID	10881
2946	CustomerID	CACTU
2946	EmployeeID	4
2946	OrderDate	1998-02-11
2946	RequiredDate	1998-03-11
2946	ShippedDate	1998-02-18
2946	ShipVia	1
2946	Freight	2.84
2946	ShipName	Cactus Comidas para llevar
2946	ShipAddress	Cerrito 333
2946	ShipCity	Buenos Aires
2946	ShipPostalCode	1010
2946	ShipCountry	Argentina
2947	OrderID	10882
2947	CustomerID	SAVEA
2947	EmployeeID	4
2947	OrderDate	1998-02-11
2947	RequiredDate	1998-03-11
2947	ShippedDate	1998-02-20
2947	ShipVia	3
2947	Freight	23.1
2947	ShipName	Save-a-lot Markets
2947	ShipAddress	187 Suffolk Ln.
2947	ShipCity	Boise
2947	ShipRegion	ID
2947	ShipPostalCode	83720
2947	ShipCountry	USA
2948	OrderID	10883
2948	CustomerID	LONEP
2948	EmployeeID	8
2948	OrderDate	1998-02-12
2948	RequiredDate	1998-03-12
2948	ShippedDate	1998-02-20
2948	ShipVia	3
2948	Freight	0.53
2948	ShipName	Lonesome Pine Restaurant
2948	ShipAddress	89 Chiaroscuro Rd.
2948	ShipCity	Portland
2948	ShipRegion	OR
2948	ShipPostalCode	97219
2948	ShipCountry	USA
2949	OrderID	10884
2949	CustomerID	LETSS
2949	EmployeeID	4
2949	OrderDate	1998-02-12
2949	RequiredDate	1998-03-12
2949	ShippedDate	1998-02-13
2949	ShipVia	2
2949	Freight	90.97
2949	ShipName	Let's Stop N Shop
2949	ShipAddress	87 Polk St. Suite 5
2949	ShipCity	San Francisco
2949	ShipRegion	CA
2949	ShipPostalCode	94117
2949	ShipCountry	USA
2950	OrderID	10885
2950	CustomerID	SUPRD
2950	EmployeeID	6
2950	OrderDate	1998-02-12
2950	RequiredDate	1998-03-12
2950	ShippedDate	1998-02-18
2950	ShipVia	3
2950	Freight	5.64
2950	ShipName	Suprêmes délices
2950	ShipAddress	Boulevard Tirou, 255
2950	ShipCity	Charleroi
2950	ShipPostalCode	B-6000
2950	ShipCountry	Belgium
2951	OrderID	10886
2951	CustomerID	HANAR
2951	EmployeeID	1
2951	OrderDate	1998-02-13
2951	RequiredDate	1998-03-13
2951	ShippedDate	1998-03-02
2951	ShipVia	1
2951	Freight	4.99
2951	ShipName	Hanari Carnes
2951	ShipAddress	Rua do Paço, 67
2951	ShipCity	Rio de Janeiro
2951	ShipRegion	RJ
2951	ShipPostalCode	05454-876
2951	ShipCountry	Brazil
2952	OrderID	10887
2952	CustomerID	GALED
2952	EmployeeID	8
2952	OrderDate	1998-02-13
2952	RequiredDate	1998-03-13
2952	ShippedDate	1998-02-16
2952	ShipVia	3
2952	Freight	1.25
2952	ShipName	Galería del gastronómo
2952	ShipAddress	Rambla de Cataluña, 23
2952	ShipCity	Barcelona
2952	ShipPostalCode	8022
2952	ShipCountry	Spain
2953	OrderID	10888
2953	CustomerID	GODOS
2953	EmployeeID	1
2953	OrderDate	1998-02-16
2953	RequiredDate	1998-03-16
2953	ShippedDate	1998-02-23
2953	ShipVia	2
2953	Freight	51.87
2953	ShipName	Godos Cocina Típica
2953	ShipAddress	C/ Romero, 33
2953	ShipCity	Sevilla
2953	ShipPostalCode	41101
2953	ShipCountry	Spain
2954	OrderID	10889
2954	CustomerID	RATTC
2954	EmployeeID	9
2954	OrderDate	1998-02-16
2954	RequiredDate	1998-03-16
2954	ShippedDate	1998-02-23
2954	ShipVia	3
2954	Freight	280.61
2954	ShipName	Rattlesnake Canyon Grocery
2954	ShipAddress	2817 Milton Dr.
2954	ShipCity	Albuquerque
2954	ShipRegion	NM
2954	ShipPostalCode	87110
2954	ShipCountry	USA
2955	OrderID	10890
2955	CustomerID	DUMON
2955	EmployeeID	7
2955	OrderDate	1998-02-16
2955	RequiredDate	1998-03-16
2955	ShippedDate	1998-02-18
2955	ShipVia	1
2955	Freight	32.76
2955	ShipName	Du monde entier
2955	ShipAddress	67, rue des Cinquante Otages
2955	ShipCity	Nantes
2955	ShipPostalCode	44000
2955	ShipCountry	France
2956	OrderID	10891
2956	CustomerID	LEHMS
2956	EmployeeID	7
2956	OrderDate	1998-02-17
2956	RequiredDate	1998-03-17
2956	ShippedDate	1998-02-19
2956	ShipVia	2
2956	Freight	20.37
2956	ShipName	Lehmanns Marktstand
2956	ShipAddress	Magazinweg 7
2956	ShipCity	Frankfurt a.M.
2956	ShipPostalCode	60528
2956	ShipCountry	Germany
2957	OrderID	10892
2957	CustomerID	MAISD
2957	EmployeeID	4
2957	OrderDate	1998-02-17
2957	RequiredDate	1998-03-17
2957	ShippedDate	1998-02-19
2957	ShipVia	2
2957	Freight	120.27
2957	ShipName	Maison Dewey
2957	ShipAddress	Rue Joseph-Bens 532
2957	ShipCity	Bruxelles
2957	ShipPostalCode	B-1180
2957	ShipCountry	Belgium
2958	OrderID	10893
2958	CustomerID	KOENE
2958	EmployeeID	9
2958	OrderDate	1998-02-18
2958	RequiredDate	1998-03-18
2958	ShippedDate	1998-02-20
2958	ShipVia	2
2958	Freight	77.78
2958	ShipName	Königlich Essen
2958	ShipAddress	Maubelstr. 90
2958	ShipCity	Brandenburg
2958	ShipPostalCode	14776
2958	ShipCountry	Germany
2959	OrderID	10894
2959	CustomerID	SAVEA
2959	EmployeeID	1
2959	OrderDate	1998-02-18
2959	RequiredDate	1998-03-18
2959	ShippedDate	1998-02-20
2959	ShipVia	1
2959	Freight	116.13
2959	ShipName	Save-a-lot Markets
2959	ShipAddress	187 Suffolk Ln.
2959	ShipCity	Boise
2959	ShipRegion	ID
2959	ShipPostalCode	83720
2959	ShipCountry	USA
2960	OrderID	10895
2960	CustomerID	ERNSH
2960	EmployeeID	3
2960	OrderDate	1998-02-18
2960	RequiredDate	1998-03-18
2960	ShippedDate	1998-02-23
2960	ShipVia	1
2960	Freight	162.75
2960	ShipName	Ernst Handel
2960	ShipAddress	Kirchgasse 6
2960	ShipCity	Graz
2960	ShipPostalCode	8010
2960	ShipCountry	Austria
2961	OrderID	10896
2961	CustomerID	MAISD
2961	EmployeeID	7
2961	OrderDate	1998-02-19
2961	RequiredDate	1998-03-19
2961	ShippedDate	1998-02-27
2961	ShipVia	3
2961	Freight	32.45
2961	ShipName	Maison Dewey
2961	ShipAddress	Rue Joseph-Bens 532
2961	ShipCity	Bruxelles
2961	ShipPostalCode	B-1180
2961	ShipCountry	Belgium
2962	OrderID	10897
2962	CustomerID	HUNGO
2962	EmployeeID	3
2962	OrderDate	1998-02-19
2962	RequiredDate	1998-03-19
2962	ShippedDate	1998-02-25
2962	ShipVia	2
2962	Freight	603.54
2962	ShipName	Hungry Owl All-Night Grocers
2962	ShipAddress	8 Johnstown Road
2962	ShipCity	Cork
2962	ShipRegion	Co. Cork
2962	ShipCountry	Ireland
2963	OrderID	10898
2963	CustomerID	OCEAN
2963	EmployeeID	4
2963	OrderDate	1998-02-20
2963	RequiredDate	1998-03-20
2963	ShippedDate	1998-03-06
2963	ShipVia	2
2963	Freight	1.27
2963	ShipName	Océano Atlántico Ltda.
2963	ShipAddress	Ing. Gustavo Moncada 8585 Piso 20-A
2963	ShipCity	Buenos Aires
2963	ShipPostalCode	1010
2963	ShipCountry	Argentina
2964	OrderID	10899
2964	CustomerID	LILAS
2964	EmployeeID	5
2964	OrderDate	1998-02-20
2964	RequiredDate	1998-03-20
2964	ShippedDate	1998-02-26
2964	ShipVia	3
2964	Freight	1.21
2964	ShipName	LILA-Supermercado
2964	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
2964	ShipCity	Barquisimeto
2964	ShipRegion	Lara
2964	ShipPostalCode	3508
2964	ShipCountry	Venezuela
2965	OrderID	10900
2965	CustomerID	WELLI
2965	EmployeeID	1
2965	OrderDate	1998-02-20
2965	RequiredDate	1998-03-20
2965	ShippedDate	1998-03-04
2965	ShipVia	2
2965	Freight	1.66
2965	ShipName	Wellington Importadora
2965	ShipAddress	Rua do Mercado, 12
2965	ShipCity	Resende
2965	ShipRegion	SP
2965	ShipPostalCode	08737-363
2965	ShipCountry	Brazil
2966	OrderID	10901
2966	CustomerID	HILAA
2966	EmployeeID	4
2966	OrderDate	1998-02-23
2966	RequiredDate	1998-03-23
2966	ShippedDate	1998-02-26
2966	ShipVia	1
2966	Freight	62.09
2966	ShipName	HILARION-Abastos
2966	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
2966	ShipCity	San Cristóbal
2966	ShipRegion	Táchira
2966	ShipPostalCode	5022
2966	ShipCountry	Venezuela
2967	OrderID	10902
2967	CustomerID	FOLKO
2967	EmployeeID	1
2967	OrderDate	1998-02-23
2967	RequiredDate	1998-03-23
2967	ShippedDate	1998-03-03
2967	ShipVia	1
2967	Freight	44.15
2967	ShipName	Folk och fä HB
2967	ShipAddress	Åkergatan 24
2967	ShipCity	Bräcke
2967	ShipPostalCode	S-844 67
2967	ShipCountry	Sweden
2968	OrderID	10903
2968	CustomerID	HANAR
2968	EmployeeID	3
2968	OrderDate	1998-02-24
2968	RequiredDate	1998-03-24
2968	ShippedDate	1998-03-04
2968	ShipVia	3
2968	Freight	36.71
2968	ShipName	Hanari Carnes
2968	ShipAddress	Rua do Paço, 67
2968	ShipCity	Rio de Janeiro
2968	ShipRegion	RJ
2968	ShipPostalCode	05454-876
2968	ShipCountry	Brazil
2969	OrderID	10904
2969	CustomerID	WHITC
2969	EmployeeID	3
2969	OrderDate	1998-02-24
2969	RequiredDate	1998-03-24
2969	ShippedDate	1998-02-27
2969	ShipVia	3
2969	Freight	162.95
2969	ShipName	White Clover Markets
2969	ShipAddress	1029 - 12th Ave. S.
2969	ShipCity	Seattle
2969	ShipRegion	WA
2969	ShipPostalCode	98124
2969	ShipCountry	USA
2970	OrderID	10905
2970	CustomerID	WELLI
2970	EmployeeID	9
2970	OrderDate	1998-02-24
2970	RequiredDate	1998-03-24
2970	ShippedDate	1998-03-06
2970	ShipVia	2
2970	Freight	13.72
2970	ShipName	Wellington Importadora
2970	ShipAddress	Rua do Mercado, 12
2970	ShipCity	Resende
2970	ShipRegion	SP
2970	ShipPostalCode	08737-363
2970	ShipCountry	Brazil
2971	OrderID	10906
2971	CustomerID	WOLZA
2971	EmployeeID	4
2971	OrderDate	1998-02-25
2971	RequiredDate	1998-03-11
2971	ShippedDate	1998-03-03
2971	ShipVia	3
2971	Freight	26.29
2971	ShipName	Wolski Zajazd
2971	ShipAddress	ul. Filtrowa 68
2971	ShipCity	Warszawa
2971	ShipPostalCode	01-012
2971	ShipCountry	Poland
2972	OrderID	10907
2972	CustomerID	SPECD
2972	EmployeeID	6
2972	OrderDate	1998-02-25
2972	RequiredDate	1998-03-25
2972	ShippedDate	1998-02-27
2972	ShipVia	3
2972	Freight	9.19
2972	ShipName	Spécialités du monde
2972	ShipAddress	25, rue Lauriston
2972	ShipCity	Paris
2972	ShipPostalCode	75016
2972	ShipCountry	France
2973	OrderID	10908
2973	CustomerID	REGGC
2973	EmployeeID	4
2973	OrderDate	1998-02-26
2973	RequiredDate	1998-03-26
2973	ShippedDate	1998-03-06
2973	ShipVia	2
2973	Freight	32.96
2973	ShipName	Reggiani Caseifici
2973	ShipAddress	Strada Provinciale 124
2973	ShipCity	Reggio Emilia
2973	ShipPostalCode	42100
2973	ShipCountry	Italy
2974	OrderID	10909
2974	CustomerID	SANTG
2974	EmployeeID	1
2974	OrderDate	1998-02-26
2974	RequiredDate	1998-03-26
2974	ShippedDate	1998-03-10
2974	ShipVia	2
2974	Freight	53.05
2974	ShipName	Santé Gourmet
2974	ShipAddress	Erling Skakkes gate 78
2974	ShipCity	Stavern
2974	ShipPostalCode	4110
2974	ShipCountry	Norway
2975	OrderID	10910
2975	CustomerID	WILMK
2975	EmployeeID	1
2975	OrderDate	1998-02-26
2975	RequiredDate	1998-03-26
2975	ShippedDate	1998-03-04
2975	ShipVia	3
2975	Freight	38.11
2975	ShipName	Wilman Kala
2975	ShipAddress	Keskuskatu 45
2975	ShipCity	Helsinki
2975	ShipPostalCode	21240
2975	ShipCountry	Finland
2976	OrderID	10911
2976	CustomerID	GODOS
2976	EmployeeID	3
2976	OrderDate	1998-02-26
2976	RequiredDate	1998-03-26
2976	ShippedDate	1998-03-05
2976	ShipVia	1
2976	Freight	38.19
2976	ShipName	Godos Cocina Típica
2976	ShipAddress	C/ Romero, 33
2976	ShipCity	Sevilla
2976	ShipPostalCode	41101
2976	ShipCountry	Spain
2977	OrderID	10912
2977	CustomerID	HUNGO
2977	EmployeeID	2
2977	OrderDate	1998-02-26
2977	RequiredDate	1998-03-26
2977	ShippedDate	1998-03-18
2977	ShipVia	2
2977	Freight	580.91
2977	ShipName	Hungry Owl All-Night Grocers
2977	ShipAddress	8 Johnstown Road
2977	ShipCity	Cork
2977	ShipRegion	Co. Cork
2977	ShipCountry	Ireland
2978	OrderID	10913
2978	CustomerID	QUEEN
2978	EmployeeID	4
2978	OrderDate	1998-02-26
2978	RequiredDate	1998-03-26
2978	ShippedDate	1998-03-04
2978	ShipVia	1
2978	Freight	33.05
2978	ShipName	Queen Cozinha
2978	ShipAddress	Alameda dos Canàrios, 891
2978	ShipCity	Sao Paulo
2978	ShipRegion	SP
2978	ShipPostalCode	05487-020
2978	ShipCountry	Brazil
2979	OrderID	10914
2979	CustomerID	QUEEN
2979	EmployeeID	6
2979	OrderDate	1998-02-27
2979	RequiredDate	1998-03-27
2979	ShippedDate	1998-03-02
2979	ShipVia	1
2979	Freight	21.19
2979	ShipName	Queen Cozinha
2979	ShipAddress	Alameda dos Canàrios, 891
2979	ShipCity	Sao Paulo
2979	ShipRegion	SP
2979	ShipPostalCode	05487-020
2979	ShipCountry	Brazil
2980	OrderID	10915
2980	CustomerID	TORTU
2980	EmployeeID	2
2980	OrderDate	1998-02-27
2980	RequiredDate	1998-03-27
2980	ShippedDate	1998-03-02
2980	ShipVia	2
2980	Freight	3.51
2980	ShipName	Tortuga Restaurante
2980	ShipAddress	Avda. Azteca 123
2980	ShipCity	México D.F.
2980	ShipPostalCode	05033
2980	ShipCountry	Mexico
2981	OrderID	10916
2981	CustomerID	RANCH
2981	EmployeeID	1
2981	OrderDate	1998-02-27
2981	RequiredDate	1998-03-27
2981	ShippedDate	1998-03-09
2981	ShipVia	2
2981	Freight	63.77
2981	ShipName	Rancho grande
2981	ShipAddress	Av. del Libertador 900
2981	ShipCity	Buenos Aires
2981	ShipPostalCode	1010
2981	ShipCountry	Argentina
2982	OrderID	10917
2982	CustomerID	ROMEY
2982	EmployeeID	4
2982	OrderDate	1998-03-02
2982	RequiredDate	1998-03-30
2982	ShippedDate	1998-03-11
2982	ShipVia	2
2982	Freight	8.29
2982	ShipName	Romero y tomillo
2982	ShipAddress	Gran Vía, 1
2982	ShipCity	Madrid
2982	ShipPostalCode	28001
2982	ShipCountry	Spain
2983	OrderID	10918
2983	CustomerID	BOTTM
2983	EmployeeID	3
2983	OrderDate	1998-03-02
2983	RequiredDate	1998-03-30
2983	ShippedDate	1998-03-11
2983	ShipVia	3
2983	Freight	48.83
2983	ShipName	Bottom-Dollar Markets
2983	ShipAddress	23 Tsawassen Blvd.
2983	ShipCity	Tsawassen
2983	ShipRegion	BC
2983	ShipPostalCode	T2F 8M4
2983	ShipCountry	Canada
2984	OrderID	10919
2984	CustomerID	LINOD
2984	EmployeeID	2
2984	OrderDate	1998-03-02
2984	RequiredDate	1998-03-30
2984	ShippedDate	1998-03-04
2984	ShipVia	2
2984	Freight	19.8
2984	ShipName	LINO-Delicateses
2984	ShipAddress	Ave. 5 de Mayo Porlamar
2984	ShipCity	I. de Margarita
2984	ShipRegion	Nueva Esparta
2984	ShipPostalCode	4980
2984	ShipCountry	Venezuela
2985	OrderID	10920
2985	CustomerID	AROUT
2985	EmployeeID	4
2985	OrderDate	1998-03-03
2985	RequiredDate	1998-03-31
2985	ShippedDate	1998-03-09
2985	ShipVia	2
2985	Freight	29.61
2985	ShipName	Around the Horn
2985	ShipAddress	Brook Farm Stratford St. Mary
2985	ShipCity	Colchester
2985	ShipRegion	Essex
2985	ShipPostalCode	CO7 6JX
2985	ShipCountry	UK
2986	OrderID	10921
2986	CustomerID	VAFFE
2986	EmployeeID	1
2986	OrderDate	1998-03-03
2986	RequiredDate	1998-04-14
2986	ShippedDate	1998-03-09
2986	ShipVia	1
2986	Freight	176.48
2986	ShipName	Vaffeljernet
2986	ShipAddress	Smagsloget 45
2986	ShipCity	Århus
2986	ShipPostalCode	8200
2986	ShipCountry	Denmark
2987	OrderID	10922
2987	CustomerID	HANAR
2987	EmployeeID	5
2987	OrderDate	1998-03-03
2987	RequiredDate	1998-03-31
2987	ShippedDate	1998-03-05
2987	ShipVia	3
2987	Freight	62.74
2987	ShipName	Hanari Carnes
2987	ShipAddress	Rua do Paço, 67
2987	ShipCity	Rio de Janeiro
2987	ShipRegion	RJ
2987	ShipPostalCode	05454-876
2987	ShipCountry	Brazil
2988	OrderID	10923
2988	CustomerID	LAMAI
2988	EmployeeID	7
2988	OrderDate	1998-03-03
2988	RequiredDate	1998-04-14
2988	ShippedDate	1998-03-13
2988	ShipVia	3
2988	Freight	68.26
2988	ShipName	La maison d'Asie
2988	ShipAddress	1 rue Alsace-Lorraine
2988	ShipCity	Toulouse
2988	ShipPostalCode	31000
2988	ShipCountry	France
2989	OrderID	10924
2989	CustomerID	BERGS
2989	EmployeeID	3
2989	OrderDate	1998-03-04
2989	RequiredDate	1998-04-01
2989	ShippedDate	1998-04-08
2989	ShipVia	2
2989	Freight	151.52
2989	ShipName	Berglunds snabbköp
2989	ShipAddress	Berguvsvägen  8
2989	ShipCity	Luleå
2989	ShipPostalCode	S-958 22
2989	ShipCountry	Sweden
2990	OrderID	10925
2990	CustomerID	HANAR
2990	EmployeeID	3
2990	OrderDate	1998-03-04
2990	RequiredDate	1998-04-01
2990	ShippedDate	1998-03-13
2990	ShipVia	1
2990	Freight	2.27
2990	ShipName	Hanari Carnes
2990	ShipAddress	Rua do Paço, 67
2990	ShipCity	Rio de Janeiro
2990	ShipRegion	RJ
2990	ShipPostalCode	05454-876
2990	ShipCountry	Brazil
2991	OrderID	10926
2991	CustomerID	ANATR
2991	EmployeeID	4
2991	OrderDate	1998-03-04
2991	RequiredDate	1998-04-01
2991	ShippedDate	1998-03-11
2991	ShipVia	3
2991	Freight	39.92
2991	ShipName	Ana Trujillo Emparedados y helados
2991	ShipAddress	Avda. de la Constitución 2222
2991	ShipCity	México D.F.
2991	ShipPostalCode	05021
2991	ShipCountry	Mexico
2992	OrderID	10927
2992	CustomerID	LACOR
2992	EmployeeID	4
2992	OrderDate	1998-03-05
2992	RequiredDate	1998-04-02
2992	ShippedDate	1998-04-08
2992	ShipVia	1
2992	Freight	19.79
2992	ShipName	La corne d'abondance
2992	ShipAddress	67, avenue de l'Europe
2992	ShipCity	Versailles
2992	ShipPostalCode	78000
2992	ShipCountry	France
2993	OrderID	10928
2993	CustomerID	GALED
2993	EmployeeID	1
2993	OrderDate	1998-03-05
2993	RequiredDate	1998-04-02
2993	ShippedDate	1998-03-18
2993	ShipVia	1
2993	Freight	1.36
2993	ShipName	Galería del gastronómo
2993	ShipAddress	Rambla de Cataluña, 23
2993	ShipCity	Barcelona
2993	ShipPostalCode	8022
2993	ShipCountry	Spain
2994	OrderID	10929
2994	CustomerID	FRANK
2994	EmployeeID	6
2994	OrderDate	1998-03-05
2994	RequiredDate	1998-04-02
2994	ShippedDate	1998-03-12
2994	ShipVia	1
2994	Freight	33.93
2994	ShipName	Frankenversand
2994	ShipAddress	Berliner Platz 43
2994	ShipCity	München
2994	ShipPostalCode	80805
2994	ShipCountry	Germany
2995	OrderID	10930
2995	CustomerID	SUPRD
2995	EmployeeID	4
2995	OrderDate	1998-03-06
2995	RequiredDate	1998-04-17
2995	ShippedDate	1998-03-18
2995	ShipVia	3
2995	Freight	15.55
2995	ShipName	Suprêmes délices
2995	ShipAddress	Boulevard Tirou, 255
2995	ShipCity	Charleroi
2995	ShipPostalCode	B-6000
2995	ShipCountry	Belgium
2996	OrderID	10931
2996	CustomerID	RICSU
2996	EmployeeID	4
2996	OrderDate	1998-03-06
2996	RequiredDate	1998-03-20
2996	ShippedDate	1998-03-19
2996	ShipVia	2
2996	Freight	13.6
2996	ShipName	Richter Supermarkt
2996	ShipAddress	Starenweg 5
2996	ShipCity	Genève
2996	ShipPostalCode	1204
2996	ShipCountry	Switzerland
2997	OrderID	10932
2997	CustomerID	BONAP
2997	EmployeeID	8
2997	OrderDate	1998-03-06
2997	RequiredDate	1998-04-03
2997	ShippedDate	1998-03-24
2997	ShipVia	1
2997	Freight	134.64
2997	ShipName	Bon app'
2997	ShipAddress	12, rue des Bouchers
2997	ShipCity	Marseille
2997	ShipPostalCode	13008
2997	ShipCountry	France
2998	OrderID	10933
2998	CustomerID	ISLAT
2998	EmployeeID	6
2998	OrderDate	1998-03-06
2998	RequiredDate	1998-04-03
2998	ShippedDate	1998-03-16
2998	ShipVia	3
2998	Freight	54.15
2998	ShipName	Island Trading
2998	ShipAddress	Garden House Crowther Way
2998	ShipCity	Cowes
2998	ShipRegion	Isle of Wight
2998	ShipPostalCode	PO31 7PJ
2998	ShipCountry	UK
2999	OrderID	10934
2999	CustomerID	LEHMS
2999	EmployeeID	3
2999	OrderDate	1998-03-09
2999	RequiredDate	1998-04-06
2999	ShippedDate	1998-03-12
2999	ShipVia	3
2999	Freight	32.01
2999	ShipName	Lehmanns Marktstand
2999	ShipAddress	Magazinweg 7
2999	ShipCity	Frankfurt a.M.
2999	ShipPostalCode	60528
2999	ShipCountry	Germany
3000	OrderID	10935
3000	CustomerID	WELLI
3000	EmployeeID	4
3000	OrderDate	1998-03-09
3000	RequiredDate	1998-04-06
3000	ShippedDate	1998-03-18
3000	ShipVia	3
3000	Freight	47.59
3000	ShipName	Wellington Importadora
3000	ShipAddress	Rua do Mercado, 12
3000	ShipCity	Resende
3000	ShipRegion	SP
3000	ShipPostalCode	08737-363
3000	ShipCountry	Brazil
3001	OrderID	10936
3001	CustomerID	GREAL
3001	EmployeeID	3
3001	OrderDate	1998-03-09
3001	RequiredDate	1998-04-06
3001	ShippedDate	1998-03-18
3001	ShipVia	2
3001	Freight	33.68
3001	ShipName	Great Lakes Food Market
3001	ShipAddress	2732 Baker Blvd.
3001	ShipCity	Eugene
3001	ShipRegion	OR
3001	ShipPostalCode	97403
3001	ShipCountry	USA
3002	OrderID	10937
3002	CustomerID	CACTU
3002	EmployeeID	7
3002	OrderDate	1998-03-10
3002	RequiredDate	1998-03-24
3002	ShippedDate	1998-03-13
3002	ShipVia	3
3002	Freight	31.51
3002	ShipName	Cactus Comidas para llevar
3002	ShipAddress	Cerrito 333
3002	ShipCity	Buenos Aires
3002	ShipPostalCode	1010
3002	ShipCountry	Argentina
3003	OrderID	10938
3003	CustomerID	QUICK
3003	EmployeeID	3
3003	OrderDate	1998-03-10
3003	RequiredDate	1998-04-07
3003	ShippedDate	1998-03-16
3003	ShipVia	2
3003	Freight	31.89
3003	ShipName	QUICK-Stop
3003	ShipAddress	Taucherstraße 10
3003	ShipCity	Cunewalde
3003	ShipPostalCode	01307
3003	ShipCountry	Germany
3004	OrderID	10939
3004	CustomerID	MAGAA
3004	EmployeeID	2
3004	OrderDate	1998-03-10
3004	RequiredDate	1998-04-07
3004	ShippedDate	1998-03-13
3004	ShipVia	2
3004	Freight	76.33
3004	ShipName	Magazzini Alimentari Riuniti
3004	ShipAddress	Via Ludovico il Moro 22
3004	ShipCity	Bergamo
3004	ShipPostalCode	24100
3004	ShipCountry	Italy
3005	OrderID	10940
3005	CustomerID	BONAP
3005	EmployeeID	8
3005	OrderDate	1998-03-11
3005	RequiredDate	1998-04-08
3005	ShippedDate	1998-03-23
3005	ShipVia	3
3005	Freight	19.77
3005	ShipName	Bon app'
3005	ShipAddress	12, rue des Bouchers
3005	ShipCity	Marseille
3005	ShipPostalCode	13008
3005	ShipCountry	France
3006	OrderID	10941
3006	CustomerID	SAVEA
3006	EmployeeID	7
3006	OrderDate	1998-03-11
3006	RequiredDate	1998-04-08
3006	ShippedDate	1998-03-20
3006	ShipVia	2
3006	Freight	400.81
3006	ShipName	Save-a-lot Markets
3006	ShipAddress	187 Suffolk Ln.
3006	ShipCity	Boise
3006	ShipRegion	ID
3006	ShipPostalCode	83720
3006	ShipCountry	USA
3007	OrderID	10942
3007	CustomerID	REGGC
3007	EmployeeID	9
3007	OrderDate	1998-03-11
3007	RequiredDate	1998-04-08
3007	ShippedDate	1998-03-18
3007	ShipVia	3
3007	Freight	17.95
3007	ShipName	Reggiani Caseifici
3007	ShipAddress	Strada Provinciale 124
3007	ShipCity	Reggio Emilia
3007	ShipPostalCode	42100
3007	ShipCountry	Italy
3008	OrderID	10943
3008	CustomerID	BSBEV
3008	EmployeeID	4
3008	OrderDate	1998-03-11
3008	RequiredDate	1998-04-08
3008	ShippedDate	1998-03-19
3008	ShipVia	2
3008	Freight	2.17
3008	ShipName	B's Beverages
3008	ShipAddress	Fauntleroy Circus
3008	ShipCity	London
3008	ShipPostalCode	EC2 5NT
3008	ShipCountry	UK
3009	OrderID	10944
3009	CustomerID	BOTTM
3009	EmployeeID	6
3009	OrderDate	1998-03-12
3009	RequiredDate	1998-03-26
3009	ShippedDate	1998-03-13
3009	ShipVia	3
3009	Freight	52.92
3009	ShipName	Bottom-Dollar Markets
3009	ShipAddress	23 Tsawassen Blvd.
3009	ShipCity	Tsawassen
3009	ShipRegion	BC
3009	ShipPostalCode	T2F 8M4
3009	ShipCountry	Canada
3010	OrderID	10945
3010	CustomerID	MORGK
3010	EmployeeID	4
3010	OrderDate	1998-03-12
3010	RequiredDate	1998-04-09
3010	ShippedDate	1998-03-18
3010	ShipVia	1
3010	Freight	10.22
3010	ShipName	Morgenstern Gesundkost
3010	ShipAddress	Heerstr. 22
3010	ShipCity	Leipzig
3010	ShipPostalCode	04179
3010	ShipCountry	Germany
3011	OrderID	10946
3011	CustomerID	VAFFE
3011	EmployeeID	1
3011	OrderDate	1998-03-12
3011	RequiredDate	1998-04-09
3011	ShippedDate	1998-03-19
3011	ShipVia	2
3011	Freight	27.2
3011	ShipName	Vaffeljernet
3011	ShipAddress	Smagsloget 45
3011	ShipCity	Århus
3011	ShipPostalCode	8200
3011	ShipCountry	Denmark
3012	OrderID	10947
3012	CustomerID	BSBEV
3012	EmployeeID	3
3012	OrderDate	1998-03-13
3012	RequiredDate	1998-04-10
3012	ShippedDate	1998-03-16
3012	ShipVia	2
3012	Freight	3.26
3012	ShipName	B's Beverages
3012	ShipAddress	Fauntleroy Circus
3012	ShipCity	London
3012	ShipPostalCode	EC2 5NT
3012	ShipCountry	UK
3013	OrderID	10948
3013	CustomerID	GODOS
3013	EmployeeID	3
3013	OrderDate	1998-03-13
3013	RequiredDate	1998-04-10
3013	ShippedDate	1998-03-19
3013	ShipVia	3
3013	Freight	23.39
3013	ShipName	Godos Cocina Típica
3013	ShipAddress	C/ Romero, 33
3013	ShipCity	Sevilla
3013	ShipPostalCode	41101
3013	ShipCountry	Spain
3014	OrderID	10949
3014	CustomerID	BOTTM
3014	EmployeeID	2
3014	OrderDate	1998-03-13
3014	RequiredDate	1998-04-10
3014	ShippedDate	1998-03-17
3014	ShipVia	3
3014	Freight	74.44
3014	ShipName	Bottom-Dollar Markets
3014	ShipAddress	23 Tsawassen Blvd.
3014	ShipCity	Tsawassen
3014	ShipRegion	BC
3014	ShipPostalCode	T2F 8M4
3014	ShipCountry	Canada
3015	OrderID	10950
3015	CustomerID	MAGAA
3015	EmployeeID	1
3015	OrderDate	1998-03-16
3015	RequiredDate	1998-04-13
3015	ShippedDate	1998-03-23
3015	ShipVia	2
3015	Freight	2.5
3015	ShipName	Magazzini Alimentari Riuniti
3015	ShipAddress	Via Ludovico il Moro 22
3015	ShipCity	Bergamo
3015	ShipPostalCode	24100
3015	ShipCountry	Italy
3016	OrderID	10951
3016	CustomerID	RICSU
3016	EmployeeID	9
3016	OrderDate	1998-03-16
3016	RequiredDate	1998-04-27
3016	ShippedDate	1998-04-07
3016	ShipVia	2
3016	Freight	30.85
3016	ShipName	Richter Supermarkt
3016	ShipAddress	Starenweg 5
3016	ShipCity	Genève
3016	ShipPostalCode	1204
3016	ShipCountry	Switzerland
3017	OrderID	10952
3017	CustomerID	ALFKI
3017	EmployeeID	1
3017	OrderDate	1998-03-16
3017	RequiredDate	1998-04-27
3017	ShippedDate	1998-03-24
3017	ShipVia	1
3017	Freight	40.42
3017	ShipName	Alfred's Futterkiste
3017	ShipAddress	Obere Str. 57
3017	ShipCity	Berlin
3017	ShipPostalCode	12209
3017	ShipCountry	Germany
3018	OrderID	10953
3018	CustomerID	AROUT
3018	EmployeeID	9
3018	OrderDate	1998-03-16
3018	RequiredDate	1998-03-30
3018	ShippedDate	1998-03-25
3018	ShipVia	2
3018	Freight	23.72
3018	ShipName	Around the Horn
3018	ShipAddress	Brook Farm Stratford St. Mary
3018	ShipCity	Colchester
3018	ShipRegion	Essex
3018	ShipPostalCode	CO7 6JX
3018	ShipCountry	UK
3019	OrderID	10954
3019	CustomerID	LINOD
3019	EmployeeID	5
3019	OrderDate	1998-03-17
3019	RequiredDate	1998-04-28
3019	ShippedDate	1998-03-20
3019	ShipVia	1
3019	Freight	27.91
3019	ShipName	LINO-Delicateses
3019	ShipAddress	Ave. 5 de Mayo Porlamar
3019	ShipCity	I. de Margarita
3019	ShipRegion	Nueva Esparta
3019	ShipPostalCode	4980
3019	ShipCountry	Venezuela
3020	OrderID	10955
3020	CustomerID	FOLKO
3020	EmployeeID	8
3020	OrderDate	1998-03-17
3020	RequiredDate	1998-04-14
3020	ShippedDate	1998-03-20
3020	ShipVia	2
3020	Freight	3.26
3020	ShipName	Folk och fä HB
3020	ShipAddress	Åkergatan 24
3020	ShipCity	Bräcke
3020	ShipPostalCode	S-844 67
3020	ShipCountry	Sweden
3021	OrderID	10956
3021	CustomerID	BLAUS
3021	EmployeeID	6
3021	OrderDate	1998-03-17
3021	RequiredDate	1998-04-28
3021	ShippedDate	1998-03-20
3021	ShipVia	2
3021	Freight	44.65
3021	ShipName	Blauer See Delikatessen
3021	ShipAddress	Forsterstr. 57
3021	ShipCity	Mannheim
3021	ShipPostalCode	68306
3021	ShipCountry	Germany
3022	OrderID	10957
3022	CustomerID	HILAA
3022	EmployeeID	8
3022	OrderDate	1998-03-18
3022	RequiredDate	1998-04-15
3022	ShippedDate	1998-03-27
3022	ShipVia	3
3022	Freight	105.36
3022	ShipName	HILARION-Abastos
3022	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
3022	ShipCity	San Cristóbal
3022	ShipRegion	Táchira
3022	ShipPostalCode	5022
3022	ShipCountry	Venezuela
3023	OrderID	10958
3023	CustomerID	OCEAN
3023	EmployeeID	7
3023	OrderDate	1998-03-18
3023	RequiredDate	1998-04-15
3023	ShippedDate	1998-03-27
3023	ShipVia	2
3023	Freight	49.56
3023	ShipName	Océano Atlántico Ltda.
3023	ShipAddress	Ing. Gustavo Moncada 8585 Piso 20-A
3023	ShipCity	Buenos Aires
3023	ShipPostalCode	1010
3023	ShipCountry	Argentina
3024	OrderID	10959
3024	CustomerID	GOURL
3024	EmployeeID	6
3024	OrderDate	1998-03-18
3024	RequiredDate	1998-04-29
3024	ShippedDate	1998-03-23
3024	ShipVia	2
3024	Freight	4.98
3024	ShipName	Gourmet Lanchonetes
3024	ShipAddress	Av. Brasil, 442
3024	ShipCity	Campinas
3024	ShipRegion	SP
3024	ShipPostalCode	04876-786
3024	ShipCountry	Brazil
3025	OrderID	10960
3025	CustomerID	HILAA
3025	EmployeeID	3
3025	OrderDate	1998-03-19
3025	RequiredDate	1998-04-02
3025	ShippedDate	1998-04-08
3025	ShipVia	1
3025	Freight	2.08
3025	ShipName	HILARION-Abastos
3025	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
3025	ShipCity	San Cristóbal
3025	ShipRegion	Táchira
3025	ShipPostalCode	5022
3025	ShipCountry	Venezuela
3026	OrderID	10961
3026	CustomerID	QUEEN
3026	EmployeeID	8
3026	OrderDate	1998-03-19
3026	RequiredDate	1998-04-16
3026	ShippedDate	1998-03-30
3026	ShipVia	1
3026	Freight	104.47
3026	ShipName	Queen Cozinha
3026	ShipAddress	Alameda dos Canàrios, 891
3026	ShipCity	Sao Paulo
3026	ShipRegion	SP
3026	ShipPostalCode	05487-020
3026	ShipCountry	Brazil
3027	OrderID	10962
3027	CustomerID	QUICK
3027	EmployeeID	8
3027	OrderDate	1998-03-19
3027	RequiredDate	1998-04-16
3027	ShippedDate	1998-03-23
3027	ShipVia	2
3027	Freight	275.79
3027	ShipName	QUICK-Stop
3027	ShipAddress	Taucherstraße 10
3027	ShipCity	Cunewalde
3027	ShipPostalCode	01307
3027	ShipCountry	Germany
3028	OrderID	10963
3028	CustomerID	FURIB
3028	EmployeeID	9
3028	OrderDate	1998-03-19
3028	RequiredDate	1998-04-16
3028	ShippedDate	1998-03-26
3028	ShipVia	3
3028	Freight	2.7
3028	ShipName	Furia Bacalhau e Frutos do Mar
3028	ShipAddress	Jardim das rosas n. 32
3028	ShipCity	Lisboa
3028	ShipPostalCode	1675
3028	ShipCountry	Portugal
3029	OrderID	10964
3029	CustomerID	SPECD
3029	EmployeeID	3
3029	OrderDate	1998-03-20
3029	RequiredDate	1998-04-17
3029	ShippedDate	1998-03-24
3029	ShipVia	2
3029	Freight	87.38
3029	ShipName	Spécialités du monde
3029	ShipAddress	25, rue Lauriston
3029	ShipCity	Paris
3029	ShipPostalCode	75016
3029	ShipCountry	France
3030	OrderID	10965
3030	CustomerID	OLDWO
3030	EmployeeID	6
3030	OrderDate	1998-03-20
3030	RequiredDate	1998-04-17
3030	ShippedDate	1998-03-30
3030	ShipVia	3
3030	Freight	144.38
3030	ShipName	Old World Delicatessen
3030	ShipAddress	2743 Bering St.
3030	ShipCity	Anchorage
3030	ShipRegion	AK
3030	ShipPostalCode	99508
3030	ShipCountry	USA
3031	OrderID	10966
3031	CustomerID	CHOPS
3031	EmployeeID	4
3031	OrderDate	1998-03-20
3031	RequiredDate	1998-04-17
3031	ShippedDate	1998-04-08
3031	ShipVia	1
3031	Freight	27.19
3031	ShipName	Chop-suey Chinese
3031	ShipAddress	Hauptstr. 31
3031	ShipCity	Bern
3031	ShipPostalCode	3012
3031	ShipCountry	Switzerland
3032	OrderID	10967
3032	CustomerID	TOMSP
3032	EmployeeID	2
3032	OrderDate	1998-03-23
3032	RequiredDate	1998-04-20
3032	ShippedDate	1998-04-02
3032	ShipVia	2
3032	Freight	62.22
3032	ShipName	Toms Spezialitäten
3032	ShipAddress	Luisenstr. 48
3032	ShipCity	Münster
3032	ShipPostalCode	44087
3032	ShipCountry	Germany
3033	OrderID	10968
3033	CustomerID	ERNSH
3033	EmployeeID	1
3033	OrderDate	1998-03-23
3033	RequiredDate	1998-04-20
3033	ShippedDate	1998-04-01
3033	ShipVia	3
3033	Freight	74.6
3033	ShipName	Ernst Handel
3033	ShipAddress	Kirchgasse 6
3033	ShipCity	Graz
3033	ShipPostalCode	8010
3033	ShipCountry	Austria
3034	OrderID	10969
3034	CustomerID	COMMI
3034	EmployeeID	1
3034	OrderDate	1998-03-23
3034	RequiredDate	1998-04-20
3034	ShippedDate	1998-03-30
3034	ShipVia	2
3034	Freight	0.21
3034	ShipName	Comércio Mineiro
3034	ShipAddress	Av. dos Lusíadas, 23
3034	ShipCity	Sao Paulo
3034	ShipRegion	SP
3034	ShipPostalCode	05432-043
3034	ShipCountry	Brazil
3035	OrderID	10970
3035	CustomerID	BOLID
3035	EmployeeID	9
3035	OrderDate	1998-03-24
3035	RequiredDate	1998-04-07
3035	ShippedDate	1998-04-24
3035	ShipVia	1
3035	Freight	16.16
3035	ShipName	Bólido Comidas preparadas
3035	ShipAddress	C/ Araquil, 67
3035	ShipCity	Madrid
3035	ShipPostalCode	28023
3035	ShipCountry	Spain
3036	OrderID	10971
3036	CustomerID	FRANR
3036	EmployeeID	2
3036	OrderDate	1998-03-24
3036	RequiredDate	1998-04-21
3036	ShippedDate	1998-04-02
3036	ShipVia	2
3036	Freight	121.82
3036	ShipName	France restauration
3036	ShipAddress	54, rue Royale
3036	ShipCity	Nantes
3036	ShipPostalCode	44000
3036	ShipCountry	France
3037	OrderID	10972
3037	CustomerID	LACOR
3037	EmployeeID	4
3037	OrderDate	1998-03-24
3037	RequiredDate	1998-04-21
3037	ShippedDate	1998-03-26
3037	ShipVia	2
3037	Freight	0.02
3037	ShipName	La corne d'abondance
3037	ShipAddress	67, avenue de l'Europe
3037	ShipCity	Versailles
3037	ShipPostalCode	78000
3037	ShipCountry	France
3038	OrderID	10973
3038	CustomerID	LACOR
3038	EmployeeID	6
3038	OrderDate	1998-03-24
3038	RequiredDate	1998-04-21
3038	ShippedDate	1998-03-27
3038	ShipVia	2
3038	Freight	15.17
3038	ShipName	La corne d'abondance
3038	ShipAddress	67, avenue de l'Europe
3038	ShipCity	Versailles
3038	ShipPostalCode	78000
3038	ShipCountry	France
3039	OrderID	10974
3039	CustomerID	SPLIR
3039	EmployeeID	3
3039	OrderDate	1998-03-25
3039	RequiredDate	1998-04-08
3039	ShippedDate	1998-04-03
3039	ShipVia	3
3039	Freight	12.96
3039	ShipName	Split Rail Beer & Ale
3039	ShipAddress	P.O. Box 555
3039	ShipCity	Lander
3039	ShipRegion	WY
3039	ShipPostalCode	82520
3039	ShipCountry	USA
3040	OrderID	10975
3040	CustomerID	BOTTM
3040	EmployeeID	1
3040	OrderDate	1998-03-25
3040	RequiredDate	1998-04-22
3040	ShippedDate	1998-03-27
3040	ShipVia	3
3040	Freight	32.27
3040	ShipName	Bottom-Dollar Markets
3040	ShipAddress	23 Tsawassen Blvd.
3040	ShipCity	Tsawassen
3040	ShipRegion	BC
3040	ShipPostalCode	T2F 8M4
3040	ShipCountry	Canada
3041	OrderID	10976
3041	CustomerID	HILAA
3041	EmployeeID	1
3041	OrderDate	1998-03-25
3041	RequiredDate	1998-05-06
3041	ShippedDate	1998-04-03
3041	ShipVia	1
3041	Freight	37.97
3041	ShipName	HILARION-Abastos
3041	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
3041	ShipCity	San Cristóbal
3041	ShipRegion	Táchira
3041	ShipPostalCode	5022
3041	ShipCountry	Venezuela
3042	OrderID	10977
3042	CustomerID	FOLKO
3042	EmployeeID	8
3042	OrderDate	1998-03-26
3042	RequiredDate	1998-04-23
3042	ShippedDate	1998-04-10
3042	ShipVia	3
3042	Freight	208.5
3042	ShipName	Folk och fä HB
3042	ShipAddress	Åkergatan 24
3042	ShipCity	Bräcke
3042	ShipPostalCode	S-844 67
3042	ShipCountry	Sweden
3043	OrderID	10978
3043	CustomerID	MAISD
3043	EmployeeID	9
3043	OrderDate	1998-03-26
3043	RequiredDate	1998-04-23
3043	ShippedDate	1998-04-23
3043	ShipVia	2
3043	Freight	32.82
3043	ShipName	Maison Dewey
3043	ShipAddress	Rue Joseph-Bens 532
3043	ShipCity	Bruxelles
3043	ShipPostalCode	B-1180
3043	ShipCountry	Belgium
3044	OrderID	10979
3044	CustomerID	ERNSH
3044	EmployeeID	8
3044	OrderDate	1998-03-26
3044	RequiredDate	1998-04-23
3044	ShippedDate	1998-03-31
3044	ShipVia	2
3044	Freight	353.07
3044	ShipName	Ernst Handel
3044	ShipAddress	Kirchgasse 6
3044	ShipCity	Graz
3044	ShipPostalCode	8010
3044	ShipCountry	Austria
3045	OrderID	10980
3045	CustomerID	FOLKO
3045	EmployeeID	4
3045	OrderDate	1998-03-27
3045	RequiredDate	1998-05-08
3045	ShippedDate	1998-04-17
3045	ShipVia	1
3045	Freight	1.26
3045	ShipName	Folk och fä HB
3045	ShipAddress	Åkergatan 24
3045	ShipCity	Bräcke
3045	ShipPostalCode	S-844 67
3045	ShipCountry	Sweden
3046	OrderID	10981
3046	CustomerID	HANAR
3046	EmployeeID	1
3046	OrderDate	1998-03-27
3046	RequiredDate	1998-04-24
3046	ShippedDate	1998-04-02
3046	ShipVia	2
3046	Freight	193.37
3046	ShipName	Hanari Carnes
3046	ShipAddress	Rua do Paço, 67
3046	ShipCity	Rio de Janeiro
3046	ShipRegion	RJ
3046	ShipPostalCode	05454-876
3046	ShipCountry	Brazil
3047	OrderID	10982
3047	CustomerID	BOTTM
3047	EmployeeID	2
3047	OrderDate	1998-03-27
3047	RequiredDate	1998-04-24
3047	ShippedDate	1998-04-08
3047	ShipVia	1
3047	Freight	14.01
3047	ShipName	Bottom-Dollar Markets
3047	ShipAddress	23 Tsawassen Blvd.
3047	ShipCity	Tsawassen
3047	ShipRegion	BC
3047	ShipPostalCode	T2F 8M4
3047	ShipCountry	Canada
3048	OrderID	10983
3048	CustomerID	SAVEA
3048	EmployeeID	2
3048	OrderDate	1998-03-27
3048	RequiredDate	1998-04-24
3048	ShippedDate	1998-04-06
3048	ShipVia	2
3048	Freight	657.54
3048	ShipName	Save-a-lot Markets
3048	ShipAddress	187 Suffolk Ln.
3048	ShipCity	Boise
3048	ShipRegion	ID
3048	ShipPostalCode	83720
3048	ShipCountry	USA
3049	OrderID	10984
3049	CustomerID	SAVEA
3049	EmployeeID	1
3049	OrderDate	1998-03-30
3049	RequiredDate	1998-04-27
3049	ShippedDate	1998-04-03
3049	ShipVia	3
3049	Freight	211.22
3049	ShipName	Save-a-lot Markets
3049	ShipAddress	187 Suffolk Ln.
3049	ShipCity	Boise
3049	ShipRegion	ID
3049	ShipPostalCode	83720
3049	ShipCountry	USA
3050	OrderID	10985
3050	CustomerID	HUNGO
3050	EmployeeID	2
3050	OrderDate	1998-03-30
3050	RequiredDate	1998-04-27
3050	ShippedDate	1998-04-02
3050	ShipVia	1
3050	Freight	91.51
3050	ShipName	Hungry Owl All-Night Grocers
3050	ShipAddress	8 Johnstown Road
3050	ShipCity	Cork
3050	ShipRegion	Co. Cork
3050	ShipCountry	Ireland
3051	OrderID	10986
3051	CustomerID	OCEAN
3051	EmployeeID	8
3051	OrderDate	1998-03-30
3051	RequiredDate	1998-04-27
3051	ShippedDate	1998-04-21
3051	ShipVia	2
3051	Freight	217.86
3051	ShipName	Océano Atlántico Ltda.
3051	ShipAddress	Ing. Gustavo Moncada 8585 Piso 20-A
3051	ShipCity	Buenos Aires
3051	ShipPostalCode	1010
3051	ShipCountry	Argentina
3052	OrderID	10987
3052	CustomerID	EASTC
3052	EmployeeID	8
3052	OrderDate	1998-03-31
3052	RequiredDate	1998-04-28
3052	ShippedDate	1998-04-06
3052	ShipVia	1
3052	Freight	185.48
3052	ShipName	Eastern Connection
3052	ShipAddress	35 King George
3052	ShipCity	London
3052	ShipPostalCode	WX3 6FW
3052	ShipCountry	UK
3053	OrderID	10988
3053	CustomerID	RATTC
3053	EmployeeID	3
3053	OrderDate	1998-03-31
3053	RequiredDate	1998-04-28
3053	ShippedDate	1998-04-10
3053	ShipVia	2
3053	Freight	61.14
3053	ShipName	Rattlesnake Canyon Grocery
3053	ShipAddress	2817 Milton Dr.
3053	ShipCity	Albuquerque
3053	ShipRegion	NM
3053	ShipPostalCode	87110
3053	ShipCountry	USA
3054	OrderID	10989
3054	CustomerID	QUEDE
3054	EmployeeID	2
3054	OrderDate	1998-03-31
3054	RequiredDate	1998-04-28
3054	ShippedDate	1998-04-02
3054	ShipVia	1
3054	Freight	34.76
3054	ShipName	Que Delícia
3054	ShipAddress	Rua da Panificadora, 12
3054	ShipCity	Rio de Janeiro
3054	ShipRegion	RJ
3054	ShipPostalCode	02389-673
3054	ShipCountry	Brazil
3055	OrderID	10990
3055	CustomerID	ERNSH
3055	EmployeeID	2
3055	OrderDate	1998-04-01
3055	RequiredDate	1998-05-13
3055	ShippedDate	1998-04-07
3055	ShipVia	3
3055	Freight	117.61
3055	ShipName	Ernst Handel
3055	ShipAddress	Kirchgasse 6
3055	ShipCity	Graz
3055	ShipPostalCode	8010
3055	ShipCountry	Austria
3056	OrderID	10991
3056	CustomerID	QUICK
3056	EmployeeID	1
3056	OrderDate	1998-04-01
3056	RequiredDate	1998-04-29
3056	ShippedDate	1998-04-07
3056	ShipVia	1
3056	Freight	38.51
3056	ShipName	QUICK-Stop
3056	ShipAddress	Taucherstraße 10
3056	ShipCity	Cunewalde
3056	ShipPostalCode	01307
3056	ShipCountry	Germany
3057	OrderID	10992
3057	CustomerID	THEBI
3057	EmployeeID	1
3057	OrderDate	1998-04-01
3057	RequiredDate	1998-04-29
3057	ShippedDate	1998-04-03
3057	ShipVia	3
3057	Freight	4.27
3057	ShipName	The Big Cheese
3057	ShipAddress	89 Jefferson Way Suite 2
3057	ShipCity	Portland
3057	ShipRegion	OR
3057	ShipPostalCode	97201
3057	ShipCountry	USA
3058	OrderID	10993
3058	CustomerID	FOLKO
3058	EmployeeID	7
3058	OrderDate	1998-04-01
3058	RequiredDate	1998-04-29
3058	ShippedDate	1998-04-10
3058	ShipVia	3
3058	Freight	8.81
3058	ShipName	Folk och fä HB
3058	ShipAddress	Åkergatan 24
3058	ShipCity	Bräcke
3058	ShipPostalCode	S-844 67
3058	ShipCountry	Sweden
3059	OrderID	10994
3059	CustomerID	VAFFE
3059	EmployeeID	2
3059	OrderDate	1998-04-02
3059	RequiredDate	1998-04-16
3059	ShippedDate	1998-04-09
3059	ShipVia	3
3059	Freight	65.53
3059	ShipName	Vaffeljernet
3059	ShipAddress	Smagsloget 45
3059	ShipCity	Århus
3059	ShipPostalCode	8200
3059	ShipCountry	Denmark
3060	OrderID	10995
3060	CustomerID	PERIC
3060	EmployeeID	1
3060	OrderDate	1998-04-02
3060	RequiredDate	1998-04-30
3060	ShippedDate	1998-04-06
3060	ShipVia	3
3060	Freight	46.0
3060	ShipName	Pericles Comidas clásicas
3060	ShipAddress	Calle Dr. Jorge Cash 321
3060	ShipCity	México D.F.
3060	ShipPostalCode	05033
3060	ShipCountry	Mexico
3061	OrderID	10996
3061	CustomerID	QUICK
3061	EmployeeID	4
3061	OrderDate	1998-04-02
3061	RequiredDate	1998-04-30
3061	ShippedDate	1998-04-10
3061	ShipVia	2
3061	Freight	1.12
3061	ShipName	QUICK-Stop
3061	ShipAddress	Taucherstraße 10
3061	ShipCity	Cunewalde
3061	ShipPostalCode	01307
3061	ShipCountry	Germany
3062	OrderID	10997
3062	CustomerID	LILAS
3062	EmployeeID	8
3062	OrderDate	1998-04-03
3062	RequiredDate	1998-05-15
3062	ShippedDate	1998-04-13
3062	ShipVia	2
3062	Freight	73.91
3062	ShipName	LILA-Supermercado
3062	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
3062	ShipCity	Barquisimeto
3062	ShipRegion	Lara
3062	ShipPostalCode	3508
3062	ShipCountry	Venezuela
3063	OrderID	10998
3063	CustomerID	WOLZA
3063	EmployeeID	8
3063	OrderDate	1998-04-03
3063	RequiredDate	1998-04-17
3063	ShippedDate	1998-04-17
3063	ShipVia	2
3063	Freight	20.31
3063	ShipName	Wolski Zajazd
3063	ShipAddress	ul. Filtrowa 68
3063	ShipCity	Warszawa
3063	ShipPostalCode	01-012
3063	ShipCountry	Poland
3064	OrderID	10999
3064	CustomerID	OTTIK
3064	EmployeeID	6
3064	OrderDate	1998-04-03
3064	RequiredDate	1998-05-01
3064	ShippedDate	1998-04-10
3064	ShipVia	2
3064	Freight	96.35
3064	ShipName	Ottilies Käseladen
3064	ShipAddress	Mehrheimerstr. 369
3064	ShipCity	Köln
3064	ShipPostalCode	50739
3064	ShipCountry	Germany
3065	OrderID	11000
3065	CustomerID	RATTC
3065	EmployeeID	2
3065	OrderDate	1998-04-06
3065	RequiredDate	1998-05-04
3065	ShippedDate	1998-04-14
3065	ShipVia	3
3065	Freight	55.12
3065	ShipName	Rattlesnake Canyon Grocery
3065	ShipAddress	2817 Milton Dr.
3065	ShipCity	Albuquerque
3065	ShipRegion	NM
3065	ShipPostalCode	87110
3065	ShipCountry	USA
3066	OrderID	11001
3066	CustomerID	FOLKO
3066	EmployeeID	2
3066	OrderDate	1998-04-06
3066	RequiredDate	1998-05-04
3066	ShippedDate	1998-04-14
3066	ShipVia	2
3066	Freight	197.3
3066	ShipName	Folk och fä HB
3066	ShipAddress	Åkergatan 24
3066	ShipCity	Bräcke
3066	ShipPostalCode	S-844 67
3066	ShipCountry	Sweden
3067	OrderID	11002
3067	CustomerID	SAVEA
3067	EmployeeID	4
3067	OrderDate	1998-04-06
3067	RequiredDate	1998-05-04
3067	ShippedDate	1998-04-16
3067	ShipVia	1
3067	Freight	141.16
3067	ShipName	Save-a-lot Markets
3067	ShipAddress	187 Suffolk Ln.
3067	ShipCity	Boise
3067	ShipRegion	ID
3067	ShipPostalCode	83720
3067	ShipCountry	USA
3068	OrderID	11003
3068	CustomerID	THECR
3068	EmployeeID	3
3068	OrderDate	1998-04-06
3068	RequiredDate	1998-05-04
3068	ShippedDate	1998-04-08
3068	ShipVia	3
3068	Freight	14.91
3068	ShipName	The Cracker Box
3068	ShipAddress	55 Grizzly Peak Rd.
3068	ShipCity	Butte
3068	ShipRegion	MT
3068	ShipPostalCode	59801
3068	ShipCountry	USA
3069	OrderID	11004
3069	CustomerID	MAISD
3069	EmployeeID	3
3069	OrderDate	1998-04-07
3069	RequiredDate	1998-05-05
3069	ShippedDate	1998-04-20
3069	ShipVia	1
3069	Freight	44.84
3069	ShipName	Maison Dewey
3069	ShipAddress	Rue Joseph-Bens 532
3069	ShipCity	Bruxelles
3069	ShipPostalCode	B-1180
3069	ShipCountry	Belgium
3070	OrderID	11005
3070	CustomerID	WILMK
3070	EmployeeID	2
3070	OrderDate	1998-04-07
3070	RequiredDate	1998-05-05
3070	ShippedDate	1998-04-10
3070	ShipVia	1
3070	Freight	0.75
3070	ShipName	Wilman Kala
3070	ShipAddress	Keskuskatu 45
3070	ShipCity	Helsinki
3070	ShipPostalCode	21240
3070	ShipCountry	Finland
3071	OrderID	11006
3071	CustomerID	GREAL
3071	EmployeeID	3
3071	OrderDate	1998-04-07
3071	RequiredDate	1998-05-05
3071	ShippedDate	1998-04-15
3071	ShipVia	2
3071	Freight	25.19
3071	ShipName	Great Lakes Food Market
3071	ShipAddress	2732 Baker Blvd.
3071	ShipCity	Eugene
3071	ShipRegion	OR
3071	ShipPostalCode	97403
3071	ShipCountry	USA
3072	OrderID	11007
3072	CustomerID	PRINI
3072	EmployeeID	8
3072	OrderDate	1998-04-08
3072	RequiredDate	1998-05-06
3072	ShippedDate	1998-04-13
3072	ShipVia	2
3072	Freight	202.24
3072	ShipName	Princesa Isabel Vinhos
3072	ShipAddress	Estrada da saúde n. 58
3072	ShipCity	Lisboa
3072	ShipPostalCode	1756
3072	ShipCountry	Portugal
3073	OrderID	11008
3073	CustomerID	ERNSH
3073	EmployeeID	7
3073	OrderDate	1998-04-08
3073	RequiredDate	1998-05-06
3073	ShipVia	3
3073	Freight	79.46
3073	ShipName	Ernst Handel
3073	ShipAddress	Kirchgasse 6
3073	ShipCity	Graz
3073	ShipPostalCode	8010
3073	ShipCountry	Austria
3074	OrderID	11009
3074	CustomerID	GODOS
3074	EmployeeID	2
3074	OrderDate	1998-04-08
3074	RequiredDate	1998-05-06
3074	ShippedDate	1998-04-10
3074	ShipVia	1
3074	Freight	59.11
3074	ShipName	Godos Cocina Típica
3074	ShipAddress	C/ Romero, 33
3074	ShipCity	Sevilla
3074	ShipPostalCode	41101
3074	ShipCountry	Spain
3075	OrderID	11010
3075	CustomerID	REGGC
3075	EmployeeID	2
3075	OrderDate	1998-04-09
3075	RequiredDate	1998-05-07
3075	ShippedDate	1998-04-21
3075	ShipVia	2
3075	Freight	28.71
3075	ShipName	Reggiani Caseifici
3075	ShipAddress	Strada Provinciale 124
3075	ShipCity	Reggio Emilia
3075	ShipPostalCode	42100
3075	ShipCountry	Italy
3076	OrderID	11011
3076	CustomerID	ALFKI
3076	EmployeeID	3
3076	OrderDate	1998-04-09
3076	RequiredDate	1998-05-07
3076	ShippedDate	1998-04-13
3076	ShipVia	1
3076	Freight	1.21
3076	ShipName	Alfred's Futterkiste
3076	ShipAddress	Obere Str. 57
3076	ShipCity	Berlin
3076	ShipPostalCode	12209
3076	ShipCountry	Germany
3077	OrderID	11012
3077	CustomerID	FRANK
3077	EmployeeID	1
3077	OrderDate	1998-04-09
3077	RequiredDate	1998-04-23
3077	ShippedDate	1998-04-17
3077	ShipVia	3
3077	Freight	242.95
3077	ShipName	Frankenversand
3077	ShipAddress	Berliner Platz 43
3077	ShipCity	München
3077	ShipPostalCode	80805
3077	ShipCountry	Germany
3078	OrderID	11013
3078	CustomerID	ROMEY
3078	EmployeeID	2
3078	OrderDate	1998-04-09
3078	RequiredDate	1998-05-07
3078	ShippedDate	1998-04-10
3078	ShipVia	1
3078	Freight	32.99
3078	ShipName	Romero y tomillo
3078	ShipAddress	Gran Vía, 1
3078	ShipCity	Madrid
3078	ShipPostalCode	28001
3078	ShipCountry	Spain
3079	OrderID	11014
3079	CustomerID	LINOD
3079	EmployeeID	2
3079	OrderDate	1998-04-10
3079	RequiredDate	1998-05-08
3079	ShippedDate	1998-04-15
3079	ShipVia	3
3079	Freight	23.6
3079	ShipName	LINO-Delicateses
3079	ShipAddress	Ave. 5 de Mayo Porlamar
3079	ShipCity	I. de Margarita
3079	ShipRegion	Nueva Esparta
3079	ShipPostalCode	4980
3079	ShipCountry	Venezuela
3080	OrderID	11015
3080	CustomerID	SANTG
3080	EmployeeID	2
3080	OrderDate	1998-04-10
3080	RequiredDate	1998-04-24
3080	ShippedDate	1998-04-20
3080	ShipVia	2
3080	Freight	4.62
3080	ShipName	Santé Gourmet
3080	ShipAddress	Erling Skakkes gate 78
3080	ShipCity	Stavern
3080	ShipPostalCode	4110
3080	ShipCountry	Norway
3081	OrderID	11016
3081	CustomerID	AROUT
3081	EmployeeID	9
3081	OrderDate	1998-04-10
3081	RequiredDate	1998-05-08
3081	ShippedDate	1998-04-13
3081	ShipVia	2
3081	Freight	33.8
3081	ShipName	Around the Horn
3081	ShipAddress	Brook Farm Stratford St. Mary
3081	ShipCity	Colchester
3081	ShipRegion	Essex
3081	ShipPostalCode	CO7 6JX
3081	ShipCountry	UK
3082	OrderID	11017
3082	CustomerID	ERNSH
3082	EmployeeID	9
3082	OrderDate	1998-04-13
3082	RequiredDate	1998-05-11
3082	ShippedDate	1998-04-20
3082	ShipVia	2
3082	Freight	754.26
3082	ShipName	Ernst Handel
3082	ShipAddress	Kirchgasse 6
3082	ShipCity	Graz
3082	ShipPostalCode	8010
3082	ShipCountry	Austria
3083	OrderID	11018
3083	CustomerID	LONEP
3083	EmployeeID	4
3083	OrderDate	1998-04-13
3083	RequiredDate	1998-05-11
3083	ShippedDate	1998-04-16
3083	ShipVia	2
3083	Freight	11.65
3083	ShipName	Lonesome Pine Restaurant
3083	ShipAddress	89 Chiaroscuro Rd.
3083	ShipCity	Portland
3083	ShipRegion	OR
3083	ShipPostalCode	97219
3083	ShipCountry	USA
3084	OrderID	11019
3084	CustomerID	RANCH
3084	EmployeeID	6
3084	OrderDate	1998-04-13
3084	RequiredDate	1998-05-11
3084	ShipVia	3
3084	Freight	3.17
3084	ShipName	Rancho grande
3084	ShipAddress	Av. del Libertador 900
3084	ShipCity	Buenos Aires
3084	ShipPostalCode	1010
3084	ShipCountry	Argentina
3085	OrderID	11020
3085	CustomerID	OTTIK
3085	EmployeeID	2
3085	OrderDate	1998-04-14
3085	RequiredDate	1998-05-12
3085	ShippedDate	1998-04-16
3085	ShipVia	2
3085	Freight	43.3
3085	ShipName	Ottilies Käseladen
3085	ShipAddress	Mehrheimerstr. 369
3085	ShipCity	Köln
3085	ShipPostalCode	50739
3085	ShipCountry	Germany
3086	OrderID	11021
3086	CustomerID	QUICK
3086	EmployeeID	3
3086	OrderDate	1998-04-14
3086	RequiredDate	1998-05-12
3086	ShippedDate	1998-04-21
3086	ShipVia	1
3086	Freight	297.18
3086	ShipName	QUICK-Stop
3086	ShipAddress	Taucherstraße 10
3086	ShipCity	Cunewalde
3086	ShipPostalCode	01307
3086	ShipCountry	Germany
3087	OrderID	11022
3087	CustomerID	HANAR
3087	EmployeeID	9
3087	OrderDate	1998-04-14
3087	RequiredDate	1998-05-12
3087	ShippedDate	1998-05-04
3087	ShipVia	2
3087	Freight	6.27
3087	ShipName	Hanari Carnes
3087	ShipAddress	Rua do Paço, 67
3087	ShipCity	Rio de Janeiro
3087	ShipRegion	RJ
3087	ShipPostalCode	05454-876
3087	ShipCountry	Brazil
3088	OrderID	11023
3088	CustomerID	BSBEV
3088	EmployeeID	1
3088	OrderDate	1998-04-14
3088	RequiredDate	1998-04-28
3088	ShippedDate	1998-04-24
3088	ShipVia	2
3088	Freight	123.83
3088	ShipName	B's Beverages
3088	ShipAddress	Fauntleroy Circus
3088	ShipCity	London
3088	ShipPostalCode	EC2 5NT
3088	ShipCountry	UK
3089	OrderID	11024
3089	CustomerID	EASTC
3089	EmployeeID	4
3089	OrderDate	1998-04-15
3089	RequiredDate	1998-05-13
3089	ShippedDate	1998-04-20
3089	ShipVia	1
3089	Freight	74.36
3089	ShipName	Eastern Connection
3089	ShipAddress	35 King George
3089	ShipCity	London
3089	ShipPostalCode	WX3 6FW
3089	ShipCountry	UK
3090	OrderID	11025
3090	CustomerID	WARTH
3090	EmployeeID	6
3090	OrderDate	1998-04-15
3090	RequiredDate	1998-05-13
3090	ShippedDate	1998-04-24
3090	ShipVia	3
3090	Freight	29.17
3090	ShipName	Wartian Herkku
3090	ShipAddress	Torikatu 38
3090	ShipCity	Oulu
3090	ShipPostalCode	90110
3090	ShipCountry	Finland
3091	OrderID	11026
3091	CustomerID	FRANS
3091	EmployeeID	4
3091	OrderDate	1998-04-15
3091	RequiredDate	1998-05-13
3091	ShippedDate	1998-04-28
3091	ShipVia	1
3091	Freight	47.09
3091	ShipName	Franchi S.p.A.
3091	ShipAddress	Via Monte Bianco 34
3091	ShipCity	Torino
3091	ShipPostalCode	10100
3091	ShipCountry	Italy
3092	OrderID	11027
3092	CustomerID	BOTTM
3092	EmployeeID	1
3092	OrderDate	1998-04-16
3092	RequiredDate	1998-05-14
3092	ShippedDate	1998-04-20
3092	ShipVia	1
3092	Freight	52.52
3092	ShipName	Bottom-Dollar Markets
3092	ShipAddress	23 Tsawassen Blvd.
3092	ShipCity	Tsawassen
3092	ShipRegion	BC
3092	ShipPostalCode	T2F 8M4
3092	ShipCountry	Canada
3093	OrderID	11028
3093	CustomerID	KOENE
3093	EmployeeID	2
3093	OrderDate	1998-04-16
3093	RequiredDate	1998-05-14
3093	ShippedDate	1998-04-22
3093	ShipVia	1
3093	Freight	29.59
3093	ShipName	Königlich Essen
3093	ShipAddress	Maubelstr. 90
3093	ShipCity	Brandenburg
3093	ShipPostalCode	14776
3093	ShipCountry	Germany
3094	OrderID	11029
3094	CustomerID	CHOPS
3094	EmployeeID	4
3094	OrderDate	1998-04-16
3094	RequiredDate	1998-05-14
3094	ShippedDate	1998-04-27
3094	ShipVia	1
3094	Freight	47.84
3094	ShipName	Chop-suey Chinese
3094	ShipAddress	Hauptstr. 31
3094	ShipCity	Bern
3094	ShipPostalCode	3012
3094	ShipCountry	Switzerland
3095	OrderID	11030
3095	CustomerID	SAVEA
3095	EmployeeID	7
3095	OrderDate	1998-04-17
3095	RequiredDate	1998-05-15
3095	ShippedDate	1998-04-27
3095	ShipVia	2
3095	Freight	830.75
3095	ShipName	Save-a-lot Markets
3095	ShipAddress	187 Suffolk Ln.
3095	ShipCity	Boise
3095	ShipRegion	ID
3095	ShipPostalCode	83720
3095	ShipCountry	USA
3096	OrderID	11031
3096	CustomerID	SAVEA
3096	EmployeeID	6
3096	OrderDate	1998-04-17
3096	RequiredDate	1998-05-15
3096	ShippedDate	1998-04-24
3096	ShipVia	2
3096	Freight	227.22
3096	ShipName	Save-a-lot Markets
3096	ShipAddress	187 Suffolk Ln.
3096	ShipCity	Boise
3096	ShipRegion	ID
3096	ShipPostalCode	83720
3096	ShipCountry	USA
3097	OrderID	11032
3097	CustomerID	WHITC
3097	EmployeeID	2
3097	OrderDate	1998-04-17
3097	RequiredDate	1998-05-15
3097	ShippedDate	1998-04-23
3097	ShipVia	3
3097	Freight	606.19
3097	ShipName	White Clover Markets
3097	ShipAddress	1029 - 12th Ave. S.
3097	ShipCity	Seattle
3097	ShipRegion	WA
3097	ShipPostalCode	98124
3097	ShipCountry	USA
3098	OrderID	11033
3098	CustomerID	RICSU
3098	EmployeeID	7
3098	OrderDate	1998-04-17
3098	RequiredDate	1998-05-15
3098	ShippedDate	1998-04-23
3098	ShipVia	3
3098	Freight	84.74
3098	ShipName	Richter Supermarkt
3098	ShipAddress	Starenweg 5
3098	ShipCity	Genève
3098	ShipPostalCode	1204
3098	ShipCountry	Switzerland
3099	OrderID	11034
3099	CustomerID	OLDWO
3099	EmployeeID	8
3099	OrderDate	1998-04-20
3099	RequiredDate	1998-06-01
3099	ShippedDate	1998-04-27
3099	ShipVia	1
3099	Freight	40.32
3099	ShipName	Old World Delicatessen
3099	ShipAddress	2743 Bering St.
3099	ShipCity	Anchorage
3099	ShipRegion	AK
3099	ShipPostalCode	99508
3099	ShipCountry	USA
3100	OrderID	11035
3100	CustomerID	SUPRD
3100	EmployeeID	2
3100	OrderDate	1998-04-20
3100	RequiredDate	1998-05-18
3100	ShippedDate	1998-04-24
3100	ShipVia	2
3100	Freight	0.17
3100	ShipName	Suprêmes délices
3100	ShipAddress	Boulevard Tirou, 255
3100	ShipCity	Charleroi
3100	ShipPostalCode	B-6000
3100	ShipCountry	Belgium
3101	OrderID	11036
3101	CustomerID	DRACD
3101	EmployeeID	8
3101	OrderDate	1998-04-20
3101	RequiredDate	1998-05-18
3101	ShippedDate	1998-04-22
3101	ShipVia	3
3101	Freight	149.47
3101	ShipName	Drachenblut Delikatessen
3101	ShipAddress	Walserweg 21
3101	ShipCity	Aachen
3101	ShipPostalCode	52066
3101	ShipCountry	Germany
3102	OrderID	11037
3102	CustomerID	GODOS
3102	EmployeeID	7
3102	OrderDate	1998-04-21
3102	RequiredDate	1998-05-19
3102	ShippedDate	1998-04-27
3102	ShipVia	1
3102	Freight	3.2
3102	ShipName	Godos Cocina Típica
3102	ShipAddress	C/ Romero, 33
3102	ShipCity	Sevilla
3102	ShipPostalCode	41101
3102	ShipCountry	Spain
3103	OrderID	11038
3103	CustomerID	SUPRD
3103	EmployeeID	1
3103	OrderDate	1998-04-21
3103	RequiredDate	1998-05-19
3103	ShippedDate	1998-04-30
3103	ShipVia	2
3103	Freight	29.59
3103	ShipName	Suprêmes délices
3103	ShipAddress	Boulevard Tirou, 255
3103	ShipCity	Charleroi
3103	ShipPostalCode	B-6000
3103	ShipCountry	Belgium
3104	OrderID	11039
3104	CustomerID	LINOD
3104	EmployeeID	1
3104	OrderDate	1998-04-21
3104	RequiredDate	1998-05-19
3104	ShipVia	2
3104	Freight	65.0
3104	ShipName	LINO-Delicateses
3104	ShipAddress	Ave. 5 de Mayo Porlamar
3104	ShipCity	I. de Margarita
3104	ShipRegion	Nueva Esparta
3104	ShipPostalCode	4980
3104	ShipCountry	Venezuela
3105	OrderID	11040
3105	CustomerID	GREAL
3105	EmployeeID	4
3105	OrderDate	1998-04-22
3105	RequiredDate	1998-05-20
3105	ShipVia	3
3105	Freight	18.84
3105	ShipName	Great Lakes Food Market
3105	ShipAddress	2732 Baker Blvd.
3105	ShipCity	Eugene
3105	ShipRegion	OR
3105	ShipPostalCode	97403
3105	ShipCountry	USA
3106	OrderID	11041
3106	CustomerID	CHOPS
3106	EmployeeID	3
3106	OrderDate	1998-04-22
3106	RequiredDate	1998-05-20
3106	ShippedDate	1998-04-28
3106	ShipVia	2
3106	Freight	48.22
3106	ShipName	Chop-suey Chinese
3106	ShipAddress	Hauptstr. 31
3106	ShipCity	Bern
3106	ShipPostalCode	3012
3106	ShipCountry	Switzerland
3107	OrderID	11042
3107	CustomerID	COMMI
3107	EmployeeID	2
3107	OrderDate	1998-04-22
3107	RequiredDate	1998-05-06
3107	ShippedDate	1998-05-01
3107	ShipVia	1
3107	Freight	29.99
3107	ShipName	Comércio Mineiro
3107	ShipAddress	Av. dos Lusíadas, 23
3107	ShipCity	Sao Paulo
3107	ShipRegion	SP
3107	ShipPostalCode	05432-043
3107	ShipCountry	Brazil
3108	OrderID	11043
3108	CustomerID	SPECD
3108	EmployeeID	5
3108	OrderDate	1998-04-22
3108	RequiredDate	1998-05-20
3108	ShippedDate	1998-04-29
3108	ShipVia	2
3108	Freight	8.8
3108	ShipName	Spécialités du monde
3108	ShipAddress	25, rue Lauriston
3108	ShipCity	Paris
3108	ShipPostalCode	75016
3108	ShipCountry	France
3109	OrderID	11044
3109	CustomerID	WOLZA
3109	EmployeeID	4
3109	OrderDate	1998-04-23
3109	RequiredDate	1998-05-21
3109	ShippedDate	1998-05-01
3109	ShipVia	1
3109	Freight	8.72
3109	ShipName	Wolski Zajazd
3109	ShipAddress	ul. Filtrowa 68
3109	ShipCity	Warszawa
3109	ShipPostalCode	01-012
3109	ShipCountry	Poland
3110	OrderID	11045
3110	CustomerID	BOTTM
3110	EmployeeID	6
3110	OrderDate	1998-04-23
3110	RequiredDate	1998-05-21
3110	ShipVia	2
3110	Freight	70.58
3110	ShipName	Bottom-Dollar Markets
3110	ShipAddress	23 Tsawassen Blvd.
3110	ShipCity	Tsawassen
3110	ShipRegion	BC
3110	ShipPostalCode	T2F 8M4
3110	ShipCountry	Canada
3111	OrderID	11046
3111	CustomerID	WANDK
3111	EmployeeID	8
3111	OrderDate	1998-04-23
3111	RequiredDate	1998-05-21
3111	ShippedDate	1998-04-24
3111	ShipVia	2
3111	Freight	71.64
3111	ShipName	Die Wandernde Kuh
3111	ShipAddress	Adenauerallee 900
3111	ShipCity	Stuttgart
3111	ShipPostalCode	70563
3111	ShipCountry	Germany
3112	OrderID	11047
3112	CustomerID	EASTC
3112	EmployeeID	7
3112	OrderDate	1998-04-24
3112	RequiredDate	1998-05-22
3112	ShippedDate	1998-05-01
3112	ShipVia	3
3112	Freight	46.62
3112	ShipName	Eastern Connection
3112	ShipAddress	35 King George
3112	ShipCity	London
3112	ShipPostalCode	WX3 6FW
3112	ShipCountry	UK
3113	OrderID	11048
3113	CustomerID	BOTTM
3113	EmployeeID	7
3113	OrderDate	1998-04-24
3113	RequiredDate	1998-05-22
3113	ShippedDate	1998-04-30
3113	ShipVia	3
3113	Freight	24.12
3113	ShipName	Bottom-Dollar Markets
3113	ShipAddress	23 Tsawassen Blvd.
3113	ShipCity	Tsawassen
3113	ShipRegion	BC
3113	ShipPostalCode	T2F 8M4
3113	ShipCountry	Canada
3114	OrderID	11049
3114	CustomerID	GOURL
3114	EmployeeID	3
3114	OrderDate	1998-04-24
3114	RequiredDate	1998-05-22
3114	ShippedDate	1998-05-04
3114	ShipVia	1
3114	Freight	8.34
3114	ShipName	Gourmet Lanchonetes
3114	ShipAddress	Av. Brasil, 442
3114	ShipCity	Campinas
3114	ShipRegion	SP
3114	ShipPostalCode	04876-786
3114	ShipCountry	Brazil
3115	OrderID	11050
3115	CustomerID	FOLKO
3115	EmployeeID	8
3115	OrderDate	1998-04-27
3115	RequiredDate	1998-05-25
3115	ShippedDate	1998-05-05
3115	ShipVia	2
3115	Freight	59.41
3115	ShipName	Folk och fä HB
3115	ShipAddress	Åkergatan 24
3115	ShipCity	Bräcke
3115	ShipPostalCode	S-844 67
3115	ShipCountry	Sweden
3116	OrderID	11051
3116	CustomerID	LAMAI
3116	EmployeeID	7
3116	OrderDate	1998-04-27
3116	RequiredDate	1998-05-25
3116	ShipVia	3
3116	Freight	2.79
3116	ShipName	La maison d'Asie
3116	ShipAddress	1 rue Alsace-Lorraine
3116	ShipCity	Toulouse
3116	ShipPostalCode	31000
3116	ShipCountry	France
3117	OrderID	11052
3117	CustomerID	HANAR
3117	EmployeeID	3
3117	OrderDate	1998-04-27
3117	RequiredDate	1998-05-25
3117	ShippedDate	1998-05-01
3117	ShipVia	1
3117	Freight	67.26
3117	ShipName	Hanari Carnes
3117	ShipAddress	Rua do Paço, 67
3117	ShipCity	Rio de Janeiro
3117	ShipRegion	RJ
3117	ShipPostalCode	05454-876
3117	ShipCountry	Brazil
3118	OrderID	11053
3118	CustomerID	PICCO
3118	EmployeeID	2
3118	OrderDate	1998-04-27
3118	RequiredDate	1998-05-25
3118	ShippedDate	1998-04-29
3118	ShipVia	2
3118	Freight	53.05
3118	ShipName	Piccolo und mehr
3118	ShipAddress	Geislweg 14
3118	ShipCity	Salzburg
3118	ShipPostalCode	5020
3118	ShipCountry	Austria
3119	OrderID	11054
3119	CustomerID	CACTU
3119	EmployeeID	8
3119	OrderDate	1998-04-28
3119	RequiredDate	1998-05-26
3119	ShipVia	1
3119	Freight	0.33
3119	ShipName	Cactus Comidas para llevar
3119	ShipAddress	Cerrito 333
3119	ShipCity	Buenos Aires
3119	ShipPostalCode	1010
3119	ShipCountry	Argentina
3120	OrderID	11055
3120	CustomerID	HILAA
3120	EmployeeID	7
3120	OrderDate	1998-04-28
3120	RequiredDate	1998-05-26
3120	ShippedDate	1998-05-05
3120	ShipVia	2
3120	Freight	120.92
3120	ShipName	HILARION-Abastos
3120	ShipAddress	Carrera 22 con Ave. Carlos Soublette #8-35
3120	ShipCity	San Cristóbal
3120	ShipRegion	Táchira
3120	ShipPostalCode	5022
3120	ShipCountry	Venezuela
3121	OrderID	11056
3121	CustomerID	EASTC
3121	EmployeeID	8
3121	OrderDate	1998-04-28
3121	RequiredDate	1998-05-12
3121	ShippedDate	1998-05-01
3121	ShipVia	2
3121	Freight	278.96
3121	ShipName	Eastern Connection
3121	ShipAddress	35 King George
3121	ShipCity	London
3121	ShipPostalCode	WX3 6FW
3121	ShipCountry	UK
3122	OrderID	11057
3122	CustomerID	NORTS
3122	EmployeeID	3
3122	OrderDate	1998-04-29
3122	RequiredDate	1998-05-27
3122	ShippedDate	1998-05-01
3122	ShipVia	3
3122	Freight	4.13
3122	ShipName	North/South
3122	ShipAddress	South House 300 Queensbridge
3122	ShipCity	London
3122	ShipPostalCode	SW7 1RZ
3122	ShipCountry	UK
3123	OrderID	11058
3123	CustomerID	BLAUS
3123	EmployeeID	9
3123	OrderDate	1998-04-29
3123	RequiredDate	1998-05-27
3123	ShipVia	3
3123	Freight	31.14
3123	ShipName	Blauer See Delikatessen
3123	ShipAddress	Forsterstr. 57
3123	ShipCity	Mannheim
3123	ShipPostalCode	68306
3123	ShipCountry	Germany
3124	OrderID	11059
3124	CustomerID	RICAR
3124	EmployeeID	2
3124	OrderDate	1998-04-29
3124	RequiredDate	1998-06-10
3124	ShipVia	2
3124	Freight	85.8
3124	ShipName	Ricardo Adocicados
3124	ShipAddress	Av. Copacabana, 267
3124	ShipCity	Rio de Janeiro
3124	ShipRegion	RJ
3124	ShipPostalCode	02389-890
3124	ShipCountry	Brazil
3125	OrderID	11060
3125	CustomerID	FRANS
3125	EmployeeID	2
3125	OrderDate	1998-04-30
3125	RequiredDate	1998-05-28
3125	ShippedDate	1998-05-04
3125	ShipVia	2
3125	Freight	10.98
3125	ShipName	Franchi S.p.A.
3125	ShipAddress	Via Monte Bianco 34
3125	ShipCity	Torino
3125	ShipPostalCode	10100
3125	ShipCountry	Italy
3126	OrderID	11061
3126	CustomerID	GREAL
3126	EmployeeID	4
3126	OrderDate	1998-04-30
3126	RequiredDate	1998-06-11
3126	ShipVia	3
3126	Freight	14.01
3126	ShipName	Great Lakes Food Market
3126	ShipAddress	2732 Baker Blvd.
3126	ShipCity	Eugene
3126	ShipRegion	OR
3126	ShipPostalCode	97403
3126	ShipCountry	USA
3127	OrderID	11062
3127	CustomerID	REGGC
3127	EmployeeID	4
3127	OrderDate	1998-04-30
3127	RequiredDate	1998-05-28
3127	ShipVia	2
3127	Freight	29.93
3127	ShipName	Reggiani Caseifici
3127	ShipAddress	Strada Provinciale 124
3127	ShipCity	Reggio Emilia
3127	ShipPostalCode	42100
3127	ShipCountry	Italy
3128	OrderID	11063
3128	CustomerID	HUNGO
3128	EmployeeID	3
3128	OrderDate	1998-04-30
3128	RequiredDate	1998-05-28
3128	ShippedDate	1998-05-06
3128	ShipVia	2
3128	Freight	81.73
3128	ShipName	Hungry Owl All-Night Grocers
3128	ShipAddress	8 Johnstown Road
3128	ShipCity	Cork
3128	ShipRegion	Co. Cork
3128	ShipCountry	Ireland
3129	OrderID	11064
3129	CustomerID	SAVEA
3129	EmployeeID	1
3129	OrderDate	1998-05-01
3129	RequiredDate	1998-05-29
3129	ShippedDate	1998-05-04
3129	ShipVia	1
3129	Freight	30.09
3129	ShipName	Save-a-lot Markets
3129	ShipAddress	187 Suffolk Ln.
3129	ShipCity	Boise
3129	ShipRegion	ID
3129	ShipPostalCode	83720
3129	ShipCountry	USA
3130	OrderID	11065
3130	CustomerID	LILAS
3130	EmployeeID	8
3130	OrderDate	1998-05-01
3130	RequiredDate	1998-05-29
3130	ShipVia	1
3130	Freight	12.91
3130	ShipName	LILA-Supermercado
3130	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
3130	ShipCity	Barquisimeto
3130	ShipRegion	Lara
3130	ShipPostalCode	3508
3130	ShipCountry	Venezuela
3131	OrderID	11066
3131	CustomerID	WHITC
3131	EmployeeID	7
3131	OrderDate	1998-05-01
3131	RequiredDate	1998-05-29
3131	ShippedDate	1998-05-04
3131	ShipVia	2
3131	Freight	44.72
3131	ShipName	White Clover Markets
3131	ShipAddress	1029 - 12th Ave. S.
3131	ShipCity	Seattle
3131	ShipRegion	WA
3131	ShipPostalCode	98124
3131	ShipCountry	USA
3132	OrderID	11067
3132	CustomerID	DRACD
3132	EmployeeID	1
3132	OrderDate	1998-05-04
3132	RequiredDate	1998-05-18
3132	ShippedDate	1998-05-06
3132	ShipVia	2
3132	Freight	7.98
3132	ShipName	Drachenblut Delikatessen
3132	ShipAddress	Walserweg 21
3132	ShipCity	Aachen
3132	ShipPostalCode	52066
3132	ShipCountry	Germany
3133	OrderID	11068
3133	CustomerID	QUEEN
3133	EmployeeID	8
3133	OrderDate	1998-05-04
3133	RequiredDate	1998-06-01
3133	ShipVia	2
3133	Freight	81.75
3133	ShipName	Queen Cozinha
3133	ShipAddress	Alameda dos Canàrios, 891
3133	ShipCity	Sao Paulo
3133	ShipRegion	SP
3133	ShipPostalCode	05487-020
3133	ShipCountry	Brazil
3134	OrderID	11069
3134	CustomerID	TORTU
3134	EmployeeID	1
3134	OrderDate	1998-05-04
3134	RequiredDate	1998-06-01
3134	ShippedDate	1998-05-06
3134	ShipVia	2
3134	Freight	15.67
3134	ShipName	Tortuga Restaurante
3134	ShipAddress	Avda. Azteca 123
3134	ShipCity	México D.F.
3134	ShipPostalCode	05033
3134	ShipCountry	Mexico
3135	OrderID	11070
3135	CustomerID	LEHMS
3135	EmployeeID	2
3135	OrderDate	1998-05-05
3135	RequiredDate	1998-06-02
3135	ShipVia	1
3135	Freight	136.0
3135	ShipName	Lehmanns Marktstand
3135	ShipAddress	Magazinweg 7
3135	ShipCity	Frankfurt a.M.
3135	ShipPostalCode	60528
3135	ShipCountry	Germany
3136	OrderID	11071
3136	CustomerID	LILAS
3136	EmployeeID	1
3136	OrderDate	1998-05-05
3136	RequiredDate	1998-06-02
3136	ShipVia	1
3136	Freight	0.93
3136	ShipName	LILA-Supermercado
3136	ShipAddress	Carrera 52 con Ave. Bolívar #65-98 Llano Largo
3136	ShipCity	Barquisimeto
3136	ShipRegion	Lara
3136	ShipPostalCode	3508
3136	ShipCountry	Venezuela
3137	OrderID	11072
3137	CustomerID	ERNSH
3137	EmployeeID	4
3137	OrderDate	1998-05-05
3137	RequiredDate	1998-06-02
3137	ShipVia	2
3137	Freight	258.64
3137	ShipName	Ernst Handel
3137	ShipAddress	Kirchgasse 6
3137	ShipCity	Graz
3137	ShipPostalCode	8010
3137	ShipCountry	Austria
3138	OrderID	11073
3138	CustomerID	PERIC
3138	EmployeeID	2
3138	OrderDate	1998-05-05
3138	RequiredDate	1998-06-02
3138	ShipVia	2
3138	Freight	24.95
3138	ShipName	Pericles Comidas clásicas
3138	ShipAddress	Calle Dr. Jorge Cash 321
3138	ShipCity	México D.F.
3138	ShipPostalCode	05033
3138	ShipCountry	Mexico
3139	OrderID	11074
3139	CustomerID	SIMOB
3139	EmployeeID	7
3139	OrderDate	1998-05-06
3139	RequiredDate	1998-06-03
3139	ShipVia	2
3139	Freight	18.44
3139	ShipName	Simons bistro
3139	ShipAddress	Vinbæltet 34
3139	ShipCity	Kobenhavn
3139	ShipPostalCode	1734
3139	ShipCountry	Denmark
3140	OrderID	11075
3140	CustomerID	RICSU
3140	EmployeeID	8
3140	OrderDate	1998-05-06
3140	RequiredDate	1998-06-03
3140	ShipVia	2
3140	Freight	6.19
3140	ShipName	Richter Supermarkt
3140	ShipAddress	Starenweg 5
3140	ShipCity	Genève
3140	ShipPostalCode	1204
3140	ShipCountry	Switzerland
3141	OrderID	11076
3141	CustomerID	BONAP
3141	EmployeeID	4
3141	OrderDate	1998-05-06
3141	RequiredDate	1998-06-03
3141	ShipVia	2
3141	Freight	38.28
3141	ShipName	Bon app'
3141	ShipAddress	12, rue des Bouchers
3141	ShipCity	Marseille
3141	ShipPostalCode	13008
3141	ShipCountry	France
3142	OrderID	11077
3142	CustomerID	RATTC
3142	EmployeeID	1
3142	OrderDate	1998-05-06
3142	RequiredDate	1998-06-03
3142	ShipVia	2
3142	Freight	8.53
3142	ShipName	Rattlesnake Canyon Grocery
3142	ShipAddress	2817 Milton Dr.
3142	ShipCity	Albuquerque
3142	ShipRegion	NM
3142	ShipPostalCode	87110
3142	ShipCountry	USA
3143	ProductID	1
3143	ProductName	Chai
3143	SupplierID	8
3143	CategoryID	1
3143	QuantityPerUnit	10 boxes x 30 bags
3143	UnitPrice	18.0
3143	UnitsInStock	39
3143	UnitsOnOrder	0
3143	ReorderLevel	10
3143	Discontinued	1
3144	ProductID	2
3144	ProductName	Chang
3144	SupplierID	1
3144	CategoryID	1
3144	QuantityPerUnit	24 - 12 oz bottles
3144	UnitPrice	19.0
3144	UnitsInStock	17
3144	UnitsOnOrder	40
3144	ReorderLevel	25
3144	Discontinued	1
3145	ProductID	3
3145	ProductName	Aniseed Syrup
3145	SupplierID	1
3145	CategoryID	2
3145	QuantityPerUnit	12 - 550 ml bottles
3145	UnitPrice	10.0
3145	UnitsInStock	13
3145	UnitsOnOrder	70
3145	ReorderLevel	25
3145	Discontinued	0
3146	ProductID	4
3146	ProductName	Chef Anton's Cajun Seasoning
3146	SupplierID	2
3146	CategoryID	2
3146	QuantityPerUnit	48 - 6 oz jars
3146	UnitPrice	22.0
3146	UnitsInStock	53
3146	UnitsOnOrder	0
3146	ReorderLevel	0
3146	Discontinued	0
3147	ProductID	5
3147	ProductName	Chef Anton's Gumbo Mix
3147	SupplierID	2
3147	CategoryID	2
3147	QuantityPerUnit	36 boxes
3147	UnitPrice	21.35
3147	UnitsInStock	0
3147	UnitsOnOrder	0
3147	ReorderLevel	0
3147	Discontinued	1
3148	ProductID	6
3148	ProductName	Grandma's Boysenberry Spread
3148	SupplierID	3
3148	CategoryID	2
3148	QuantityPerUnit	12 - 8 oz jars
3148	UnitPrice	25.0
3148	UnitsInStock	120
3148	UnitsOnOrder	0
3148	ReorderLevel	25
3148	Discontinued	0
3149	ProductID	7
3149	ProductName	Uncle Bob's Organic Dried Pears
3149	SupplierID	3
3149	CategoryID	7
3149	QuantityPerUnit	12 - 1 lb pkgs.
3149	UnitPrice	30.0
3149	UnitsInStock	15
3149	UnitsOnOrder	0
3149	ReorderLevel	10
3149	Discontinued	0
3150	ProductID	8
3150	ProductName	Northwoods Cranberry Sauce
3150	SupplierID	3
3150	CategoryID	2
3150	QuantityPerUnit	12 - 12 oz jars
3150	UnitPrice	40.0
3150	UnitsInStock	6
3150	UnitsOnOrder	0
3150	ReorderLevel	0
3150	Discontinued	0
3151	ProductID	9
3151	ProductName	Mishi Kobe Niku
3151	SupplierID	4
3151	CategoryID	6
3151	QuantityPerUnit	18 - 500 g pkgs.
3151	UnitPrice	97.0
3151	UnitsInStock	29
3151	UnitsOnOrder	0
3151	ReorderLevel	0
3151	Discontinued	1
3152	ProductID	10
3152	ProductName	Ikura
3152	SupplierID	4
3152	CategoryID	8
3152	QuantityPerUnit	12 - 200 ml jars
3152	UnitPrice	31.0
3152	UnitsInStock	31
3152	UnitsOnOrder	0
3152	ReorderLevel	0
3152	Discontinued	0
3153	ProductID	11
3153	ProductName	Queso Cabrales
3153	SupplierID	5
3153	CategoryID	4
3153	QuantityPerUnit	1 kg pkg.
3153	UnitPrice	21.0
3153	UnitsInStock	22
3153	UnitsOnOrder	30
3153	ReorderLevel	30
3153	Discontinued	0
3154	ProductID	12
3154	ProductName	Queso Manchego La Pastora
3154	SupplierID	5
3154	CategoryID	4
3154	QuantityPerUnit	10 - 500 g pkgs.
3154	UnitPrice	38.0
3154	UnitsInStock	86
3154	UnitsOnOrder	0
3154	ReorderLevel	0
3154	Discontinued	0
3155	ProductID	13
3155	ProductName	Konbu
3155	SupplierID	6
3155	CategoryID	8
3155	QuantityPerUnit	2 kg box
3155	UnitPrice	6.0
3155	UnitsInStock	24
3155	UnitsOnOrder	0
3155	ReorderLevel	5
3155	Discontinued	0
3156	ProductID	14
3156	ProductName	Tofu
3156	SupplierID	6
3156	CategoryID	7
3156	QuantityPerUnit	40 - 100 g pkgs.
3156	UnitPrice	23.25
3156	UnitsInStock	35
3156	UnitsOnOrder	0
3156	ReorderLevel	0
3156	Discontinued	0
3157	ProductID	15
3157	ProductName	Genen Shouyu
3157	SupplierID	6
3157	CategoryID	2
3157	QuantityPerUnit	24 - 250 ml bottles
3157	UnitPrice	13.0
3157	UnitsInStock	39
3157	UnitsOnOrder	0
3157	ReorderLevel	5
3157	Discontinued	0
3158	ProductID	16
3158	ProductName	Pavlova
3158	SupplierID	7
3158	CategoryID	3
3158	QuantityPerUnit	32 - 500 g boxes
3158	UnitPrice	17.45
3158	UnitsInStock	29
3158	UnitsOnOrder	0
3158	ReorderLevel	10
3158	Discontinued	0
3159	ProductID	17
3159	ProductName	Alice Mutton
3159	SupplierID	7
3159	CategoryID	6
3159	QuantityPerUnit	20 - 1 kg tins
3159	UnitPrice	39.0
3159	UnitsInStock	0
3159	UnitsOnOrder	0
3159	ReorderLevel	0
3159	Discontinued	1
3160	ProductID	18
3160	ProductName	Carnarvon Tigers
3160	SupplierID	7
3160	CategoryID	8
3160	QuantityPerUnit	16 kg pkg.
3160	UnitPrice	62.5
3160	UnitsInStock	42
3160	UnitsOnOrder	0
3160	ReorderLevel	0
3160	Discontinued	0
3161	ProductID	19
3161	ProductName	Teatime Chocolate Biscuits
3161	SupplierID	8
3161	CategoryID	3
3161	QuantityPerUnit	10 boxes x 12 pieces
3161	UnitPrice	9.2
3161	UnitsInStock	25
3161	UnitsOnOrder	0
3161	ReorderLevel	5
3161	Discontinued	0
3162	ProductID	20
3162	ProductName	Sir Rodney's Marmalade
3162	SupplierID	8
3162	CategoryID	3
3162	QuantityPerUnit	30 gift boxes
3162	UnitPrice	81.0
3162	UnitsInStock	40
3162	UnitsOnOrder	0
3162	ReorderLevel	0
3162	Discontinued	0
3163	ProductID	21
3163	ProductName	Sir Rodney's Scones
3163	SupplierID	8
3163	CategoryID	3
3163	QuantityPerUnit	24 pkgs. x 4 pieces
3163	UnitPrice	10.0
3163	UnitsInStock	3
3163	UnitsOnOrder	40
3163	ReorderLevel	5
3163	Discontinued	0
3164	ProductID	22
3164	ProductName	Gustaf's Knäckebröd
3164	SupplierID	9
3164	CategoryID	5
3164	QuantityPerUnit	24 - 500 g pkgs.
3164	UnitPrice	21.0
3164	UnitsInStock	104
3164	UnitsOnOrder	0
3164	ReorderLevel	25
3164	Discontinued	0
3165	ProductID	23
3165	ProductName	Tunnbröd
3165	SupplierID	9
3165	CategoryID	5
3165	QuantityPerUnit	12 - 250 g pkgs.
3165	UnitPrice	9.0
3165	UnitsInStock	61
3165	UnitsOnOrder	0
3165	ReorderLevel	25
3165	Discontinued	0
3166	ProductID	24
3166	ProductName	Guaraná Fantástica
3166	SupplierID	10
3166	CategoryID	1
3166	QuantityPerUnit	12 - 355 ml cans
3166	UnitPrice	4.5
3166	UnitsInStock	20
3166	UnitsOnOrder	0
3166	ReorderLevel	0
3166	Discontinued	1
3167	ProductID	25
3167	ProductName	NuNuCa Nuß-Nougat-Creme
3167	SupplierID	11
3167	CategoryID	3
3167	QuantityPerUnit	20 - 450 g glasses
3167	UnitPrice	14.0
3167	UnitsInStock	76
3167	UnitsOnOrder	0
3167	ReorderLevel	30
3167	Discontinued	0
3168	ProductID	26
3168	ProductName	Gumbär Gummibärchen
3168	SupplierID	11
3168	CategoryID	3
3168	QuantityPerUnit	100 - 250 g bags
3168	UnitPrice	31.23
3168	UnitsInStock	15
3168	UnitsOnOrder	0
3168	ReorderLevel	0
3168	Discontinued	0
3169	ProductID	27
3169	ProductName	Schoggi Schokolade
3169	SupplierID	11
3169	CategoryID	3
3169	QuantityPerUnit	100 - 100 g pieces
3169	UnitPrice	43.9
3169	UnitsInStock	49
3169	UnitsOnOrder	0
3169	ReorderLevel	30
3169	Discontinued	0
3170	ProductID	28
3170	ProductName	Rössle Sauerkraut
3170	SupplierID	12
3170	CategoryID	7
3170	QuantityPerUnit	25 - 825 g cans
3170	UnitPrice	45.6
3170	UnitsInStock	26
3170	UnitsOnOrder	0
3170	ReorderLevel	0
3170	Discontinued	1
3171	ProductID	29
3171	ProductName	Thüringer Rostbratwurst
3171	SupplierID	12
3171	CategoryID	6
3171	QuantityPerUnit	50 bags x 30 sausgs.
3171	UnitPrice	123.79
3171	UnitsInStock	0
3171	UnitsOnOrder	0
3171	ReorderLevel	0
3171	Discontinued	1
3172	ProductID	30
3172	ProductName	Nord-Ost Matjeshering
3172	SupplierID	13
3172	CategoryID	8
3172	QuantityPerUnit	10 - 200 g glasses
3172	UnitPrice	25.89
3172	UnitsInStock	10
3172	UnitsOnOrder	0
3172	ReorderLevel	15
3172	Discontinued	0
3173	ProductID	31
3173	ProductName	Gorgonzola Telino
3173	SupplierID	14
3173	CategoryID	4
3173	QuantityPerUnit	12 - 100 g pkgs
3173	UnitPrice	12.5
3173	UnitsInStock	0
3173	UnitsOnOrder	70
3173	ReorderLevel	20
3173	Discontinued	0
3174	ProductID	32
3174	ProductName	Mascarpone Fabioli
3174	SupplierID	14
3174	CategoryID	4
3174	QuantityPerUnit	24 - 200 g pkgs.
3174	UnitPrice	32.0
3174	UnitsInStock	9
3174	UnitsOnOrder	40
3174	ReorderLevel	25
3174	Discontinued	0
3175	ProductID	33
3175	ProductName	Geitost
3175	SupplierID	15
3175	CategoryID	4
3175	QuantityPerUnit	500 g
3175	UnitPrice	2.5
3175	UnitsInStock	112
3175	UnitsOnOrder	0
3175	ReorderLevel	20
3175	Discontinued	0
3176	ProductID	34
3176	ProductName	Sasquatch Ale
3176	SupplierID	16
3176	CategoryID	1
3176	QuantityPerUnit	24 - 12 oz bottles
3176	UnitPrice	14.0
3176	UnitsInStock	111
3176	UnitsOnOrder	0
3176	ReorderLevel	15
3176	Discontinued	0
3177	ProductID	35
3177	ProductName	Steeleye Stout
3177	SupplierID	16
3177	CategoryID	1
3177	QuantityPerUnit	24 - 12 oz bottles
3177	UnitPrice	18.0
3177	UnitsInStock	20
3177	UnitsOnOrder	0
3177	ReorderLevel	15
3177	Discontinued	0
3178	ProductID	36
3178	ProductName	Inlagd Sill
3178	SupplierID	17
3178	CategoryID	8
3178	QuantityPerUnit	24 - 250 g  jars
3178	UnitPrice	19.0
3178	UnitsInStock	112
3178	UnitsOnOrder	0
3178	ReorderLevel	20
3178	Discontinued	0
3179	ProductID	37
3179	ProductName	Gravad lax
3179	SupplierID	17
3179	CategoryID	8
3179	QuantityPerUnit	12 - 500 g pkgs.
3179	UnitPrice	26.0
3179	UnitsInStock	11
3179	UnitsOnOrder	50
3179	ReorderLevel	25
3179	Discontinued	0
3180	ProductID	38
3180	ProductName	Côte de Blaye
3180	SupplierID	18
3180	CategoryID	1
3180	QuantityPerUnit	12 - 75 cl bottles
3180	UnitPrice	263.5
3180	UnitsInStock	17
3180	UnitsOnOrder	0
3180	ReorderLevel	15
3180	Discontinued	0
3181	ProductID	39
3181	ProductName	Chartreuse verte
3181	SupplierID	18
3181	CategoryID	1
3181	QuantityPerUnit	750 cc per bottle
3181	UnitPrice	18.0
3181	UnitsInStock	69
3181	UnitsOnOrder	0
3181	ReorderLevel	5
3181	Discontinued	0
3182	ProductID	40
3182	ProductName	Boston Crab Meat
3182	SupplierID	19
3182	CategoryID	8
3182	QuantityPerUnit	24 - 4 oz tins
3182	UnitPrice	18.4
3182	UnitsInStock	123
3182	UnitsOnOrder	0
3182	ReorderLevel	30
3182	Discontinued	0
3183	ProductID	41
3183	ProductName	Jack's New England Clam Chowder
3183	SupplierID	19
3183	CategoryID	8
3183	QuantityPerUnit	12 - 12 oz cans
3183	UnitPrice	9.65
3183	UnitsInStock	85
3183	UnitsOnOrder	0
3183	ReorderLevel	10
3183	Discontinued	0
3184	ProductID	42
3184	ProductName	Singaporean Hokkien Fried Mee
3184	SupplierID	20
3184	CategoryID	5
3184	QuantityPerUnit	32 - 1 kg pkgs.
3184	UnitPrice	14.0
3184	UnitsInStock	26
3184	UnitsOnOrder	0
3184	ReorderLevel	0
3184	Discontinued	1
3185	ProductID	43
3185	ProductName	Ipoh Coffee
3185	SupplierID	20
3185	CategoryID	1
3185	QuantityPerUnit	16 - 500 g tins
3185	UnitPrice	46.0
3185	UnitsInStock	17
3185	UnitsOnOrder	10
3185	ReorderLevel	25
3185	Discontinued	0
3186	ProductID	44
3186	ProductName	Gula Malacca
3186	SupplierID	20
3186	CategoryID	2
3186	QuantityPerUnit	20 - 2 kg bags
3186	UnitPrice	19.45
3186	UnitsInStock	27
3186	UnitsOnOrder	0
3186	ReorderLevel	15
3186	Discontinued	0
3187	ProductID	45
3187	ProductName	Rogede sild
3187	SupplierID	21
3187	CategoryID	8
3187	QuantityPerUnit	1k pkg.
3187	UnitPrice	9.5
3187	UnitsInStock	5
3187	UnitsOnOrder	70
3187	ReorderLevel	15
3187	Discontinued	0
3188	ProductID	46
3188	ProductName	Spegesild
3188	SupplierID	21
3188	CategoryID	8
3188	QuantityPerUnit	4 - 450 g glasses
3188	UnitPrice	12.0
3188	UnitsInStock	95
3188	UnitsOnOrder	0
3188	ReorderLevel	0
3188	Discontinued	0
3189	ProductID	47
3189	ProductName	Zaanse koeken
3189	SupplierID	22
3189	CategoryID	3
3189	QuantityPerUnit	10 - 4 oz boxes
3189	UnitPrice	9.5
3189	UnitsInStock	36
3189	UnitsOnOrder	0
3189	ReorderLevel	0
3189	Discontinued	0
3190	ProductID	48
3190	ProductName	Chocolade
3190	SupplierID	22
3190	CategoryID	3
3190	QuantityPerUnit	10 pkgs.
3190	UnitPrice	12.75
3190	UnitsInStock	15
3190	UnitsOnOrder	70
3190	ReorderLevel	25
3190	Discontinued	0
3191	ProductID	49
3191	ProductName	Maxilaku
3191	SupplierID	23
3191	CategoryID	3
3191	QuantityPerUnit	24 - 50 g pkgs.
3191	UnitPrice	20.0
3191	UnitsInStock	10
3191	UnitsOnOrder	60
3191	ReorderLevel	15
3191	Discontinued	0
3192	ProductID	50
3192	ProductName	Valkoinen suklaa
3192	SupplierID	23
3192	CategoryID	3
3192	QuantityPerUnit	12 - 100 g bars
3192	UnitPrice	16.25
3192	UnitsInStock	65
3192	UnitsOnOrder	0
3192	ReorderLevel	30
3192	Discontinued	0
3193	ProductID	51
3193	ProductName	Manjimup Dried Apples
3193	SupplierID	24
3193	CategoryID	7
3193	QuantityPerUnit	50 - 300 g pkgs.
3193	UnitPrice	53.0
3193	UnitsInStock	20
3193	UnitsOnOrder	0
3193	ReorderLevel	10
3193	Discontinued	0
3194	ProductID	52
3194	ProductName	Filo Mix
3194	SupplierID	24
3194	CategoryID	5
3194	QuantityPerUnit	16 - 2 kg boxes
3194	UnitPrice	7.0
3194	UnitsInStock	38
3194	UnitsOnOrder	0
3194	ReorderLevel	25
3194	Discontinued	0
3195	ProductID	53
3195	ProductName	Perth Pasties
3195	SupplierID	24
3195	CategoryID	6
3195	QuantityPerUnit	48 pieces
3195	UnitPrice	32.8
3195	UnitsInStock	0
3195	UnitsOnOrder	0
3195	ReorderLevel	0
3195	Discontinued	1
3196	ProductID	54
3196	ProductName	Tourtière
3196	SupplierID	25
3196	CategoryID	6
3196	QuantityPerUnit	16 pies
3196	UnitPrice	7.45
3196	UnitsInStock	21
3196	UnitsOnOrder	0
3196	ReorderLevel	10
3196	Discontinued	0
3197	ProductID	55
3197	ProductName	Pâté chinois
3197	SupplierID	25
3197	CategoryID	6
3197	QuantityPerUnit	24 boxes x 2 pies
3197	UnitPrice	24.0
3197	UnitsInStock	115
3197	UnitsOnOrder	0
3197	ReorderLevel	20
3197	Discontinued	0
3198	ProductID	56
3198	ProductName	Gnocchi di nonna Alice
3198	SupplierID	26
3198	CategoryID	5
3198	QuantityPerUnit	24 - 250 g pkgs.
3198	UnitPrice	38.0
3198	UnitsInStock	21
3198	UnitsOnOrder	10
3198	ReorderLevel	30
3198	Discontinued	0
3199	ProductID	57
3199	ProductName	Ravioli Angelo
3199	SupplierID	26
3199	CategoryID	5
3199	QuantityPerUnit	24 - 250 g pkgs.
3199	UnitPrice	19.5
3199	UnitsInStock	36
3199	UnitsOnOrder	0
3199	ReorderLevel	20
3199	Discontinued	0
3200	ProductID	58
3200	ProductName	Escargots de Bourgogne
3200	SupplierID	27
3200	CategoryID	8
3200	QuantityPerUnit	24 pieces
3200	UnitPrice	13.25
3200	UnitsInStock	62
3200	UnitsOnOrder	0
3200	ReorderLevel	20
3200	Discontinued	0
3201	ProductID	59
3201	ProductName	Raclette Courdavault
3201	SupplierID	28
3201	CategoryID	4
3201	QuantityPerUnit	5 kg pkg.
3201	UnitPrice	55.0
3201	UnitsInStock	79
3201	UnitsOnOrder	0
3201	ReorderLevel	0
3201	Discontinued	0
3202	ProductID	60
3202	ProductName	Camembert Pierrot
3202	SupplierID	28
3202	CategoryID	4
3202	QuantityPerUnit	15 - 300 g rounds
3202	UnitPrice	34.0
3202	UnitsInStock	19
3202	UnitsOnOrder	0
3202	ReorderLevel	0
3202	Discontinued	0
3203	ProductID	61
3203	ProductName	Sirop d'érable
3203	SupplierID	29
3203	CategoryID	2
3203	QuantityPerUnit	24 - 500 ml bottles
3203	UnitPrice	28.5
3203	UnitsInStock	113
3203	UnitsOnOrder	0
3203	ReorderLevel	25
3203	Discontinued	0
3204	ProductID	62
3204	ProductName	Tarte au sucre
3204	SupplierID	29
3204	CategoryID	3
3204	QuantityPerUnit	48 pies
3204	UnitPrice	49.3
3204	UnitsInStock	17
3204	UnitsOnOrder	0
3204	ReorderLevel	0
3204	Discontinued	0
3205	ProductID	63
3205	ProductName	Vegie-spread
3205	SupplierID	7
3205	CategoryID	2
3205	QuantityPerUnit	15 - 625 g jars
3205	UnitPrice	43.9
3205	UnitsInStock	24
3205	UnitsOnOrder	0
3205	ReorderLevel	5
3205	Discontinued	0
3206	ProductID	64
3206	ProductName	Wimmers gute Semmelknödel
3206	SupplierID	12
3206	CategoryID	5
3206	QuantityPerUnit	20 bags x 4 pieces
3206	UnitPrice	33.25
3206	UnitsInStock	22
3206	UnitsOnOrder	80
3206	ReorderLevel	30
3206	Discontinued	0
3207	ProductID	65
3207	ProductName	Louisiana Fiery Hot Pepper Sauce
3207	SupplierID	2
3207	CategoryID	2
3207	QuantityPerUnit	32 - 8 oz bottles
3207	UnitPrice	21.05
3207	UnitsInStock	76
3207	UnitsOnOrder	0
3207	ReorderLevel	0
3207	Discontinued	0
3208	ProductID	66
3208	ProductName	Louisiana Hot Spiced Okra
3208	SupplierID	2
3208	CategoryID	2
3208	QuantityPerUnit	24 - 8 oz jars
3208	UnitPrice	17.0
3208	UnitsInStock	4
3208	UnitsOnOrder	100
3208	ReorderLevel	20
3208	Discontinued	0
3209	ProductID	67
3209	ProductName	Laughing Lumberjack Lager
3209	SupplierID	16
3209	CategoryID	1
3209	QuantityPerUnit	24 - 12 oz bottles
3209	UnitPrice	14.0
3209	UnitsInStock	52
3209	UnitsOnOrder	0
3209	ReorderLevel	10
3209	Discontinued	0
3210	ProductID	68
3210	ProductName	Scottish Longbreads
3210	SupplierID	8
3210	CategoryID	3
3210	QuantityPerUnit	10 boxes x 8 pieces
3210	UnitPrice	12.5
3210	UnitsInStock	6
3210	UnitsOnOrder	10
3210	ReorderLevel	15
3210	Discontinued	0
3211	ProductID	69
3211	ProductName	Gudbrandsdalsost
3211	SupplierID	15
3211	CategoryID	4
3211	QuantityPerUnit	10 kg pkg.
3211	UnitPrice	36.0
3211	UnitsInStock	26
3211	UnitsOnOrder	0
3211	ReorderLevel	15
3211	Discontinued	0
3212	ProductID	70
3212	ProductName	Outback Lager
3212	SupplierID	7
3212	CategoryID	1
3212	QuantityPerUnit	24 - 355 ml bottles
3212	UnitPrice	15.0
3212	UnitsInStock	15
3212	UnitsOnOrder	10
3212	ReorderLevel	30
3212	Discontinued	0
3213	ProductID	71
3213	ProductName	Flotemysost
3213	SupplierID	15
3213	CategoryID	4
3213	QuantityPerUnit	10 - 500 g pkgs.
3213	UnitPrice	21.5
3213	UnitsInStock	26
3213	UnitsOnOrder	0
3213	ReorderLevel	0
3213	Discontinued	0
3214	ProductID	72
3214	ProductName	Mozzarella di Giovanni
3214	SupplierID	14
3214	CategoryID	4
3214	QuantityPerUnit	24 - 200 g pkgs.
3214	UnitPrice	34.8
3214	UnitsInStock	14
3214	UnitsOnOrder	0
3214	ReorderLevel	0
3214	Discontinued	0
3215	ProductID	73
3215	ProductName	Röd Kaviar
3215	SupplierID	17
3215	CategoryID	8
3215	QuantityPerUnit	24 - 150 g jars
3215	UnitPrice	15.0
3215	UnitsInStock	101
3215	UnitsOnOrder	0
3215	ReorderLevel	5
3215	Discontinued	0
3216	ProductID	74
3216	ProductName	Longlife Tofu
3216	SupplierID	4
3216	CategoryID	7
3216	QuantityPerUnit	5 kg pkg.
3216	UnitPrice	10.0
3216	UnitsInStock	4
3216	UnitsOnOrder	20
3216	ReorderLevel	5
3216	Discontinued	0
3217	ProductID	75
3217	ProductName	Rhönbräu Klosterbier
3217	SupplierID	12
3217	CategoryID	1
3217	QuantityPerUnit	24 - 0.5 l bottles
3217	UnitPrice	7.75
3217	UnitsInStock	125
3217	UnitsOnOrder	0
3217	ReorderLevel	25
3217	Discontinued	0
3218	ProductID	76
3218	ProductName	Lakkalikööri
3218	SupplierID	23
3218	CategoryID	1
3218	QuantityPerUnit	500 ml
3218	UnitPrice	18.0
3218	UnitsInStock	57
3218	UnitsOnOrder	0
3218	ReorderLevel	20
3218	Discontinued	0
3219	ProductID	77
3219	ProductName	Original Frankfurter grüne Soße
3219	SupplierID	12
3219	CategoryID	2
3219	QuantityPerUnit	12 boxes
3219	UnitPrice	13.0
3219	UnitsInStock	32
3219	UnitsOnOrder	0
3219	ReorderLevel	15
3219	Discontinued	0
3220	RegionID	1
3220	RegionDescription	Eastern
3221	RegionID	2
3221	RegionDescription	Western
3222	RegionID	3
3222	RegionDescription	Northern
3223	RegionID	4
3223	RegionDescription	Southern
3224	ShipperID	1
3224	CompanyName	Speedy Express
3224	Phone	(503) 555-9831
3225	ShipperID	2
3225	CompanyName	United Package
3225	Phone	(503) 555-3199
3226	ShipperID	3
3226	CompanyName	Federal Shipping
3226	Phone	(503) 555-9931
3227	ShipperID	4
3227	CompanyName	Alliance Shippers
3227	Phone	1-800-222-0451
3228	ShipperID	5
3228	CompanyName	UPS
3228	Phone	1-800-782-7892
3229	ShipperID	6
3229	CompanyName	DHL
3229	Phone	1-800-225-5345
3230	ShipperID	1
3230	CompanyName	Speedy Express
3230	Phone	(503) 555-9831
3231	ShipperID	2
3231	CompanyName	United Package
3231	Phone	(503) 555-3199
3232	ShipperID	3
3232	CompanyName	Federal Shipping
3232	Phone	(503) 555-9931
3233	ShipperID	4
3233	CompanyName	Alliance Shippers
3233	Phone	1-800-222-0451
3234	ShipperID	5
3234	CompanyName	UPS
3234	Phone	1-800-782-7892
3235	ShipperID	6
3235	CompanyName	DHL
3235	Phone	1-800-225-5345
3236	SupplierID	1
3236	CompanyName	Exotic Liquids
3236	ContactName	Charlotte Cooper
3236	ContactTitle	Purchasing Manager
3236	Address	49 Gilbert St.
3236	City	London
3236	PostalCode	EC1 4SD
3236	Country	UK
3236	Phone	(171) 555-2222
3237	SupplierID	2
3237	CompanyName	New Orleans Cajun Delights
3237	ContactName	Shelley Burke
3237	ContactTitle	Order Administrator
3237	Address	P.O. Box 78934
3237	City	New Orleans
3237	Region	LA
3237	PostalCode	70117
3237	Country	USA
3237	Phone	(100) 555-4822
3237	HomePage	#CAJUN.HTM#
3238	SupplierID	3
3238	CompanyName	Grandma Kelly's Homestead
3238	ContactName	Regina Murphy
3238	ContactTitle	Sales Representative
3238	Address	707 Oxford Rd.
3238	City	Ann Arbor
3238	Region	MI
3238	PostalCode	48104
3238	Country	USA
3238	Phone	(313) 555-5735
3238	Fax	(313) 555-3349
3239	SupplierID	4
3239	CompanyName	Tokyo Traders
3239	ContactName	Yoshi Nagase
3239	ContactTitle	Marketing Manager
3239	Address	9-8 Sekimai Musashino-shi
3239	City	Tokyo
3239	PostalCode	100
3239	Country	Japan
3239	Phone	(03) 3555-5011
3240	SupplierID	5
3240	CompanyName	Cooperativa de Quesos 'Las Cabras'
3240	ContactName	Antonio del Valle Saavedra
3240	ContactTitle	Export Administrator
3240	Address	Calle del Rosal 4
3240	City	Oviedo
3240	Region	Asturias
3240	PostalCode	33007
3240	Country	Spain
3240	Phone	(98) 598 76 54
3241	SupplierID	6
3241	CompanyName	Mayumi's
3241	ContactName	Mayumi Ohno
3241	ContactTitle	Marketing Representative
3241	Address	92 Setsuko Chuo-ku
3241	City	Osaka
3241	PostalCode	545
3241	Country	Japan
3241	Phone	(06) 431-7877
3241	HomePage	Mayumi's (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#
3242	SupplierID	7
3242	CompanyName	Pavlova, Ltd.
3242	ContactName	Ian Devling
3242	ContactTitle	Marketing Manager
3242	Address	74 Rose St. Moonie Ponds
3242	City	Melbourne
3242	Region	Victoria
3242	PostalCode	3058
3242	Country	Australia
3242	Phone	(03) 444-2343
3242	Fax	(03) 444-6588
3243	SupplierID	8
3243	CompanyName	Specialty Biscuits, Ltd.
3243	ContactName	Peter Wilson
3243	ContactTitle	Sales Representative
3243	Address	29 King's Way
3243	City	Manchester
3243	PostalCode	M14 GSD
3243	Country	UK
3243	Phone	(161) 555-4448
3244	SupplierID	9
3244	CompanyName	PB Knäckebröd AB
3244	ContactName	Lars Peterson
3244	ContactTitle	Sales Agent
3244	Address	Kaloadagatan 13
3244	City	Göteborg
3244	PostalCode	S-345 67
3244	Country	Sweden
3244	Phone	031-987 65 43
3244	Fax	031-987 65 91
3245	SupplierID	10
3245	CompanyName	Refrescos Americanas LTDA
3245	ContactName	Carlos Diaz
3245	ContactTitle	Marketing Manager
3245	Address	Av. das Americanas 12.890
3245	City	Sao Paulo
3245	PostalCode	5442
3245	Country	Brazil
3245	Phone	(11) 555 4640
3246	SupplierID	11
3246	CompanyName	Heli Süßwaren GmbH & Co. KG
3246	ContactName	Petra Winkler
3246	ContactTitle	Sales Manager
3246	Address	Tiergartenstraße 5
3246	City	Berlin
3246	PostalCode	10785
3246	Country	Germany
3246	Phone	(010) 9984510
3247	SupplierID	12
3247	CompanyName	Plutzer Lebensmittelgroßmärkte AG
3247	ContactName	Martin Bein
3247	ContactTitle	International Marketing Mgr.
3247	Address	Bogenallee 51
3247	City	Frankfurt
3247	PostalCode	60439
3247	Country	Germany
3247	Phone	(069) 992755
3247	HomePage	Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#
3248	SupplierID	13
3248	CompanyName	Nord-Ost-Fisch Handelsgesellschaft mbH
3248	ContactName	Sven Petersen
3248	ContactTitle	Coordinator Foreign Markets
3248	Address	Frahmredder 112a
3248	City	Cuxhaven
3248	PostalCode	27478
3248	Country	Germany
3248	Phone	(04721) 8713
3248	Fax	(04721) 8714
3249	SupplierID	14
3249	CompanyName	Formaggi Fortini s.r.l.
3249	ContactName	Elio Rossi
3249	ContactTitle	Sales Representative
3249	Address	Viale Dante, 75
3249	City	Ravenna
3249	PostalCode	48100
3249	Country	Italy
3249	Phone	(0544) 60323
3249	Fax	(0544) 60603
3249	HomePage	#FORMAGGI.HTM#
3250	SupplierID	15
3250	CompanyName	Norske Meierier
3250	ContactName	Beate Vileid
3250	ContactTitle	Marketing Manager
3250	Address	Hatlevegen 5
3250	City	Sandvika
3250	PostalCode	1320
3250	Country	Norway
3250	Phone	(0)2-953010
3251	SupplierID	16
3251	CompanyName	Bigfoot Breweries
3251	ContactName	Cheryl Saylor
3251	ContactTitle	Regional Account Rep.
3251	Address	3400 - 8th Avenue Suite 210
3251	City	Bend
3251	Region	OR
3251	PostalCode	97101
3251	Country	USA
3251	Phone	(503) 555-9931
3252	SupplierID	17
3252	CompanyName	Svensk Sjöföda AB
3252	ContactName	Michael Björn
3252	ContactTitle	Sales Representative
3252	Address	Brovallavägen 231
3252	City	Stockholm
3252	PostalCode	S-123 45
3252	Country	Sweden
3252	Phone	08-123 45 67
3253	SupplierID	18
3253	CompanyName	Aux joyeux ecclésiastiques
3253	ContactName	Guylène Nodier
3253	ContactTitle	Sales Manager
3253	Address	203, Rue des Francs-Bourgeois
3253	City	Paris
3253	PostalCode	75004
3253	Country	France
3253	Phone	(1) 03.83.00.68
3253	Fax	(1) 03.83.00.62
3254	SupplierID	19
3254	CompanyName	New England Seafood Cannery
3254	ContactName	Robb Merchant
3254	ContactTitle	Wholesale Account Agent
3254	Address	Order Processing Dept. 2100 Paul Revere Blvd.
3254	City	Boston
3254	Region	MA
3254	PostalCode	02134
3254	Country	USA
3254	Phone	(617) 555-3267
3254	Fax	(617) 555-3389
3255	SupplierID	20
3255	CompanyName	Leka Trading
3255	ContactName	Chandra Leka
3255	ContactTitle	Owner
3255	Address	471 Serangoon Loop, Suite #402
3255	City	Singapore
3255	PostalCode	0512
3255	Country	Singapore
3255	Phone	555-8787
3256	SupplierID	21
3256	CompanyName	Lyngbysild
3256	ContactName	Niels Petersen
3256	ContactTitle	Sales Manager
3256	Address	Lyngbysild Fiskebakken 10
3256	City	Lyngby
3256	PostalCode	2800
3256	Country	Denmark
3256	Phone	43844108
3256	Fax	43844115
3257	SupplierID	22
3257	CompanyName	Zaanse Snoepfabriek
3257	ContactName	Dirk Luchte
3257	ContactTitle	Accounting Manager
3257	Address	Verkoop Rijnweg 22
3257	City	Zaandam
3257	PostalCode	9999 ZZ
3257	Country	Netherlands
3257	Phone	(12345) 1212
3257	Fax	(12345) 1210
3258	SupplierID	23
3258	CompanyName	Karkki Oy
3258	ContactName	Anne Heikkonen
3258	ContactTitle	Product Manager
3258	Address	Valtakatu 12
3258	City	Lappeenranta
3258	PostalCode	53120
3258	Country	Finland
3258	Phone	(953) 10956
3259	SupplierID	24
3259	CompanyName	G'day, Mate
3259	ContactName	Wendy Mackenzie
3259	ContactTitle	Sales Representative
3259	Address	170 Prince Edward Parade Hunter's Hill
3259	City	Sydney
3259	Region	NSW
3259	PostalCode	2042
3259	Country	Australia
3259	Phone	(02) 555-5914
3259	Fax	(02) 555-4873
3259	HomePage	G'day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#
3260	SupplierID	25
3260	CompanyName	Ma Maison
3260	ContactName	Jean-Guy Lauzon
3260	ContactTitle	Marketing Manager
3260	Address	2960 Rue St. Laurent
3260	City	Montréal
3260	Region	Québec
3260	PostalCode	H1J 1C3
3260	Country	Canada
3260	Phone	(514) 555-9022
3261	SupplierID	26
3261	CompanyName	Pasta Buttini s.r.l.
3261	ContactName	Giovanni Giudici
3261	ContactTitle	Order Administrator
3261	Address	Via dei Gelsomini, 153
3261	City	Salerno
3261	PostalCode	84100
3261	Country	Italy
3261	Phone	(089) 6547665
3261	Fax	(089) 6547667
3262	SupplierID	27
3262	CompanyName	Escargots Nouveaux
3262	ContactName	Marie Delamare
3262	ContactTitle	Sales Manager
3262	Address	22, rue H. Voiron
3262	City	Montceau
3262	PostalCode	71300
3262	Country	France
3262	Phone	85.57.00.07
3263	SupplierID	28
3263	CompanyName	Gai pâturage
3263	ContactName	Eliane Noz
3263	ContactTitle	Sales Representative
3263	Address	Bat. B 3, rue des Alpes
3263	City	Annecy
3263	PostalCode	74000
3263	Country	France
3263	Phone	38.76.98.06
3263	Fax	38.76.98.58
3264	SupplierID	29
3264	CompanyName	Forêts d'érables
3264	ContactName	Chantal Goulet
3264	ContactTitle	Accounting Manager
3264	Address	148 rue Chasseur
3264	City	Ste-Hyacinthe
3264	Region	Québec
3264	PostalCode	J2S 7S8
3264	Country	Canada
3264	Phone	(514) 555-2955
3264	Fax	(514) 555-2921
3265	TerritoryID	01581
3265	TerritoryDescription	Westboro
3265	RegionID	1
3266	TerritoryID	01730
3266	TerritoryDescription	Bedford
3266	RegionID	1
3267	TerritoryID	01833
3267	TerritoryDescription	Georgetow
3267	RegionID	1
3268	TerritoryID	02116
3268	TerritoryDescription	Boston
3268	RegionID	1
3269	TerritoryID	02139
3269	TerritoryDescription	Cambridge
3269	RegionID	1
3270	TerritoryID	02184
3270	TerritoryDescription	Braintree
3270	RegionID	1
3271	TerritoryID	02903
3271	TerritoryDescription	Providence
3271	RegionID	1
3272	TerritoryID	03049
3272	TerritoryDescription	Hollis
3272	RegionID	3
3273	TerritoryID	03801
3273	TerritoryDescription	Portsmouth
3273	RegionID	3
3274	TerritoryID	06897
3274	TerritoryDescription	Wilton
3274	RegionID	1
3275	TerritoryID	07960
3275	TerritoryDescription	Morristown
3275	RegionID	1
3276	TerritoryID	08837
3276	TerritoryDescription	Edison
3276	RegionID	1
3277	TerritoryID	10019
3277	TerritoryDescription	New York
3277	RegionID	1
3278	TerritoryID	10038
3278	TerritoryDescription	New York
3278	RegionID	1
3279	TerritoryID	11747
3279	TerritoryDescription	Mellvile
3279	RegionID	1
3280	TerritoryID	14450
3280	TerritoryDescription	Fairport
3280	RegionID	1
3281	TerritoryID	19428
3281	TerritoryDescription	Philadelphia
3281	RegionID	3
3282	TerritoryID	19713
3282	TerritoryDescription	Neward
3282	RegionID	1
3283	TerritoryID	20852
3283	TerritoryDescription	Rockville
3283	RegionID	1
3284	TerritoryID	27403
3284	TerritoryDescription	Greensboro
3284	RegionID	1
3285	TerritoryID	27511
3285	TerritoryDescription	Cary
3285	RegionID	1
3286	TerritoryID	29202
3286	TerritoryDescription	Columbia
3286	RegionID	4
3287	TerritoryID	30346
3287	TerritoryDescription	Atlanta
3287	RegionID	4
3288	TerritoryID	31406
3288	TerritoryDescription	Savannah
3288	RegionID	4
3289	TerritoryID	32859
3289	TerritoryDescription	Orlando
3289	RegionID	4
3290	TerritoryID	33607
3290	TerritoryDescription	Tampa
3290	RegionID	4
3291	TerritoryID	40222
3291	TerritoryDescription	Louisville
3291	RegionID	1
3292	TerritoryID	44122
3292	TerritoryDescription	Beachwood
3292	RegionID	3
3293	TerritoryID	45839
3293	TerritoryDescription	Findlay
3293	RegionID	3
3294	TerritoryID	48075
3294	TerritoryDescription	Southfield
3294	RegionID	3
3295	TerritoryID	48084
3295	TerritoryDescription	Troy
3295	RegionID	3
3296	TerritoryID	48304
3296	TerritoryDescription	Bloomfield Hills
3296	RegionID	3
3297	TerritoryID	53404
3297	TerritoryDescription	Racine
3297	RegionID	3
3298	TerritoryID	55113
3298	TerritoryDescription	Roseville
3298	RegionID	3
3299	TerritoryID	55439
3299	TerritoryDescription	Minneapolis
3299	RegionID	3
3300	TerritoryID	60179
3300	TerritoryDescription	Hoffman Estates
3300	RegionID	2
3301	TerritoryID	60601
3301	TerritoryDescription	Chicago
3301	RegionID	2
3302	TerritoryID	72716
3302	TerritoryDescription	Bentonville
3302	RegionID	4
3303	TerritoryID	75234
3303	TerritoryDescription	Dallas
3303	RegionID	4
3304	TerritoryID	78759
3304	TerritoryDescription	Austin
3304	RegionID	4
3305	TerritoryID	80202
3305	TerritoryDescription	Denver
3305	RegionID	2
3306	TerritoryID	80909
3306	TerritoryDescription	Colorado Springs
3306	RegionID	2
3307	TerritoryID	85014
3307	TerritoryDescription	Phoenix
3307	RegionID	2
3308	TerritoryID	85251
3308	TerritoryDescription	Scottsdale
3308	RegionID	2
3309	TerritoryID	90405
3309	TerritoryDescription	Santa Monica
3309	RegionID	2
3310	TerritoryID	94025
3310	TerritoryDescription	Menlo Park
3310	RegionID	2
3311	TerritoryID	94105
3311	TerritoryDescription	San Francisco
3311	RegionID	2
3312	TerritoryID	95008
3312	TerritoryDescription	Campbell
3312	RegionID	2
3313	TerritoryID	95054
3313	TerritoryDescription	Santa Clara
3313	RegionID	2
3314	TerritoryID	95060
3314	TerritoryDescription	Santa Cruz
3314	RegionID	2
3315	TerritoryID	98004
3315	TerritoryDescription	Bellevue
3315	RegionID	2
3316	TerritoryID	98052
3316	TerritoryDescription	Redmond
3316	RegionID	2
3317	TerritoryID	98104
3317	TerritoryDescription	Seattle
3317	RegionID	2
3318	StateID	1
3318	StateName	Alabama
3318	StateAbbr	AL
3318	StateRegion	south
3319	StateID	2
3319	StateName	Alaska
3319	StateAbbr	AK
3319	StateRegion	north
3320	StateID	3
3320	StateName	Arizona
3320	StateAbbr	AZ
3320	StateRegion	west
3321	StateID	4
3321	StateName	Arkansas
3321	StateAbbr	AR
3321	StateRegion	south
3322	StateID	5
3322	StateName	California
3322	StateAbbr	CA
3322	StateRegion	west
3323	StateID	6
3323	StateName	Colorado
3323	StateAbbr	CO
3323	StateRegion	west
3324	StateID	7
3324	StateName	Connecticut
3324	StateAbbr	CT
3324	StateRegion	east
3325	StateID	8
3325	StateName	Delaware
3325	StateAbbr	DE
3325	StateRegion	east
3326	StateID	9
3326	StateName	District of Columbia
3326	StateAbbr	DC
3326	StateRegion	east
3327	StateID	10
3327	StateName	Florida
3327	StateAbbr	FL
3327	StateRegion	south
3328	StateID	11
3328	StateName	Georgia
3328	StateAbbr	GA
3328	StateRegion	south
3329	StateID	12
3329	StateName	Hawaii
3329	StateAbbr	HI
3329	StateRegion	west
3330	StateID	13
3330	StateName	Idaho
3330	StateAbbr	ID
3330	StateRegion	midwest
3331	StateID	14
3331	StateName	Illinois
3331	StateAbbr	IL
3331	StateRegion	midwest
3332	StateID	15
3332	StateName	Indiana
3332	StateAbbr	IN
3332	StateRegion	midwest
3333	StateID	16
3333	StateName	Iowa
3333	StateAbbr	IO
3333	StateRegion	midwest
3334	StateID	17
3334	StateName	Kansas
3334	StateAbbr	KS
3334	StateRegion	midwest
3335	StateID	18
3335	StateName	Kentucky
3335	StateAbbr	KY
3335	StateRegion	south
3336	StateID	19
3336	StateName	Louisiana
3336	StateAbbr	LA
3336	StateRegion	south
3337	StateID	20
3337	StateName	Maine
3337	StateAbbr	ME
3337	StateRegion	north
3338	StateID	21
3338	StateName	Maryland
3338	StateAbbr	MD
3338	StateRegion	east
3339	StateID	22
3339	StateName	Massachusetts
3339	StateAbbr	MA
3339	StateRegion	north
3340	StateID	23
3340	StateName	Michigan
3340	StateAbbr	MI
3340	StateRegion	north
3341	StateID	24
3341	StateName	Minnesota
3341	StateAbbr	MN
3341	StateRegion	north
3342	StateID	25
3342	StateName	Mississippi
3342	StateAbbr	MS
3342	StateRegion	south
3343	StateID	26
3343	StateName	Missouri
3343	StateAbbr	MO
3343	StateRegion	south
3344	StateID	27
3344	StateName	Montana
3344	StateAbbr	MT
3344	StateRegion	west
3345	StateID	28
3345	StateName	Nebraska
3345	StateAbbr	NE
3345	StateRegion	midwest
3346	StateID	29
3346	StateName	Nevada
3346	StateAbbr	NV
3346	StateRegion	west
3347	StateID	30
3347	StateName	New Hampshire
3347	StateAbbr	NH
3347	StateRegion	east
3348	StateID	31
3348	StateName	New Jersey
3348	StateAbbr	NJ
3348	StateRegion	east
3349	StateID	32
3349	StateName	New Mexico
3349	StateAbbr	NM
3349	StateRegion	west
3350	StateID	33
3350	StateName	New York
3350	StateAbbr	NY
3350	StateRegion	east
3351	StateID	34
3351	StateName	North Carolina
3351	StateAbbr	NC
3351	StateRegion	east
3352	StateID	35
3352	StateName	North Dakota
3352	StateAbbr	ND
3352	StateRegion	midwest
3353	StateID	36
3353	StateName	Ohio
3353	StateAbbr	OH
3353	StateRegion	midwest
3354	StateID	37
3354	StateName	Oklahoma
3354	StateAbbr	OK
3354	StateRegion	midwest
3355	StateID	38
3355	StateName	Oregon
3355	StateAbbr	OR
3355	StateRegion	west
3356	StateID	39
3356	StateName	Pennsylvania
3356	StateAbbr	PA
3356	StateRegion	east
3357	StateID	40
3357	StateName	Rhode Island
3357	StateAbbr	RI
3357	StateRegion	east
3358	StateID	41
3358	StateName	South Carolina
3358	StateAbbr	SC
3358	StateRegion	east
3359	StateID	42
3359	StateName	South Dakota
3359	StateAbbr	SD
3359	StateRegion	midwest
3360	StateID	43
3360	StateName	Tennessee
3360	StateAbbr	TN
3360	StateRegion	midwest
3361	StateID	44
3361	StateName	Texas
3361	StateAbbr	TX
3361	StateRegion	west
3362	StateID	45
3362	StateName	Utah
3362	StateAbbr	UT
3362	StateRegion	west
3363	StateID	46
3363	StateName	Vermont
3363	StateAbbr	VT
3363	StateRegion	east
3364	StateID	47
3364	StateName	Virginia
3364	StateAbbr	VA
3364	StateRegion	east
3365	StateID	48
3365	StateName	Washington
3365	StateAbbr	WA
3365	StateRegion	west
3366	StateID	49
3366	StateName	West Virginia
3366	StateAbbr	WV
3366	StateRegion	south
3367	StateID	50
3367	StateName	Wisconsin
3367	StateAbbr	WI
3367	StateRegion	midwest
3368	StateID	51
3368	StateName	Wyoming
3368	StateAbbr	WY
3368	StateRegion	west
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

