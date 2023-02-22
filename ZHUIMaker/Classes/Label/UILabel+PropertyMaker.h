//
//  UILabel+PropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/19.
//

#import <UIKit/UIKit.h>
#import "ZHLabelPropertyMaker.h"
#import <Masonry/Masonry.h>

@interface UILabel (PropertyMaker)

- (void)zh_makeLabelStyles:(void(^)(ZHLabelPropertyMaker *make))properties;

- (void)zh_makeLabelProperties:(void(^)(ZHLabelPropertyMaker *make))properties constrains:(void(^)(MASConstraintMaker *make))constrains;

@end
