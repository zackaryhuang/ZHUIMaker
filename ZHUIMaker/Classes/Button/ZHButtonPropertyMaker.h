//
//  ZHButtonPropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "ZHViewPropertyMaker.h"
#import "ZHButtonProperty.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHButtonPropertyMaker : ZHViewPropertyMaker

/// 添加点击事件处理
@property (nonatomic, copy, readonly) ZHButtonActionProperty *(^action)(SEL selector);

/// 根据 state 设置文字颜色
@property (nonatomic, copy, readonly) ZHButtonProperty *(^titleColor)(UIColor *titleColor);

/// 根据 state 设置文案
@property (nonatomic, copy, readonly) ZHButtonProperty *(^title)(NSString *title);

/// 根据 state 设置图片
@property (nonatomic, copy, readonly) ZHButtonProperty *(^image)(UIImage *image);

/// 根据 state 设置图片
@property (nonatomic, copy, readonly) ZHButtonProperty *(^attributedTitle)(NSAttributedString *attributedTitle);

@end

NS_ASSUME_NONNULL_END
