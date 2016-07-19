//
//  ViewController.swift
//  openCVTest
//
//  Created by jaeseung.ko on 2016. 6. 21..
//  Copyright © 2016년 jasonko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var openCVVersionLabel: UILabel!
    @IBOutlet weak var lenaImageView: UIImageView!
    @IBOutlet weak var toGrayScaleButton: UIButton!
    
    var isGrayScaled : Bool = false
    var originalImage : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        openCVVersionLabel.text = OpenCVWrapper.openCVVersionString()
        originalImage = lenaImageView.image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toGrayscaleButtonTouched(sender: AnyObject) {
        
        if !isGrayScaled {
            lenaImageView.image = OpenCVWrapper.makeGrayFromImage(lenaImageView.image)
            toGrayScaleButton.setTitle("to color", forState:UIControlState.Normal)
            isGrayScaled = true
        } else {
            lenaImageView.image = originalImage
            toGrayScaleButton.setTitle("to grayScale", forState:UIControlState.Normal)
            isGrayScaled = false
        }
        
    }
   
    @IBAction func toBlurButtonTouched(sender: AnyObject) {
        
        lenaImageView.image = OpenCVWrapper.makeGaussianBlurImage(lenaImageView.image)
    }

}

