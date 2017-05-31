//
//  AMBlockingView.m
//  Pods
//
//  Created by Johnny on 31/05/2017.
//
//

#import "AMBlockingView.h"

@implementation AMBlockingView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if (CGRectContainsPoint(self.allowedTouchRect, [self convertPoint:point toView:self.touchingView])) {
        return nil;
    }
    return self;
}

@end
