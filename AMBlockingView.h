//
//  AMBlockingView.h
//  Pods
//
//  Created by Johnny on 31/05/2017.
//
//

#import <UIKit/UIKit.h>

@interface AMBlockingView : UIView
- (instancetype)initWithFrame:(CGRect)frame touchingView:(UIView *)view backgroundColor:(UIColor *)color andTransparentRects:(NSArray *)rects;
@property (nonatomic ,assign) CGRect allowedTouchRect;
@property (nonatomic ,weak) UIView *touchingView;
@end
