/*
  An array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.

Your goal is to find that missing element.

Assume that:

N is an integer within the range [0..100,000];
the elements of A are all distinct;
each element of array A is an integer within the range [1..(N + 1)].
Complexity:

expected worst-case time complexity is O(N);
expected worst-case space complexity is O(1) (not counting the storage required for input arguments).
*/

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var arr = A.sorted()
    var missing = -1

    if arr.count==1{
        if arr[0]==1 {
            missing = -1
        }
        else{
            missing = 1
        }
    }
    else if arr.count < 1{
        missing = -1
    }
    else {
        for i in 0..<arr.count-1 {
            if arr[i+1]-arr[i]>1
            {
                missing = arr[i]+1
            }
        }
    }
    return missing
}
