//
//  AMBlockingView.m
//  Pods
//
//  Created by Johnny on 31/05/2017.
//
//

#import "AMBlockingView.h"

@interface AMBlockingView ()
@property (nonatomic ,strong) NSArray *rectsArray;
@property (nonatomic ,strong) UIColor *backgroundColor;
@end

@implementation AMBlockingView

#pragma mark -
#pragma mark Initializations

- (instancetype)initWithFrame:(CGRect)frame touchingView:(UIView *)view backgroundColor:(UIColor *)color andTransparentRects:(NSArray *)rects {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = color;
        self.rectsArray = rects;
        self.touchingView = view;
        self.opaque = NO;
    }
    return self;
}

#pragma mark -
#pragma mark Overrides

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if (CGRectContainsPoint(self.allowedTouchRect, [self convertPoint:point toView:self.touchingView])) {
        return nil;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [self.backgroundColor setFill];
    UIRectFill(rect);
    
    for (NSValue *holeRectValue in self.rectsArray) {
        CGRect holeRect = [holeRectValue CGRectValue];
        CGRect holeRectIntersection = CGRectIntersection(holeRect, rect);
        [[UIColor clearColor] setFill];
        
        UIRectFill(holeRectIntersection);
    }
}

@end
