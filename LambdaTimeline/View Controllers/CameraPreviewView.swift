//
//  CameraPreviewView.swift
//  LambdaTimeline
//
//  Created by Lambda_School_Loaner_219 on 2/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

import UIKit
import AVFoundation

class CameraPreviewView: UIView {
    
    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
    var videoPlayerView: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }
    
    var session: AVCaptureSession? {
        get { return videoPlayerView.session }
        set { videoPlayerView.session = newValue }
    }
}
