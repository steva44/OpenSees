/* genmmd.f -- translated by f2c (version of 25 March 1992  12:58:56).

  source: https://github.com/lrsantos11/PCx-C/tree/master/Ng-Peyton

  This is the version of PCx-C - all C PCx - (http://pages.cs.wisc.edu/~swright/PCx/) configured to be compiled with Intel C Compilier
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
/* --- SPARSPAK-A (ANSI FORTRAN) RELEASE III --- NAME = GENMMD */
/*  (C)  UNIVERSITY OF WATERLOO   JANUARY 1984 */
/* *********************************************************************** */
/* *********************************************************************** */
/* ****     GENMMD ..... MULTIPLE MINIMUM EXTERNAL DEGREE     ************ */
/* *********************************************************************** */
/* *********************************************************************** */

/*     PURPOSE - THIS ROUTINE IMPLEMENTS THE MINIMUM DEGREE */
/*        ALGORITHM.  IT MAKES USE OF THE IMPLICIT REPRESENTATION */
/*        OF ELIMINATION GRAPHS BY QUOTIENT GRAPHS, AND THE */
/*        NOTION OF INDISTINGUISHABLE NODES.  IT ALSO IMPLEMENTS */
/*        THE MODIFICATIONS BY MULTIPLE ELIMINATION AND MINIMUM */
/*        EXTERNAL DEGREE. */
/*        --------------------------------------------- */
/*        CAUTION - THE ADJACENCY VECTOR ADJNCY WILL BE */
/*        DESTROYED. */
/*        --------------------------------------------- */

/*     INPUT PARAMETERS - */
/*        NEQNS  - NUMBER OF EQUATIONS. */
/*        (XADJ,ADJNCY) - THE ADJACENCY STRUCTURE. */
/*        DELTA  - TOLERANCE VALUE FOR MULTIPLE ELIMINATION. */
/*        MAXINT - MAXIMUM MACHINE REPRESENTABLE (SHORT) INTEGER */
/*                 (ANY SMALLER ESTIMATE WILL DO) FOR MARKING */
/*                 NODES. */

/*     OUTPUT PARAMETERS - */
/*        PERM   - THE MINIMUM DEGREE ORDERING. */
/*        INVP   - THE INVERSE OF PERM. */
/*        NOFSUB - AN UPPER BOUND ON THE NUMBER OF NONZERO */
/*                 SUBSCRIPTS FOR THE COMPRESSED STORAGE SCHEME. */

/*     WORKING PARAMETERS - */
/*        DHEAD  - VECTOR FOR HEAD OF DEGREE LISTS. */
/*        INVP   - USED TEMPORARILY FOR DEGREE FORWARD LINK. */
/*        PERM   - USED TEMPORARILY FOR DEGREE BACKWARD LINK. */
/*        QSIZE  - VECTOR FOR SIZE OF SUPERNODES. */
/*        LLIST  - VECTOR FOR TEMPORARY LINKED LISTS. */
/*        MARKER - A TEMPORARY MARKER VECTOR. */

/*     PROGRAM SUBROUTINES - */
/*        MMDELM, MMDINT, MMDNUM, MMDUPD. */

/* *********************************************************************** */

/* Subroutine */ int genmmd_(neqns, xadj, adjncy, invp, perm, delta, dhead, 
	qsize, llist, marker, maxint, nofsub)
integer *neqns, *xadj, *adjncy, *invp, *perm, *delta, *dhead, *qsize, *llist, 
	*marker, *maxint, *nofsub;
{
    /* System generated locals */
    integer i__1;

    /* Local variables */
    static integer mdeg, ehead, i, mdlmt, mdnode;
    extern /* Subroutine */ int mmdelm_(), mmdupd_(), mmdint_(), mmdnum_();
    static integer nextmd, tag, num;


/* ***********************************************************************
 */


/* ***********************************************************************
 */

    /* Parameter adjustments */
    --marker;
    --llist;
    --qsize;
    --dhead;
    --perm;
    --invp;
    --adjncy;
    --xadj;

    /* Function Body */
    if (*neqns <= 0) {
	return 0;
    }

/*        ------------------------------------------------ */
/*        INITIALIZATION FOR THE MINIMUM DEGREE ALGORITHM. */
/*        ------------------------------------------------ */
    *nofsub = 0;
    mmdint_(neqns, &xadj[1], &adjncy[1], &dhead[1], &invp[1], &perm[1], &
	    qsize[1], &llist[1], &marker[1]);

/*        ---------------------------------------------- */
/*        NUM COUNTS THE NUMBER OF ORDERED NODES PLUS 1. */
/*        ---------------------------------------------- */
    num = 1;

/*        ----------------------------- */
/*        ELIMINATE ALL ISOLATED NODES. */
/*        ----------------------------- */
    nextmd = dhead[1];
L100:
    if (nextmd <= 0) {
	goto L200;
    }
    mdnode = nextmd;
    nextmd = invp[mdnode];
    marker[mdnode] = *maxint;
    invp[mdnode] = -num;
    ++num;
    goto L100;

L200:
/*        ---------------------------------------- */
/*        SEARCH FOR NODE OF THE MINIMUM DEGREE. */
/*        MDEG IS THE CURRENT MINIMUM DEGREE; */
/*        TAG IS USED TO FACILITATE MARKING NODES. */
/*        ---------------------------------------- */
    if (num > *neqns) {
	goto L1000;
    }
    tag = 1;
    dhead[1] = 0;
    mdeg = 2;
L300:
    if (dhead[mdeg] > 0) {
	goto L400;
    }
    ++mdeg;
    goto L300;
L400:
/*            ------------------------------------------------- */
/*            USE VALUE OF DELTA TO SET UP MDLMT, WHICH GOVERNS */
/*            WHEN A DEGREE UPDATE IS TO BE PERFORMED. */
/*            ------------------------------------------------- */
    mdlmt = mdeg + *delta;
    ehead = 0;

L500:
    mdnode = dhead[mdeg];
    if (mdnode > 0) {
	goto L600;
    }
    ++mdeg;
    if (mdeg > mdlmt) {
	goto L900;
    }
    goto L500;
L600:
/*                ---------------------------------------- */
/*                REMOVE MDNODE FROM THE DEGREE STRUCTURE. */
/*                ---------------------------------------- */
    nextmd = invp[mdnode];
    dhead[mdeg] = nextmd;
    if (nextmd > 0) {
	perm[nextmd] = -mdeg;
    }
    invp[mdnode] = -num;
    *nofsub = *nofsub + mdeg + qsize[mdnode] - 2;
    if (num + qsize[mdnode] > *neqns) {
	goto L1000;
    }
/*                ---------------------------------------------- */
/*                ELIMINATE MDNODE AND PERFORM QUOTIENT GRAPH */
/*                TRANSFORMATION.  RESET TAG VALUE IF NECESSARY. */
/*                ---------------------------------------------- */
    ++tag;
    if (tag < *maxint) {
	goto L800;
    }
    tag = 1;
    i__1 = *neqns;
    for (i = 1; i <= i__1; ++i) {
	if (marker[i] < *maxint) {
	    marker[i] = 0;
	}
/* L700: */
    }
L800:
    mmdelm_(&mdnode, &xadj[1], &adjncy[1], &dhead[1], &invp[1], &perm[1], &
	    qsize[1], &llist[1], &marker[1], maxint, &tag);
    num += qsize[mdnode];
    llist[mdnode] = ehead;
    ehead = mdnode;
    if (*delta >= 0) {
	goto L500;
    }
L900:
/*            ------------------------------------------- */
/*            UPDATE DEGREES OF THE NODES INVOLVED IN THE */
/*            MINIMUM DEGREE NODES ELIMINATION. */
/*            ------------------------------------------- */
    if (num > *neqns) {
	goto L1000;
    }
    mmdupd_(&ehead, neqns, &xadj[1], &adjncy[1], delta, &mdeg, &dhead[1], &
	    invp[1], &perm[1], &qsize[1], &llist[1], &marker[1], maxint, &tag)
	    ;
    goto L300;

L1000:
    mmdnum_(neqns, &perm[1], &invp[1], &qsize[1]);
    return 0;

} /* genmmd_ */

