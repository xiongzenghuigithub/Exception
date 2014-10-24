

#ifndef FindException_Config_h
#define FindException_Config_h

#ifdef DEBUG
#define DLog(...) NSLog(@"%s %@", __PRETTY_FUNCTION__, [NSString stringWithFormat:__VA_ARGS__])
#else
#define DLog(...) do {  } while (0)
#endif


#endif
