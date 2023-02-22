//
//  ZHLabelPropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "ZHViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHLabelPropertyMaker : ZHViewPropertyMaker

/// 文字
@property (nonatomic, copy, readonly) ZHLabelPropertyMaker *(^text)(NSString *text);

/// 文字
@property (nonatomic, copy, readonly) ZHLabelPropertyMaker *(^attributedText)(NSAttributedString *text);

/// 字体
@property (nonatomic, copy, readonly) ZHLabelPropertyMaker *(^font)(UIFont *font);

/// 颜色
@property (nonatomic, copy, readonly) ZHLabelPropertyMaker *(^textColor)(UIColor *textColor);

/// 对齐方式
@property (nonatomic, copy, readonly) ZHLabelPropertyMaker *(^textAlignment)(NSTextAlignment textAlignment);

/// 行数
@property (nonatomic, copy, readonly) ZHLabelPropertyMaker *(^numberOfLines)(NSUInteger numberOfLines);

@end

NS_ASSUME_NONNULL_END
