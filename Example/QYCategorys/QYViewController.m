//
//  QYViewController.m
//  QYCategorys
//
//  Created by qiaoy on 05/09/2017.
//  Copyright (c) 2017 qiaoy. All rights reserved.
//

#import "QYViewController.h"
#import "QYCategorys/QYCategorys.h"

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    testLabel.size = CGSizeMake(100, 30);
    testLabel.center = self.view.center;
    testLabel.text = [@"test" isValid] ? @"YES" : @ "NO";
    testLabel.textColor = [UIColor colorWithHexString:@"#ae3d5c"];
    testLabel.font = [UIFont systemFontOfSize:16.f];
    
    [self.view addSubview:testLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
