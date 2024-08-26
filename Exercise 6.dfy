/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 5 Exercise 6 */
/*--------------------------------------*/
/* the sequence a is duplicate free */

/**
(a)
Method nodup:
The method initializes b=true and iterates over all pairs (i,j) with 0≤i<j<|al, comparing each element a[i] with a[j]. 
If any a[i]=a[j], the method sets b=false.
Therefore, the method ensures that b=true <=> forall i,j(0≤i<j<|a|→a[i]≠a[j]),which matches the definition of dup_free(a).

Method nodup_srt:
Given that the sequence 'a' is sorted (forall i,j: 0≤i<j<|a| => a[i]≤a[j]), duplicates,if any,must appear as consecutive elements.
The method checks adjacent elements a[m-1]and a[m]for 1≤m<|a|.If a[m-1]=a[m],then b is set to`false`,meaning !dup_free(a).
If no such consecutive elements are found, b remains`true`, which implies b <=> (forall m: 1≤m<|a| => a[m-1]≠a[m]),
thereby correctly ensuring that b <=> dup_free(a) with a sorted sequence 'a'.
*/



predicate dup_free(a: seq<int>)
{ forall i: int, j : int :: 0 <= i < j < |a| ==> a[i] != a[j] }

/* sorted integer lists */
predicate sorted (a: seq<int>)
{ forall i: int, j : int :: 0 <= i < j < |a| ==> a[i] <= a[j]  }

method nodup(a: seq<int>) returns (b: bool)
    ensures b <==> dup_free(a)
{
}


 

method nodup_srt(a: seq<int>) returns (b: bool) 
requires sorted(a)
ensures b <==> dup_free(a)
{
}