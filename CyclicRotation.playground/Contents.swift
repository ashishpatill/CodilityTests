//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int], _ K : Int) -> [Int]
{
  var count = A.count
  var rotatedArr = A
  
  for i in 0..<A.count
  {
    // right shift
    let index = (K * count + i - K) % count
    rotatedArr[i] = A[index]
  }
  
  return rotatedArr
}

var arr = [3, 8, 9, 7, 6] // Left shift by 1:- 8 9 7 6 3
                          // Right shift by 1:- 6 3 8 9 7
solution(&arr, 1)
