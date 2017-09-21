//
//  ViewController.m
//  CustomHelper
//
//  Created by WXL-TECH on 2017/9/20.
//  Copyright © 2017年 WXL-TECH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) AreaPickView * pickView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)selectTime:(UIButton *)sender
{
    AmDatePicker * datePicker = [[AmDatePicker alloc] initWithFrame:[UIScreen mainScreen].bounds title:@"选择日期" cancelTile:@"取消" sureTitle:@"确定" currentString:@"2017-09-02"];
    [[UIApplication sharedApplication].keyWindow addSubview:datePicker];
    
    datePicker.amDatePickerCall = ^(NSString *dateString) {
        
    };
}

- (IBAction)alertView:(UIButton *)sender
{
    AmAlertView * alertView = [[AmAlertView alloc] initWithTitle:@"自定义提示框" message:@"提示信息" delegate:self cancelButtonTitle:nil otherButtonTitle:@"确定"];
    [alertView show];
}

- (IBAction)selectPlace:(id)sender
{
    //网络获取数据
    NSDictionary * parameters = @{@"appid":@"20160994246424",
                                  @"id":@(100000),
                                  };
//    [self.provinceArr removeAllObjects];
//    GainProvinceCityAreaViewModel * viewModel = [[GainProvinceCityAreaViewModel alloc] init];
//    [viewModel getDataSourceWithParamer:parameters suceess:^(NSArray *dataArr) {
//        [self.provinceArr addObjectsFromArray:dataArr];
//        [self showPickView];
//    } failure:^(id errorCode) {
//        
//    }];
}

- (void) showPickView
{
    [_pickView removeFromSuperview];
    _pickView = nil;
    _pickView = [[AreaPickView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
//    _pickView.provinceArr = [self.provinceArr copy];
    [[[UIApplication sharedApplication] keyWindow] addSubview:_pickView];
//
//    __weak typeof(address) weakAddress = address;
//    __weak typeof(self) weakSelf = self;
//    _pickView.selectProvinceCityAreaCall = ^(NSString *province, NSString * city, NSString * area, NSInteger aId) {
//        //可以将省市区换了,然后将_model.full_district换了
//        weakSelf.model.full_district = @[province,city,area];
//        NSString * text = [NSString stringWithFormat:@"%@省%@市%@区",province,city,area];
//        weakAddress.text = text;
//        //ID需要上传给后台
//        weakSelf.model.district_id = (int)aId;
//    };
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
