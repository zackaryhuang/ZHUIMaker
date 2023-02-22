//
//  ZHTableViewPropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import "ZHScrollViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHTableViewPropertyMaker : ZHScrollViewPropertyMaker

@property (nonatomic, copy, readonly) ZHTableViewPropertyMaker *(^dataSource)(id <UITableViewDataSource> dataSource);

@property (nonatomic, copy, readonly) ZHTableViewPropertyMaker *(^delegate)(id <UITableViewDelegate> delegate);

@property (nonatomic, copy, readonly) ZHTableViewPropertyMaker *(^rowHeight)(CGFloat rowHeight);

@property (nonatomic, copy, readonly) ZHTableViewPropertyMaker *(^sectionHeaderHeight)(CGFloat sectionHeaderHeight);

@property (nonatomic, copy, readonly) ZHTableViewPropertyMaker *(^sectionFooterHeight)(CGFloat sectionFooterHeight);

@property (nonatomic, copy, readonly) ZHTableViewPropertyMaker *(^estimatedRowHeight)(CGFloat estimatedRowHeight);

@property (nonatomic, copy, readonly) ZHTableViewPropertyMaker *(^estimatedSectionHeaderHeight)(CGFloat estimatedSectionHeaderHeight);

@property (nonatomic, copy, readonly) ZHTableViewPropertyMaker *(^estimatedSectionFooterHeight)(CGFloat estimatedSectionFooterHeight);



@end

NS_ASSUME_NONNULL_END
