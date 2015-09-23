//
//  CHBadgeView.h
//  CHBadgeView
//
//  Created by Clemens Hammerl on 23.09.15.
//  Copyright © 2015 Cocoabeats. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHBadgeView : UIView

/**
 *  Background Color of the Badge
 */
@property (nonatomic, strong) UIColor *badgeColor;

/**
 *  Border Color of the Badge
 */
@property (nonatomic, strong) UIColor *badgeBorderColor;

/**
 *  Border width of the badge
 */
@property (nonatomic, assign) CGFloat badgeBorderWidth;


/**
 *  Corner radius of the badge
 */
@property (nonatomic, assign) CGFloat badgeCornerRadius;

/**
 *  Height of the arrow displayed at the bottom of the badge
 *
 *  @discussion If the value is bigger than 30% of the badge height it is cut off to 30% of the badge height automatically
 */
@property (nonatomic, assign) CGFloat bottomArrowHeight;


/**
 *  Tells if the border should be drawn or not for the badge
 */
@property (nonatomic, assign) BOOL drawBadgeBorder;


/**
 *  The label that displays the content of the badge
 */
@property (nonatomic, strong) UILabel *badgeLabel;



@end
