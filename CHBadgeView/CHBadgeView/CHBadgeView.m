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
        
        _badgeBorderColor = [UIColor colorWithRed:204.0f/255.0f green:81.0f/255.0f blue:19.0f/255.0f alpha:1.0];
        _badgeColor = [UIColor colorWithRed:254.0f/255.0f green:105.0f/255.0f blue:31.0f/255.0f alpha:1.0];
        
        _badgeBorderWidth =0.5f;
        
        _drawBadgeBorder = YES;
        _badgeCornerRadius = 4.0;
        
        _bottomArrowHeight = 10.0f;
        
        
        // create the label
        
        self.badgeLabel = [[UILabel alloc] init];
        self.badgeLabel.font = [UIFont systemFontOfSize:18];
        self.badgeLabel.textAlignment = NSTextAlignmentCenter;
        self.badgeLabel.adjustsFontSizeToFitWidth = YES;
        self.badgeLabel.backgroundColor = [UIColor clearColor];

        // configure label shadow
        _badgeLabel.shadowColor   = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];
        _badgeLabel.shadowOffset  = CGSizeMake(0.0,-0.2);

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
    
    
    _badgeLabel.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height-_bottomArrowHeight);
    
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
    CGFloat miny = CGRectGetMinY(rrect), midy = CGRectGetMidY(rrect), maxy = CGRectGetMaxY(rrect)-_bottomArrowHeight;

    // Draw the badge shape
    CGContextMoveToPoint(context, minx, midy);
    CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
    CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
    CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
    
    // DRAW THE ARROW AT THE BOTTOM
    CGContextAddLineToPoint(context, midx+_bottomArrowHeight, maxy);
    CGContextAddLineToPoint(context, midx, maxy+_bottomArrowHeight);
    CGContextAddLineToPoint(context, midx-_bottomArrowHeight, maxy);
    
    
    CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);

    CGContextClosePath(context);

    if (_drawBadgeBorder) {
        CGContextDrawPath(context, kCGPathFillStroke);
    }else {
        CGContextDrawPath(context, kCGPathFill);
    }

    
}

@end