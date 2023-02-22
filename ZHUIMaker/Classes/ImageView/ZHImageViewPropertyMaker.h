//
//  ZHImageViewPropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import "ZHViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHImageViewPropertyMaker : ZHViewPropertyMaker

/// 图片
@property (nonatomic, copy, readonly) ZHImageViewPropertyMaker *(^image)(UIImage *image);

@property (nonatomic, copy, readonly) ZHImageViewPropertyMaker *(^animationImages)(NSArray<UIImage *> *animationImages);

@property (nonatomic, copy, readonly) ZHImageViewPropertyMaker *(^animationDuration)(NSTimeInterval animationDuration);

@property (nonatomic, copy, readonly) ZHImageViewPropertyMaker *(^animationRepeatCount)(NSInteger animationRepeatCount);
@end

NS_ASSUME_NONNULL_END
