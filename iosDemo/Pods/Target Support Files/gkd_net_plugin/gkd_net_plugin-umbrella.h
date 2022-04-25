#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "GkdNetPlugin.h"

FOUNDATION_EXPORT double gkd_net_pluginVersionNumber;
FOUNDATION_EXPORT const unsigned char gkd_net_pluginVersionString[];

