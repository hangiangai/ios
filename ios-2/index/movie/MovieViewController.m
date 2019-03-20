//
//  MovieViewController.m
//  ios-2
//
//  Created by Hangai Hang on 2019/3/13.
//  Copyright © 2019 Hangai Hang. All rights reserved.
//

#import "MovieViewController.h"

@interface MovieViewController ()
@property (strong,nonatomic)UITableView * table;
@end

@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.table.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.table];
    
}

@end
