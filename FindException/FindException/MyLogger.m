

#import "MyLogger.h"
#import "CocoaLumberjack.h"

//定义日志显示的级别
#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_VERBOSE; //LOG_LEVEL_VERBOSE级别以下所有日志都会看见
#else
static const int ddLogLevel = LOG_LEVEL_OFF; //发布版本时, 直接关闭所有日志输出
#endif

@implementation MyLogger

+ (void)initialize {
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
}

+ (void)TTYLogError:(NSString *)info {
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor redColor] backgroundColor:nil forFlag:LOG_FLAG_ERROR];
    DDLogError(info);
}

+ (void)TTYLogInfo:(NSString *)info {
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor blueColor] backgroundColor:nil forFlag:LOG_FLAG_INFO];
    DDLogInfo(info);
}

+ (void)TTYLogWarn:(NSString *)info {
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor brownColor] backgroundColor:nil forFlag:LOG_FLAG_WARN];
    DDLogWarn(info);
}

+ (void)TTYLogVerbose:(NSString *)info {
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor purpleColor] backgroundColor:nil forFlag:LOG_FLAG_VERBOSE];
    DDLogVerbose(info);
}



@end
