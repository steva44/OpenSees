/* mmdelm.f -- translated by f2c (version of 25 March 1992  12:58:56).
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
/* --- SPARSPAK-A (ANSI FORTRAN) RELEASE III --- NAME = MMDELM */
/*  (C)  UNIVERSITY OF WATERLOO   JANUARY 1984 */
/* *********************************************************************** */
/* *********************************************************************** */
/* **     MMDELM ..... MULTIPLE MINIMUM DEGREE ELIMINATION     *********** */
/* *********************************************************************** */
/* *********************************************************************** */

/*     PURPOSE - THIS ROUTINE ELIMINATES THE NODE MDNODE OF */
/*        MINIMUM DEGREE FROM THE ADJACENCY STRUCTURE, WHICH */
/*        IS STORED IN THE QUOTIENT GRAPH FORMAT.  IT ALSO */
/*        TRANSFORMS THE QUOTIENT GRAPH REPRESENTATION OF THE */
/*        ELIMINATION GRAPH. */

/*     INPUT PARAMETERS - */
/*        MDNODE - NODE OF MINIMUM DEGREE. */
/*        MAXINT - ESTIMATE OF MAXIMUM REPRESENTABLE (SHORT) */
/*                 INTEGER. */
/*        TAG    - TAG VALUE. */

/*     UPDATED PARAMETERS - */
/*        (XADJ,ADJNCY) - UPDATED ADJACENCY STRUCTURE. */
/*        (DHEAD,DFORW,DBAKW) - DEGREE DOUBLY LINKED STRUCTURE. */
/*        QSIZE  - SIZE OF SUPERNODE. */
/*        MARKER - MARKER VECTOR. */
/*        LLIST  - TEMPORARY LINKED LIST OF ELIMINATED NABORS. */

/* *********************************************************************** */

/* Subroutine */ int mmdelm_(mdnode, xadj, adjncy, dhead, dforw, dbakw, qsize,
	 llist, marker, maxint, tag)
integer *mdnode, *xadj, *adjncy, *dhead, *dforw, *dbakw, *qsize, *llist, *
	marker, *maxint, *tag;
{
    /* System generated locals */
    integer i__1, i__2;

    /* Local variables */
    static integer node, link, rloc, rlmt, i, j, nabor, rnode, elmnt, xqnbr, 
	    istop, jstop, istrt, jstrt, nxnode, pvnode, nqnbrs, npv;


/* ***********************************************************************
 */


/* ***********************************************************************
 */

/*        ----------------------------------------------- */
/*        FIND REACHABLE SET AND PLACE IN DATA STRUCTURE. */
/*        ----------------------------------------------- */
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
    marker[*mdnode] = *tag;
    istrt = xadj[*mdnode];
    istop = xadj[*mdnode + 1] - 1;
/*        ------------------------------------------------------- */
/*        ELMNT POINTS TO THE BEGINNING OF THE LIST OF ELIMINATED */
/*        NABORS OF MDNODE, AND RLOC GIVES THE STORAGE LOCATION */
/*        FOR THE NEXT REACHABLE NODE. */
/*        ------------------------------------------------------- */
    elmnt = 0;
    rloc = istrt;
    rlmt = istop;
    i__1 = istop;
    for (i = istrt; i <= i__1; ++i) {
	nabor = adjncy[i];
	if (nabor == 0) {
	    goto L300;
	}
	if (marker[nabor] >= *tag) {
	    goto L200;
	}
	marker[nabor] = *tag;
	if (dforw[nabor] < 0) {
	    goto L100;
	}
	adjncy[rloc] = nabor;
	++rloc;
	goto L200;
L100:
	llist[nabor] = elmnt;
	elmnt = nabor;
L200:
	;
    }
L300:
/*            ----------------------------------------------------- */
/*            MERGE WITH REACHABLE NODES FROM GENERALIZED ELEMENTS. */
/*            ----------------------------------------------------- */
    if (elmnt <= 0) {
	goto L1000;
    }
    adjncy[rlmt] = -elmnt;
    link = elmnt;
L400:
    jstrt = xadj[link];
    jstop = xadj[link + 1] - 1;
    i__1 = jstop;
    for (j = jstrt; j <= i__1; ++j) {
	node = adjncy[j];
	link = -node;
	if (node < 0) {
	    goto L400;
	} else if (node == 0) {
	    goto L900;
	} else {
	    goto L500;
	}
L500:
	if (marker[node] >= *tag || dforw[node] < 0) {
	    goto L800;
	}
	marker[node] = *tag;
/*                            --------------------------------- */
/*                            USE STORAGE FROM ELIMINATED NODES */
/*                            IF NECESSARY. */
/*                            --------------------------------- */
L600:
	if (rloc < rlmt) {
	    goto L700;
	}
	link = -adjncy[rlmt];
	rloc = xadj[link];
	rlmt = xadj[link + 1] - 1;
	goto L600;
L700:
	adjncy[rloc] = node;
	++rloc;
L800:
	;
    }
L900:
    elmnt = llist[elmnt];
    goto L300;
L1000:
    if (rloc <= rlmt) {
	adjncy[rloc] = 0;
    }
/*        -------------------------------------------------------- */
/*        FOR EACH NODE IN THE REACHABLE SET, DO THE FOLLOWING ... */
/*        -------------------------------------------------------- */
    link = *mdnode;
L1100:
    istrt = xadj[link];
    istop = xadj[link + 1] - 1;
    i__1 = istop;
    for (i = istrt; i <= i__1; ++i) {
	rnode = adjncy[i];
	link = -rnode;
	if (rnode < 0) {
	    goto L1100;
	} else if (rnode == 0) {
	    goto L1800;
	} else {
	    goto L1200;
	}
L1200:
/*                -------------------------------------------- */
/*                IF RNODE IS IN THE DEGREE LIST STRUCTURE ... */
/*                -------------------------------------------- */
	pvnode = dbakw[rnode];
	if (pvnode == 0 || pvnode == -(*maxint)) {
	    goto L1300;
	}
/*                    ------------------------------------- */
/*                    THEN REMOVE RNODE FROM THE STRUCTURE. */
/*                    ------------------------------------- */
	nxnode = dforw[rnode];
	if (nxnode > 0) {
	    dbakw[nxnode] = pvnode;
	}
	if (pvnode > 0) {
	    dforw[pvnode] = nxnode;
	}
	npv = -pvnode;
	if (pvnode < 0) {
	    dhead[npv] = nxnode;
	}
L1300:
/*                ---------------------------------------- */
/*                PURGE INACTIVE QUOTIENT NABORS OF RNODE. */
/*                ---------------------------------------- */
	jstrt = xadj[rnode];
	jstop = xadj[rnode + 1] - 1;
	xqnbr = jstrt;
	i__2 = jstop;
	for (j = jstrt; j <= i__2; ++j) {
	    nabor = adjncy[j];
	    if (nabor == 0) {
		goto L1500;
	    }
	    if (marker[nabor] >= *tag) {
		goto L1400;
	    }
	    adjncy[xqnbr] = nabor;
	    ++xqnbr;
L1400:
	    ;
	}
L1500:
/*                ---------------------------------------- */
/*                IF NO ACTIVE NABOR AFTER THE PURGING ... */
/*                ---------------------------------------- */
	nqnbrs = xqnbr - jstrt;
	if (nqnbrs > 0) {
	    goto L1600;
	}
/*                    ----------------------------- */
/*                    THEN MERGE RNODE WITH MDNODE. */
/*                    ----------------------------- */
	qsize[*mdnode] += qsize[rnode];
	qsize[rnode] = 0;
	marker[rnode] = *maxint;
	dforw[rnode] = -(*mdnode);
	dbakw[rnode] = -(*maxint);
	goto L1700;
L1600:
/*                -------------------------------------- */
/*                ELSE FLAG RNODE FOR DEGREE UPDATE, AND */
/*                ADD MDNODE AS A NABOR OF RNODE. */
/*                -------------------------------------- */
	dforw[rnode] = nqnbrs + 1;
	dbakw[rnode] = 0;
	adjncy[xqnbr] = *mdnode;
	++xqnbr;
	if (xqnbr <= jstop) {
	    adjncy[xqnbr] = 0;
	}

L1700:
	;
    }
L1800:
    return 0;

} /* mmdelm_ */

