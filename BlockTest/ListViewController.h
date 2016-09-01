//
//  ListViewController.h
//  BlockTest
//
//  Created by LXC on 16/8/28.
//  Copyright © 2016年 LXC. All rights reserved.
//

#import <UIKit/UIKit.h>
//title的key
#define TITLE @"TITLE"
//navgationBar 的title 的key
#define NAV_TITLE @"NAV_TITLE"
//tabar的title的key
#define TAB_TITLE @"TAB_TITLE"
//tabarItem 的图片属性
#define TABAR_ITEM_IMAGE @"TABAR_ITEM_IMAGE"

#define KWS(weakSelf) __weak typeof (&*self) weakSelf=self;

//颜色值
#define FUIColorFromRGB(rgbValue) [UIColor colorWithRed:70/255.0 green:136/255.0 blue:241/255.0 alpha:1.0]
#define TITLECOLOR FUIColorFromRGB(0x00aaea)

#define SCREENWIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREENHEIGHT ([UIScreen mainScreen].bounds.size.height)
#define RATES SCREENWIDTH/375

#define LEFT_BARITEM 1
#define RIGHT_BARITEM 2

//#define URL27 @"http://demo.uwujie.com/koudai"
//#define URL27 @"https://w.tongyejia.com"
//#define URL27 @"http://127.0.0.1:8081/koudai"
#define GRAYCOLOR [UIColor colorWithRed:237/255.0 green:239/255.0 blue:240/255.0 alpha:1.0]
#define BTNTITLECOLOR [UIColor colorWithRed:247/255.0 green:63/255.0 blue:29/255.0 alpha:1.0]




@interface ListViewController : UIViewController
//设置导航栏左右按钮（一次只能设置一个）
-(void)addBarBtnItemWithTitle:(NSString *)title withImageName:(NSString *)itemName withPosition:(NSInteger)position;
-(void)addBarBtnItemWithTitle:(NSString *)title withNoImageName:(NSString *)imageName withPosition:(NSInteger)position;
-(void)addTitleView:(NSString *)title withColor:(NSInteger )colorNum;
-(void)leftClick;
-(void)rightClick;

@end
