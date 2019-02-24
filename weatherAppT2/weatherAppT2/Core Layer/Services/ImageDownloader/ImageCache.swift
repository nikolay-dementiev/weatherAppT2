//
//  ImageCache.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ImageCache {
    static let shared = ImageCache()

    // MARK: - Private
    private let cache = NSCache<NSString, UIImage>()
    private init() {}
}


extension ImageCache {
    subscript(key: URL) -> UIImage? {
        get {
            return cache.object(forKey: key.absoluteString as NSString)
        }
        set {
            if let image: UIImage = newValue {
                cache.setObject(image, forKey: key.absoluteString as NSString)
            } else {
                cache.removeObject(forKey: key.absoluteString as NSString)
            }
        }
    }

}

