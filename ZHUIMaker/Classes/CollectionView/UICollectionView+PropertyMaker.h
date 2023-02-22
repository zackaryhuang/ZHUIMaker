//
//  UICollectionView+PropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import <UIKit/UIKit.h>
#import "ZHCollectionViewPropertyMaker.h"
@import Masonry;
NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (PropertyMaker)

- (void)zh_makeCollectionViewProperties:(void(NS_NOESCAPE ^)(ZHCollectionViewPropertyMaker *make))properties;

/// 创建 ScrollView
/// @param properties 样式
/// @param constrains 约束
- (void)zh_makeCollectionViewProperties:(void(NS_NOESCAPE ^)(ZHCollectionViewPropertyMaker *make))properties
                      constrains:(void(NS_NOESCAPE ^)(MASConstraintMaker *make))constrains;

@end

NS_ASSUME_NONNULL_END
