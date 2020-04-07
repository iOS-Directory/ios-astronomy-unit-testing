//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by FGT MAC on 4/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    
    internal init(data: Data? = nil, error: Error? = nil) {
        self.data = data
        self.error = error
    }
    

    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            completion(self.data, self.error)
        }
        
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            completion(self.data, self.error)
        }
        
    }
    
    
}
