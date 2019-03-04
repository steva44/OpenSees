/* mmdnum.f -- translated by f2c (version of 25 March 1992  12:58:56).
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
/* --- SPARSPAK-A (ANSI FORTRAN) RELEASE III --- NAME = MMDNUM */
/*  (C)  UNIVERSITY OF WATERLOO   JANUARY 1984 */
/* *********************************************************************** */
/* *********************************************************************** */
/* *****     MMDNUM ..... MULTI MINIMUM DEGREE NUMBERING     ************* */
/* *********************************************************************** */
/* *********************************************************************** */

/*     PURPOSE - THIS ROUTINE PERFORMS THE FINAL STEP IN */
/*        PRODUCING THE PERMUTATION AND INVERSE PERMUTATION */
/*        VECTORS IN THE MULTIPLE ELIMINATION VERSION OF THE */
/*        MINIMUM DEGREE ORDERING ALGORITHM. */

/*     INPUT PARAMETERS - */
/*        NEQNS  - NUMBER OF EQUATIONS. */
/*        QSIZE  - SIZE OF SUPERNODES AT ELIMINATION. */

/*     UPDATED PARAMETERS - */
/*        INVP   - INVERSE PERMUTATION VECTOR.  ON INPUT, */
/*                 IF QSIZE(NODE)=0, THEN NODE HAS BEEN MERGED */
/*                 INTO THE NODE -INVP(NODE); OTHERWISE, */
/*                 -INVP(NODE) IS ITS INVERSE LABELLING. */

/*     OUTPUT PARAMETERS - */
/*        PERM   - THE PERMUTATION VECTOR. */

/* *********************************************************************** */

/* Subroutine */ int mmdnum_(neqns, perm, invp, qsize)
integer *neqns, *perm, *invp, *qsize;
{
    /* System generated locals */
    integer i__1;

    /* Local variables */
    static integer node, root, nextf, father, nqsize, num;


/* ***********************************************************************
 */


/* ***********************************************************************
 */

    /* Parameter adjustments */
    --qsize;
    --invp;
    --perm;

    /* Function Body */
    i__1 = *neqns;
    for (node = 1; node <= i__1; ++node) {
	nqsize = qsize[node];
	if (nqsize <= 0) {
	    perm[node] = invp[node];
	}
	if (nqsize > 0) {
	    perm[node] = -invp[node];
	}
/* L100: */
    }
/*        ------------------------------------------------------ */
/*        FOR EACH NODE WHICH HAS BEEN MERGED, DO THE FOLLOWING. */
/*        ------------------------------------------------------ */
    i__1 = *neqns;
    for (node = 1; node <= i__1; ++node) {
	if (perm[node] > 0) {
	    goto L500;
	}
/*                ----------------------------------------- */
/*                TRACE THE MERGED TREE UNTIL ONE WHICH HAS */
/*                NOT BEEN MERGED, CALL IT ROOT. */
/*                ----------------------------------------- */
	father = node;
L200:
	if (perm[father] > 0) {
	    goto L300;
	}
	father = -perm[father];
	goto L200;
L300:
/*                ----------------------- */
/*                NUMBER NODE AFTER ROOT. */
/*                ----------------------- */
	root = father;
	num = perm[root] + 1;
	invp[node] = -num;
	perm[root] = num;
/*                ------------------------ */
/*                SHORTEN THE MERGED TREE. */
/*                ------------------------ */
	father = node;
L400:
	nextf = -perm[father];
	if (nextf <= 0) {
	    goto L500;
	}
	perm[father] = -root;
	father = nextf;
	goto L400;
L500:
	;
    }
/*        ---------------------- */
/*        READY TO COMPUTE PERM. */
/*        ---------------------- */
    i__1 = *neqns;
    for (node = 1; node <= i__1; ++node) {
	num = -invp[node];
	invp[node] = num;
	perm[num] = node;
/* L600: */
    }
    return 0;

} /* mmdnum_ */

