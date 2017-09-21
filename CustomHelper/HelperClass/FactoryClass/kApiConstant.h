//
//  kApiConstant.h
//  AllMountain
//
//  Created by WXL-TECH on 2017/8/26.
//  Copyright © 2017年 WXL-TECH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kApiConstant : NSObject

//地址操作类型
typedef NS_ENUM(NSInteger, AddressType) {
    AddressAdd = 0,
    AddressChange,
    AddressDelete
};

//银行卡操作类型
typedef NS_ENUM(NSInteger, BankCardType) {
    BankCardAdd = 0,
    BankCardChange,
    BankCardDelete
};

//支付类型
typedef NS_ENUM(NSInteger, PayWayType) {
    AliPay = 0,
    WeChatPay,
    BankcardPay,
    WalletPay
};

typedef NS_ENUM(NSInteger, ReChargeType) {
    ReChargeGoldBean = 0 ,//金豆
    ReChargeGoldCoin ,//金币
    
};

//大宗交易地址操作row
typedef NS_ENUM(NSInteger, TradeEditAddressCellRow) {
    TradeEditAddressCellFirstRow = 0,
    TradeEditAddressCellSecondRow
};

//新增地址返回标识 确定收货返回标识
typedef NS_ENUM(NSInteger, AddAddressPopType) {
    AddAddressPopPrevious = 0,//上级页面
    AddAddressPopBefore   //上上级页面
};



//商品分类列表
extern NSString * const kGoodsTypeLists;

//限时抢
extern NSString * const kLimitTimeLists;

//热销商品列表
extern NSString * const kHotGoodsLists;

//获取商品列表
extern NSString * const kGoodsLists;

//获取商品详情
extern NSString * const kGoodsDetail;

//首页视频介绍
extern NSString * const kVedio;

//商品评论列表
extern NSString * const kGoodsCommentLists;

//商品评论
extern NSString * const kGoodsComment;

//收获地址
extern NSString * const kGetAdress;

extern NSString * const kAddAdress;

extern NSString * const kEditAdress;

extern NSString * const kDelAdress;

//登录注册

extern NSString * const kRegister;

extern NSString * const kLogin;

extern NSString * const kLogout;

extern NSString * const kVcode;

extern NSString * const kValidVcode;

extern NSString * const kResetPassword;

extern NSString * const kCheck;

//首页幻灯片
extern NSString * const kBannerLists;


//购物车
extern NSString * const kAddCart;

extern NSString * const kCartLists;

extern NSString * const kDeleteCart;

extern NSString * const kClearAddCart;

extern NSString * const kSoldOutAddCart;

extern NSString * const kSetNumberCart;

//省市区
extern NSString * const kGetDistrict;

//结算提交/立即购买
extern NSString * const kSettlement;

//个人信息
extern NSString * const kMember;
//我的钱包
extern NSString * const kWallet;
//订单
extern NSString * const kOrderList;
extern NSString * const kOrderCancel;
extern NSString * const kOrderDelete;
extern NSString * const kInitOrder;
extern NSString * const kGainInitOrderInfo;
extern NSString * const kOrderDetail;
extern NSString * const kCheckLogistics;
extern NSString * const kFollowLogistics;
extern NSString * const kConfirmGain ;

//私人定制
extern NSString * const kCustomize;
extern NSString * const kCustomizeDetail;

//在线咨询
extern NSString * const kHelp;
extern NSString * const kHelpLists ;

//献言
extern NSString * const kIdeasLists ;
extern NSString * const kIdeaDetail ;
extern NSString * const kIdeaAdd ;

//银行卡
extern NSString * const kAddBankCard ;
extern NSString * const kDeleteBankCard ;
extern NSString * const kEditBankCard;
extern NSString * const kBankCardLists ;

@end
