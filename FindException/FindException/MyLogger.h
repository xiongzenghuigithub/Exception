
#import <Foundation/Foundation.h>

@interface MyLogger : NSObject

/**
 *  发送日志语句到控制台
 */
+ (void)TTYLogError:(NSString *)info;
+ (void)TTYLogWarn:(NSString *)info;
+ (void)TTYLogInfo:(NSString *)info;
+ (void)TTYLogVerbose:(NSString *)info;
+ (void)TTYLogCustom:(NSString *)info;

@end
