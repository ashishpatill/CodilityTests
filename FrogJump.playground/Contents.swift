//: Playground - noun: a place where people can play

import UIKit

//public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
//  var jumpCount = 0
//  var initialPosition = X
//  while initialPosition<Y
//  {
//    initialPosition += D
//    jumpCount += 1
//  }
//  return jumpCount
//}

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
  return Int(ceil((Double(Y)-Double(X))/Double(D)))
}
solution(10, 85, 30)
