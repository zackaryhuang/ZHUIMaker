//
//  ZHButtonPropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "ZHButtonPropertyMaker.h"

@implementation ZHButtonPropertyMaker

- (ZHButtonActionProperty * _Nonnull (^)(SEL _Nonnull))action {
    return ^ZHButtonActionProperty *(SEL action) {
        ZHButtonActionProperty *buttonActionProperty = [[ZHButtonActionProperty alloc] initWithView:self.view action:action];
        return buttonActionProperty;
    };
}

- (ZHButtonProperty * _Nonnull (^)(UIColor * _Nonnull))titleColor {
    return ^ZHButtonProperty *(UIColor *titleColor){
        ZHButtonProperty *buttonStyle = [[ZHButtonProperty alloc] initWithView:self.view
                                                                    titleColor:titleColor];
        return buttonStyle;
    };
}

- (ZHButtonProperty * _Nonnull (^)(NSString * _Nonnull))title {
    return ^ZHButtonProperty *(NSString *title){
        ZHButtonProperty *buttonStyle = [[ZHButtonProperty alloc] initWithView:self.view
                                                                         title:title];
        return buttonStyle;
    };
}

- (ZHButtonProperty * _Nonnull (^)(UIImage * _Nonnull))image {
    return ^ZHButtonProperty *(UIImage *image) {
        ZHButtonProperty *buttonStyle = [[ZHButtonProperty alloc] initWithView:self.view
                                                                         image:image];
        return buttonStyle;
    };
}

- (ZHButtonProperty * _Nonnull (^)(NSAttributedString * _Nonnull))attributedTitle {
    return ^ZHButtonProperty *(NSAttributedString *attributedTitle) {
        ZHButtonProperty *buttonStyle = [[ZHButtonProperty alloc] initWithView:self.view
                                                               attributedTitle:attributedTitle];
        return buttonStyle;
    };
}
@end
