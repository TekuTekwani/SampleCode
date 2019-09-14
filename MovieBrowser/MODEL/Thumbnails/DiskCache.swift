//
//  DiskCache.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/13/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import UIKit

protocol DiskCache{
    var cacheDirectory: URL {get}
}

extension DiskCache where Self: ThumbnailLoaderType{    
    func storeImageToDisk(name: String, image: UIImage){
        do{
            guard let data = image.jpegData(compressionQuality: compressionQuality) else{
                return
            }
            try data.write(to: cacheDirectory.appendingPathComponent(name), options: .atomic)
        }catch let error{
            print(error)
        }
    }
    
    func getImageFromDisk(name: String) -> UIImage?{
        do{
            let data = try Data(contentsOf: cacheDirectory.appendingPathComponent(name))
            return UIImage(data: data)
        }catch{
            return nil
        }
    }
}
