#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "UIButton+PropertyMaker.h"
#import "ZHButtonProperty.h"
#import "ZHButtonPropertyMaker.h"
#import "UICollectionView+PropertyMaker.h"
#import "ZHCollectionViewPropertyMaker.h"
#import "UIImageView+PropertyMaker.h"
#import "ZHImageViewPropertyMaker.h"
#import "UILabel+PropertyMaker.h"
#import "ZHLabelPropertyMaker.h"
#import "UIScrollView+PropertyMaker.h"
#import "ZHScrollViewPropertyMaker.h"
#import "UITableView+PropertyMaker.h"
#import "ZHTableViewPropertyMaker.h"
#import "UIView+PropertyMaker.h"
#import "ZHViewProperty.h"
#import "ZHViewPropertyMaker.h"

FOUNDATION_EXPORT double ZHUIMakerVersionNumber;
FOUNDATION_EXPORT const unsigned char ZHUIMakerVersionString[];

