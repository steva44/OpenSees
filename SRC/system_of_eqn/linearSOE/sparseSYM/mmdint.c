/* mmdint.f -- translated by f2c (version of 25 March 1992  12:58:56).
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
/* --- SPARSPAK-A (ANSI FORTRAN) RELEASE III --- NAME = MMDINT */
/*  (C)  UNIVERSITY OF WATERLOO   JANUARY 1984 */
/* *********************************************************************** */
/* *********************************************************************** */
/* ***     MMDINT ..... MULT MINIMUM DEGREE INITIALIZATION     *********** */
/* *********************************************************************** */
/* *********************************************************************** */

/*     PURPOSE - THIS ROUTINE PERFORMS INITIALIZATION FOR THE */
/*        MULTIPLE ELIMINATION VERSION OF THE MINIMUM DEGREE */
/*        ALGORITHM. */

/*     INPUT PARAMETERS - */
/*        NEQNS  - NUMBER OF EQUATIONS. */
/*        (XADJ,ADJNCY) - ADJACENCY STRUCTURE. */

/*     OUTPUT PARAMETERS - */
/*        (DHEAD,DFORW,DBAKW) - DEGREE DOUBLY LINKED STRUCTURE. */
/*        QSIZE  - SIZE OF SUPERNODE (INITIALIZED TO ONE). */
/*        LLIST  - LINKED LIST. */
/*        MARKER - MARKER VECTOR. */

/* *********************************************************************** */

/* Subroutine */ int mmdint_(neqns, xadj, adjncy, dhead, dforw, dbakw, qsize, 
	llist, marker)
integer *neqns, *xadj, *adjncy, *dhead, *dforw, *dbakw, *qsize, *llist, *
	marker;
{
    /* System generated locals */
    integer i__1;

    /* Local variables */
    static integer ndeg, node, fnode;


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
    i__1 = *neqns;
    for (node = 1; node <= i__1; ++node) {
	dhead[node] = 0;
	qsize[node] = 1;
	marker[node] = 0;
	llist[node] = 0;
/* L100: */
    }
/*        ------------------------------------------ */
/*        INITIALIZE THE DEGREE DOUBLY LINKED LISTS. */
/*        ------------------------------------------ */
    i__1 = *neqns;
    for (node = 1; node <= i__1; ++node) {
	ndeg = xadj[node + 1] - xadj[node] + 1;
	fnode = dhead[ndeg];
	dforw[node] = fnode;
	dhead[ndeg] = node;
	if (fnode > 0) {
	    dbakw[fnode] = node;
	}
	dbakw[node] = -ndeg;
/* L200: */
    }
    return 0;

} /* mmdint_ */

