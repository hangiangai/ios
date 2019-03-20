//
//  LoginViewController.m
//  ios-2
//
//  Created by Hangai Hang on 2019/3/7.
//  Copyright © 2019 Hangai Hang. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()<UITextFieldDelegate,UITextViewDelegate>
@property (strong,nonatomic) UITextField * username;
@property (strong,nonatomic) UITextField * password;
@property (strong,nonatomic) UILabel * label;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect scren = [[UIScreen mainScreen]bounds];
    CGFloat labelWidth = 300;
    CGFloat labelHeight = 45;
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake((scren.size.width - labelWidth)/2, 100, 200, 200)];
    self.label.text = @"iclub603";

    self.label.font = [UIFont fontWithName:@"Marion" size:50];    
    
    //username
    self.username = [[UITextField alloc]initWithFrame:CGRectMake((scren.size.width - labelWidth)/2, 300, labelWidth, labelHeight)];
    self.username.delegate = self;
    self.username.borderStyle = UITextBorderStyleRoundedRect;
    self.username.placeholder = @"手机号/邮箱号";
    
    //password
    self.password = [[UITextField alloc]initWithFrame:CGRectMake((scren.size.width - labelWidth)/2, 360, labelWidth, labelHeight)];
    self.password.delegate = self;
    self.password.borderStyle = UITextBorderStyleRoundedRect;
    self.password.secureTextEntry = YES;
    self.password.placeholder = @"密码";
    
    //loginBtn
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"登录" forState:UIControlStateNormal]; //设置button标题
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];//设置title颜色
    button.backgroundColor = [UIColor redColor]; //设置背景颜色
    button.layer.shadowRadius = 3;//按钮位置
    button.layer.cornerRadius = 2;
    button.frame = CGRectMake((scren.size.width - labelWidth)/2, 415, labelWidth, labelHeight);
    [button addTarget:self action:@selector(dologin:) forControlEvents:UIControlEventTouchUpInside];
    
    //添加点击手势
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(closeKeyboard:)];
    
    
    [self.view addSubview:self.username];
    [self.view addSubview:self.password];
    [self.view addSubview:button];
    [self.view addSubview:self.label];
    [self.view addGestureRecognizer:tap];
    
}


//登陆验证
-(void)dologin:(id)sender{
    
    if([self.username.text isEqualToString:@"admin"]){
      
    }else{
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"错误" message:@"账号或密码错误" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * noAction = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction * yesAction = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:noAction];
        [alert addAction:yesAction];
        [self presentViewController:alert animated:true completion:nil];
    }
}

//
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"点击了Return");
    [textField resignFirstResponder];
    return YES;
}

//手势关闭键盘
-(void)closeKeyboard:(id)sender{
    [self.username resignFirstResponder];
    [self.password resignFirstResponder];
}
@end
