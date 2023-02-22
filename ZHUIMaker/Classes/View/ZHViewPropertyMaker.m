//
//  ZHViewPropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "ZHViewPropertyMaker.h"

@interface ZHViewPropertyMaker()

@property (nonatomic, weak) UIView *view;

@end

@implementation ZHViewPropertyMaker

- (instancetype)initWithView:(UIView *)view
{
    self = [super init];
    if (self) {
        self.view = view;
    }
    return self;
}


- (ZHViewPropertyMaker * _Nonnull (^)(UIView * _Nonnull))superView {
    return ^ZHViewPropertyMaker *(UIView *superView){
        if (superView) {
            [superView addSubview:self.view];
        }
        return self;
    };
}

- (ZHViewPropertyMaker * _Nonnull (^)(UIColor * _Nonnull))backgroundColor {
    return ^ZHViewPropertyMaker *(UIColor *backgroundColor) {
        self.view.backgroundColor = backgroundColor;
        return self;
    };
}

- (ZHViewPropertyMaker * _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^ZHViewPropertyMaker *(BOOL enable) {
        self.view.userInteractionEnabled = enable;
        return self;
    };
}

- (ZHViewPropertyMaker * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))frame {
    return ^ZHViewPropertyMaker *(CGFloat x, CGFloat y, CGFloat width, CGFloat height) {
        self.view.frame = CGRectMake(x, y, width, height);
        return self;
    };
}

- (ZHViewPropertyMaker * _Nonnull (^)(UIColor * _Nonnull, CGFloat, CGSize, CGFloat))shadow {
    return ^ZHViewPropertyMaker *(UIColor *shadowColor, CGFloat shadowOpacity, CGSize shadowOffset, CGFloat shadowRadius) {
        self.view.layer.shadowColor = shadowColor.CGColor;
        self.view.layer.shadowOpacity = shadowOpacity;
        self.view.layer.shadowOffset = shadowOffset;
        self.view.layer.shadowRadius = shadowRadius;
        return self;
    };
}

- (ZHViewPropertyMaker * _Nonnull (^)(id _Nonnull, SEL _Nonnull))tapGestureAction {
    return ^ZHViewPropertyMaker *(id target, SEL selector) {
        if (target) {
            UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:target action:selector];
            [self.view addGestureRecognizer:tapGesture];
        }
        return self;
    };
}

- (ZHViewPropertyMaker * _Nonnull (^)(id _Nonnull, SEL _Nonnull))longPressGestureAction {
    return ^ZHViewPropertyMaker *(id target, SEL selector) {
        if (target) {
            UILongPressGestureRecognizer *tapGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:target action:selector];
            [self.view addGestureRecognizer:tapGesture];
        }
        return self;
    };
}

- (ZHViewPropertyMaker * _Nonnull (^)(CGFloat))cornerRadius {
    return ^ZHViewPropertyMaker *(CGFloat cornerRadius) {
        if (cornerRadius > 0) {
            self.view.layer.cornerRadius = cornerRadius;
        }
        return self;
    };
}

- (ZHViewPropertyMaker * _Nonnull (^)(BOOL))clipToBounds {
    return ^ZHViewPropertyMaker *(BOOL clipToBounds) {
        [self.view setClipsToBounds:clipToBounds];
        return self;
    };
}
@end
