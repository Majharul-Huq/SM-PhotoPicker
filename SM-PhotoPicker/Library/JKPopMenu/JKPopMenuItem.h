//
//  JKPopMenuItem.h
//  SM-PhotoPicker
//
//  Created by Huq Majharul on 1/7/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import <UIKit/UIKit.h>

#define PopMenuItemWidth            72.0f
#define PopMenuItemHeight           (PopMenuItemWidth + 24)

@interface JKPopMenuItem : UIControl

@property (nonatomic, copy  ) NSString *title;
@property (nonatomic, strong) UIImage  *icon;
@property (nonatomic, strong) UIColor  *textColor;

@property (nonatomic, assign) CGFloat animationTime;

+ (instancetype)item;
+ (instancetype)itemWithTitle:(NSString*)title image:(UIImage*)image;
@end
