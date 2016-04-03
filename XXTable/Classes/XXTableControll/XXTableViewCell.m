//
//  XXTableViewCell.m
//  XXTable
//
//  Created by lxx on 16/3/7.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "XXTableViewCell.h"
#define XXWidth self.bounds.size.width
#define DefInter 100
@implementation XXTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{

    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _image=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, XXWidth, 150)];
        _image.image=[UIImage imageNamed:@"tmall_icon_cat_outing_1"];
        [self.contentView addSubview:_image];
        
        for (NSInteger i=0; i<3; i++) {
            ButtonNormal *but=[ButtonNormal buttonWithType:UIButtonTypeCustom];
            but.frame=CGRectMake(i*(XXWidth/4), 150, XXWidth/4, 80);
            but.tag=DefInter+i;
            [but setTitle:[NSString stringWithFormat:@"an%d",i] forState:UIControlStateNormal];
            [but setImage:[UIImage imageNamed:@"tmall_icon_cat_outing_1"] forState:UIControlStateNormal];
            [but addTarget:self action:@selector(butClick:) forControlEvents:UIControlEventTouchUpInside];
            [self.contentView addSubview:but];
        }
        
        
    }

    return self;
}
-(void)butClick:(ButtonNormal *)button
{
    NSInteger index=_Rows*3+button.tag-DefInter;

    [self.delegate XXTableCell:self didSeletedAtIndex:index];
}
@end
