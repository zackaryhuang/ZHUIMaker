//
//  ZHLabelPropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "ZHLabelPropertyMaker.h"

@implementation ZHLabelPropertyMaker

- (ZHLabelPropertyMaker * _Nonnull (^)(NSString * _Nonnull))text {
    return ^ZHLabelPropertyMaker *(NSString *text) {
        [(UILabel *)self.view setText:text];
        return self;
    };
}


- (ZHLabelPropertyMaker * _Nonnull (^)(NSAttributedString * _Nonnull))attributedText {
    return ^ZHLabelPropertyMaker *(NSAttributedString *attributedText) {
        [(UILabel *)self.view setAttributedText:attributedText];
        return self;
    };
}

- (ZHLabelPropertyMaker * _Nonnull (^)(UIFont * _Nonnull))font {
    return ^ZHLabelPropertyMaker *(UIFont *font) {
        [(UILabel *)self.view setFont:font];
        return self;
    };
}

- (ZHLabelPropertyMaker * _Nonnull (^)(UIColor * _Nonnull))textColor {
    return ^ZHLabelPropertyMaker *(UIColor *textColor) {
        [(UILabel *)self.view setTextColor:textColor];
        return self;
    };
}

- (ZHLabelPropertyMaker * _Nonnull (^)(NSTextAlignment))textAlignment {
    return ^ZHLabelPropertyMaker *(NSTextAlignment textAlignment) {
        [(UILabel *)self.view setTextAlignment:textAlignment];
        return self;
    };
}

- (ZHLabelPropertyMaker * _Nonnull (^)(NSUInteger))numberOfLines {
    return ^ZHLabelPropertyMaker *(NSUInteger numberOfLines) {
        [(UILabel *)self.view setNumberOfLines:numberOfLines];
        return self;
    };
}
@end
