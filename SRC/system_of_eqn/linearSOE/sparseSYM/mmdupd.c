/* mmdupd.f -- translated by f2c (version of 25 March 1992  12:58:56).
   You must link the resulting object file with the libraries:
	-lF77 -lI77 -lm -lc   (in that order)
*/

#include <f2c.h>

/* *********************************************************************** */
/* *********************************************************************** */

/*   Version:        0.4 */
/*   Last modified:  December 27, 1994 */
/*   Authors:        Joseph W.H. Liu */

/*   Mathematical Sciences Section, Oak Ridge National Laboratory */

/* *********************************************************************** */
/* *********************************************************************** */
/* --- SPARSPAK-A (ANSI FORTRAN) RELEASE III --- NAME = MMDUPD */
/*  (C)  UNIVERSITY OF WATERLOO   JANUARY 1984 */
/* *********************************************************************** */
/* *********************************************************************** */
/* *****     MMDUPD ..... MULTIPLE MINIMUM DEGREE UPDATE     ************* */
/* *********************************************************************** */
/* *********************************************************************** */

/*     PURPOSE - THIS ROUTINE UPDATES THE DEGREES OF NODES */
/*        AFTER A MULTIPLE ELIMINATION STEP. */

/*     INPUT PARAMETERS - */
/*        EHEAD  - THE BEGINNING OF THE LIST OF ELIMINATED */
/*                 NODES (I.E., NEWLY FORMED ELEMENTS). */
/*        NEQNS  - NUMBER OF EQUATIONS. */
/*        (XADJ,ADJNCY) - ADJACENCY STRUCTURE. */
/*        DELTA  - TOLERANCE VALUE FOR MULTIPLE ELIMINATION. */
/*        MAXINT - MAXIMUM MACHINE REPRESENTABLE (SHORT) */
/*                 INTEGER. */

/*     UPDATED PARAMETERS - */
/*        MDEG   - NEW MINIMUM DEGREE AFTER DEGREE UPDATE. */
/*        (DHEAD,DFORW,DBAKW) - DEGREE DOUBLY LINKED STRUCTURE. */
/*        QSIZE  - SIZE OF SUPERNODE. */
/*        LLIST  - WORKING LINKED LIST. */
/*        MARKER - MARKER VECTOR FOR DEGREE UPDATE. */
/*        TAG    - TAG VALUE. */

/* *********************************************************************** */

/* Subroutine */ int mmdupd_(ehead, neqns, xadj, adjncy, delta, mdeg, dhead, 
	dforw, dbakw, qsize, llist, marker, maxint, tag)
integer *ehead, *neqns, *xadj, *adjncy, *delta, *mdeg, *dhead, *dforw, *dbakw,
	 *qsize, *llist, *marker, *maxint, *tag;
{
    /* System generated locals */
    integer i__1, i__2;

    /* Local variables */
    static integer node, mtag, link, mdeg0, i, j, enode, fnode, nabor, elmnt, 
	    istop, jstop, q2head, istrt, jstrt, qxhead, iq2, deg, deg0;


/* ***********************************************************************
 */


/* ***********************************************************************
 */

    /* Parameter adjustments */
    --marker;
    --llist;
    --qsize;
    --dbakw;
    --dforw;
    --dhead;
    --adjncy;
    --xadj;

    /* Function Body */
    mdeg0 = *mdeg + *delta;
    elmnt = *ehead;
L100:
/*            ------------------------------------------------------- */
/*            FOR EACH OF THE NEWLY FORMED ELEMENT, DO THE FOLLOWING. */
/*            (RESET TAG VALUE IF NECESSARY.) */
/*            ------------------------------------------------------- */
    if (elmnt <= 0) {
	return 0;
    }
    mtag = *tag + mdeg0;
    if (mtag < *maxint) {
	goto L300;
    }
    *tag = 1;
    i__1 = *neqns;
    for (i = 1; i <= i__1; ++i) {
	if (marker[i] < *maxint) {
	    marker[i] = 0;
	}
/* L200: */
    }
    mtag = *tag + mdeg0;
L300:
/*            --------------------------------------------- */
/*            CREATE TWO LINKED LISTS FROM NODES ASSOCIATED */
/*            WITH ELMNT: ONE WITH TWO NABORS (Q2HEAD) IN */
/*            ADJACENCY STRUCTURE, AND THE OTHER WITH MORE */
/*            THAN TWO NABORS (QXHEAD).  ALSO COMPUTE DEG0, */
/*            NUMBER OF NODES IN THIS ELEMENT. */
/*            --------------------------------------------- */
    q2head = 0;
    qxhead = 0;
    deg0 = 0;
    link = elmnt;
L400:
    istrt = xadj[link];
    istop = xadj[link + 1] - 1;
    i__1 = istop;
    for (i = istrt; i <= i__1; ++i) {
	enode = adjncy[i];
	link = -enode;
	if (enode < 0) {
	    goto L400;
	} else if (enode == 0) {
	    goto L800;
	} else {
	    goto L500;
	}

L500:
	if (qsize[enode] == 0) {
	    goto L700;
	}
	deg0 += qsize[enode];
	marker[enode] = mtag;
/*                        ---------------------------------- */
/*                        IF ENODE REQUIRES A DEGREE UPDATE, */
/*                        THEN DO THE FOLLOWING. */
/*                        ---------------------------------- */
	if (dbakw[enode] != 0) {
	    goto L700;
	}
/*                            --------------------------------------- 
*/
/*                            PLACE EITHER IN QXHEAD OR Q2HEAD LISTS. 
*/
/*                            --------------------------------------- 
*/
	if (dforw[enode] == 2) {
	    goto L600;
	}
	llist[enode] = qxhead;
	qxhead = enode;
	goto L700;
L600:
	llist[enode] = q2head;
	q2head = enode;
L700:
	;
    }
L800:
/*            -------------------------------------------- */
/*            FOR EACH ENODE IN Q2 LIST, DO THE FOLLOWING. */
/*            -------------------------------------------- */
    enode = q2head;
    iq2 = 1;
L900:
    if (enode <= 0) {
	goto L1500;
    }
    if (dbakw[enode] != 0) {
	goto L2200;
    }
    ++(*tag);
    deg = deg0;
/*                    ------------------------------------------ */
/*                    IDENTIFY THE OTHER ADJACENT ELEMENT NABOR. */
/*                    ------------------------------------------ */
    istrt = xadj[enode];
    nabor = adjncy[istrt];
    if (nabor == elmnt) {
	nabor = adjncy[istrt + 1];
    }
/*                    ------------------------------------------------ */
/*                    IF NABOR IS UNELIMINATED, INCREASE DEGREE COUNT. */
/*                    ------------------------------------------------ */
    link = nabor;
    if (dforw[nabor] < 0) {
	goto L1000;
    }
    deg += qsize[nabor];
    goto L2100;
L1000:
/*                        -------------------------------------------- */
/*                        OTHERWISE, FOR EACH NODE IN THE 2ND ELEMENT, */
/*                        DO THE FOLLOWING. */
/*                        -------------------------------------------- */
    istrt = xadj[link];
    istop = xadj[link + 1] - 1;
    i__1 = istop;
    for (i = istrt; i <= i__1; ++i) {
	node = adjncy[i];
	link = -node;
	if (node == enode) {
	    goto L1400;
	}
	if (node < 0) {
	    goto L1000;
	} else if (node == 0) {
	    goto L2100;
	} else {
	    goto L1100;
	}

L1100:
	if (qsize[node] == 0) {
	    goto L1400;
	}
	if (marker[node] >= *tag) {
	    goto L1200;
	}
/*                                -----------------------------------
-- */
/*                                CASE WHEN NODE IS NOT YET CONSIDERED
. */
/*                                -----------------------------------
-- */
	marker[node] = *tag;
	deg += qsize[node];
	goto L1400;
L1200:
/*                            ----------------------------------------
 */
/*                            CASE WHEN NODE IS INDISTINGUISHABLE FROM
 */
/*                            ENODE.  MERGE THEM INTO A NEW SUPERNODE.
 */
/*                            ----------------------------------------
 */
	if (dbakw[node] != 0) {
	    goto L1400;
	}
	if (dforw[node] != 2) {
	    goto L1300;
	}
	qsize[enode] += qsize[node];
	qsize[node] = 0;
	marker[node] = *maxint;
	dforw[node] = -enode;
	dbakw[node] = -(*maxint);
	goto L1400;
L1300:
/*                            -------------------------------------- 
*/
/*                            CASE WHEN NODE IS OUTMATCHED BY ENODE. 
*/
/*                            -------------------------------------- 
*/
	if (dbakw[node] == 0) {
	    dbakw[node] = -(*maxint);
	}
L1400:
	;
    }
    goto L2100;
L1500:
/*                ------------------------------------------------ */
/*                FOR EACH ENODE IN THE QX LIST, DO THE FOLLOWING. */
/*                ------------------------------------------------ */
    enode = qxhead;
    iq2 = 0;
L1600:
    if (enode <= 0) {
	goto L2300;
    }
    if (dbakw[enode] != 0) {
	goto L2200;
    }
    ++(*tag);
    deg = deg0;
/*                        --------------------------------- */
/*                        FOR EACH UNMARKED NABOR OF ENODE, */
/*                        DO THE FOLLOWING. */
/*                        --------------------------------- */
    istrt = xadj[enode];
    istop = xadj[enode + 1] - 1;
    i__1 = istop;
    for (i = istrt; i <= i__1; ++i) {
	nabor = adjncy[i];
	if (nabor == 0) {
	    goto L2100;
	}
	if (marker[nabor] >= *tag) {
	    goto L2000;
	}
	marker[nabor] = *tag;
	link = nabor;
/*                                ------------------------------ */
/*                                IF UNELIMINATED, INCLUDE IT IN */
/*                                DEG COUNT. */
/*                                ------------------------------ */
	if (dforw[nabor] < 0) {
	    goto L1700;
	}
	deg += qsize[nabor];
	goto L2000;
L1700:
/*                                    ------------------------------- 
*/
/*                                    IF ELIMINATED, INCLUDE UNMARKED 
*/
/*                                    NODES IN THIS ELEMENT INTO THE 
*/
/*                                    DEGREE COUNT. */
/*                                    ------------------------------- 
*/
	jstrt = xadj[link];
	jstop = xadj[link + 1] - 1;
	i__2 = jstop;
	for (j = jstrt; j <= i__2; ++j) {
	    node = adjncy[j];
	    link = -node;
	    if (node < 0) {
		goto L1700;
	    } else if (node == 0) {
		goto L2000;
	    } else {
		goto L1800;
	    }

L1800:
	    if (marker[node] >= *tag) {
		goto L1900;
	    }
	    marker[node] = *tag;
	    deg += qsize[node];
L1900:
	    ;
	}
L2000:
	;
    }
L2100:
/*                    ------------------------------------------- */
/*                    UPDATE EXTERNAL DEGREE OF ENODE IN DEGREE */
/*                    STRUCTURE, AND MDEG (MIN DEG) IF NECESSARY. */
/*                    ------------------------------------------- */
    deg = deg - qsize[enode] + 1;
    fnode = dhead[deg];
    dforw[enode] = fnode;
    dbakw[enode] = -deg;
    if (fnode > 0) {
	dbakw[fnode] = enode;
    }
    dhead[deg] = enode;
    if (deg < *mdeg) {
	*mdeg = deg;
    }
L2200:
/*                    ---------------------------------- */
/*                    GET NEXT ENODE IN CURRENT ELEMENT. */
/*                    ---------------------------------- */
    enode = llist[enode];
    if (iq2 == 1) {
	goto L900;
    }
    goto L1600;
L2300:
/*            ----------------------------- */
/*            GET NEXT ELEMENT IN THE LIST. */
/*            ----------------------------- */
    *tag = mtag;
    elmnt = llist[elmnt];
    goto L100;

} /* mmdupd_ */

