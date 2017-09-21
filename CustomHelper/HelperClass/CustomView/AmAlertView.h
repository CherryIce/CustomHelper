//
//  AmAlertView.h
//  AllMountain
//
//  Created by WXL-TECH on 2017/8/29.
//  Copyright © 2017年 WXL-TECH. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AmAlertView;

@protocol AmAlertDelegate <NSObject>

-(void)alertView:(AmAlertView *)alertView clickedButtonAtIndex:(NSUInteger)buttonIndex;

@end

@interface AmAlertView : UIView

@property (weak,nonatomic) id<AmAlertDelegate>delegate;

-(instancetype)initWithTitle:title message:messge delegate:delegate cancelButtonTitle:cancelTitle otherButtonTitle:otherTitle;

-(void)show;

@end
