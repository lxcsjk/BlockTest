//
//  ListViewController.h
//  BlockTest
//
//  Created by LXC on 16/8/28.
//  Copyright © 2016年 LXC. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    ListViewController *vc = [[ListViewController alloc]init];
//    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
}


-(void)addTitleView:(NSString *)title withColor:(NSInteger )colorNum{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 130, 44)];
    label.text = title;
    label.font = [UIFont systemFontOfSize:17*RATES];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    self.navigationItem.titleView = label;
    
    if (colorNum == 0) {
        label.textColor = [UIColor whiteColor];
    }else if(colorNum == 1){
        label.textColor = [UIColor blackColor];
    }else if(colorNum == 2){
        label.textColor = [UIColor colorWithRed:197/255.0 green:64/255.0 blue:83/255.0 alpha:1.0];
    }
}





-(void)addBarBtnItemWithTitle:(NSString *)title withNoImageName:(NSString *)imageName withPosition:(NSInteger)position{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 44, 30)];
    if (title.length>0) {
        [btn setTitle:title forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        btn.titleLabel.font = [UIFont systemFontOfSize:12*RATES];
        
    }
    if (imageName.length>0) {
        [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    if (position == LEFT_BARITEM) {
        self.navigationItem.leftBarButtonItem = barBtn;
        [btn addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    }else{
        self.navigationItem.rightBarButtonItem = barBtn;
        [btn addTarget:self action:@selector(rightClick) forControlEvents:UIControlEventTouchUpInside];
    }
    
}

-(void)addBarBtnItemWithTitle:(NSString *)title withImageName:(NSString *)imageName withPosition:(NSInteger)position{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 21*RATES, 21*RATES)];
    if (title.length>0) {
        [btn setTitle:title forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        //        btn.titleLabel.font = [UIFont systemFontOfSize:26];
        
    }
    if (imageName.length>0) {
        [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    if (position == LEFT_BARITEM) {
        self.navigationItem.leftBarButtonItem = barBtn;
        [btn addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    }else{
        self.navigationItem.rightBarButtonItem = barBtn;
        [btn addTarget:self action:@selector(rightClick) forControlEvents:UIControlEventTouchUpInside];
    }
    
}



-(void)leftClick{
    
    NSLog(@"子类需要重写这个方法 左边按钮");
}

-(void)rightClick{
    NSLog(@"子类需要重写这个方法 右边按钮");
}


-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = YES;
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
