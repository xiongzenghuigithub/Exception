

#import "MyLogger.h"
#import "CocoaLumberjack.h"

//定义日志显示的级别
#ifdef DEBUG
//static const int ddLogLevel = LOG_LEVEL_VERBOSE; //LOG_LEVEL_VERBOSE级别以下所有日志都会看见
static const int ddLogLevel = LOG_LEVEL_CUSTOM; //设置自定义log级别以下日志都可以看见
#else
static const int ddLogLevel = LOG_LEVEL_OFF; //发布版本时, 直接关闭所有日志输出
#endif

@implementation MyLogger

+ (void)initialize {
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
    
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor redColor] backgroundColor:nil forFlag:LOG_FLAG_ERROR];
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor blueColor] backgroundColor:nil forFlag:LOG_FLAG_INFO];
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor brownColor] backgroundColor:nil forFlag:LOG_FLAG_WARN];
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor purpleColor] backgroundColor:nil forFlag:LOG_FLAG_VERBOSE];
     [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor magentaColor] backgroundColor:nil forFlag:LOG_FLAG_CUSTOM];
}

+ (void)TTYLogError:(NSString *)info {
    DDLogError(info);
}

+ (void)TTYLogInfo:(NSString *)info {
    DDLogInfo(info);
}

+ (void)TTYLogWarn:(NSString *)info {
    DDLogWarn(info);
}

+ (void)TTYLogVerbose:(NSString *)info {
    DDLogVerbose(info);
}

+ (void)TTYLogCustom:(NSString *)info {
    DDLogCustom(info);
}


@end
