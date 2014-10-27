//
//  ViewController.m
//  FindException
//
//  Created by wadexiong on 14/10/24.
//  Copyright (c) 2014年 xiong. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"
#import "MyLogger.h"

@interface ViewController (){
    
    UIView *view;
    UIView *view2;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    Manager * m = [[Manager alloc] init];
    
    int x = 4;
    NSString *xxx = @"dawdawdaw";
//    [m test];
    if ([m respondsToSelector:@selector(test)]) {
        [m test];
    }else {
        [MyLogger TTYLogError:@"Manager类, 未实现test方法"];
    }
    
    
    view = [[UIView alloc] init];
    view.frame = CGRectMake(10, 10, 200, 100);
    [self.view addSubview:view];
    
    NSArray *arr = @[@"dawdawd", @"dawdawd"];
    NSDictionary *dict = @{@"kei1": @"value1", @"key2":@"value2"};
    
//    [MyLogger TTYLogError:[NSString stringWithFormat:@"i am  %@", @"xiaoming"]];
    [MyLogger TTYLogError:@"Log日志级别为 : Error"];
    [MyLogger TTYLogInfo:@"Log日志级别为 : Info"];
    [MyLogger TTYLogWarn:@"Log日志级别为 : Warn"];
    [MyLogger TTYLogVerbose:@"Log日志级别为 : Verbose"];
    [MyLogger TTYLogCustom:@"Log日志级别为 : Custom"];
    
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
