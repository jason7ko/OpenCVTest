//
//  OpenCVWrapper.h
//  openCVTest
//
//  Created by jaeseung.ko on 2016. 6. 21..
//  Copyright © 2016년 jasonko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OpenCVWrapper : NSObject

// funciton to get OpenCV Version
+(NSString *) openCVVersionString;

// convert an image a grayscale
+(UIImage *) makeGrayFromImage : (UIImage*)image;

+(UIImage *) makeGaussianBlurImage : (UIImage *) image;

@end
