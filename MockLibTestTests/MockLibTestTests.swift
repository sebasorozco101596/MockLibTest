//
//  MockLibTestTests.swift
//  MockLibTestTests
//
//  Created by Juan Sebastian Orozco Buitrago on 12/19/23.
//

import XCTest
@testable import MockLibTest
@testable import Mockingbird

final class MockLibTestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
//        let mock2: MockTwoProtocol = mock(MockLibTest.MockTwoProtocol.self) as! MockTwoProtocol
        
//        let mock = mock(MockTwoProtocol.self)
//        
//        let mock = mock(MockLibTest.MockTwoProtocol.self)
//        
//        given(mock.canWalk()).willReturn(true)
//////
//        XCTAssertTrue(mock.canWalk())
//        let mock: MockTwoProtocolMock? = nil
    }
    
    func testShouldRun() {
//        let userProtocol = mock(MockLibTest.MockTwoProtocol.self)
//        let user = MockTwo(actions: userProtocol, isWalking: false)
//        
//        given(userProtocol.canWalk()).will { return true }
//        
//        user.shouldRun()
//        
//        verify(userProtocol.canJump()).wasCalled()
//        XCTAssertTrue(user.isWalking)
        
        let action = mock(MockTwoProtocol.self)
        let user = MockTwo(actions: action, isWalking: true)
        
        given(action.canWalk()) ~> true
        
        user.shouldRun()
        
        verify(action.canJump()).wasCalled()
        XCTAssertTrue(user.isWalking)
        
    }
    
    func testShakingTreeCausesBirdToFly() {
      // Given a tree with a bird that can fly
      let bird = mock(Bird.self)
      let tree = Tree(with: bird)
      given(bird.getCanFly()) ~> true
      
      // When the tree is shaken
      tree.shake()
      
      // Then the bird flies away
      verify(bird.fly()).wasCalled()
    }

}
