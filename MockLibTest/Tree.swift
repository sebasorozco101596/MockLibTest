//
//  Tree.swift
//  MockLibTest
//
//  Created by Juan Sebastian Orozco Buitrago on 12/19/23.
//

import Foundation

protocol Bird {
  var canFly: Bool { get }
  func fly()
}

class Tree {
  let bird: Bird
  
  init(with bird: Bird) {
    self.bird = bird
  }
  
  func shake() {
    guard bird.canFly else { return }
    bird.fly()
  }
}
