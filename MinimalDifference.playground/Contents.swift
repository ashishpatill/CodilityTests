//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
  let n = A.count
  var tempDiff = 0
  var totalDiff = Int.max
  var leftDiff = 0
  var rightDiff = A.reduce(0, {$0+$1})
  for i in 0..<n-1
  {
    leftDiff += A[i]
    rightDiff -= A[i]
    tempDiff = abs(leftDiff-rightDiff)
    totalDiff = min(totalDiff,tempDiff)
  }
  return totalDiff
}
var arr = [3,1,2,4,3]
solution(&arr)
