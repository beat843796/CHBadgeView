//
//  CHBadgeView.h
//  CHBadgeView
//
//  Created by Clemens Hammerl on 23.09.15.
//  Copyright © 2015 Cocoabeats. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHBadgeView : UIView

@property (nonatomic, strong) UIColor *badgeColor;
@property (nonatomic, strong) UIColor *badgeBorderColor;
@property (nonatomic, strong) UIColor *badgeTextColor;

@property (nonatomic, assign) CGFloat badgeBorderWidth;
@property (nonatomic, assign) CGFloat badgeCornerRadius;
@property (nonatomic, assign) CGFloat bottomArrowHeight;
@property (nonatomic, assign) BOOL drawBadgeBorder;

@property (nonatomic, strong) UILabel *badgeLabel;



@end
