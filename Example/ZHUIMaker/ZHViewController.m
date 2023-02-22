//
//  ZHViewController.m
//  ZHUIMaker
//
//  Created by Zackary Huang on 02/22/2023.
//  Copyright (c) 2023 Zackary Huang. All rights reserved.
//

#import "ZHViewController.h"
@import ZHUIMaker;

@interface ZHViewController ()

@end

@implementation ZHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 使用 ZHUIPropertyMaker 声明
    UIView *view = [[UIView alloc] init];
    [view zh_makeProperties:^(ZHViewPropertyMaker *make) {
        make.superView(self.view);
        make.backgroundColor(UIColor.redColor);
        make.cornerRadius(10);
        make.clipToBounds(YES);
    } constrains:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.height.equalTo(@100);
    }];
    
    UILabel *label = [[UILabel alloc] init];
    [label zh_makeLabelProperties:^(ZHLabelPropertyMaker *make) {
        make.text(@"this is a test label");
        make.textAlignment(NSTextAlignmentCenter);
        make.backgroundColor(UIColor.blueColor);
        make.font([UIFont systemFontOfSize:12]);
        make.textColor(UIColor.yellowColor);
        make.superView(view);
    } constrains:^(MASConstraintMaker *make) {
        make.center.equalTo(view);
    }];
    
    UIButton *btn = [[UIButton alloc] init];
    [btn zh_makeButtonProperties:^(ZHButtonPropertyMaker *make) {
        make.image([UIImage imageNamed:@"btn_star"]).forState(UIControlStateNormal);
        make.image([UIImage imageNamed:@"btn_starred"]).forState(UIControlStateSelected);
        make.action(@selector(star:)).withTarget(self).forEvent(UIControlEventTouchUpInside);
        make.superView(self.view);
    } constrains:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_bottom).offset(5);
        make.width.height.equalTo(@30);
        make.centerX.equalTo(view);
    }];
    
    UIImageView *imgView = [[UIImageView alloc] init];
    [imgView zh_makeImageViewProperties:^(ZHImageViewPropertyMaker *make) {
        make.image([UIImage imageNamed:@"btn_star"]);
        make.backgroundColor(UIColor.cyanColor);
        make.superView(self.view);
    } constrains:^(MASConstraintMaker *make) {
        make.top.equalTo(btn.mas_bottom).offset(6);
        make.width.height.equalTo(@30);
        make.centerX.equalTo(view);
    }];
}

- (void)btnClick:(UIButton *)btn {
    // Button Click Action
}

- (void)star:(id)sender {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
