//
//  TestModel.swift
//  DemoTDDTests
//
//  Created by itie.kone.dossongui on 10/1/19.
//  Copyright © 2019 itie.kone.dossongui. All rights reserved.
//

import XCTest
@testable import DemoTDD

class TestModel: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

  
    func testModel(){
        let testjson :[String:Any]  =  ["firstname": "Serge", "phonenumber": "202661234"]
        let dev  = Developer(from:testjson)
                         XCTAssertEqual(dev.firstname, "Serge")
                               XCTAssertEqual(dev.phonenumber, "202661234")
    }
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
