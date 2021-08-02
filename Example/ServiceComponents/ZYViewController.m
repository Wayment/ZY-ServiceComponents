//
//  ZYViewController.m
//  ServiceComponents
//
//  Created by Wayment on 08/02/2021.
//  Copyright (c) 2021 Wayment. All rights reserved.
//

#import "ZYViewController.h"

#import <KLEnvironmentHelper.h>

@interface ZYViewController ()

@end

@implementation ZYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [KLEnvironmentHelper showEnvVC:self];
}

@end
