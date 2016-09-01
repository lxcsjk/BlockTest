//
//  BViewController.m
//  BlockTest
//
//  Created by LXC on 16/8/28.
//  Copyright © 2016年 LXC. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end



@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addBarBtnItemWithTitle:@"11" withImageName:nil withPosition:LEFT_BARITEM];
    
    [self addBarBtnItemWithTitle:@"22" withImageName:nil withPosition:RIGHT_BARITEM];

    
    self.view.backgroundColor = [UIColor whiteColor];
    _text = [[UITextField alloc] initWithFrame:CGRectMake(10, 50, 300, 40)];
    _text.borderStyle = UITextBorderStyleRoundedRect;
    _text.text = @"我我我我我我我哦哦哦哦哦哦哦哦";
    [self.view addSubview:_text];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)leftClick{
    NSLog(@"%@000000000--------",self.text.text);
    self.backValue(self.text.text);//调 block 法
    [self.navigationController popViewControllerAnimated:YES];
}


-(void)viewWillAppear:(BOOL)animated{
    
    self.navigationController.navigationBar.hidden = NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
