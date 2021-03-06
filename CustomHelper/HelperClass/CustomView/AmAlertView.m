//
//  AmAlertView.m
//  AllMountain
//
//  Created by WXL-TECH on 2017/8/29.
//  Copyright © 2017年 WXL-TECH. All rights reserved.
//

#import "AmAlertView.h"

#define WIDTH [UIApplication sharedApplication].keyWindow.frame.size.width
#define HEIGHT [UIApplication sharedApplication].keyWindow.frame.size.height

@interface AmAlertView()

@property(nonatomic,strong)UIView *blackView;
@property(nonatomic,strong)UIView *alertBackView;
@property(nonatomic,strong)UILabel *contentLabel;
@property(nonatomic,strong)UIButton *cancelBtn;
@property(nonatomic,strong)UIButton *okBtn;
@property(nonnull,strong)NSString *title;
@property(nonnull,strong)NSString *content;
@property(nonnull,strong)NSString *cancelBtnTitle;
@property(nonnull,strong)NSString *okBtnTitle;
@property (nonatomic,strong) UIButton * closeBtn;

@end


@implementation AmAlertView

-(instancetype)initWithTitle:title message:messge delegate:delegate cancelButtonTitle:cancelTitle otherButtonTitle:otherTitle
{
    if (self=[super initWithFrame:[[UIApplication sharedApplication] keyWindow].frame]) {
        _delegate=delegate;
        _title=title;
        _content=messge;
        _cancelBtnTitle=cancelTitle;
        _okBtnTitle=otherTitle;
        [self setUp];
    }
    return self;
}
-(void)setUp
{
    //黑色背景
    _blackView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    _blackView.backgroundColor=[UIColor blackColor];
    _blackView.alpha = 0.6;
    [self addSubview:_blackView];
    
    //弹出框背景
    _alertBackView=[[UIView alloc]initWithFrame:CGRectMake(20, 44, WIDTH-40, 160)];
    _alertBackView.layer.cornerRadius= 6;
    _alertBackView.center=CGPointMake(WIDTH/2, HEIGHT/2);
    _alertBackView.backgroundColor=[UIColor whiteColor];
    [self addSubview:_alertBackView];
    
    _closeBtn = [UIFactory initButtonWithFrame:CGRectMake(WIDTH - 50, HEIGHT/ 2 - 120, 30, 30) image:UIIMAGE(@"function_close_icon") cornerRadius:0 tag:0 target:self action:@selector(closeBtnClick)];
    [self addSubview:_closeBtn];
    
    //标题
    UILabel *alertTitle=[[UILabel alloc]initWithFrame:CGRectMake(20, 10, WIDTH-40-40, 20)];
    alertTitle.text=_title;
    alertTitle.textAlignment=NSTextAlignmentCenter;
    alertTitle.textColor=[UIColor colorWithRed:0.31f green:0.31f blue:0.31f alpha:1.00f];
    alertTitle.font=[UIFont systemFontOfSize:15];
    [_alertBackView addSubview:alertTitle];
    //消息内容
    UILabel *message=[[UILabel alloc]initWithFrame:CGRectMake(20, 30, WIDTH-40-40, 60)];
    message.text=_content;
    message.numberOfLines=0;
    message.textAlignment=NSTextAlignmentCenter;
    message.textColor=[UIColor colorWithRed:0.31f green:0.31f blue:0.31f alpha:1.00f];
    message.font=[UIFont systemFontOfSize:15];
    [_alertBackView addSubview:message];
    
    UIView * lineView = [UIFactory initViewWithFrame:CGRectMake(0, 99.5, _alertBackView.bounds.size.width, 0.5) color:[UIColor groupTableViewBackgroundColor]];
    [_alertBackView addSubview:lineView];
    
    //按钮背景
    UIView *btnBGView=[[UIView alloc]initWithFrame:CGRectMake(0, 100, WIDTH-40, 60)];
    btnBGView.backgroundColor = [UIColor whiteColor];
    [_alertBackView addSubview:btnBGView];
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:btnBGView.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(3, 3)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = btnBGView.bounds;
    maskLayer.path = maskPath.CGPath;
    btnBGView.layer.mask = maskLayer;
    if (_cancelBtnTitle==nil||_okBtnTitle==nil) {
        //确定按钮
        _okBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        _okBtn.frame=CGRectMake((WIDTH-40-220)/2, 15, 220, 30);
        _okBtn.titleLabel.font=[UIFont systemFontOfSize:15];
        [_okBtn setTitle:_cancelBtnTitle==nil ? _okBtnTitle:_cancelBtnTitle forState:UIControlStateNormal];
        //[_okBtn setBackgroundImage:[UIImage imageNamed:@"login_loginbtn.png"] forState:UIControlStateNormal];
        [_okBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _okBtn.tag=1;
        [_okBtn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [btnBGView addSubview:_okBtn];
    }
    else
    {
        //取消按钮
        _cancelBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        _cancelBtn.frame = CGRectMake(25, 15,100, 30);
        _cancelBtn.titleLabel.font=[UIFont systemFontOfSize:15];
        [_cancelBtn setTitle:_cancelBtnTitle forState:UIControlStateNormal];
        //[_cancelBtn setBackgroundImage:[UIImage imageNamed:@"detail_alert_left"] forState:UIControlStateNormal];
        [_cancelBtn setTitleColor:[UIColor colorWithRed:0.47f green:0.47f blue:0.47f alpha:1.00f] forState:UIControlStateNormal];
        _cancelBtn.tag=0;
        [_cancelBtn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [btnBGView addSubview:_cancelBtn];
        //确定按钮
        _okBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        _okBtn.frame=CGRectMake(WIDTH-40-25-100, 15, 100, 30);
        _okBtn.titleLabel.font=[UIFont systemFontOfSize:15];
        [_okBtn setTitle:_okBtnTitle forState:UIControlStateNormal];
        //[_okBtn setBackgroundImage:[UIImage imageNamed:@"detail_alert_right"] forState:UIControlStateNormal];
        [_okBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _okBtn.tag=1;
        [_okBtn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [btnBGView addSubview:_okBtn];
        
    }
    
}

- (void) closeBtnClick
{
    [self removeFromSuperview];
    _blackView=nil;
    _alertBackView=nil;
}

-(void)buttonAction:(UIButton *)btn
{
    if ([self.delegate respondsToSelector:@selector(alertView:clickedButtonAtIndex:)]) {
        [self.delegate alertView:self clickedButtonAtIndex:(btn.tag)];
    }
    self.alpha = 0.0;
    [self removeFromSuperview];
    _blackView=nil;
    _alertBackView=nil;
}

-(void)show
{
    UIView * keywindow = [[UIApplication sharedApplication] keyWindow];
    [keywindow addSubview:self];
}


@end
