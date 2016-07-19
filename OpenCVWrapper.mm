//
//  OpenCVWrapper.m
//  openCVTest
//
//  Created by jaeseung.ko on 2016. 6. 21..
//  Copyright © 2016년 jasonko. All rights reserved.
//

#import "OpenCVWrapper.h"
#import <opencv2/opencv.hpp>
//#import <opencv2/imgcodecs/ios.h>
#import <opencv2/highgui/ios.h>


@implementation OpenCVWrapper

+(NSString*) openCVVersionString
{
    return [NSString stringWithFormat:@"OpenCV Version %s", CV_VERSION];
}

+(UIImage *) makeGrayFromImage:(UIImage *)image
{
    cv::Mat imageMat;
    UIImageToMat(image, imageMat);
    
    if (imageMat.channels() == 1) return image;
    
    cv::Mat grayMat;
    cv::cvtColor(imageMat, grayMat, CV_BGR2GRAY);
    
    return MatToUIImage(grayMat);
}

+(UIImage *) makeGaussianBlurImage : (UIImage *) image
{
    cv::Mat imageMat;
    UIImageToMat(image, imageMat);
    
    if (imageMat.channels() == 1) return image;
    
    cv::Mat blurImageMat;
    cv::GaussianBlur(imageMat, blurImageMat, cv::Size(9,9), 2.0, 2.0 );
    
    return MatToUIImage(blurImageMat);
}

@end
