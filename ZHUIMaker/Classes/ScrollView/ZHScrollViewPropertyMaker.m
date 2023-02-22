//
//  ZHScrollViewPropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import "ZHScrollViewPropertyMaker.h"

@implementation ZHScrollViewPropertyMaker

- (ZHScrollViewPropertyMaker * _Nonnull (^)(id<UIScrollViewDelegate> _Nonnull))delegate {
    return ^ZHScrollViewPropertyMaker *(id<UIScrollViewDelegate> delegate) {
        [(UIScrollView *)self.view setDelegate:delegate];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(CGPoint))contentOffset {
    return ^ZHScrollViewPropertyMaker *(CGPoint contentOffset) {
        [(UIScrollView *)self.view setContentOffset:contentOffset];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(CGSize))contentSize {
    return ^ZHScrollViewPropertyMaker *(CGSize contentSize) {
        [(UIScrollView *)self.view setContentSize:contentSize];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(UIEdgeInsets))contentInset {
    return ^ZHScrollViewPropertyMaker *(UIEdgeInsets contentInset) {
        [(UIScrollView *)self.view setContentInset:contentInset];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(BOOL))bounces {
    return ^ZHScrollViewPropertyMaker *(BOOL bounces) {
        [(UIScrollView *)self.view setBounces:bounces];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(BOOL))alwaysBounceVertical {
    return ^ZHScrollViewPropertyMaker *(BOOL alwaysBounceVertical) {
        [(UIScrollView *)self.view setAlwaysBounceVertical:alwaysBounceVertical];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(BOOL))alwaysBounceHorizontal {
    return ^ZHScrollViewPropertyMaker *(BOOL alwaysBounceHorizontal) {
        [(UIScrollView *)self.view setAlwaysBounceHorizontal:alwaysBounceHorizontal];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(BOOL))pagingEnabled {
    return ^ZHScrollViewPropertyMaker *(BOOL pagingEnabled) {
        [(UIScrollView *)self.view setPagingEnabled:pagingEnabled];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(BOOL))scrollEnabled {
    return ^ZHScrollViewPropertyMaker *(BOOL scrollEnabled) {
        [(UIScrollView *)self.view setScrollEnabled:scrollEnabled];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(BOOL))showsVerticalScrollIndicator {
    return ^ZHScrollViewPropertyMaker *(BOOL showsVerticalScrollIndicator) {
        [(UIScrollView *)self.view setShowsVerticalScrollIndicator:showsVerticalScrollIndicator];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(BOOL))showsHorizontalScrollIndicator {
    return ^ZHScrollViewPropertyMaker *(BOOL showsHorizontalScrollIndicator) {
        [(UIScrollView *)self.view setShowsVerticalScrollIndicator:showsHorizontalScrollIndicator];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(UIScrollViewIndicatorStyle))indicatorStyle {
    return ^ZHScrollViewPropertyMaker *(UIScrollViewIndicatorStyle indicatorStyle) {
        [(UIScrollView *)self.view setIndicatorStyle:indicatorStyle];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(UIEdgeInsets))verticalScrollIndicatorInsets {
    return ^ZHScrollViewPropertyMaker *(UIEdgeInsets verticalScrollIndicatorInsets) {
        [(UIScrollView *)self.view setVerticalScrollIndicatorInsets:verticalScrollIndicatorInsets];
        return self;
    };
}

- (ZHScrollViewPropertyMaker * _Nonnull (^)(UIEdgeInsets))horizontalScrollIndicatorInsets {
    return ^ZHScrollViewPropertyMaker *(UIEdgeInsets horizontalScrollIndicatorInsets) {
        [(UIScrollView *)self.view setHorizontalScrollIndicatorInsets:horizontalScrollIndicatorInsets];
        return self;
    };
}
@end
