//
//  UITableView+PropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import <UIKit/UIKit.h>
@import Masonry;
#import "ZHTableViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (PropertyMaker)

- (void)zh_makeTableViewProperties:(void(NS_NOESCAPE ^)(ZHTableViewPropertyMaker *make))properties;

/// 创建 ScrollView
/// @param properties 样式
/// @param constrains 约束
- (void)zh_makeTableViewProperties:(void(NS_NOESCAPE ^)(ZHTableViewPropertyMaker *make))properties
                      constrains:(void(NS_NOESCAPE ^)(MASConstraintMaker *make))constrains;

@end

NS_ASSUME_NONNULL_END
