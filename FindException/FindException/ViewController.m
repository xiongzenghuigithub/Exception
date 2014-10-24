//
//  ViewController.m
//  FindException
//
//  Created by wadexiong on 14/10/24.
//  Copyright (c) 2014年 xiong. All rights reserved.
//

#import "ViewController.h"

#import "Manager.h"

@interface ViewController (){
    
    UIView *view;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    Manager * m = [[Manager alloc] init];
//    [m test];
    
    view = [[UIView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];

    
    
//XZH -- 宏控制条件编译
#if (DEBUG == 1)
    DLog(@"-------------dbug-------------");
#endif
    
#if (CN == 1)
    DLog(@"--------dasdasdasd----------");
#endif
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
