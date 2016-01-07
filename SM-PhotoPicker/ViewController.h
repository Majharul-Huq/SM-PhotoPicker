//
//  ViewController.h
//  SM-PhotoPicker
//
//  Created by Huq Majharul on 1/7/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JTSlideShadowAnimation.h"
#import "FXBlurView.h"

@interface ViewController : UIViewController
{
    IBOutlet    UIImageView     *imageviewPhoto;
    IBOutlet    UIButton        *buttonPickPhoto;
}

@property (nonatomic, weak)     FXBlurView *blurView;
@property (nonatomic, strong)   JTSlideShadowAnimation *shadowAnimation;

- (IBAction)actionPickPhoto:(id)sender;

@end

