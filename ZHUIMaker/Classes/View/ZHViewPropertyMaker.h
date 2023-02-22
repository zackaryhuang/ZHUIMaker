//
//  ZHViewPropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZHViewPropertyMaker : NSObject

@property (nonatomic, weak, readonly) UIView *view;

- (instancetype)initWithView:(UIView *)view;

/// 设置父控件
@property (nonatomic, copy, readonly) ZHViewPropertyMaker *(^superView)(UIView *superView);

/// 是否响应交互
@property (nonatomic, copy, readonly) ZHViewPropertyMaker *(^userInteractionEnabled)(BOOL enable);

/// 添加阴影
@property (nonatomic, copy, readonly) ZHViewPropertyMaker *(^shadow)(UIColor *shadowColor, CGFloat shadowOpacity, CGSize shadowOffset, CGFloat shadowRadius);

/// 设置背景颜色
@property (nonatomic, copy, readonly) ZHViewPropertyMaker *(^backgroundColor)(UIColor *backgroundColor);

/// 设置圆角
@property (nonatomic, copy, readonly) ZHViewPropertyMaker *(^cornerRadius)(CGFloat cornerRadius);

@property (nonatomic, copy, readonly) ZHViewPropertyMaker *(^clipToBounds)(BOOL clipToBounds);

/// 添加点击手势事件
@property (nonatomic, copy, readonly) ZHViewPropertyMaker *(^tapGestureAction)(id target, SEL selector);

/// 添加长按手势事件
@property (nonatomic, copy, readonly) ZHViewPropertyMaker *(^longPressGestureAction)(id target, SEL selector);

/// 设置Frame
@property (nonatomic, copy, readonly) ZHViewPropertyMaker *(^frame)(CGFloat x, CGFloat y, CGFloat width, CGFloat height);

@end

NS_ASSUME_NONNULL_END
