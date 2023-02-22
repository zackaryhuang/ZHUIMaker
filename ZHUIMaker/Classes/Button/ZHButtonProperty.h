//
//  ZHButtonProperty.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/26.
//

#import "ZHViewProperty.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZHButtonProperty : ZHViewProperty

- (instancetype)initWithView:(id)view
                       title:(NSString *)title;

- (instancetype)initWithView:(id)view
                       image:(UIImage *)image;

- (instancetype)initWithView:(id)view
                  titleColor:(UIColor *)titleColor;

- (instancetype)initWithView:(id)view
             attributedTitle:(NSAttributedString *)attributedTitle;

@property (nonatomic, copy, readonly) ZHButtonProperty *(^forState)(UIControlState state);

@end

@interface ZHButtonActionProperty : NSObject

- (instancetype)initWithView:(id)view
                      action:(SEL)action;

@property (nonatomic, copy, readonly) ZHButtonActionProperty *(^forEvent)(UIControlEvents event);

@property (nonatomic, copy, readonly) ZHButtonActionProperty *(^withTarget)(id withTarget);

@end
NS_ASSUME_NONNULL_END
