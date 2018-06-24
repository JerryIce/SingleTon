//
//  singleTonService.m
//  单例创建
//
//  Created by 杨宗维 on 2018/6/24.
//  Copyright © 2018年 Icecooll. All rights reserved.
//

#import "singleTonService.h"
static singleTonService *instance = nil;

@implementation singleTonService

//alloc时会调用该方法，因此重写
+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [super allocWithZone:zone];
    });
    return instance;
}
//专用获取单例方法
+ (instancetype)getInstance{
    if(instance == nil){
        instance = [[singleTonService alloc]init];
    }
    return instance;
}
//防止copy方法创建时出现非单例
- (id)copy{
    
    return instance;
}
- (id)mutableCopy{
    
    return instance;
}
//初始化
- (instancetype)init
{
    self = [super init];
    if (self) {
        //
    }
    return self;
}



@end
