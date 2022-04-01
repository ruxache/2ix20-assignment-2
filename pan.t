#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(9*sizeof(Trans **));

	/* proctype 7: f2 */

	trans[7] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[7][6]	= settr(361,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[7][5] = settr(360,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(360,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(360,0,3,0,0,"DO", 0, 2, 0);
	trans[7][1]	= settr(356,0,10,3,0,"(!(low_req[0]))", 1, 2, 0);
	trans[7][2]	= settr(357,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[7][3]	= settr(358,0,5,1,0,"(1)", 0, 2, 0);
	trans[7][4]	= settr(359,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[7][7]	= settr(362,0,10,1,0,"break", 0, 2, 0);
	trans[7][11]	= settr(366,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[7][10] = settr(365,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(365,0,8,0,0,"DO", 0, 2, 0);
	trans[7][8]	= settr(363,0,10,4,0,"(!(low_req[0]))", 1, 2, 0);
	trans[7][9]	= settr(364,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[7][12]	= settr(367,0,13,1,0,"break", 0, 2, 0);
	trans[7][13]	= settr(368,0,0,5,5,"-end-", 0, 3500, 0);

	/* proctype 6: f1 */

	trans[6] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[6][6]	= settr(348,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[6][5] = settr(347,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(347,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(347,0,3,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(343,0,10,6,0,"(!(high_req[notlast]))", 1, 2, 0);
	trans[6][2]	= settr(344,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][3]	= settr(345,0,5,1,0,"(1)", 0, 2, 0);
	trans[6][4]	= settr(346,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[6][7]	= settr(349,0,10,1,0,"break", 0, 2, 0);
	trans[6][11]	= settr(353,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[6][10] = settr(352,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(352,0,8,0,0,"DO", 0, 2, 0);
	trans[6][8]	= settr(350,0,10,7,0,"(!(high_req[notlast]))", 1, 2, 0);
	trans[6][9]	= settr(351,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][12]	= settr(354,0,13,1,0,"break", 0, 2, 0);
	trans[6][13]	= settr(355,0,0,8,8,"-end-", 0, 3500, 0);

	/* proctype 5: e2 */

	trans[5] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[5][7]	= settr(339,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[5][6] = settr(338,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(338,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(338,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 5][3] = settr(335,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(335,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[5][1]	= settr(333,0,6,9,9,"(!((!(high_req[i])||(334==1))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached5[2] = 1;
	trans[5][2]	= settr(0,0,0,0,0,"assert(!(!((!(high_req[i])||(334==1)))))",0,0,0);
	trans[5][4]	= settr(336,0,6,1,0,"(1)", 0, 2, 0);
	trans[5][5]	= settr(337,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[5][8]	= settr(340,0,9,1,0,"break", 0, 2, 0);
	trans[5][9]	= settr(341,0,10,1,0,"(1)", 0, 2, 0);
	trans[5][10]	= settr(342,0,0,10,10,"-end-", 0, 3500, 0);

	/* proctype 4: e1 */

	trans[4] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[4][7]	= settr(329,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[4][6] = settr(328,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(328,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(328,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 4][3] = settr(325,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(325,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[4][1]	= settr(323,0,6,11,11,"(!((!(low_req[i])||(334==1))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached4[2] = 1;
	trans[4][2]	= settr(0,0,0,0,0,"assert(!(!((!(low_req[i])||(334==1)))))",0,0,0);
	trans[4][4]	= settr(326,0,6,1,0,"(1)", 0, 2, 0);
	trans[4][5]	= settr(327,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[4][8]	= settr(330,0,9,1,0,"break", 0, 2, 0);
	trans[4][9]	= settr(331,0,10,1,0,"(1)", 0, 2, 0);
	trans[4][10]	= settr(332,0,0,12,12,"-end-", 0, 3500, 0);

	/* proctype 3: :init: */

	trans[3] = (Trans **) emalloc(39*sizeof(Trans *));

	T = trans[ 3][37] = settr(321,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(321,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[3][1]	= settr(285,2,2,13,13,"(run main_control())", 1, 2, 0);
	trans[3][2]	= settr(286,2,14,14,14,"proc = 0", 1, 2, 0);
	trans[3][15]	= settr(299,2,14,1,0,".(goto)", 1, 2, 0);
	T = trans[3][14] = settr(298,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(298,2,3,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(298,2,12,0,0,"DO", 1, 2, 0);
	trans[3][3]	= settr(287,2,10,15,15,"((proc<3))", 1, 2, 0); /* m: 4 -> 10,0 */
	reached3[4] = 1;
	trans[3][4]	= settr(0,0,0,0,0,"doors_status[proc].lower = 2",0,0,0);
	trans[3][5]	= settr(0,0,0,0,0,"doors_status[proc].higher = 2",0,0,0);
	trans[3][6]	= settr(0,0,0,0,0,"slide_status[proc].lower = 2",0,0,0);
	trans[3][7]	= settr(0,0,0,0,0,"slide_status[proc].higher = 2",0,0,0);
	trans[3][8]	= settr(0,0,0,0,0,"lock_water_level[proc] = 1",0,0,0);
	trans[3][9]	= settr(0,0,0,0,0,"lock_is_occupied[proc] = 0",0,0,0);
	trans[3][10]	= settr(294,2,11,16,16,"(run lock(proc))", 1, 2, 0);
	trans[3][11]	= settr(295,2,14,17,17,"proc = (proc+1)", 1, 2, 0);
	trans[3][12]	= settr(296,2,25,18,18,"((proc==3))", 1, 2, 0); /* m: 17 -> 25,0 */
	reached3[17] = 1;
	trans[3][13]	= settr(297,2,17,1,0,"goto :b7", 1, 2, 0); /* m: 17 -> 0,25 */
	reached3[17] = 1;
	trans[3][16]	= settr(300,2,17,1,0,"break", 1, 2, 0);
	trans[3][17]	= settr(301,2,25,19,19,"proc = 0", 1, 2, 0);
	trans[3][26]	= settr(310,2,25,1,0,".(goto)", 1, 2, 0);
	T = trans[3][25] = settr(309,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(309,2,18,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(309,2,23,0,0,"DO", 1, 2, 0);
	trans[3][18]	= settr(302,2,21,20,20,"((proc<2))", 1, 2, 0); /* m: 19 -> 21,0 */
	reached3[19] = 1;
	trans[3][19]	= settr(0,0,0,0,0,"ship_status[proc] = 3",0,0,0);
	trans[3][20]	= settr(0,0,0,0,0,"ship_pos[proc] = 0",0,0,0);
	trans[3][21]	= settr(305,2,22,21,21,"(run ship(proc))", 1, 2, 0);
	trans[3][22]	= settr(306,2,25,22,22,"proc = (proc+1)", 1, 2, 0);
	trans[3][23]	= settr(307,2,34,23,23,"((proc==2))", 1, 2, 0); /* m: 28 -> 34,0 */
	reached3[28] = 1;
	trans[3][24]	= settr(308,2,28,1,0,"goto :b8", 1, 2, 0); /* m: 28 -> 0,34 */
	reached3[28] = 1;
	trans[3][27]	= settr(311,2,28,1,0,"break", 1, 2, 0);
	trans[3][28]	= settr(312,2,34,24,24,"proc = 0", 1, 2, 0);
	trans[3][35]	= settr(319,2,34,1,0,".(goto)", 1, 2, 0);
	T = trans[3][34] = settr(318,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(318,2,29,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(318,2,32,0,0,"DO", 1, 2, 0);
	trans[3][29]	= settr(313,2,34,25,25,"((proc<2))", 1, 2, 0); /* m: 30 -> 34,0 */
	reached3[30] = 1;
	trans[3][30]	= settr(0,0,0,0,0,"nr_of_ships_at_pos[ship_pos[proc]] = (nr_of_ships_at_pos[ship_pos[proc]]+1)",0,0,0);
	trans[3][31]	= settr(0,0,0,0,0,"proc = (proc+1)",0,0,0);
	trans[3][32]	= settr(316,2,33,2,0,"else", 1, 2, 0);
	trans[3][33]	= settr(317,2,36,1,0,"goto :b9", 1, 2, 0);
	trans[3][36]	= settr(320,0,38,1,0,"break", 1, 2, 0);
	trans[3][38]	= settr(322,0,0,26,26,"-end-", 0, 3500, 0);

	/* proctype 2: main_control */

	trans[2] = (Trans **) emalloc(117*sizeof(Trans *));

	trans[2][114]	= settr(282,0,113,1,0,".(goto)", 0, 2, 0);
	T = trans[2][113] = settr(281,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(281,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(281,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(281,0,61,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(281,0,87,0,0,"DO", 0, 2, 0);
	trans[2][1]	= settr(169,0,28,27,27,"request_low?1,lockid", 1, 503, 0);
	T = trans[2][28] = settr(196,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(196,0,2,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(196,0,26,0,0,"IF", 0, 2, 0);
	trans[2][2]	= settr(170,0,8,28,0,"((doors_status[lockid].lower==2))", 1, 2, 0);
	T = trans[2][8] = settr(176,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(176,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(176,0,6,0,0,"IF", 0, 2, 0);
	trans[2][3]	= settr(171,0,4,29,0,"((slide_status[lockid].higher==1))", 1, 2, 0);
	trans[2][4]	= settr(172,0,5,30,30,"change_slide_pos[lockid]!1", 1, 9, 0);
	trans[2][5]	= settr(173,0,15,31,31,"slide_pos_changed[lockid]?1", 1, 510, 0);
	trans[2][9]	= settr(177,0,15,1,0,".(goto)", 0, 2, 0);
	trans[2][6]	= settr(174,0,7,32,0,"((slide_status[lockid].higher==2))", 1, 2, 0);
	trans[2][7]	= settr(175,0,15,1,0,"(1)", 0, 2, 0);
	T = trans[2][15] = settr(183,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(183,0,10,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(183,0,13,0,0,"IF", 0, 2, 0);
	trans[2][10]	= settr(178,0,11,33,0,"((doors_status[lockid].higher==1))", 1, 2, 0);
	trans[2][11]	= settr(179,0,12,34,34,"change_doors_pos[lockid]!1", 1, 7, 0);
	trans[2][12]	= settr(180,0,22,35,35,"doors_pos_changed[lockid]?1", 1, 508, 0);
	trans[2][16]	= settr(184,0,22,1,0,".(goto)", 0, 2, 0);
	trans[2][13]	= settr(181,0,14,36,0,"((doors_status[lockid].higher==2))", 1, 2, 0);
	trans[2][14]	= settr(182,0,22,1,0,"(1)", 0, 2, 0);
	T = trans[2][22] = settr(190,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(190,0,17,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(190,0,20,0,0,"IF", 0, 2, 0);
	trans[2][17]	= settr(185,0,18,37,0,"((slide_status[lockid].lower==2))", 1, 2, 0);
	trans[2][18]	= settr(186,0,19,38,38,"change_slide_pos[lockid]!2", 1, 9, 0);
	trans[2][19]	= settr(187,0,24,39,39,"slide_pos_changed[lockid]?1", 1, 510, 0);
	trans[2][23]	= settr(191,0,24,1,0,".(goto)", 0, 2, 0);
	trans[2][20]	= settr(188,0,21,40,0,"((slide_status[lockid].lower==1))", 1, 2, 0);
	trans[2][21]	= settr(189,0,24,1,0,"(1)", 0, 2, 0);
	trans[2][24]	= settr(192,0,25,41,41,"change_doors_pos[lockid]!2", 1, 7, 0);
	trans[2][25]	= settr(193,0,30,42,42,"doors_pos_changed[lockid]?1", 1, 508, 0);
	trans[2][29]	= settr(197,0,30,1,0,".(goto)", 0, 2, 0);
	trans[2][26]	= settr(194,0,27,43,0,"((doors_status[lockid].lower==1))", 1, 2, 0);
	trans[2][27]	= settr(195,0,30,1,0,"(1)", 0, 2, 0);
	trans[2][30]	= settr(198,0,113,44,44,"observed_low[lockid]?1", 1, 505, 0);
	trans[2][31]	= settr(199,0,58,45,45,"request_high?1,lockid", 1, 504, 0);
	T = trans[2][58] = settr(226,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(226,0,32,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(226,0,56,0,0,"IF", 0, 2, 0);
	trans[2][32]	= settr(200,0,38,46,0,"((doors_status[lockid].higher==2))", 1, 2, 0);
	T = trans[2][38] = settr(206,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(206,0,33,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(206,0,36,0,0,"IF", 0, 2, 0);
	trans[2][33]	= settr(201,0,34,47,0,"((slide_status[lockid].lower==1))", 1, 2, 0);
	trans[2][34]	= settr(202,0,35,48,48,"change_slide_pos[lockid]!2", 1, 9, 0);
	trans[2][35]	= settr(203,0,45,49,49,"slide_pos_changed[lockid]?1", 1, 510, 0);
	trans[2][39]	= settr(207,0,45,1,0,".(goto)", 0, 2, 0);
	trans[2][36]	= settr(204,0,37,50,0,"((slide_status[lockid].lower==2))", 1, 2, 0);
	trans[2][37]	= settr(205,0,45,1,0,"(1)", 0, 2, 0);
	T = trans[2][45] = settr(213,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(213,0,40,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(213,0,43,0,0,"IF", 0, 2, 0);
	trans[2][40]	= settr(208,0,41,51,0,"((doors_status[lockid].lower==1))", 1, 2, 0);
	trans[2][41]	= settr(209,0,42,52,52,"change_doors_pos[lockid]!2", 1, 7, 0);
	trans[2][42]	= settr(210,0,52,53,53,"doors_pos_changed[lockid]?1", 1, 508, 0);
	trans[2][46]	= settr(214,0,52,1,0,".(goto)", 0, 2, 0);
	trans[2][43]	= settr(211,0,44,54,0,"((doors_status[lockid].lower==2))", 1, 2, 0);
	trans[2][44]	= settr(212,0,52,1,0,"(1)", 0, 2, 0);
	T = trans[2][52] = settr(220,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(220,0,47,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(220,0,50,0,0,"IF", 0, 2, 0);
	trans[2][47]	= settr(215,0,48,55,0,"((slide_status[lockid].higher==2))", 1, 2, 0);
	trans[2][48]	= settr(216,0,49,56,56,"change_slide_pos[lockid]!1", 1, 9, 0);
	trans[2][49]	= settr(217,0,54,57,57,"slide_pos_changed[lockid]?1", 1, 510, 0);
	trans[2][53]	= settr(221,0,54,1,0,".(goto)", 0, 2, 0);
	trans[2][50]	= settr(218,0,51,58,0,"((slide_status[lockid].higher==1))", 1, 2, 0);
	trans[2][51]	= settr(219,0,54,1,0,"(1)", 0, 2, 0);
	trans[2][54]	= settr(222,0,55,59,59,"change_doors_pos[lockid]!1", 1, 7, 0);
	trans[2][55]	= settr(223,0,60,60,60,"doors_pos_changed[lockid]?1", 1, 508, 0);
	trans[2][59]	= settr(227,0,60,1,0,".(goto)", 0, 2, 0);
	trans[2][56]	= settr(224,0,57,61,0,"((doors_status[lockid].higher==1))", 1, 2, 0);
	trans[2][57]	= settr(225,0,60,1,0,"(1)", 0, 2, 0);
	trans[2][60]	= settr(228,0,113,62,62,"observed_high[lockid]?1", 1, 506, 0);
	trans[2][61]	= settr(229,0,85,63,63,"request_low?0,lockid", 1, 503, 0);
	T = trans[2][85] = settr(253,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(253,0,62,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(253,0,83,0,0,"IF", 0, 2, 0);
	trans[2][62]	= settr(230,0,81,64,0,"(lock_is_occupied[lockid])", 1, 2, 0);
	T = trans[2][81] = settr(249,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(249,0,63,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(249,0,73,0,0,"IF", 0, 2, 0);
	trans[2][63]	= settr(231,0,69,65,0,"((doors_status[lockid].lower==1))", 1, 2, 0);
	T = trans[2][69] = settr(237,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,64,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(237,0,67,0,0,"IF", 0, 2, 0);
	trans[2][64]	= settr(232,0,65,66,0,"((slide_status[lockid].lower==1))", 1, 2, 0);
	trans[2][65]	= settr(233,0,66,67,67,"change_slide_pos[lockid]!2", 1, 9, 0);
	trans[2][66]	= settr(234,0,71,68,68,"slide_pos_changed[lockid]?1", 1, 510, 0);
	trans[2][70]	= settr(238,0,71,1,0,".(goto)", 0, 2, 0);
	trans[2][67]	= settr(235,0,68,69,0,"((slide_status[lockid].lower==2))", 1, 2, 0);
	trans[2][68]	= settr(236,0,71,1,0,"(1)", 0, 2, 0);
	trans[2][71]	= settr(239,0,72,70,70,"change_doors_pos[lockid]!2", 1, 7, 0);
	trans[2][72]	= settr(240,0,113,71,71,"doors_pos_changed[lockid]?1", 1, 508, 0);
	trans[2][82]	= settr(250,0,113,1,0,".(goto)", 0, 2, 0);
	trans[2][73]	= settr(241,0,79,72,0,"((doors_status[lockid].lower==2))", 1, 2, 0);
	T = trans[2][79] = settr(247,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(247,0,74,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(247,0,77,0,0,"IF", 0, 2, 0);
	trans[2][74]	= settr(242,0,75,73,0,"((slide_status[lockid].lower==1))", 1, 2, 0);
	trans[2][75]	= settr(243,0,76,74,74,"change_slide_pos[lockid]!2", 1, 9, 0);
	trans[2][76]	= settr(244,0,113,75,75,"slide_pos_changed[lockid]?1", 1, 510, 0);
	trans[2][80]	= settr(248,0,113,1,0,".(goto)", 0, 2, 0);
	trans[2][77]	= settr(245,0,78,76,76,"((slide_status[lockid].lower==2))", 1, 2, 0);
	trans[2][78]	= settr(246,0,113,1,0,"(1)", 0, 2, 0);
	trans[2][86]	= settr(254,0,113,1,0,".(goto)", 0, 2, 0);
	trans[2][83]	= settr(251,0,84,77,77,"(!(lock_is_occupied[lockid]))", 1, 2, 0);
	trans[2][84]	= settr(252,0,113,1,0,"(1)", 0, 2, 0);
	trans[2][87]	= settr(255,0,111,78,78,"request_high?0,lockid", 1, 504, 0);
	T = trans[2][111] = settr(279,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,88,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(279,0,109,0,0,"IF", 0, 2, 0);
	trans[2][88]	= settr(256,0,107,79,0,"(lock_is_occupied[lockid])", 1, 2, 0);
	T = trans[2][107] = settr(275,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(275,0,89,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(275,0,99,0,0,"IF", 0, 2, 0);
	trans[2][89]	= settr(257,0,95,80,0,"((doors_status[lockid].higher==1))", 1, 2, 0);
	T = trans[2][95] = settr(263,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(263,0,90,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(263,0,93,0,0,"IF", 0, 2, 0);
	trans[2][90]	= settr(258,0,91,81,0,"((slide_status[lockid].higher==1))", 1, 2, 0);
	trans[2][91]	= settr(259,0,92,82,82,"change_slide_pos[lockid]!1", 1, 9, 0);
	trans[2][92]	= settr(260,0,97,83,83,"slide_pos_changed[lockid]?1", 1, 510, 0);
	trans[2][96]	= settr(264,0,97,1,0,".(goto)", 0, 2, 0);
	trans[2][93]	= settr(261,0,94,84,0,"((slide_status[lockid].higher==2))", 1, 2, 0);
	trans[2][94]	= settr(262,0,97,1,0,"(1)", 0, 2, 0);
	trans[2][97]	= settr(265,0,98,85,85,"change_doors_pos[lockid]!1", 1, 7, 0);
	trans[2][98]	= settr(266,0,113,86,86,"doors_pos_changed[lockid]?1", 1, 508, 0);
	trans[2][108]	= settr(276,0,113,1,0,".(goto)", 0, 2, 0);
	trans[2][99]	= settr(267,0,105,87,0,"((doors_status[lockid].higher==2))", 1, 2, 0);
	T = trans[2][105] = settr(273,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(273,0,100,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(273,0,103,0,0,"IF", 0, 2, 0);
	trans[2][100]	= settr(268,0,101,88,0,"((slide_status[lockid].higher==1))", 1, 2, 0);
	trans[2][101]	= settr(269,0,102,89,89,"change_slide_pos[lockid]!1", 1, 9, 0);
	trans[2][102]	= settr(270,0,113,90,90,"slide_pos_changed[lockid]?1", 1, 510, 0);
	trans[2][106]	= settr(274,0,113,1,0,".(goto)", 0, 2, 0);
	trans[2][103]	= settr(271,0,104,91,91,"((slide_status[lockid].higher==2))", 1, 2, 0);
	trans[2][104]	= settr(272,0,113,1,0,"(1)", 0, 2, 0);
	trans[2][112]	= settr(280,0,113,1,0,".(goto)", 0, 2, 0);
	trans[2][109]	= settr(277,0,110,92,92,"(!(lock_is_occupied[lockid]))", 1, 2, 0);
	trans[2][110]	= settr(278,0,113,1,0,"(1)", 0, 2, 0);
	trans[2][115]	= settr(283,0,116,1,0,"break", 0, 2, 0);
	trans[2][116]	= settr(284,0,0,93,93,"-end-", 0, 3500, 0);

	/* proctype 1: ship */

	trans[1] = (Trans **) emalloc(120*sizeof(Trans *));

	trans[1][117]	= settr(166,0,116,1,0,".(goto)", 0, 2, 0);
	T = trans[1][116] = settr(165,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(165,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(165,0,27,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(165,0,55,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(165,0,82,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(165,0,110,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(165,0,113,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(50,0,2,94,0,"(((ship_status[shipid]==5)&&(ship_pos[shipid]!=0)))", 1, 2, 0);
	trans[1][2]	= settr(51,0,24,95,95,"lockid = (ship_pos[shipid]-1)", 1, 2, 0);
	trans[1][25]	= settr(74,0,24,1,0,".(goto)", 0, 2, 0);
	T = trans[1][24] = settr(73,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(73,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(73,0,23,0,0,"DO", 0, 2, 0);
	trans[1][3]	= settr(52,0,4,96,0,"((doors_status[lockid].higher==2))", 1, 2, 0);
	trans[1][4]	= settr(53,0,5,97,97,"request_high!1,lockid", 1, 4, 0);
	trans[1][5]	= settr(54,0,17,98,98,"high_req[lockid] = 1", 1, 2, 0);
	T = trans[ 1][17] = settr(66,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(66,2,6,0,0,"ATOMIC", 1, 6, 0);
	trans[1][6]	= settr(55,2,15,99,0,"((doors_status[lockid].higher==1))", 1, 6, 0);
	T = trans[1][15] = settr(64,2,0,0,0,"IF", 1, 6, 0);
	T = T->nxt	= settr(64,2,7,0,0,"IF", 1, 6, 0);
	    T->nxt	= settr(64,2,13,0,0,"IF", 1, 6, 0);
	trans[1][7]	= settr(56,2,11,100,100,"(!(lock_is_occupied[lockid]))", 1, 6, 0); /* m: 8 -> 11,0 */
	reached1[8] = 1;
	trans[1][8]	= settr(0,0,0,0,0,"ship_status[shipid] = 4",0,0,0);
	trans[1][9]	= settr(0,0,0,0,0,"lock_is_occupied[lockid] = 1",0,0,0);
	trans[1][10]	= settr(0,0,0,0,0,"nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)",0,0,0);
	trans[1][11]	= settr(60,2,12,101,101,"observed_high[lockid]!1", 1, 6, 0);
	trans[1][12]	= settr(61,0,116,1,0,"goto :b2", 1, 6, 0);
	trans[1][16]	= settr(65,0,24,1,0,".(goto)", 1, 6, 0);
	trans[1][13]	= settr(62,2,14,102,0,"(lock_is_occupied[lockid])", 1, 6, 0);
	trans[1][14]	= settr(63,2,16,103,103,"observed_high[lockid]!1", 1, 6, 0);
	T = trans[ 1][23] = settr(72,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(72,2,18,0,0,"ATOMIC", 1, 2, 0);
	trans[1][18]	= settr(67,4,116,104,104,"(((doors_status[lockid].higher==1)&&!(lock_is_occupied[lockid])))", 1, 2, 0); /* m: 19 -> 116,0 */
	reached1[19] = 1;
	trans[1][19]	= settr(0,0,0,0,0,"ship_status[shipid] = 4",0,0,0);
	trans[1][20]	= settr(0,0,0,0,0,"lock_is_occupied[lockid] = 1",0,0,0);
	trans[1][21]	= settr(0,0,0,0,0,"nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)",0,0,0);
	trans[1][22]	= settr(71,0,116,1,0,"goto :b2", 1, 2, 0);
	trans[1][26]	= settr(75,0,116,1,0,"break", 0, 2, 0);
	trans[1][27]	= settr(76,0,52,105,0,"((ship_status[shipid]==4))", 1, 2, 0);
	trans[1][53]	= settr(102,0,52,1,0,".(goto)", 0, 2, 0);
	T = trans[1][52] = settr(101,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(101,0,28,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(101,0,51,0,0,"DO", 0, 2, 0);
	trans[1][28]	= settr(77,0,29,106,0,"((doors_status[lockid].lower==2))", 1, 2, 0);
	trans[1][29]	= settr(78,0,30,107,107,"request_low!1,lockid", 1, 3, 0);
	trans[1][30]	= settr(79,0,31,108,108,"requested_lock = lockid", 1, 2, 0);
	trans[1][31]	= settr(80,0,44,109,109,"low_req[lockid] = 1", 1, 2, 0);
	T = trans[ 1][44] = settr(93,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(93,2,32,0,0,"ATOMIC", 1, 5, 0);
	trans[1][32]	= settr(81,2,42,110,0,"((doors_status[lockid].lower==1))", 1, 5, 0);
	T = trans[1][42] = settr(91,2,0,0,0,"IF", 1, 5, 0);
	T = T->nxt	= settr(91,2,33,0,0,"IF", 1, 5, 0);
	    T->nxt	= settr(91,2,40,0,0,"IF", 1, 5, 0);
	trans[1][33]	= settr(82,2,38,111,111,"(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0)))", 1, 5, 0); /* m: 34 -> 38,0 */
	reached1[34] = 1;
	trans[1][34]	= settr(0,0,0,0,0,"ship_status[shipid] = 5",0,0,0);
	trans[1][35]	= settr(0,0,0,0,0,"lock_is_occupied[lockid] = 0",0,0,0);
	trans[1][36]	= settr(0,0,0,0,0,"ship_pos[shipid] = (ship_pos[shipid]-1)",0,0,0);
	trans[1][37]	= settr(0,0,0,0,0,"nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)",0,0,0);
	trans[1][38]	= settr(87,2,39,112,112,"observed_low[lockid]!1", 1, 5, 0);
	trans[1][39]	= settr(88,0,116,1,0,"goto :b3", 1, 5, 0);
	trans[1][43]	= settr(92,0,52,1,0,".(goto)", 1, 5, 0);
	trans[1][40]	= settr(89,2,41,113,0,"(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]==2)&&((ship_pos[shipid]-1)!=0)))", 1, 5, 0);
	trans[1][41]	= settr(90,2,43,114,114,"observed_low[lockid]!1", 1, 5, 0);
	T = trans[ 1][51] = settr(100,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(100,2,45,0,0,"ATOMIC", 1, 2, 0);
	trans[1][45]	= settr(94,4,116,115,115,"(((doors_status[lockid].lower==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0))))", 1, 2, 0); /* m: 46 -> 116,0 */
	reached1[46] = 1;
	trans[1][46]	= settr(0,0,0,0,0,"ship_status[shipid] = 5",0,0,0);
	trans[1][47]	= settr(0,0,0,0,0,"lock_is_occupied[lockid] = 0",0,0,0);
	trans[1][48]	= settr(0,0,0,0,0,"ship_pos[shipid] = (ship_pos[shipid]-1)",0,0,0);
	trans[1][49]	= settr(0,0,0,0,0,"nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)",0,0,0);
	trans[1][50]	= settr(99,0,116,1,0,"goto :b3", 1, 2, 0);
	trans[1][54]	= settr(103,0,116,1,0,"break", 0, 2, 0);
	trans[1][55]	= settr(104,0,56,116,0,"(((ship_status[shipid]==3)&&(ship_pos[shipid]!=3)))", 1, 2, 0);
	trans[1][56]	= settr(105,0,79,117,117,"lockid = ship_pos[shipid]", 1, 2, 0);
	trans[1][80]	= settr(129,0,79,1,0,".(goto)", 0, 2, 0);
	T = trans[1][79] = settr(128,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(128,0,57,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(128,0,78,0,0,"DO", 0, 2, 0);
	trans[1][57]	= settr(106,0,58,118,0,"((doors_status[lockid].lower==2))", 1, 2, 0);
	trans[1][58]	= settr(107,0,59,119,119,"request_low!1,lockid", 1, 3, 0);
	trans[1][59]	= settr(108,0,60,120,120,"requested_lock = lockid", 1, 2, 0);
	trans[1][60]	= settr(109,0,72,121,121,"low_req[lockid] = 1", 1, 2, 0);
	T = trans[ 1][72] = settr(121,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(121,2,61,0,0,"ATOMIC", 1, 5, 0);
	trans[1][61]	= settr(110,2,70,122,0,"((doors_status[lockid].lower==1))", 1, 5, 0);
	T = trans[1][70] = settr(119,2,0,0,0,"IF", 1, 5, 0);
	T = T->nxt	= settr(119,2,62,0,0,"IF", 1, 5, 0);
	    T->nxt	= settr(119,2,68,0,0,"IF", 1, 5, 0);
	trans[1][62]	= settr(111,2,66,123,123,"(!(lock_is_occupied[lockid]))", 1, 5, 0); /* m: 63 -> 66,0 */
	reached1[63] = 1;
	trans[1][63]	= settr(0,0,0,0,0,"ship_status[shipid] = 2",0,0,0);
	trans[1][64]	= settr(0,0,0,0,0,"lock_is_occupied[lockid] = 1",0,0,0);
	trans[1][65]	= settr(0,0,0,0,0,"nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)",0,0,0);
	trans[1][66]	= settr(115,2,67,124,124,"observed_low[lockid]!1", 1, 5, 0);
	trans[1][67]	= settr(116,0,116,1,0,"goto :b4", 1, 5, 0);
	trans[1][71]	= settr(120,0,79,1,0,".(goto)", 1, 5, 0);
	trans[1][68]	= settr(117,2,69,125,0,"(lock_is_occupied[lockid])", 1, 5, 0);
	trans[1][69]	= settr(118,2,71,126,126,"observed_low[lockid]!1", 1, 5, 0);
	T = trans[ 1][78] = settr(127,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(127,2,73,0,0,"ATOMIC", 1, 2, 0);
	trans[1][73]	= settr(122,4,116,127,127,"(((doors_status[lockid].lower==1)&&!(lock_is_occupied[lockid])))", 1, 2, 0); /* m: 74 -> 116,0 */
	reached1[74] = 1;
	trans[1][74]	= settr(0,0,0,0,0,"ship_status[shipid] = 2",0,0,0);
	trans[1][75]	= settr(0,0,0,0,0,"lock_is_occupied[lockid] = 1",0,0,0);
	trans[1][76]	= settr(0,0,0,0,0,"nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)",0,0,0);
	trans[1][77]	= settr(126,0,116,1,0,"goto :b4", 1, 2, 0);
	trans[1][81]	= settr(130,0,116,1,0,"break", 0, 2, 0);
	trans[1][82]	= settr(131,0,107,128,0,"((ship_status[shipid]==2))", 1, 2, 0);
	trans[1][108]	= settr(157,0,107,1,0,".(goto)", 0, 2, 0);
	T = trans[1][107] = settr(156,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(156,0,83,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(156,0,106,0,0,"DO", 0, 2, 0);
	trans[1][83]	= settr(132,0,84,129,0,"((doors_status[lockid].higher==2))", 1, 2, 0);
	trans[1][84]	= settr(133,0,85,130,130,"request_high!1,lockid", 1, 4, 0);
	trans[1][85]	= settr(134,0,86,131,131,"requested_lock = lockid", 1, 2, 0);
	trans[1][86]	= settr(135,0,99,132,132,"high_req[lockid] = 1", 1, 2, 0);
	T = trans[ 1][99] = settr(148,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(148,2,87,0,0,"ATOMIC", 1, 6, 0);
	trans[1][87]	= settr(136,2,97,133,0,"((doors_status[lockid].higher==1))", 1, 6, 0);
	T = trans[1][97] = settr(146,2,0,0,0,"IF", 1, 6, 0);
	T = T->nxt	= settr(146,2,88,0,0,"IF", 1, 6, 0);
	    T->nxt	= settr(146,2,95,0,0,"IF", 1, 6, 0);
	trans[1][88]	= settr(137,2,93,134,134,"(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==3)))", 1, 6, 0); /* m: 89 -> 93,0 */
	reached1[89] = 1;
	trans[1][89]	= settr(0,0,0,0,0,"ship_status[shipid] = 3",0,0,0);
	trans[1][90]	= settr(0,0,0,0,0,"lock_is_occupied[lockid] = 0",0,0,0);
	trans[1][91]	= settr(0,0,0,0,0,"ship_pos[shipid] = (ship_pos[shipid]+1)",0,0,0);
	trans[1][92]	= settr(0,0,0,0,0,"nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)",0,0,0);
	trans[1][93]	= settr(142,2,94,135,135,"observed_high[lockid]!1", 1, 6, 0);
	trans[1][94]	= settr(143,0,116,1,0,"goto :b5", 1, 6, 0);
	trans[1][98]	= settr(147,0,107,1,0,".(goto)", 1, 6, 0);
	trans[1][95]	= settr(144,2,96,136,0,"(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]==2)&&((ship_pos[shipid]+1)!=3)))", 1, 6, 0);
	trans[1][96]	= settr(145,2,98,137,137,"observed_high[lockid]!1", 1, 6, 0);
	T = trans[ 1][106] = settr(155,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(155,2,100,0,0,"ATOMIC", 1, 2, 0);
	trans[1][100]	= settr(149,4,116,138,138,"(((doors_status[lockid].higher==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==3))))", 1, 2, 0); /* m: 101 -> 116,0 */
	reached1[101] = 1;
	trans[1][101]	= settr(0,0,0,0,0,"ship_status[shipid] = 3",0,0,0);
	trans[1][102]	= settr(0,0,0,0,0,"lock_is_occupied[lockid] = 0",0,0,0);
	trans[1][103]	= settr(0,0,0,0,0,"ship_pos[shipid] = (ship_pos[shipid]+1)",0,0,0);
	trans[1][104]	= settr(0,0,0,0,0,"nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)",0,0,0);
	trans[1][105]	= settr(154,0,116,1,0,"goto :b5", 1, 2, 0);
	trans[1][109]	= settr(158,0,116,1,0,"break", 0, 2, 0);
	trans[1][110]	= settr(159,0,111,139,0,"(((ship_status[shipid]==5)&&(ship_pos[shipid]==0)))", 1, 2, 0);
	trans[1][111]	= settr(160,0,112,140,140,"ship_status[shipid] = 1", 1, 2, 0);
	trans[1][112]	= settr(161,0,116,141,141,"ship_status[shipid] = 3", 1, 2, 0);
	trans[1][113]	= settr(162,0,114,142,0,"(((ship_status[shipid]==3)&&(ship_pos[shipid]==3)))", 1, 2, 0);
	trans[1][114]	= settr(163,0,115,143,143,"ship_status[shipid] = 1", 1, 2, 0);
	trans[1][115]	= settr(164,0,116,144,144,"ship_status[shipid] = 5", 1, 2, 0);
	trans[1][118]	= settr(167,0,119,1,0,"break", 0, 2, 0);
	trans[1][119]	= settr(168,0,0,145,145,"-end-", 0, 3500, 0);

	/* proctype 0: lock */

	trans[0] = (Trans **) emalloc(51*sizeof(Trans *));

	trans[0][48]	= settr(47,0,47,1,0,".(goto)", 0, 2, 0);
	T = trans[0][47] = settr(46,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(46,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(46,0,10,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(46,0,24,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(46,0,33,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,7,146,146,"change_doors_pos[lockid]?2", 1, 507, 0);
	T = trans[0][7] = settr(6,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(6,0,2,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(6,0,5,0,0,"IF", 0, 2, 0);
	trans[0][2]	= settr(1,0,3,147,0,"((doors_status[lockid].lower==2))", 1, 2, 0);
	trans[0][3]	= settr(2,0,4,148,148,"doors_status[lockid].lower = 1", 1, 2, 0);
	trans[0][4]	= settr(3,0,9,149,149,"lock_water_level[lockid] = 2", 1, 2, 0);
	trans[0][8]	= settr(7,0,9,1,0,".(goto)", 0, 2, 0);
	trans[0][5]	= settr(4,0,6,150,0,"((doors_status[lockid].lower==1))", 1, 2, 0);
	trans[0][6]	= settr(5,0,9,151,151,"doors_status[lockid].lower = 2", 1, 2, 0);
	trans[0][9]	= settr(8,0,47,152,152,"doors_pos_changed[lockid]!1", 1, 8, 0);
	trans[0][10]	= settr(9,0,21,153,153,"change_doors_pos[lockid]?1", 1, 507, 0);
	T = trans[0][21] = settr(20,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(20,0,11,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(20,0,19,0,0,"IF", 0, 2, 0);
	trans[0][11]	= settr(10,0,12,154,0,"((doors_status[lockid].higher==2))", 1, 2, 0);
	trans[0][12]	= settr(11,0,17,155,155,"doors_status[lockid].higher = 1", 1, 2, 0);
	T = trans[0][17] = settr(16,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(16,0,15,0,0,"IF", 0, 2, 0);
	trans[0][13]	= settr(12,0,14,156,0,"(((doors_status[lockid].lower==2)&&(slide_status[lockid].lower==2)))", 1, 2, 0);
	trans[0][14]	= settr(13,0,23,157,157,"lock_water_level[lockid] = 1", 1, 2, 0);
	trans[0][18]	= settr(17,0,23,1,0,".(goto)", 0, 2, 0);
	trans[0][15]	= settr(14,0,16,158,0,"(((doors_status[lockid].lower==1)||(slide_status[lockid].lower==1)))", 1, 2, 0);
	trans[0][16]	= settr(15,0,23,1,0,"(1)", 0, 2, 0);
	trans[0][22]	= settr(21,0,23,1,0,".(goto)", 0, 2, 0);
	trans[0][19]	= settr(18,0,20,159,0,"((doors_status[lockid].higher==1))", 1, 2, 0);
	trans[0][20]	= settr(19,0,23,160,160,"doors_status[lockid].higher = 2", 1, 2, 0);
	trans[0][23]	= settr(22,0,47,161,161,"doors_pos_changed[lockid]!1", 1, 8, 0);
	trans[0][24]	= settr(23,0,30,162,162,"change_slide_pos[lockid]?2", 1, 509, 0);
	T = trans[0][30] = settr(29,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(29,0,25,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(29,0,28,0,0,"IF", 0, 2, 0);
	trans[0][25]	= settr(24,0,26,163,0,"((slide_status[lockid].lower==2))", 1, 2, 0);
	trans[0][26]	= settr(25,0,27,164,164,"slide_status[lockid].lower = 1", 1, 2, 0);
	trans[0][27]	= settr(26,0,32,165,165,"lock_water_level[lockid] = 2", 1, 2, 0);
	trans[0][31]	= settr(30,0,32,1,0,".(goto)", 0, 2, 0);
	trans[0][28]	= settr(27,0,29,166,0,"((slide_status[lockid].lower==1))", 1, 2, 0);
	trans[0][29]	= settr(28,0,32,167,167,"slide_status[lockid].lower = 2", 1, 2, 0);
	trans[0][32]	= settr(31,0,47,168,168,"slide_pos_changed[lockid]!1", 1, 10, 0);
	trans[0][33]	= settr(32,0,44,169,169,"change_slide_pos[lockid]?1", 1, 509, 0);
	T = trans[0][44] = settr(43,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(43,0,34,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(43,0,42,0,0,"IF", 0, 2, 0);
	trans[0][34]	= settr(33,0,35,170,0,"((slide_status[lockid].higher==2))", 1, 2, 0);
	trans[0][35]	= settr(34,0,40,171,171,"slide_status[lockid].higher = 1", 1, 2, 0);
	T = trans[0][40] = settr(39,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(39,0,36,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(39,0,38,0,0,"IF", 0, 2, 0);
	trans[0][36]	= settr(35,0,37,172,0,"(((doors_status[lockid].lower==2)&&(slide_status[lockid].lower==2)))", 1, 2, 0);
	trans[0][37]	= settr(36,0,46,173,173,"lock_water_level[lockid] = 1", 1, 2, 0);
	trans[0][41]	= settr(40,0,46,1,0,".(goto)", 0, 2, 0);
	trans[0][38]	= settr(37,0,39,174,0,"(((doors_status[lockid].lower==1)||(slide_status[lockid].lower==1)))", 1, 2, 0);
	trans[0][39]	= settr(38,0,46,1,0,"(1)", 0, 2, 0);
	trans[0][45]	= settr(44,0,46,1,0,".(goto)", 0, 2, 0);
	trans[0][42]	= settr(41,0,43,175,0,"((slide_status[lockid].higher==1))", 1, 2, 0);
	trans[0][43]	= settr(42,0,46,176,176,"slide_status[lockid].higher = 2", 1, 2, 0);
	trans[0][46]	= settr(45,0,47,177,177,"slide_pos_changed[lockid]!1", 1, 10, 0);
	trans[0][49]	= settr(48,0,50,1,0,"break", 0, 2, 0);
	trans[0][50]	= settr(49,0,0,178,178,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
