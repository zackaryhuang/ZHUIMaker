//
//  ZHImageViewPropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "ZHImageViewPropertyMaker.h"

@implementation ZHImageViewPropertyMaker

- (ZHImageViewPropertyMaker * _Nonnull (^)(UIImage * _Nonnull))image {
    return ^ZHImageViewPropertyMaker *(UIImage *image) {
        [(UIImageView *)self.view setImage:image];
        return self;
    };
}

- (ZHImageViewPropertyMaker * _Nonnull (^)(NSArray<UIImage *> * _Nonnull))animationImages {
    return ^ZHImageViewPropertyMaker *(NSArray<UIImage *> *animationImages) {
        [(UIImageView *)self.view setAnimationImages:animationImages];
        return self;
    };
}

- (ZHImageViewPropertyMaker * _Nonnull (^)(NSTimeInterval))animationDuration {
    return ^ZHImageViewPropertyMaker *(NSTimeInterval animationDuration) {
        [(UIImageView *)self.view setAnimationDuration:animationDuration];
        return self;
    };
}

- (ZHImageViewPropertyMaker * _Nonnull (^)(NSInteger))animationRepeatCount {
    return ^ZHImageViewPropertyMaker *(NSInteger animationRepeatCount) {
        [(UIImageView *)self.view setAnimationRepeatCount:animationRepeatCount];
        return self;
    };
}
@end
