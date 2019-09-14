//
//  Networking.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

struct Networking{
    public static let shared = Networking()
    private var session : URLSessionProtocol
    
    ///Dependancy Injection for unit testing the Networking code
    init(session: URLSessionProtocol = URLSession.shared) {
        self.session = session
    }
    
    func performRequest<T:Codable>(endPoint:EndPoint, type: T.Type, onComplete: @escaping (Either <T, MovieAPIResponseError>) -> Void) {
        let urlRequest = URLRequest(url: endPoint.url)
        let task = session.dataTask(with: urlRequest) { (data, urlResponse, error) in
                        if let error = error{
                            onComplete(.right(MovieAPIResponseError.networkError(error.localizedDescription)))
                            return
                        }
            
                        guard let decoded = ResponseDecoder.decode(data: data, type: type) else{
                            onComplete(.right(MovieAPIResponseError.parseError))
                            return
                        }
            
                        onComplete(.left(decoded))
                    }
        
                    task.resume()
    }
}
