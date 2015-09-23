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
        _badgeTextColor = [UIColor whiteColor];
        _badgeBorderWidth = 0.50f;
        
        _drawBadgeBorder = NO;
        _badgeCornerRadius = 4.0f;
        
        _bottomArrowHeight = 10.0f;
        
        
        self.badgeLabel = [[UILabel alloc] init];
        self.badgeLabel.font = [UIFont systemFontOfSize:16];
        self.badgeLabel.textAlignment = NSTextAlignmentCenter;
        self.badgeLabel.adjustsFontSizeToFitWidth = YES;
        self.badgeLabel.backgroundColor = [UIColor clearColor];
        
        _badgeLabel.shadowColor   = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];
        _badgeLabel.shadowOffset  = CGSizeMake(0.0,-0.2);


        
        self.badgeLabel.textColor = _badgeTextColor;
        [self addSubview:_badgeLabel];
        
        _badgeLabel.text = @"42";
        
        
    }
    
    return self;
}






-(void)drawRect:(CGRect)rect
{
    
    [super drawRect:rect];
    
    if (_bottomArrowHeight > self.bounds.size.height*0.3f) {
        _bottomArrowHeight = self.bounds.size.height*0.3f;
    }
    
    _badgeLabel.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height-_bottomArrowHeight);
    
    // Drawing with a white stroke color
    CGContextRef context=UIGraphicsGetCurrentContext();
    
    //CGContextSetShouldAntialias(context, true);
    //GContextSetAllowsAntialiasing(context, false);
    CGContextSetFillColorWithColor(context, _badgeColor.CGColor);
    
    CGContextSetStrokeColorWithColor(context, _badgeBorderColor.CGColor);
    
    CGContextSetLineWidth(context, _badgeBorderWidth);
    
    
    //CGRect drawingRect = CGRectInset(rect, -1, -1);
    
    
    //CGContextSet
    
    CGRect rrect = CGRectInset(CGRectMake(0, 0, rect.size.width, rect.size.height), _badgeBorderWidth/2.0f, _badgeBorderWidth/2.0f);
    CGFloat radius = _badgeCornerRadius;
    
    
    if (radius >= rect.size.width) {
        radius = rect.size.width;
    }
    

    CGFloat minx = CGRectGetMinX(rrect), midx = CGRectGetMidX(rrect), maxx = CGRectGetMaxX(rrect);
    CGFloat miny = CGRectGetMinY(rrect), midy = CGRectGetMidY(rrect), maxy = CGRectGetMaxY(rrect)-_bottomArrowHeight;
    
    
    //[badgePath moveToPoint:CGPointMake(minx, midy)];
    //[badgePath addCurveToPoint:<#(CGPoint)#> controlPoint1:<#(CGPoint)#> controlPoint2:<#(CGPoint)#>]
    
    
    // Start at 1
    CGContextMoveToPoint(context, minx, midy);
    // Add an arc through 2 to 3
    CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
    
    // Add an arc through 4 to 5
    CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
    // Add an arc through 6 to 7

    CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
    // Add an arc through 8 to 9
    
    // DRAW THE ARROW AT THE BOTTOM
    CGContextAddLineToPoint(context, midx+_bottomArrowHeight, maxy);
    CGContextAddLineToPoint(context, midx, maxy+_bottomArrowHeight);
    CGContextAddLineToPoint(context, midx-_bottomArrowHeight, maxy);
    
    
    CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);

    CGContextClosePath(context);

    
    //CGContextClip(context);
    
    CGContextDrawPath(context, kCGPathFillStroke);
    
    //CGContextDrawPath(context, kCGPathStroke);
    
    
    
    
  
    
    
}

@end
