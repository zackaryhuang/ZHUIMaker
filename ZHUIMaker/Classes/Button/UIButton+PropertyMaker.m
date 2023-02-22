//
//  UIButton+PropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "UIButton+PropertyMaker.h"

@implementation UIButton (PropertyMaker)

- (void)zh_makeButtonProperties:(void (^)(ZHButtonPropertyMaker *))properties {
    ZHButtonPropertyMaker *maker = [[ZHButtonPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)zh_makeButtonProperties:(void (^)(ZHButtonPropertyMaker *))properties
                  constrains:(void (^)(MASConstraintMaker *))constrains {
    ZHButtonPropertyMaker *maker = [[ZHButtonPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}
@end
