//
//  UIButton+PropertyMaker.h
//  ZHUIPropertyMaker
//b
//  Created by Zackary Huang on 2021/4/19.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ZHButtonPropertyMaker.h"

@interface UIButton (PropertyMaker)

- (void)zh_makeButtonProperties:(void(^)(ZHButtonPropertyMaker *make))properties;

- (void)zh_makeButtonProperties:(void(^)(ZHButtonPropertyMaker *make))properties constrains:(void(^)(MASConstraintMaker *make))constrains;

@end
