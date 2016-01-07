//
//  UIImage+Colors.h
//  SM-PhotoPicker
//
//  Created by Huq Majharul on 1/7/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface UIImage( Colors )

+ (UIImage*)blurImage:(UIImage*)theImage withInputRadius:(float)radius;

@end
