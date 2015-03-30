//
//  WJWMainViewController.m
//  大众点评
//
//  Created by MS on 15-1-23.
//  Copyright (c) 2015年 wjw. All rights reserved.
//

#import "WJWMainViewController.h"
#import "HomeViewController.h"
#import "BuyViewController.h"
#import "MeViewController.h"
#import "FindViewController.h"
#import "CustomtabBar.h"
@interface WJWMainViewController ()

@end

@implementation WJWMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    HomeViewController *homeViewController = [[HomeViewController alloc] init];
    BuyViewController *buyController = [[BuyViewController alloc]init];
    
    FindViewController *findViewController = [[FindViewController alloc]init];
    
    MeViewController *meViewController = [[MeViewController alloc]init];
    
    
    
    
    homeViewController.hidesBottomBarWhenPushed=true;
    buyController.hidesBottomBarWhenPushed=true;
    findViewController.hidesBottomBarWhenPushed=true;
    meViewController.hidesBottomBarWhenPushed=true;

    //homeViewController.title = @"输入商户名.地点";
    buyController.title = @"团购";
    findViewController.title = @"发现";
    meViewController.title = @"我的";
    
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:homeViewController ];
    
    UINavigationController *nav2 = [[ UINavigationController alloc] initWithRootViewController:buyController];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:findViewController];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:meViewController];
    
    [homeViewController release];
    [buyController release];
    [findViewController release];
    [meViewController release];
    NSMutableArray *controllers = [[NSMutableArray alloc]init];
    [controllers addObject:nav1];
    [controllers addObject:nav2];
    [controllers addObject:nav3];
    [controllers addObject:nav4];
    [nav1 release];
    [nav2 release];
    [nav3 release];
    [nav4 release];
    //创建tabbar
    CustomtabBar *tabBarContronller = [[CustomtabBar alloc]init];
    
    tabBarContronller.viewControllers = controllers;
    tabBarContronller.selectedIndex = 0;
    //    给导航设置北京色
//     [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.141 green:0.851 blue:1.000 alpha:1.000]];
    
//    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"顶变按钮"] forBarMetrics:UIBarMetricsLandscapePhonePrompt];
    
    
//    _tabBarView.image = [UIImage imageNamed:@"buttomImg.png"];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"drawbg.png"] forBarMetrics:UIBarMetricsDefault];
    [self.view addSubview:tabBarContronller.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
