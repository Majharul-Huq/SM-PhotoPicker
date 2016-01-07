//
//  JKPopMenuView.h
//  SM-PhotoPicker
//
//  Created by Huq Majharul on 1/7/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import "JKPopMenuItem.h"

typedef void (^JKPopMenuViewSelectBlock)(NSInteger index);

@protocol JKPopMenuViewSelectDelegate <NSObject>
-(void)popMenuViewSelectIndex:(NSInteger)index;

-(void)popMenuDidAppeared;
-(void)popMenuDidDisappeared;

@end

@interface JKPopMenuView : UIView
{
    UIView  *viewBack;
}

@property (nonatomic, copy) NSArray *menuItems;

@property (nonatomic, copy) JKPopMenuViewSelectBlock selectBlock;
@property (nonatomic, assign) id<JKPopMenuViewSelectDelegate> delegate;

+ (instancetype)menuView;
+ (instancetype)menuViewWithItems:(NSArray*)items;
- (void)show;

@end

@interface UIView (Additions)
- (CABasicAnimation *)fadeIn;
- (CABasicAnimation *)fadeOut;

@end
