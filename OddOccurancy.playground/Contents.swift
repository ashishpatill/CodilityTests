//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
  var acc = 0
  for x in A {
    acc ^= x
  }
  return acc
}

//var arr = [1, 1, 2, 2, 3]
var arr = [9, 3, 9, 3, 9, 7, 9]
solution(&arr)
