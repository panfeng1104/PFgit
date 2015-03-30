//
//  CustomtabBar.m
//  大众点评
//
//  Created by MS on 15-1-23.
//  Copyright (c) 2015年 wjw. All rights reserved.
//

#import "CustomtabBar.h"

@interface CustomtabBar ()
@property (nonatomic, retain) UILabel *label;

@end

@implementation CustomtabBar
@synthesize label = _label;
@synthesize tabBarView = _tabBarView;
@synthesize previousBtn = _previousBtn;
- (void)dealloc{
    [_label release];
    [_previousBtn release];
    [_tabBarView release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.hidden = YES;
    CGFloat tabBarViewY = self.view.frame.size.height - 49;
    _tabBarView =[[UIImageView alloc] initWithFrame:CGRectMake(0, tabBarViewY, 320, 49)];
    //这一步一定要设置为YES否则不能和用户交互
    _tabBarView.userInteractionEnabled = YES;
    //    背景图片
    _tabBarView.image = [UIImage imageNamed:@"AppBar_DetailPage_BG_5_4"];
    
    [self.view addSubview:_tabBarView];
    
    [self creatButtonWithNormalName:@"home_footbar_icon_dianping@2x" andSelectName:@"home_footbar_icon_dianping_pressed@2x.png" andIndex:0];
    
    [self creatButtonWithNormalName:@"home_footbar_icon_group@2x.png" andSelectName:@"home_footbar_icon_group_pressed@2x.png" andIndex:1];
    
    [self creatButtonWithNormalName:@"home_footbar_icon_found@2x.png" andSelectName:@"home_footbar_icon_found_pressed@2x.png" andIndex:2];
    
    [self creatButtonWithNormalName:@"home_footbar_icon_my@2x.png" andSelectName:@"home_footbar_icon_my_pressed@2x.png" andIndex:3];
    
    
    
    UIButton *btn = _tabBarView.subviews[0];
    [self changeViewController:btn];
}
- (void)creatButtonWithNormalName:(NSString *)normal andSelectName:(NSString *)selected andIndex:(int)index

{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.tag = index;
    
    CGFloat buttonW = _tabBarView.frame.size.width / 4;
    
    CGFloat buttonH = _tabBarView.frame.size.height;
    
    
   
    button.frame = CGRectMake(80 * index, -5, buttonW, buttonH);
    
    [button setImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
    
    [button setImage:[UIImage imageNamed:selected]
            forState:UIControlStateDisabled];
    
    
    
    
    [button addTarget:self action:@selector(changeViewController:) forControlEvents:UIControlEventTouchDown];
    
    
    
    [_tabBarView addSubview:button];
     NSArray *array = @[@"首 页",@"团 购",@"发 现",@"我 的"];
    for (int i = 0; i<array.count; i++) {
       
        _label = [[UILabel alloc]initWithFrame:CGRectMake(80*i+5, 35, buttonW-11, 12)];
        
        _label.text = array[i];
        _label.font = [UIFont systemFontOfSize:9];
        _label.textColor = [UIColor lightGrayColor];
        _label.textAlignment = NSTextAlignmentCenter;
        
        [_tabBarView addSubview:_label];
    }

    
}
- (void)changeViewController:(UIButton *)sender

{
    
    self.selectedIndex = sender.tag;
    
    sender.enabled = NO;
    
    if (_previousBtn != sender) {
        _previousBtn.enabled = YES;
    }
    
    _previousBtn = sender;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end





















