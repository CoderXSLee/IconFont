//
//  ViewController.m
//  IconFont
//
//  Created by Ariel on 15/7/22.
//  Copyright (c) 2015年 李雪松. All rights reserved.
//

#ifdef DEBUG
#define XSLog(...) NSLog(__VA_ARGS__)
#else
#define XSLog(...)
#endif

//#define IOS7  ([[[[UIDevice currentDevice]systemVersion]substringToIndex:1] doubleValue]>=7)
//
#define APP_SCREEN_BOUNDS   [[UIScreen mainScreen] bounds]
//#define APP_SCREEN_HEIGHT   (APP_SCREEN_BOUNDS.size.height)
#define APP_CONTENT_WIDTH   (APP_SCREEN_BOUNDS.size.width)
//#define APP_STATUS_FRAME    [UIApplication sharedApplication].statusBarFrame
//#define APP_CONTENT_HEIGHT  (IOS7?(APP_SCREEN_BOUNDS.size.height):(APP_SCREEN_BOUNDS.size.height-APP_STATUS_FRAME.size.height))

//RGB 三个参数数值相同
#define UIColorFromSameRGB(r) \
[UIColor colorWithRed:(r)/255.0f green:(r)/255.0f blue:(r)/255.0f alpha:1]

//RGB 三个参数数值相同带alpha
#define UIColorFromSameRGBA(r,a) \
[UIColor colorWithRed:(r)/255.0f green:(r)/255.0f blue:(r)/255.0f alpha:(a)]

//RGB 三个参数数值不相同
#define UIColorFromRGB(r,g,b) \
        [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]

//RGB 三个参数数值不相同带alpha
#define UIColorFromRGBA(r,g,b,a) \
        [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]




#import "ViewController.h"
#import "FontCodes.h"
#import "UIButton+XS.h"

@interface ViewController ()
{
    UIButton *_setupBtn;
    UILabel *_label3;
    UILabel *_label2;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColorFromRGB(187,210,198);
    
    UIButton *setupBtn = [[UIButton alloc] init];
    setupBtn.frame = CGRectMake(50, 100, 44, 44);
    setupBtn.backgroundColor = [UIColor clearColor];
    [setupBtn setTitleFontSize:30]; // 按钮文字的大需用此方法设置。内部设置了字体
    [setupBtn setTitleColor:UIColorFromRGB(62, 68, 79) forState:UIControlStateNormal];
    [setupBtn setTitle:setupFont forState:UIControlStateNormal];
    [setupBtn setTitleColor:UIColorFromRGB(248, 55, 10) forState:UIControlStateSelected];
    [setupBtn addTarget:self action:@selector(setupBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    _setupBtn = setupBtn;
    [self.view addSubview:_setupBtn];
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(APP_CONTENT_WIDTH-150, 300, 44, 44);
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"iconfonts" size:30];
    label.text = videoFont;
    [self.view addSubview:label];

    UILabel *label2 = [[UILabel alloc] init];
    label2.frame = CGRectMake(50, 200, APP_CONTENT_WIDTH, 44);
    label2.backgroundColor = [UIColor clearColor];
    label2.textColor = [UIColor grayColor];
    label2.font = [UIFont fontWithName:@"iconfonts" size:30];
    label2.text = [NSString stringWithFormat:@"%@ %@ %@", personFont, githubIconFont, weChatFriendFont];
    _label2 = label2;
    [self.view addSubview:_label2];
    
    UILabel *label3 = [[UILabel alloc] init];
    label3.hidden = YES;
    label3.frame = CGRectMake(50, 250, APP_CONTENT_WIDTH, 44);
    label3.backgroundColor = [UIColor clearColor];
    label3.text = @"我们都是字体，并非图片哦~";
    _label3 = label3;
    [self.view addSubview:_label3];
    
}


- (void)setupBtnClick:(UIButton *)sender {
    sender.selected = !sender.selected;
    _label3.hidden = !_label3.hidden;
    if (_label2.textColor == [UIColor grayColor]) {
        _label2.textColor = [UIColor blackColor];
    }else {
        _label2.textColor = [UIColor grayColor];
    }
    
    XSLog(@"setupBtnClick!");
}

@end
