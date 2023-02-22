//
//  ZHCollectionViewPropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import "ZHCollectionViewPropertyMaker.h"

@implementation ZHCollectionViewPropertyMaker
@synthesize delegate = _delegate;

- (ZHCollectionViewPropertyMaker * _Nonnull (^)(UICollectionViewLayout * _Nonnull))collectionViewLayout {
    return ^ZHCollectionViewPropertyMaker *(UICollectionViewLayout *collectionViewLayout) {
        [(UICollectionView *)self.view setCollectionViewLayout:collectionViewLayout];
        return self;
    };
}

- (ZHCollectionViewPropertyMaker * _Nonnull (^)(id<UICollectionViewDelegate> _Nonnull))delegate {
    return ^ZHCollectionViewPropertyMaker *(id<UICollectionViewDelegate> delegate) {
        [(UICollectionView *)self.view setDelegate:delegate];
        return self;
    };
}

- (ZHCollectionViewPropertyMaker * _Nonnull (^)(id<UICollectionViewDataSource> _Nonnull))dataSource {
    return ^ZHCollectionViewPropertyMaker *(id<UICollectionViewDataSource> dataSource) {
        [(UICollectionView *)self.view setDataSource:dataSource];
        return self;
    };
}
@end
