//
//  indexPageViewController.m
//  ios-2
//
//  Created by Hangai Hang on 2019/3/13.
//  Copyright © 2019 Hangai Hang. All rights reserved.
//

#import "indexPageViewController.h"
#import "personal/PersonalViewController.h"
#import "search/SearchViewController.h"
#import "movie/MovieViewController.h"

@interface indexPageViewController ()
@end

@implementation indexPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PersonalViewController * personal = [[PersonalViewController alloc]init];
    personal.tabBarItem.title = @"我的";
    SearchViewController * search = [[SearchViewController alloc]init];
    search.tabBarItem.title = @"找片";
    MovieViewController * movie = [[MovieViewController alloc]init];
    movie.tabBarItem.title = @"热映";
    self.viewControllers=@[movie,search,personal];
    
}

@end
