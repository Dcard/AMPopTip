//
//  AMBlockingView.h
//  Pods
//
//  Created by Johnny on 31/05/2017.
//
//

#import <UIKit/UIKit.h>

@interface AMBlockingView : UIView
@property (nonatomic ,assign) CGRect allowedTouchRect;
@property (nonatomic ,weak) UIView *touchingView;
@end
