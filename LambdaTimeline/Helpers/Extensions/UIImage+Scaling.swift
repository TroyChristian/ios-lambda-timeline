//
//  UIImage+Scaling.swift
//  LambdaTimeline
//
//  Created by Lambda_School_Loaner_219 on 2/11/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit
import ImageIO

extension UIImage {
    func imageByScaling(toSize size: CGSize) -> UIImage? {
        guard let data = flattened.pngData(),
            let imageSource = CGImageSourceCreateWithData(data as CFData, nil) else {
                return nil
        }
    
    
    let options: [CFString: Any] = [
        kCGImageSourceThumbnailMaxPixelSize: max(size.width, size.height),
        kCGImageSourceCreateThumbnailFromImageAlways: true
    ]
    
    return CGImageSourceCreateThumbnailAtIndex(imageSource, 0, options as CFDictionary).flatMap { UIImage(cgImage: $0)}
}

    
    
    
    
    var flattened: UIImage {
        if imageOrientation == .up {return self}
        return UIGraphicsImageRenderer(size:size, format: imageRendererFormat).image {
            context in draw(at:.zero)
        }
    }
}
