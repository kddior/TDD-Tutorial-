//
//  TestCellViewModel.swift
//  DemoTDDTests
//
//  Created by itie.kone.dossongui on 10/1/19.
//  Copyright © 2019 itie.kone.dossongui. All rights reserved.
//

import XCTest
@testable import DemoTDD

class TestCellViewModeltest: XCTestCase {
 

    
    var model :Developer!
    var sut :DeveloperCellViewModel!
    
    override func setUp() {
          
        let testData : [String: Any] = ["firstname":"Serge","phonenumber":"202661234"]
             model = Developer(from: testData)
             
             sut = DeveloperCellViewModel(from: model)
      
    }

    override func tearDown() {
        

        //negative testing
              XCTAssertNotNil(sut.name, "fist name is nil")
              XCTAssertNotNil(sut.phone, "phone is nil")

              //postive testing
              XCTAssertEqual(sut.name, model.firstname)
              XCTAssertEqual(sut.phone, model.phonenumber)
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCellViewModel() {
        
        
      
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
