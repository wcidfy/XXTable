//
//  ButtonNormal.m
//  XXTable
//
//  Created by lxx on 16/3/7.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "ButtonNormal.h"

@implementation ButtonNormal

-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        // 2）文字对齐方式
        [self.titleLabel setTextAlignment:NSTextAlignmentCenter];
        // 3) 文字的字体
        [self.titleLabel setFont:[UIFont systemFontOfSize:14]];
        
        // 2. 设置图片的属性
        // 设置图片的等比例显示
        [self.imageView setContentMode:UIViewContentModeScaleAspectFit];
    }

    return self;

}
-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
     CGFloat imagew=contentRect.size.width*0.5;
    CGFloat titleW=contentRect.size.width-imagew;
    return CGRectMake(imagew, 0,titleW, 30);

}

-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imagew=contentRect.size.width*0.5;
    return CGRectMake(0, 0,imagew , 30);}
@end
