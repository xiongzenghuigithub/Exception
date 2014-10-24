

#import "Manager.h"

@implementation Manager



//- (void)test {
//    int x = 5;
//}


- (BOOL)respondsToSelector:(SEL)aSelector{
    printf("xzh :%s\n", [NSStringFromSelector(aSelector)UTF8String]);
    return [super respondsToSelector:aSelector];
}


@end
