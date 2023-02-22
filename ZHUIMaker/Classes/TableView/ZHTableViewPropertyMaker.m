//
//  ZHTableViewPropertyMaker.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/6/23.
//

#import "ZHTableViewPropertyMaker.h"
@implementation ZHTableViewPropertyMaker
@synthesize delegate = _delegate;

- (ZHTableViewPropertyMaker * _Nonnull (^)(id<UITableViewDelegate> _Nonnull))delegate {
    return ^ZHTableViewPropertyMaker *(id<UITableViewDelegate> delegate) {
        [(UITableView *)self.view setDelegate:delegate];
        return self;
    };
}

- (ZHTableViewPropertyMaker * _Nonnull (^)(id<UITableViewDataSource> _Nonnull))dataSource {
    return ^ZHTableViewPropertyMaker *(id<UITableViewDataSource> dataSource) {
        [(UITableView *)self.view setDataSource:dataSource];
        return self;
    };
}

- (ZHTableViewPropertyMaker * _Nonnull (^)(CGFloat))rowHeight {
    return ^ZHTableViewPropertyMaker *(CGFloat rowHeight) {
        [(UITableView *)self.view setRowHeight:rowHeight];
        return self;
    };
}

- (ZHTableViewPropertyMaker * _Nonnull (^)(CGFloat))sectionHeaderHeight {
    return ^ZHTableViewPropertyMaker *(CGFloat sectionHeaderHeight) {
        [(UITableView *)self.view setSectionHeaderHeight:sectionHeaderHeight];
        return self;
    };
}

- (ZHTableViewPropertyMaker * _Nonnull (^)(CGFloat))sectionFooterHeight {
    return ^ZHTableViewPropertyMaker *(CGFloat sectionFooterHeight) {
        [(UITableView *)self.view setSectionFooterHeight:sectionFooterHeight];
        return self;
    };
}

- (ZHTableViewPropertyMaker * _Nonnull (^)(CGFloat))estimatedRowHeight {
    return ^ZHTableViewPropertyMaker *(CGFloat estimatedRowHeight) {
        [(UITableView *)self.view setEstimatedRowHeight:estimatedRowHeight];
        return self;
    };
}

- (ZHTableViewPropertyMaker * _Nonnull (^)(CGFloat))estimatedSectionHeaderHeight {
    return ^ZHTableViewPropertyMaker *(CGFloat estimatedSectionHeaderHeight) {
        [(UITableView *)self.view setEstimatedSectionHeaderHeight:estimatedSectionHeaderHeight];
        return self;
    };
}

- (ZHTableViewPropertyMaker * _Nonnull (^)(CGFloat))estimatedSectionFooterHeight {
    return ^ZHTableViewPropertyMaker *(CGFloat estimatedSectionFooterHeight) {
        [(UITableView *)self.view setEstimatedSectionFooterHeight:estimatedSectionFooterHeight];
        return self;
    };
}
@end
