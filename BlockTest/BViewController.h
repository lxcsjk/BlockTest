//
//  BViewController.h
//  BlockTest
//
//  Created by LXC on 16/8/28.
//  Copyright © 2016年 LXC. All rights reserved.
//

#import "ListViewController.h"

@interface BViewController : ListViewController

@property (nonatomic, copy) void (^backValue)(NSString *strValue);
@property (nonatomic, retain) UITextField *text;
@end
