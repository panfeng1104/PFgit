//
//  HomeViewController.m
//  大众点评
//
//  Created by qianfeng on 15/3/28.
//  Copyright (c) 2015年 王家伟. All rights reserved.
//

#import "HomeViewController.h"
#import "PFGPSViewController.h"
#import "PFSearchPageViewController.h"
#import "PFBroadcastPageViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor colorWithRed:0.752 green:0.661 blue:1.000 alpha:1.000];
    
    [self navigationUI];
    
}


-(void)navigationUI{
    //北京  在后来 设置为全局变量 由跳转到下一个页面 进行反向传值
    

    
//    self.navigationController.navigationBar.translucent = NO;
//    self.navigationController.navigationBar.backgroundColor = [UIColor redColor];
//    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.1 green:0.0 blue:0.0 alpha:1.000]];
    UIButton * button1= [UIButton buttonWithType:UIButtonTypeCustom];
//    UIEdgeInsets
    //button1.imageEdgeInsets = UIEdgeInsetsMake(0,0,60,0);

    button1.frame = CGRectMake(0,20 , 80, 24);
    [button1 setTitle:@"北京" forState:UIControlStateNormal];
    [button1 setImage:[UIImage imageNamed:@"navibar_icon_arrow_down@2x.png"] forState:UIControlStateNormal];
    
    button1.titleEdgeInsets = UIEdgeInsetsMake(0,-35,0,0);
    button1.imageEdgeInsets = UIEdgeInsetsMake(0,50 , -5, 0);
    [button1 addTarget:self action:@selector(jumpPage) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barButtonItem1= [[UIBarButtonItem alloc]initWithCustomView:button1];
    
    
    // 输入框------------- 其实就是一个button 跳转到下一个页面的 输入框
    
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(100,20 , 200, 24);
    [button2 setImage:[UIImage imageNamed:@"navibar_icon_search@2x.png"] forState:UIControlStateNormal];
    [button2 setTitle:@"输入商户名.地点" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(searchPage) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barButtonItem2 = [[UIBarButtonItem alloc]initWithCustomView:button2];
    
    UIBarButtonItem * spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceItem.width = -15;

    self.navigationItem.leftBarButtonItems = @[spaceItem,barButtonItem1,barButtonItem2];
    

    [spaceItem release];
    [barButtonItem1 release];
    [barButtonItem2 release];
    
    
    UIBarButtonItem *button3 = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"personal_icon_send@2x.png"] style:UIBarButtonItemStyleDone target:self action:@selector(broadcastPage)];
    
    self.navigationItem.rightBarButtonItem=button3;
    [button3 release];
    
    
    

}

#pragma mark -- 消息导航栏btn跳转
- (void)broadcastPage{
    
    PFBroadcastPageViewController *broadcast = [[PFBroadcastPageViewController alloc] init];
    
    [self.navigationController.view.layer addAnimation:[self createTransitionAnimation] forKey:nil];
    [self.navigationController pushViewController:broadcast animated:YES];
    [broadcast release];
}


#pragma mark -- 搜索导航栏btn跳转
-(void)searchPage{
    
    PFSearchPageViewController *searchPage = [[PFSearchPageViewController alloc] init];
    
    [self.navigationController.view.layer addAnimation:[self createTransitionAnimation] forKey:nil];
    
    [self.navigationController pushViewController:searchPage animated:YES];
    [searchPage release];
}

#pragma mark -- 定位地点 导航栏btn 跳转
- (void)jumpPage{
    
    PFGPSViewController *category = [[PFGPSViewController alloc] init];
    
    [self.navigationController.view.layer addAnimation:[self createTransitionAnimation] forKey:nil];
    [self.navigationController pushViewController:category animated:YES];
    [category release];
}



// 动画效果
/*
 动画类型
 fade 淡出效果
 moveIn 新视图移动到旧视图
 push   新视图推出旧视图
 reveal 移开旧视图
 cube   立方体翻转效果
 oglFlip    翻转效果
 suckEffect 收缩效果
 rippleEffect   水滴波纹效果
 pageCurl   向下翻页
 pageUnCurl 向上翻页
 */

-(CATransition *)createTransitionAnimation
{
    //切换之前添加动画效果
    //后面知识: Core Animation 核心动画
    //不要写成: CATransaction
    //创建CATransition动画对象
    CATransition *animation = [CATransition animation];
    //设置动画的类型:
    animation.type = @"CameraIrisHollowOpen";
    //设置动画的方向
    animation.subtype = kCATransitionFromBottom;
    //设置动画的持续时间
    animation.duration = 1.5;
    //设置动画速率(可变的)
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    //动画添加到切换的过程中
    return animation;
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
