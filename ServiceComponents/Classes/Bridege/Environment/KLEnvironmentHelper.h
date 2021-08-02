//
//  KLEnvironmentHelper.h
//  KLCommonServiceDemo
//
//  Created by Wyman on 2021/8/2.
//

#import <UIKit/UIKit.h>

#import <Environment/KLEnvironmentProtocol.h>


NS_ASSUME_NONNULL_BEGIN

@interface KLEnvironmentHelper : NSObject

+ (void)setEnvironmentType:(KLEnvironmentType)type;
+ (KLEnvironmentType)currentEnvironmentType;
+ (void)showEnvVC:(UIViewController *)inVc;

@end

NS_ASSUME_NONNULL_END
