//
//  ResponseDecoder.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

struct ResponseDecoder{
    static func decode<T: Codable>(data: Data?, type: T.Type) -> T?{
        guard let data = data else{
            return nil
        }
        
        let decoder = JSONDecoder()
        do{
            return try decoder.decode(T.self, from: data)
        }catch let error{
            print(error)
            return nil
        }
    }
}
