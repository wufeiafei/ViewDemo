//
//  ViewController.m
//  ViewDemo
//
//  Created by Kevin on 2017/2/12.
//  Copyright © 2017年 Kevin. All rights reserved.
//

#import "ViewController.h"
#import "HHView.h"

@interface ViewController ()

@property(nonatomic,strong) HHView *hView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"view demo";
    
    
    [self initSubview];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -- init

-(void)initSubview
{

    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(10, 10, self.view.frame.size.width -20, 50);
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    self.hView.frame = CGRectMake(10, 80, self.view.frame.size.width -20, 50);
   
    [self.view addSubview:self.hView];

}


#pragma mark -- getter
-(HHView*)hView
{

    if (!_hView) {
        _hView = [[HHView alloc] init];
        _hView.backgroundColor = [UIColor blueColor];
    }

    return _hView;
}

@end
