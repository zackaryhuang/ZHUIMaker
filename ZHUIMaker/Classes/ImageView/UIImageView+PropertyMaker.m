//
//  UIImageView+PropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "UIImageView+PropertyMaker.h"

@implementation UIImageView (PropertyMaker)

- (void)zh_makeImageViewProperties:(void (NS_NOESCAPE ^)(ZHImageViewPropertyMaker * _Nonnull))properties {
    ZHImageViewPropertyMaker *maker = [[ZHImageViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)zh_makeImageViewProperties:(void (NS_NOESCAPE ^)(ZHImageViewPropertyMaker * _Nonnull))properties
                   constrains:(void (NS_NOESCAPE ^)(MASConstraintMaker * _Nonnull))constrains {
    ZHImageViewPropertyMaker *maker = [[ZHImageViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}

@end
