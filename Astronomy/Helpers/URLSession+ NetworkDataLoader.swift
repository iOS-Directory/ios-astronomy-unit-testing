//
//  URLSession+ NetworkDataLoader.swift
//  Astronomy
//
//  Created by FGT MAC on 4/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation


extension URLSession: NetworkDataLoader {
    
    
   func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        
        dataTask(with: request) { (data, _, error) in
            
            completion(data, error)
            
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        
        dataTask(with: url) { (data, _, error) in
                
                completion(data, error)
                
            }.resume()
    }
    
    
}
