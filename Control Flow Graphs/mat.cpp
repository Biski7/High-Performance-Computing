#include <stdio.h>
#include <stdlib.h>

#define AROW 2048
#define ACOL 2048
#define BCOL 2048

#ifndef UNROLL_FACTOR
// #define UNROLL_FACTOR 0
#endif

void mat_vec(int** arrA, int* arrB, int* result )
{

	for( int i = 0; i < AROW; i++ ) {
			
		result[i] = 0;
	
		for( int k = 0; k < ACOL; k++ ) {
			
			int t = arrA[i][k] * arrB[k];
			result[i] += t;

		}
	}

};


int main()
{
	/* declarations */
	int** A      = new int* [ACOL]; 
	int*  B      = new int  [BCOL];
	int*  result = new int  [BCOL];

	for( int i = 0; i < ACOL; i++ )
	{
		A[i] = new int[AROW];
	}

	srand(1337);

	for( int i = 0; i < ACOL; i++ )
	{
		for( int j = 0; j < AROW; j++ )
		{
			A[i][j] = rand();
		}
	}

	for( int i = 0; i < BCOL; i++)
		B[i] = rand();


	mat_vec( A, B, result );

	for( int i = 0; i < BCOL; i++ )
	{
		result[i] = result[i];
	}

	/* clean up */
	for( int i = 0; i < ACOL; i++ )
	{
		delete [] A[i];
	}

	delete [] A;
	delete [] B;
	delete [] result;
    return 0;
};
