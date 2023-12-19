//
//  MockTwo.swift
//  MockLibTest
//
//  Created by Juan Sebastian Orozco Buitrago on 12/19/23.
//

import Foundation

protocol MockTwoProtocol {
    func canWalk() -> Bool
    func canJump()
}

class MockTwo {
    
    let actions: MockTwoProtocol
    var isWalking: Bool = false
    
    init(actions: MockTwoProtocol, isWalking: Bool) {
        self.actions = actions
        self.isWalking = isWalking
    }
    
    func shouldRun() {
        if actions.canWalk() {
            print("Starting to run")
            isWalking = true
            actions.canJump()
            return
        }
        
        isWalking = false
        print("Wow, it stop walking")
    }
}
