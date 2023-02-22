//
//  UIView+PropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import <UIKit/UIKit.h>
#import "ZHViewPropertyMaker.h"
#import <Masonry/Masonry.h>

@interface UIView (PropertyMaker)

- (void)zh_makeProperties:(void(^)(ZHViewPropertyMaker *make))properties;

- (void)zh_makeProperties:(void(^)(ZHViewPropertyMaker *make))properties constrains:(void(^)(MASConstraintMaker *make))constrains;

@end
