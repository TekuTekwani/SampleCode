//
//  MemoryCache.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/13/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import UIKit

protocol MemoryImageCache{
    var cache: NSCache<NSString, UIImage> {get set}
}

extension MemoryImageCache{
    func storeImageToCache(key: String, image: UIImage){
        cache.setObject(image, forKey: key as NSString)
    }
    
    func getImageFromCache(key: String) -> UIImage?{
        return cache.object(forKey: key as NSString)
    }
    
    func clearCache(){
        cache.removeAllObjects()
    }
}
