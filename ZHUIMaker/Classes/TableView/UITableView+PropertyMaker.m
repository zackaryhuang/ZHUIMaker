//
//  UITableView+PropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import "UITableView+PropertyMaker.h"

@implementation UITableView (PropertyMaker)
- (void)zh_makeTableViewProperties:(void (NS_NOESCAPE^)(ZHTableViewPropertyMaker * _Nonnull))properties {
    ZHTableViewPropertyMaker *maker = [[ZHTableViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)zh_makeTableViewProperties:(void (NS_NOESCAPE^)(ZHTableViewPropertyMaker * _Nonnull))properties
                      constrains:(void (NS_NOESCAPE^)(MASConstraintMaker * _Nonnull))constrains {
    ZHTableViewPropertyMaker *maker = [[ZHTableViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}
@end
