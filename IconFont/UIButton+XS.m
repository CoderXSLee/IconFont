//
//  UIButton+XS.m
//  IconFont
//
//  Created by Ariel on 15/7/22.
//  Copyright (c) 2015年 李雪松. All rights reserved.
//

#import "UIButton+XS.h"

#pragma mark - 字体名称
NSString * const iconFontName = @"iconfonts";

@implementation UIButton (XS)

- (void)setTitleFontSize:(CGFloat)size {
    self.titleLabel.font = [UIFont fontWithName:iconFontName size:size];
}

@end
