//
//  HHView.m
//  ViewDemo
//
//  Created by Kevin on 2017/2/12.
//  Copyright © 2017年 Kevin. All rights reserved.
//

#import "HHView.h"


@interface HHView()

@property(nonatomic,strong) UIView *aView;

@end

@implementation HHView
#pragma mark -- init lifecycle

-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        /* 添加子控件的代码*/
        
        [self m_init];
        
    }
    return self;
    
}


#pragma mark -- init

-(void)m_init
{


    [self addSubview:self.aView];
    
}



- (void)layoutSubviews {
    // 一定要调用super的方法
    [super layoutSubviews];
    
    // 确定子控件的frame（这里得到的self的frame/bounds才是准确的）
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    self.aView.frame = CGRectMake(10, 10,height -15, height-15);
    
    NSLog(@"w:%f",width);
    NSLog(@"width:%f",self.aView.frame.size.width);
    
    NSLog(@"h:%f",height);
    NSLog(@"height:%f",self.aView.frame.size.height);
    
}


#pragma mark -- getter
-(UIView*)aView
{
    if (!_aView) {
        
        _aView = [[UIView alloc] init];
        _aView.backgroundColor = [UIColor greenColor];
        
    }
    return _aView;

}

@end
