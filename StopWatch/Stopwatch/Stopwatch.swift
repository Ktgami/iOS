//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Admin on 23/06/2021.
//


import Foundation

class Stopwatch: NSObject {
  var counter: Double
  var timer: Timer
  
  override init() {
    counter = 0.0
    timer = Timer()
  }
}
