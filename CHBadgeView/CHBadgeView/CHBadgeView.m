//
//  CHBadgeView.m
//  CHBadgeView
//
//  Created by Clemens Hammerl on 23.09.15.
//  Copyright © 2015 Cocoabeats. All rights reserved.
//

#import "CHBadgeView.h"

@interface CHBadgeView ()



@end

@implementation CHBadgeView

-(instancetype)init
{
    self = [super init];
    
    if (self) {
        
        self.backgroundColor = [UIColor clearColor];
        
        // Setup default settings
        
        _badgeBorderColor = [UIColor blackColor];
        _badgeColor = [UIColor darkGrayColor];
        
        _badgeBorderWidth = 0.5f;
        
        _drawBadgeBorder = YES;
        _badgeCornerRadius = 4.0;
        
        _bottomArrowHeight = 10.0f;
        
        _showArrow = YES;
        
        // create the label
        
        self.badgeLabel = [[UILabel alloc] init];
        self.badgeLabel.font = [UIFont systemFontOfSize:18];
        self.badgeLabel.textAlignment = NSTextAlignmentCenter;
        self.badgeLabel.adjustsFontSizeToFitWidth = YES;
        self.badgeLabel.backgroundColor = [UIColor clearColor];

        self.badgeLabel.textColor = [UIColor whiteColor];
        [self addSubview:_badgeLabel];
        
      
        
        
    }
    
    return self;
}

-(void)drawRect:(CGRect)rect
{
    
    [super drawRect:rect];
    
    // checking maximum property values
    
    if (_bottomArrowHeight >= self.bounds.size.height*0.3f) {
        _bottomArrowHeight = self.bounds.size.height*0.3f;
    }
    
    if (_badgeCornerRadius >= (self.bounds.size.height-_bottomArrowHeight)/2.0) {
        _badgeCornerRadius = (self.bounds.size.height-_bottomArrowHeight)/2.0;
    }
    
    
    
    
    // Drawing with a white stroke color
    CGContextRef context=UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, _badgeColor.CGColor);
    
    CGContextSetStrokeColorWithColor(context, _badgeBorderColor.CGColor);
    
    CGContextSetLineWidth(context, _badgeBorderWidth);
    
    
    //CGRect drawingRect = CGRectInset(rect, -1, -1);
    
    
    //CGContextSet
    
    CGRect rrect = CGRectInset(CGRectMake(0, 0, rect.size.width, rect.size.height), _badgeBorderWidth/2.0f, _badgeBorderWidth/2.0f);
    
    if (_drawBadgeBorder) {
         rrect = CGRectInset(CGRectMake(0, 0, rect.size.width, rect.size.height), _badgeBorderWidth/2.0f, _badgeBorderWidth/2.0f);
    }else {
         rrect = CGRectMake(0, 0, rect.size.width, rect.size.height);
    }
    
    CGFloat radius = _badgeCornerRadius;

    CGFloat minx = CGRectGetMinX(rrect), midx = CGRectGetMidX(rrect), maxx = CGRectGetMaxX(rrect);
    CGFloat miny = CGRectGetMinY(rrect), midy = CGRectGetMidY(rrect);
    
    CGFloat maxy;
    
    if(_showArrow) {
        _badgeLabel.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height-_bottomArrowHeight);
        maxy = CGRectGetMaxY(rrect)-_bottomArrowHeight;
    }else {
        _badgeLabel.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
        maxy = CGRectGetMaxY(rrect);
    }
    
       

    // Draw the badge shape
    CGContextMoveToPoint(context, minx, midy);
    CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
    CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
    CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
    
    if (_showArrow) {
        // DRAW THE ARROW AT THE BOTTOM
        CGContextAddLineToPoint(context, midx+_bottomArrowHeight, maxy);
        CGContextAddLineToPoint(context, midx, maxy+_bottomArrowHeight);
        CGContextAddLineToPoint(context, midx-_bottomArrowHeight, maxy);
    }
    
    
    
    
    CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);

    CGContextClosePath(context);

    if (_drawBadgeBorder) {
        CGContextDrawPath(context, kCGPathFillStroke);
    }else {
        CGContextDrawPath(context, kCGPathFill);
    }

    
}

@end
