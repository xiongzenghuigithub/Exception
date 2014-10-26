//
//  main.m
//  FindException
//
//  Created by wadexiong on 14/10/24.
//  Copyright (c) 2014年 xiong. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    
    
    @try {
        @autoreleasepool
        {
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        }
    }
    @catch (NSException* exception)
    {
        DLog(@"发生异常=%@\nStack Trace:%@", exception, [exception callStackSymbols]);
    }
    
    
//    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
}
