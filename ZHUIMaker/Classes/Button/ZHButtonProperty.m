//
//  ZHButtonProperty.m
//  ZHUIPropertyMaker
//
//  Created by Zackary Huang on 2021/4/26.
//

#import "ZHButtonProperty.h"

@interface ZHButtonProperty()

@property (nonatomic, strong) id view;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) UIColor *titleColor;
@property (nonatomic, strong) NSAttributedString *attributedTitle;

@end

@implementation ZHButtonProperty

- (instancetype)initWithView:(id)view
                       title:(NSString *)title {
    return [self initWithView:view
                        title:title
                        image:nil
                   titleColor:nil
              attributedTitle:nil];
}

- (instancetype)initWithView:(id)view
                       image:(UIImage *)image {
    return [self initWithView:view
                        title:nil
                        image:image
                   titleColor:nil
              attributedTitle:nil];
}

- (instancetype)initWithView:(id)view
                  titleColor:(UIColor *)titleColor {
    return [self initWithView:view
                        title:nil
                        image:nil
                   titleColor:titleColor
              attributedTitle:nil];
}

- (instancetype)initWithView:(id)view
             attributedTitle:(NSAttributedString *)attributedTitle {
    return [self initWithView:view
                        title:nil
                        image:nil
                   titleColor:nil
              attributedTitle:attributedTitle];
}

- (instancetype)initWithView:(id)view
                       title:(NSString *)title
                       image:(UIImage *)image
                  titleColor:(UIColor *)titleColor
             attributedTitle:(NSAttributedString *)attributedTitle{
    if (self = [super init]) {
        self.view = view;
        self.title = title;
        self.image = image;
        self.titleColor = titleColor;
        self.attributedTitle = attributedTitle;
    }
    return self;
}

- (ZHButtonProperty * _Nonnull (^)(UIControlState))forState {
    return ^ZHButtonProperty *(UIControlState forState){
        if (self.view) {
            if (self.title) {
                [(UIButton *)self.view setTitle:self.title forState:forState];
            }
            
            if (self.image) {
                [(UIButton *)self.view setImage:self.image forState:forState];
            }
            
            if (self.titleColor) {
                [(UIButton *)self.view setTitleColor:self.titleColor forState:forState];
            }
        }
        return self;
    };
}

@end

@interface ZHButtonActionProperty()

@property (nonatomic, strong) id view;
@property (nonatomic, strong) id target;
@property (nonatomic, assign) SEL action;
@property (nonatomic, assign) UIControlEvents event;

@end

@implementation ZHButtonActionProperty

- (instancetype)initWithView:(id)view action:(SEL)action {
    if (self = [super init]) {
        self.view = view;
        self.action = action;
    }
    return self;
}

- (ZHButtonActionProperty * _Nonnull (^)(UIControlEvents))forEvent {
    return ^ZHButtonActionProperty *(UIControlEvents forEvent){
        if (self.view) {
            if (self.target) {
                [(UIButton *)self.view addTarget:self.target action:self.action forControlEvents:forEvent];
            } else {
                self.event = forEvent;
            }
        }
        return self;
    };
}

- (ZHButtonActionProperty * _Nonnull (^)(id _Nonnull))withTarget {
    return ^ZHButtonActionProperty *(id withTarget){
        if (self.view) {
            self.target = withTarget;
            [(UIButton *)self.view addTarget:withTarget action:self.action forControlEvents:self.event];
        }
        return self;
    };
}

@end
