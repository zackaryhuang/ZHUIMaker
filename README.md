# ZHUIMaker

---

[![Version](https://img.shields.io/cocoapods/v/ZHUIMaker.svg?style=flat)](https://cocoapods.org/pods/ZHUIMaker)
[![License](https://img.shields.io/cocoapods/l/ZHUIMaker.svg?style=flat)](https://cocoapods.org/pods/ZHUIMaker)
[![Platform](https://img.shields.io/cocoapods/p/ZHUIMaker.svg?style=flat)](https://cocoapods.org/pods/ZHUIMaker)


A framework to declare UI elemet and set property for it with chain syntax grammar.

## Installation

ZHUIMaker is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ZHUIMaker'
```

## Example

```objc
#import "ViewController.h"
@import ZHUIMaker;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. The way we used to declare an UI element like this.
    UIButton *btn = [[UIButton alloc] init];
    btn.center = CGPointMake(self.view.center.x, self.view.center.y + 50);
    [self.view addSubview:btn];
    [btn setTitle:@"Click Me!" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor whiteColor];
    btn.layer.cornerRadius = 20;
    btn.layer.shadowOffset = CGSizeMake(0, 1);
    btn.layer.shadowColor = [UIColor blackColor].CGColor;
    btn.layer.shadowOpacity = 0.1;
    btn.layer.shadowRadius = 1;
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    // 2. A new way to declare UI element With ZHUIPropertyMaker
    UIButton *newBtn = [[UIButton alloc] init];
    [newBtn c]zh_makeButtonProperties:^(ZHButtonPropertyMaker *make) {
        make.title(@"Click Me").forState(UIControlStateNormal);
        make.titleColor(UIColor.blackColor).forState(UIControlStateNormal);
        make.cornerRadius(20);
        make.shadow(UIColor.blackColor, 0.1, CGSizeMake(0, 1), 1);
        make.superView(self.view);
       make.action(@selector(btnClick:)).withTarget(self).forEvent(UIControlEventTouchUpInside);
    } constrains:^(MASConstraintMaker *make) {
        make.width.equalTo(@100);
        make.height.equalTo(@40);
        make.top.equalTo(self.timeLabel.mas_bottom).offset(12);
        make.centerX.equalTo(self.view);
    }];
}

- (void)btnClick:(UIButton *)btn {
    // Button Click Action
}

```

## Dependency

`Masonry`

## Requirements

iOS 10 or later

## Author

Zackary Huang, huangchao0623@126.com

## License

ZHUIMaker is available under the MIT license. See the LICENSE file for more info.
