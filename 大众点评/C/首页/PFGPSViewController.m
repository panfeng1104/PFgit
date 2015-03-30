//
//  PFGPSViewController.m
//  大众点评
//
//  Created by 潘峰 on 15/3/29.
//  Copyright (c) 2015年 王家伟. All rights reserved.
//

#import "PFGPSViewController.h"

@interface PFGPSViewController ()

@property (nonatomic, retain)UIButton *button3;

@property (nonatomic, retain)UIButton *button4;

@end

@implementation PFGPSViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.view.backgroundColor = [UIColor greenColor];
    
    
    
    
    [self navigationUI];
    
    
}




-(void)navigationUI{
   
    self.navigationItem.hidesBackButton =YES;
    UIBarButtonItem *button = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"purchase_failed@2x.png"] style:UIBarButtonItemStyleDone target:self action:@selector(rootPage)];
    
    self.navigationItem.leftBarButtonItem=button;
    [button release];
    
    
    _button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [_button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _button3.tag = 100;
    _button3.backgroundColor = [UIColor redColor];
    [_button3 addTarget:self action:@selector(btnClick1) forControlEvents:UIControlEventTouchUpInside];
    _button3.titleLabel.font = [UIFont systemFontOfSize:14];
    _button3.frame = CGRectMake(100,10, 60, 25);
    [_button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_button3 setTitle:@"全部" forState:UIControlStateNormal];
    [self.navigationController.navigationBar addSubview:_button3];
    
    
    _button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [_button4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    _button4.backgroundColor = [UIColor whiteColor];
    
    [_button4 addTarget:self action:@selector(btnClick2) forControlEvents:UIControlEventTouchUpInside];
    _button4.titleLabel.font = [UIFont systemFontOfSize:14];
    _button4.frame = CGRectMake(160,10, 60, 25);
    [_button4 setTitle:@"海外" forState:UIControlStateNormal];
    [_button4 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.navigationController.navigationBar addSubview:_button4];
    
    
    
}

- (void)btnClick1{
    
    _button3.backgroundColor = [UIColor redColor];
    [_button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _button4.backgroundColor = [UIColor whiteColor];
    [_button4 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    

}

- (void)btnClick2{
    [_button4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _button4.backgroundColor = [UIColor redColor];
    _button3.backgroundColor = [UIColor whiteColor];
    [_button3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    
}




- (void)rootPage{
    
//    [_button3 release];
//    [_button4 release];
    [_button3 removeFromSuperview];
    [_button4 removeFromSuperview];
    [self.navigationController popViewControllerAnimated:YES];
    //self.navigationController.navigationBar.hidden = YES;

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
