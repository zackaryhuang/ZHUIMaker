//
//  UIScrollView+PropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import "UIScrollView+PropertyMaker.h"

@implementation UIScrollView (PropertyMaker)

- (void)zh_makeScrollViewProperties:(void (NS_NOESCAPE^)(ZHScrollViewPropertyMaker * _Nonnull))properties {
    ZHScrollViewPropertyMaker *maker = [[ZHScrollViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)zh_makeScrollViewProperties:(void (NS_NOESCAPE^)(ZHScrollViewPropertyMaker * _Nonnull))properties
                      constrains:(void (NS_NOESCAPE^)(MASConstraintMaker * _Nonnull))constrains {
    ZHScrollViewPropertyMaker *maker = [[ZHScrollViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}
@end
