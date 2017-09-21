//
//  AmDatePicker.h
//  AllMountain
//
//  Created by WXL-TECH on 2017/9/16.
//  Copyright © 2017年 WXL-TECH. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^amDatePickerCallBack)(NSString * dateString);

@interface AmDatePicker : UIView

@property (nonatomic,copy) amDatePickerCallBack  amDatePickerCall;

@property (nonatomic,copy) NSString * minDate;

@property (nonatomic,copy) NSString * maxDate;

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title cancelTile:(NSString *) cancelTitle sureTitle:(NSString *)sureTitle currentString:(NSString *)currentString;

@end
