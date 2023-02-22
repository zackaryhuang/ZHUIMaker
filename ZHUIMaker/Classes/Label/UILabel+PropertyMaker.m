//
//  UILabel+PropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "UILabel+PropertyMaker.h"

@implementation UILabel (PropertyMaker)

- (void)zh_makeLabelStyles:(void(^)(ZHLabelPropertyMaker *make))properties {
    ZHLabelPropertyMaker *maker = [[ZHLabelPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)zh_makeLabelProperties:(void(^)(ZHLabelPropertyMaker *make))properties constrains:(void(^)(MASConstraintMaker *make))constrains {
    ZHLabelPropertyMaker *maker = [[ZHLabelPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}

@end
