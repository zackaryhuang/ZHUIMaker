//
//  ZHScrollViewPropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import "ZHViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHScrollViewPropertyMaker : ZHViewPropertyMaker

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^delegate)(id<UIScrollViewDelegate> delegate);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^contentOffset)(CGPoint contentOffset);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^contentSize)(CGSize contentSize);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^contentInset)(UIEdgeInsets contentInset);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^bounces)(BOOL bounces);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^alwaysBounceVertical)(BOOL alwaysBounceVertical);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^alwaysBounceHorizontal)(BOOL alwaysBounceHorizontal);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^pagingEnabled)(BOOL pagingEnabled);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^scrollEnabled)(BOOL scrollEnabled);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^showsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^indicatorStyle)(UIScrollViewIndicatorStyle indicatorStyle);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^verticalScrollIndicatorInsets)(UIEdgeInsets verticalScrollIndicatorInsets);

@property (nonatomic, copy, readonly) ZHScrollViewPropertyMaker *(^horizontalScrollIndicatorInsets)(UIEdgeInsets horizontalScrollIndicatorInsets);
@end

NS_ASSUME_NONNULL_END
