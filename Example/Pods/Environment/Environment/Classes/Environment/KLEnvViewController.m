//
//  KLEnvViewController.m
//  KLCommonServiceDemo
//
//  Created by Wyman on 2021/7/30.
//

#import "KLEnvViewController.h"
#import "KLEnvironmentManager.h"

@interface KLEnvViewController ()

@property (nonatomic, strong) UIStackView *stackView;
@property (nonatomic, weak) UIButton *selectedBtn;

@end

@implementation KLEnvViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.stackView = [[UIStackView alloc] init];
    [self.view addSubview:self.stackView];
    CGFloat totalWH = MIN(self.view.bounds.size.height, self.view.bounds.size.width);
    self.stackView.frame = CGRectMake(0, 0, totalWH, totalWH);
    self.stackView.backgroundColor = UIColor.lightGrayColor;
    self.stackView.axis = UILayoutConstraintAxisVertical;
    self.stackView.distribution = UIStackViewDistributionFillEqually;
    
    [self createBtn:KLEnvironmentTypeDev];
    [self createBtn:KLEnvironmentTypeTest];
    [self createBtn:KLEnvironmentTypePre];
    [self createBtn:KLEnvironmentTypePro];
}

- (UIButton *)createBtn:(KLEnvironmentType)type {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.tag = type;
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.greenColor forState:UIControlStateSelected];
    [btn addTarget:self action:@selector(handleSelcet:) forControlEvents:UIControlEventTouchUpInside];
    switch (type) {
        case KLEnvironmentTypeDev:
            [btn setTitle:@"dev" forState:UIControlStateNormal];
            break;
        case KLEnvironmentTypeTest:
            [btn setTitle:@"test" forState:UIControlStateNormal];
            break;
        case KLEnvironmentTypePre:
            [btn setTitle:@"pre" forState:UIControlStateNormal];
            break;
        case KLEnvironmentTypePro:
            [btn setTitle:@"pro" forState:UIControlStateNormal];
            break;
    }
    KLEnvironmentType curType = [[KLEnvironmentManager shared] currentEnvironmentType];
    if (type == curType) {
        btn.selected = true;
        self.selectedBtn = btn;
    }
    [self.stackView addArrangedSubview:btn];
    return btn;
}

- (void)handleSelcet:(UIButton *)btn {
    [[KLEnvironmentManager shared] setEnvironmentType:btn.tag];
    self.selectedBtn.selected = false;
    btn.selected = true;
    self.selectedBtn = btn;
    [self performSelector:@selector(dissMiss) withObject:nil afterDelay:0.5];
}

- (void)dissMiss {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dissMiss];
}


@end
