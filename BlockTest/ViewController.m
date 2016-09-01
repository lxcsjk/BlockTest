//
//  ViewController.m
//  BlockTest
//
//  Created by LXC on 16/8/28.
//  Copyright © 2016年 LXC. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"

@interface ViewController ()

{
    UILabel *valueLabel;// 来接收SecondViewController传回的值
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    valueLabel = [[UILabel alloc]init];
     NSLog(@"%@===========",valueLabel.text);
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor orangeColor];
    [self addBarBtnItemWithTitle:@"11" withImageName:nil withPosition:LEFT_BARITEM];

    [self addBarBtnItemWithTitle:@"22" withImageName:nil withPosition:RIGHT_BARITEM];

    [self addTitleView:@"bLOCK" withColor:0];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)leftClick{
    
    NSLog(@"子类需要重写这个方法 左边按钮");
}

-(void)rightClick{
    BViewController *svc = [[BViewController alloc] init];
    svc.backValue = ^(NSString *strValue) {//设置SecondViewController 边的block属性,
        valueLabel.text = strValue;
        NSLog(@"%@strValue",strValue);
    };
    [self.navigationController pushViewController:svc animated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBar.hidden = NO;
    NSLog(@"%@AAAAAAAAAAAAAAAAAA",valueLabel.text);

}

@end
