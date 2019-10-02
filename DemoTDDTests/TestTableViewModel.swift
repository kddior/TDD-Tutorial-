//
//  TestTableViewModel.swift
//  DemoTDDTests
//
//  Created by itie.kone.dossongui on 10/1/19.
//  Copyright © 2019 itie.kone.dossongui. All rights reserved.
//

import XCTest
@testable import DemoTDD

class TestTableViewModel: XCTestCase {

    var sut : TableViewModel!
    var testNetwork: MockNetworkApiRequest!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        testNetwork = MockNetworkApiRequest()
        sut = TableViewModel( network:MockNetworkApiRequest())
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
class MockNetworkApiRequest: NetworkProtocolProtocol {
    func fetchData(completion: ([Developer]?, String?) -> ()) {
        completion(datafromrequest, "no error")
    }
    

    var datafromrequest : [Developer] = []
    var requestCellModelArray = [DeveloperCellViewModel]()
    init?() {
        let testjsonA :[String:Any]  =  ["firstname":"Serge","phonenumber":"202661234"]
        let testjsonB :[String:Any]  =  ["firstname":"Developper2","phonenumber":"1999661234"]
         
           let a_dev = Developer(from: testjsonA)
        datafromrequest.append(a_dev)
        requestCellModelArray.append(DeveloperCellViewModel(from: a_dev))
        let b_dev = Developer(from: testjsonB)
        datafromrequest.append(b_dev)
        requestCellModelArray.append(DeveloperCellViewModel(from: b_dev))
       
    }
  
    
    
}

