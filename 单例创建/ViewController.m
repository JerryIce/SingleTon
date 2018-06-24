//
//  ViewController.m
//  单例创建
//
//  Created by 杨宗维 on 2018/6/24.
//  Copyright © 2018年 Icecooll. All rights reserved.
//

#import "ViewController.h"
#import "singleTonService.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //这几个实例应该内存地址都一样，因为是同一个对象
    
    
    singleTonService *ser1 = [singleTonService getInstance];
    singleTonService *ser2 = [singleTonService getInstance];
    singleTonService *ser3 = [[singleTonService alloc]init];
    singleTonService *ser4 = [[singleTonService alloc]init];
    
    singleTonService *ser5 = [ser3 copy];
    singleTonService *ser6 = [ser4 mutableCopy];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
