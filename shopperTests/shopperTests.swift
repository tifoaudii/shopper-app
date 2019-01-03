//
//  shopperTests.swift
//  shopperTests
//
//  Created by Tifo Audi Alif Putra on 02/01/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import XCTest
@testable import shopper

class shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours(){
        XCTAssert(Wage.getHours(forWage: 25, forPrice: 100) == 4)
        XCTAssert(Wage.getHours(forWage: 15.50, forPrice: 250.53) == 17)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
