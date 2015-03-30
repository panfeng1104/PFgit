//
//  WJWRootViewController.m
//  大众点评
//
//  Created by MS on 15-1-23.
//  Copyright (c) 2015年 wjw. All rights reserved.
//

#import "WJWRootViewController.h"

@interface WJWRootViewController ()

@end

@implementation WJWRootViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"drawbg.png"] forBarMetrics:UIBarMetricsDefault];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
