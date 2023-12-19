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
        
        let mock = mock(MockLibTest.MockTwoProtocol.self)
        
        given(mock.canWalk()).willReturn(true)
////
        XCTAssertTrue(mock.canWalk())
//        let mock: MockTwoProtocolMock? = nil
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
