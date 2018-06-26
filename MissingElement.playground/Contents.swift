//: Playground - noun: a place where people can play

import UIKit


public func solution(_ A : inout [Int]) -> Int
{
  let sumWithMissingElement = ((A.count+1)*(A.count+2))/2
  let sumWithoutMissingElement = A.reduce(0,{$0+$1})
  
  return sumWithMissingElement - sumWithoutMissingElement
}

var arr:[Int] = [1,2,4]//[2,2]//[1]//[2]//[2,3]//[2,3]//[2, 3, 1, 5]
solution(&arr)
