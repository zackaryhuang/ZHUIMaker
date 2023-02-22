//
//  UIView+PropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "UIView+PropertyMaker.h"

@implementation UIView (PropertyMaker)

- (void)zh_makeProperties:(void (^)(ZHViewPropertyMaker *))properties {
//    UIView *view = [[UIView alloc] init];
    ZHViewPropertyMaker *maker = [[ZHViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
//    return view;
}

- (void)zh_makeProperties:(void (^)(ZHViewPropertyMaker *))properties
            constrains:(void (^)(MASConstraintMaker *))constrains {
//    UIView *view = [[UIView alloc] init];
    ZHViewPropertyMaker *maker = [[ZHViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
//    return view;
}
@end
