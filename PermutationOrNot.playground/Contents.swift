//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int
{
  if A.count==0
  {
    return 0
  }
  
  var set = Set.init(A)
  if set.count < A.count
  {
    return 0
  }
  //print(arr)
  let actualCount = A.count

  if (A.max()==actualCount)
  {
    return 1
  }
  else
  {
    return 0
  }
}
var arr:[Int] = [4,1,3,2]
solution(&arr)
