//
//  XXNavViewController.m
//  XXTable
//
//  Created by lxx on 16/3/7.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "XXNavViewController.h"
#import "XXTableViewController.h"
@interface XXNavViewController ()
@property(nonatomic,strong)UIButton *but;
@end

@implementation XXNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"121324";
   _but=[self getButton];
    _but.frame=CGRectMake(100, 100, 100, 100);
    [_but setTitle:@"按钮" forState:UIControlStateNormal];
    [_but addTarget:self action:@selector(butClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_but];

}

-(void)butClick
{
    XXTableViewController *xxtable=[XXTableViewController new];
    [self presentViewController:xxtable animated:YES completion:nil];


}
-(UIButton *)getButton
{
    UIButton *but=[UIButton buttonWithType:UIButtonTypeCustom];
    but.backgroundColor=[UIColor orangeColor];
    [but setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [but.titleLabel setFont:[UIFont systemFontOfSize:14]];
    return but;
}


@end
