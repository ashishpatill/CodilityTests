//: Playground - noun: a place where people can play

import UIKit
/*
 Write a function:
 
 public func solution(_ A : inout [Int]) -> Int
 
 that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.
 
 For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.
 
 Given A = [1, 2, 3], the function should return 4.
 
 Given A = [−1, −3], the function should return 1.
 
 Assume that:
 
 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [−1,000,000..1,000,000].
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(N) (not counting the storage required for input arguments).
*/

//case 1:- Missing integer should be >= 1 otherwise return 0
//case 2:- if missing integer is not in between elements of array like [1,2,3], output should be 4
//case 3:- if missing integer not found return 0
/*public func solution( _ A : inout [Int]) -> Int{

  // remove repeated elements
  let set = Set.init(A).sorted()
  let max = set.max()!
  
  if max < 1 || set.count <= 1 || set.min()! > 1
  {
    return 1
  }
  var isFound = false
  for i in 0..<set.count-1
  {
    
    if (set[i+1]-set[i])>1
    {
      isFound = true
      return set[i]+1
    }
    
  }
  
  if isFound == false
  {
    return max + 1
  }
  
  return 0
}
 */

public func solution( _ A : inout [Int]) -> Int {
  var dict:[Int:Bool] = [:]
  var set = Set.init(A)
  for i in set
  {
    dict.updateValue(true, forKey: i)
  }
  //var arr = A.sorted()
  
  var n = 1
  while true
  {
    if dict[n] == nil
    {
      return n;
    }
    
    n += 1
  }
  return n
}
var arr = [1, 2, 3]//[5,150]//[1, 2, 3] //[-2,-1]
solution(&arr)
