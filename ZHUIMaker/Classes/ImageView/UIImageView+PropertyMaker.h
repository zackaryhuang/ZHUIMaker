//
//  UIImageView+PropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import <UIKit/UIKit.h>
@import Masonry;
#import "ZHImageViewPropertyMaker.h"

@interface UIImageView (PropertyMaker)

- (void)zh_makeImageViewProperties:(void(NS_NOESCAPE ^)(ZHImageViewPropertyMaker *make))properties;

- (void)zh_makeImageViewProperties:(void(NS_NOESCAPE ^)(ZHImageViewPropertyMaker *make))properties constrains:(void(NS_NOESCAPE ^)(MASConstraintMaker *make))constrains;

@end
