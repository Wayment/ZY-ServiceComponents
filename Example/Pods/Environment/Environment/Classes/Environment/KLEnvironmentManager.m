//
//  KLEnvironmentManager.m
//  ZhaoYangDoctor
//
//  Created by Wyman on 2021/7/30.
//

#import "KLEnvironmentManager.h"
#import "KLEnvViewController.h"

NSString *const KLEnvironmentTypeKey = @"kKLEnvironmentTypeKey";

@interface KLEnvironmentManager()


@end

@implementation KLEnvironmentManager

static KLEnvironmentManager *_entManager = nil;

+ (instancetype)shared {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _entManager = [[KLEnvironmentManager alloc] init];
    });
    return _entManager;
}

- (void)setEnvironmentType:(KLEnvironmentType)type {
    [NSUserDefaults.standardUserDefaults setInteger:type forKey:KLEnvironmentTypeKey];
}

- (KLEnvironmentType)currentEnvironmentType {
    NSInteger type = [NSUserDefaults.standardUserDefaults integerForKey:KLEnvironmentTypeKey];
    if (type < KLEnvironmentTypeDev || type > KLEnvironmentTypePro) {
        return KLEnvironmentTypeTest;
    }
    return type;
}

- (void)showEnvVC:(UIViewController *)inVc {
    KLEnvViewController *envVC = [[KLEnvViewController alloc] init];
    [inVc presentViewController:envVC animated:true completion:nil];
}

@end
