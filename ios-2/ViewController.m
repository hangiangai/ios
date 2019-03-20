//
//  ViewController.m
//  ios-2
//
//  Created by Hangai Hang on 2019/3/6.
//  Copyright © 2019 Hangai Hang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate,UITextViewDelegate>
@property (strong,nonatomic) UILabel * label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor redColor];
    [self createLabel:100];
    [self createButton:300];
    
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

//创建blabel
-(void)createLabel:(int)index{
    //获取屏幕信息
    CGRect scren = [[UIScreen mainScreen]bounds];
    CGFloat labelWidth = 90;
    CGFloat labelHeight = 40;
    CGFloat labelTop = index;
    CGRect fram = CGRectMake((scren.size.width - labelWidth)/2, labelTop, labelWidth, labelHeight);
    self.label = [[UILabel alloc]initWithFrame:fram];
    self.label.backgroundColor = [UIColor yellowColor];
    self.label.text = @"Hello World";
    self.label.textAlignment = NSTextAlignmentCenter;

    [self.view addSubview:self.label];
}
//创建button
-(void)createButton:(int)index{
    CGRect scren = [[UIScreen mainScreen]bounds];
    CGFloat labelWidth = 90;
    CGFloat labelHeight = 40;
    CGFloat labelTop = index;
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    //设置button标题
    [button setTitle:@"Ok" forState:UIControlStateNormal];
    //设置title颜色
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //设置背景颜色
    button.backgroundColor = [UIColor blueColor];
    //按钮位置
    button.frame = CGRectMake((scren.size.width - labelWidth)/2, labelTop, labelWidth, labelHeight);
    //事件绑定
    [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

//textView
-(void)createTextField{
    CGRect scren = [[UIScreen mainScreen]bounds];
    CGFloat labelWidth = 90;
    CGFloat labelHeight = 40;
    CGFloat labelTop = 300;
    UITextField * uiTextField = [[UITextField alloc]initWithFrame:CGRectMake(200, labelTop, labelWidth, labelHeight)];
    [self.view addSubview:uiTextField];
}

//
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"YES");
    return YES;
}

-(void)onClick:(id)sender{
    NSLog(@"test");
    self.label.text = @"zhang";
}


@end
