//
//  XXTableViewCell.h
//  XXTable
//
//  Created by lxx on 16/3/7.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ButtonNormal.h"
@class XXTableViewCell;
@protocol CellDelegate <NSObject>

-(void)XXTableCell:(XXTableViewCell *)xxtableCell didSeletedAtIndex:(NSInteger )index;

@end

@interface XXTableViewCell : UITableViewCell

@property(nonatomic,weak)id<CellDelegate>delegate;
@property(nonatomic,strong)UIImageView *image;
@property(nonatomic,strong)ButtonNormal *button1;
@property(nonatomic,strong)ButtonNormal *button2;
@property(nonatomic,strong)ButtonNormal *button3;
@property(nonatomic,assign)NSInteger Rows;
@end
