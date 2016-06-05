//
//  User.h
//  静态表格
//
//  Created by 南珂 on 16/6/5.
//  Copyright © 2016年 Nicole. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *wechatNumber;
@property (nonatomic, strong) NSString *qqNumber;
@property (nonatomic, strong) NSString *phoneNumber;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, getter = isProtextAccount) BOOL protectAccount;
@end
