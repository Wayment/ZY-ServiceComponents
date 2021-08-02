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

#import "KLEnvironmentManager.h"
#import "KLEnvironmentProtocol.h"
#import "KLEnvViewController.h"

FOUNDATION_EXPORT double EnvironmentVersionNumber;
FOUNDATION_EXPORT const unsigned char EnvironmentVersionString[];

