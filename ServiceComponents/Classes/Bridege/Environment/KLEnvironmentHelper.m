//
//  KLEnvironmentHelper.m
//  KLCommonServiceDemo
//
//  Created by Wyman on 2021/8/2.
//

#import "KLEnvironmentHelper.h"
#import "KLEnvironmentManager.h"

@implementation KLEnvironmentHelper

+ (id<KLEnvironmentProtocol>)sharedManager {
    return [KLEnvironmentManager shared];
}

+ (void)setEnvironmentType:(KLEnvironmentType)type {
    [[self sharedManager] setEnvironmentType:type];
}

+ (KLEnvironmentType)currentEnvironmentType {
    return [[self sharedManager] currentEnvironmentType];
}

+ (void)showEnvVC:(UIViewController *)inVc {
    [[self sharedManager] showEnvVC:inVc];
}

@end
