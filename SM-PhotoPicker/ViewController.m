//
//  ViewController.m
//  SM-PhotoPicker
//
//  Created by Huq Majharul on 1/7/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import "ViewController.h"
#import "JKPopMenuView.h"
#import "UIImage+Colors.h"

@interface ViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate,JKPopMenuViewSelectDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.shadowAnimation = [JTSlideShadowAnimation new];
    self.shadowAnimation.animatedView = buttonPickPhoto;
    self.shadowAnimation.shadowWidth = 40.0f;
    [self.shadowAnimation start];    
}

- (IBAction)actionPickPhoto:(id)sender
{
    NSMutableArray *array = [[NSMutableArray alloc]init];
    
    JKPopMenuItem *itemPhoto = [JKPopMenuItem itemWithTitle:@"PHOTO" image:[UIImage imageNamed:@"PhotoImage"]];
    [array addObject:itemPhoto];
    
    JKPopMenuItem *itemCamera = [JKPopMenuItem itemWithTitle:@"CAMERA" image:[UIImage imageNamed:@"CameraImage"]];
    [array addObject:itemCamera];
    
    JKPopMenuView *jkpop = [JKPopMenuView menuViewWithItems:array];
    jkpop.delegate = self;
    [jkpop show];
}

#pragma mark JKPopMenuViewSelectDelegate
-(void)popMenuDidAppeared
{
    imageviewPhoto.image = [UIImage blurImage:imageviewPhoto.image withInputRadius:10.0f];
    CATransition *transition = [CATransition animation];
    transition.duration = 0.5f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    [imageviewPhoto.layer addAnimation:transition forKey:nil];
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        buttonPickPhoto.alpha = 0.05;
    } completion:^(BOOL finished) {
    }];
}

-(void)popMenuDidDisappeared
{
    imageviewPhoto.image = [UIImage imageNamed:@"PlaceHolder"];
    CATransition *transition = [CATransition animation];
    transition.duration = 0.5f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    [imageviewPhoto.layer addAnimation:transition forKey:nil];
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        buttonPickPhoto.alpha = 1.0;
    } completion:^(BOOL finished) {
    }];
}


#pragma mark App JKPopMenuViewSelectDelegate
- (void)popMenuViewSelectIndex:(NSInteger)index
{
    NSLog(@"%s",__func__);
    
    switch (index) {
        case 0:
            NSLog(@"OPEN CAMERA ROLL");
            break;
        case 1:
            NSLog(@"OPEN CAMERA");
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
