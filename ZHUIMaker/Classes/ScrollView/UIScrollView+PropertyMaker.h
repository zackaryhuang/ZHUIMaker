//
//  UIScrollView+PropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import <UIKit/UIKit.h>
@import Masonry;
#import "ZHScrollViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (PropertyMaker)

- (void)zh_makeScrollViewProperties:(void(NS_NOESCAPE ^)(ZHScrollViewPropertyMaker *make))properties;

/// 创建 ScrollView
/// @param properties 样式
/// @param constrains 约束
- (void)zh_makeScrollViewProperties:(void(NS_NOESCAPE ^)(ZHScrollViewPropertyMaker *make))properties
                      constrains:(void(NS_NOESCAPE ^)(MASConstraintMaker *make))constrains;

@end

NS_ASSUME_NONNULL_END
