//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by FGT MAC on 4/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy
/*
 1.Test is the data is coming back with the expected info
 2.Check errors are being handle for invalid JSON
 3.Check errors are being handle for unspected info
 4.Check errors are being handle for timeout
*/

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        
        let marsRoverClient = MarsRoverClient()
        
        let expectation = self.expectation(description: "")
        
        marsRoverClient.fetchMarsRover(named: "pathfinder") { (data, error) in
            expectation.fulfill()
        }
       wait(for: [expectation], timeout: 5)
    }
    
    func testMarsROverData() {
        
    }
    

}
