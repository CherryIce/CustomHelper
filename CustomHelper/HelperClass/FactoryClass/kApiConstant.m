//
//  kApiConstant.m
//  AllMountain
//
//  Created by WXL-TECH on 2017/8/26.
//  Copyright © 2017年 WXL-TECH. All rights reserved.
//

#import "kApiConstant.h"

@implementation kApiConstant

//商品分类列表
 NSString * const kGoodsTypeLists = @"/api.php?method=goods.category.lists&appid=20160994246424";

//限时抢
 NSString * const kLimitTimeLists = @"/api.php?method=goods.sku.time&appid=20160994246424";

//热销商品列表
 NSString * const kHotGoodsLists = @"/api.php?method=goods.sku.re_lists&appid=20160994246424&limit=&order=";

//获取商品列表
 NSString * const kGoodsLists = @"/api.php?method=goods.sku.lists&appid=20160994246424&catid=&limit=&order=";

//获取商品详情
 NSString * const kGoodsDetail = @"/api.php?method=goods.sku.detail";

//首页视频介绍
 NSString * const kVedio = @"/api.php?method=goods.sku.video&appid=20160994246424";

//商品评论列表
 NSString * const kGoodsCommentLists = @"/api.php?method=comment.comment.lists&appid=20160994246424&page=&limit=&order=&mid=";

//商品评论
 NSString * const kGoodsComment = @"/api.php?method=comment.comment.add&appid=20160994246424";

//收获地址
 NSString * const kGetAdress = @"/api.php?method=member.address.lists";

 NSString * const kAddAdress = @"/api.php?method=member.address.add";

 NSString * const kEditAdress = @"/api.php?method=member.address.edit";

 NSString * const kDelAdress = @"/api.php?method=member.address.del";

//登录注册

NSString * const kRegister = @"/api.php?method=member.public.register";

 NSString * const kLogin = @"/api.php?method=member.public.login";

 NSString * const kLogout = @"/api.php?method=member.public.logout";

 NSString * const kVcode = @"/api.php?method=member.public.vcode";

 NSString * const kValidVcode = @"/api.php?method=member.public.valid_vcode";

 NSString * const kResetPassword = @"/api.php?method=member.public.reset_password";

 NSString * const kCheck = @"/api.php?method=member.public.check";

//首页幻灯片
 NSString * const kBannerLists = @"/api.php?method=misc.focus.lists&appid=20160994246424&limit=&order=";


//购物车
 NSString * const kAddCart = @"/api.php?method=order.cart.add";

 NSString * const kCartLists = @"/api.php?method=order.cart.lists";

 NSString * const kDeleteCart = @"/api.php?method=order.cart.delpro";

 NSString * const kClearAddCart = @"";

 NSString * const kSoldOutAddCart = @"";

 NSString * const kSetNumberCart = @"/api.php?method=order.cart.set_nums";

//省市区
 NSString * const kGetDistrict = @"/api.php?method=admin.district.get";

//结算提交/立即购买
 NSString * const kSettlement = @"/api.php?method=order.order.settlement";

//个人信息
NSString * const kMember = @"/api.php?method=member.member.data";
//我的钱包
NSString * const kWallet = @"/api.php?method=member.member.wallet";

//订单
NSString * const kOrderList = @"/api.php?method=member.orderlist.index";
NSString * const kOrderCancel = @"/api.php?method=member.orderlist.cancel";
NSString * const kOrderDelete = @"/api.php?method=member.orderlist.delete_sn";
NSString * const kInitOrder = @"/api.php?method=order.order.create";
NSString * const kGainInitOrderInfo = @"/api.php?method=order.order.detail";
NSString * const kCheckLogistics = @"/api.php?method=member.orderlist.delivery";
NSString * const kFollowLogistics = @"/api.php?method=member.orderlist.logistics";
NSString * const kConfirmGain = @"/api.php?method=member.orderlist.finish";
NSString * const kOrderDetail = @"/api.php?method=member.orderlist.detail";


//私人定制
NSString * const kCustomize = @"/api.php?method=private.index.index&appid=20160994246424";
NSString * const kCustomizeDetail = @"/api.php?method=private.index.detail";

//在线咨询
NSString * const kHelp = @"/api.php?method=misc.help.lists";
NSString * const kHelpLists = @"";

//献言
NSString * const kIdeasLists = @"/api.php?method=misc.help.ask_index";
NSString * const kIdeaDetail = @"/api.php?method=misc.help.ask_detail";
NSString * const kIdeaAdd = @"/api.php?method=misc.help.answer_add";

//银行卡
NSString * const kAddBankCard = @"/api.php?method=wallet.bank.bank_add";
NSString * const kDeleteBankCard = @"/api.php?method=wallet.bank.bank_del";
NSString * const kEditBankCard = @"/api.php?method=wallet.bank.bank_edit";
NSString * const kBankCardLists = @"/api.php?method=wallet.bank.index";

@end
