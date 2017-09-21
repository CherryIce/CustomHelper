//
//  AmDatePicker.m
//  AllMountain
//
//  Created by WXL-TECH on 2017/9/16.
//  Copyright © 2017年 WXL-TECH. All rights reserved.
//

#import "AmDatePicker.h"

@interface AmDatePicker()

@property (nonatomic,strong) UIDatePicker * datePicker;

@property (nonatomic,strong) UIButton * cancelBtn;

@property (nonatomic,strong) UIButton * sureBtn;

@property (nonatomic,copy) NSString * pickerTitle;

@property (nonatomic,copy) NSString * cancelTitle;

@property (nonatomic,copy) NSString * sureTitle;

@property (nonatomic,copy) NSString * dateString;

@property (nonatomic,strong) NSDateFormatter *formatter;

@end

@implementation AmDatePicker

- (NSDateFormatter *)formatter
{
    if (!_formatter) {
        _formatter = [[NSDateFormatter alloc] init];
        //  设置日期格式
        [_formatter setDateFormat:@"yyyy-MM-dd"];
    }
    return _formatter;
}

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title cancelTile:(NSString *) cancelTitle sureTitle:(NSString *)sureTitle currentString:(NSString *)currentString
{
    if (self == [super initWithFrame:frame])
    {
        _pickerTitle = title;
        _sureTitle = sureTitle;
        _cancelTitle = cancelTitle;
        _dateString = currentString;
        [self setUI];
    }
    return self;
}

- (void) setUI
{
    UIView * backView = [[UIView alloc] initWithFrame:self.bounds];
    backView.backgroundColor = [UIColor blackColor];
    backView.alpha = 0.6;
    [backView setOpaque:YES];
    [self addSubview:backView];
    
    
    UIView * bgView = [UIFactory initViewWithFrame:CGRectMake(0, self.bounds.size.height - 256, self.bounds.size.width, 256) color:[UIColor whiteColor]];
    [self addSubview:bgView];
    
    UILabel * titleLabel = [UIFactory initLableWithFrame:CGRectMake(70, 5, self.bounds.size.width - 140, 30) title:_pickerTitle textColor:[UIColor darkGrayColor] font:systemOfFont(16) textAlignment:NSTextAlignmentCenter];
    [bgView addSubview:titleLabel];
    
    _cancelBtn = [UIFactory initButtonWithFrame:CGRectMake(10, 5, 50, 30) title:_cancelTitle textColor:[UIColor lightGrayColor] font:systemOfFont(13) cornerRadius:0 tag:0 target:self action:@selector(removeFromSuperview)];
    [bgView addSubview:_cancelBtn];
    
    _sureBtn = [UIFactory initButtonWithFrame:CGRectMake(self.bounds.size.width - 60, 5, 50, 30) title:_sureTitle textColor:[UIColor blackColor] font:systemOfFont(13) cornerRadius:0 tag:10 target:self action:@selector(callBackClick)];
    [bgView addSubview:_sureBtn];
    
    //出生日期
    self.datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0, 40, self.frame.size.width, 216)];
    self.datePicker.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    [bgView addSubview:self.datePicker];
    
    //很关键
    self.datePicker.datePickerMode = UIDatePickerModeDate;
    
    [self.datePicker addTarget:self action:@selector(dateChanged:) forControlEvents:UIControlEventValueChanged ];//重点：UIControlEventValueChanged
    
    //设置显示格式
    //默认根据手机本地设置显示为中文还是其他语言
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];//设置为中文显示
    self.datePicker.locale = locale;
    
    
    //设置属性
    self.datePicker.minimumDate = [self.formatter dateFromString:@"1917-01-01"];
    self.datePicker.maximumDate = [NSDate date];
    self.datePicker.date = [self.formatter dateFromString:_dateString];
}

- (void)setMinDate:(NSString *)minDate
{
    _minDate = minDate;
    self.datePicker.minimumDate = [self.formatter dateFromString:minDate];
}

- (void)setMaxDate:(NSString *)maxDate
{
    _maxDate = maxDate;
    self.datePicker.maximumDate = [self.formatter dateFromString:maxDate];
}

- (void)dateChanged:(id)sender
{
    UIDatePicker *control = (UIDatePicker*)sender;
    NSDate* date = control.date;
    //添加你自己响应代码
    NSLog(@"dateChanged响应事件：%@",date);
    
    //NSDate格式转换为NSString格式
    NSDate *pickerDate = [self.datePicker date];// 获取用户通过UIDatePicker设置的日期和时间
    
    NSString *dateString = [self.formatter stringFromDate:pickerDate];
    
    _dateString = dateString;
    //打印显示日期时间
    NSLog(@"格式化显示时间：%@",dateString);
    
}

- (void) callBackClick
{
    [self removeFromSuperview];
    if (_amDatePickerCall) {
        _amDatePickerCall(_dateString);
    }
}

@end
