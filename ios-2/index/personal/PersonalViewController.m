//
//  PersonalViewController.m
//  ios-2
//
//  Created by Hangai Hang on 2019/3/13.
//  Copyright © 2019 Hangai Hang. All rights reserved.
//

#import "PersonalViewController.h"
#import "../login/LoginViewController.h"

@interface PersonalViewController ()

@end

@implementation PersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    CGRect scren = [[UIScreen mainScreen]bounds];
    NSLog(@"%f",scren.size.width);
    //userinfo
    UIView * userBox = [[UIView alloc]initWithFrame:CGRectMake(0, 0, scren.size.width, 300)];
    userBox.backgroundColor = [UIColor colorWithRed:81.0/255.0 green:176.0/255.0 blue:59.0/255.0 alpha:1.0];
    [self.view addSubview:userBox];
    
    
    //头像
    UIImageView * image = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
    image.backgroundColor = [UIColor redColor];
    [image setImage:[UIImage imageNamed:@"test.jpg"]];
    [self.view addSubview:image];
    
    
    CGFloat labelWidth = 300;
    CGFloat labelHeight = 45;
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Ok" forState:UIControlStateNormal]; //设置button标题
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];//设置title颜色
    button.backgroundColor = [UIColor redColor]; //设置背景颜色
    button.layer.shadowRadius = 3;//按钮位置
    button.layer.cornerRadius = 2;
    button.frame = CGRectMake((scren.size.width - labelWidth)/2, 415, labelWidth, labelHeight);
    [button addTarget:self action:@selector(toPage:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

-(void)toPage:(id)sender{
    LoginViewController * login = [[LoginViewController alloc]init];
    [self.navigationController pushViewController:login animated:true];
}


@end
