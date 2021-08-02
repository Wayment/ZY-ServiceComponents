//
//  KLEnvironmentProtocol.h
//  KLCommonServiceDemo
//
//  Created by Wyman on 2021/8/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSInteger, KLEnvironmentType) {
    KLEnvironmentTypeDev = 1,
    KLEnvironmentTypeTest = 2,
    KLEnvironmentTypePre = 3,
    KLEnvironmentTypePro = 4,
};

@protocol KLEnvironmentProtocol <NSObject>

@required
+ (instancetype)shared;

- (void)setEnvironmentType:(KLEnvironmentType)type;
- (KLEnvironmentType)currentEnvironmentType;
- (void)showEnvVC:(UIViewController *)inVc;

@end


NS_ASSUME_NONNULL_END
