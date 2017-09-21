//
//  AreaPickView.h
//  AreaPickDemo
//


#import <UIKit/UIKit.h>

typedef void(^selectProvinceCityAreaCallBack)(NSString * province, NSString * city, NSString * area,NSInteger aId);

@interface AreaPickView : UIView

//数据字典
@property (nonatomic, strong)NSDictionary *areaDic;
//省级数组
@property (nonatomic, strong)NSArray *provinceArr;
//城市数组
@property (nonatomic, strong)NSMutableArray *cityArr;
//区、县数组
@property (nonatomic, strong)NSMutableArray *districtArr;

//省份选择Button
@property (nonatomic, strong)UIButton *provinceBtn;
//城市选择Button
@property (nonatomic, strong)UIButton *cityBtn;
//区、县选择Button
@property (nonatomic, strong)UIButton *districtBtn;
//滑动线条
@property (nonatomic, strong)UIView *selectLine;

@property (nonatomic, copy) selectProvinceCityAreaCallBack selectProvinceCityAreaCall;

@end
