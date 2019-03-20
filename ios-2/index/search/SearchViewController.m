//
//  SearchViewController.m
//  ios-2
//
//  Created by Hangai Hang on 2019/3/13.
//  Copyright © 2019 Hangai Hang. All rights reserved.
//

#import "SearchViewController.h"
#import "../../ViewController.h"
@interface SearchViewController ()
@property UIButton * button;
@property UIView *viewss;
@property UIView * views;
@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(delView:)];
    
    self.viewss = [[UIView alloc]initWithFrame:CGRectMake(100,  100, 100 ,100)];
    
    self.viewss.backgroundColor = [UIColor yellowColor];
    
    [self.viewss addGestureRecognizer:tap];
    
    [self.view addSubview:self.viewss];
    
    for (int i = 0; i < 3; i++) {
        self.views = [[UIView alloc]initWithFrame:CGRectMake(100 * i, 100 + 100 * i, 100, 100)];
        self.views.backgroundColor = [UIColor redColor];
        [self.view addSubview:self.views];
        
    }
    
    
    
    
    
    
}

-(void)delView:(id)sender{
    
    NSLog(@"Zhang");
    [self.view removeFromSuperview];

}

@end
