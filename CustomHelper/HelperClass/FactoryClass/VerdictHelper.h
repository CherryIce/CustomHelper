//
//  VerdictHelper.h
//  AllMountain
//
//  Created by WXL-TECH on 2017/9/19.
//  Copyright © 2017年 WXL-TECH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VerdictHelper : NSObject

//判断是否为空
+ (BOOL)empty:(id)value;

//检测电话号码
+(BOOL)checkMobileTel:(NSString *)tel;

//固定电话验证
+(BOOL)checkTel:(NSString *)tel;

//是否是整数
+ (BOOL)isPureInt:(NSString*)string;

//验证真实姓名
+(BOOL)checkRealName:(NSString*)realName;

//验证身份证是否合法
+ (BOOL)validateIDCardNumber:(NSString *)value;
+ (BOOL)Chk18PaperId:(NSString *)sPaperId;

//检测邮箱
+(BOOL)validateEmail:(NSString*)email;

//检测信用卡号
+(BOOL)isValidCreditNumber:(NSString*)value;

//MD5加密
+(NSString *)md5:(NSString *)str;

//验证是否含有emoji表情
+ (BOOL)stringContainsEmoji:(NSString *)string;

//验证PNG图片是否有效
+ (BOOL)isValidPNGByImageData:(NSData*)imageData;

//验证JPEG图片是否有效
+ (BOOL)isValidJPEGByImageData:(NSData*)imageData;

//判断图片格式
+(int) imageType:(long) flag;

//验证码校验
+(BOOL)CAPTCHA:(NSString*)str;

//验证是否为纯汉字
+(BOOL)Checkletter:(NSString*)name;

// 判断头像是不是有效的路径
+ (BOOL)avatarIsValidWith:(NSString *)avatarUrl;

@end
