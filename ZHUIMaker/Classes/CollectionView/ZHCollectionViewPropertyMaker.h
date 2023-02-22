//
//  ZHCollectionViewPropertyMaker.h
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import "ZHScrollViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHCollectionViewPropertyMaker : ZHScrollViewPropertyMaker

@property (nonatomic, copy, readonly) ZHCollectionViewPropertyMaker *(^collectionViewLayout)(UICollectionViewLayout *collectionViewLayout);

@property (nonatomic, copy, readonly) ZHCollectionViewPropertyMaker *(^dataSource)(id <UICollectionViewDataSource> dataSource);

@property (nonatomic, copy, readonly) ZHCollectionViewPropertyMaker *(^delegate)(id <UICollectionViewDelegate> delegate);

@end

NS_ASSUME_NONNULL_END
