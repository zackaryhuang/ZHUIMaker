//
//  UICollectionView+PropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import "UICollectionView+PropertyMaker.h"

@implementation UICollectionView (PropertyMaker)

- (void)zh_makeCollectionViewProperties:(void (NS_NOESCAPE^)(ZHCollectionViewPropertyMaker * _Nonnull))properties {
    ZHCollectionViewPropertyMaker *maker = [[ZHCollectionViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)zh_makeCollectionViewProperties:(void (NS_NOESCAPE^)(ZHCollectionViewPropertyMaker * _Nonnull))properties
                            constrains:(void (NS_NOESCAPE^)(MASConstraintMaker * _Nonnull))constrains {
    ZHCollectionViewPropertyMaker *maker = [[ZHCollectionViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}

@end
