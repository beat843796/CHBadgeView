//
//  CHDemoViewController.m
//  CHBadgeView
//
//  Created by Clemens Hammerl on 23.09.15.
//  Copyright © 2015 Cocoabeats. All rights reserved.
//

#import "CHDemoViewController.h"

#import "CHBadgeView.h"

@interface CHDemoViewController ()

@property (nonatomic, strong) CHBadgeView *badgeView1;
@property (nonatomic, strong) CHBadgeView *badgeView2;
@property (nonatomic, strong) CHBadgeView *badgeView3;
@property (nonatomic, strong) CHBadgeView *badgeView4;

@end

@implementation CHDemoViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    // instagram like configuration
    self.badgeView1 = [[CHBadgeView alloc] init];
    [self.view addSubview:_badgeView1];
    _badgeView1.badgeBorderColor = [UIColor colorWithRed:204.0f/255.0f green:81.0f/255.0f blue:19.0f/255.0f alpha:1.0];
    _badgeView1.badgeColor = [UIColor colorWithRed:254.0f/255.0f green:105.0f/255.0f blue:31.0f/255.0f alpha:1.0];
    _badgeView1.badgeBorderWidth =0.5f;
    _badgeView1.drawBadgeBorder = YES;
    _badgeView1.badgeCornerRadius = 4.0;
    _badgeView1.bottomArrowHeight = 10.0f;
    _badgeView1.badgeLabel.text = @" 1";
    _badgeView1.badgeLabel.shadowColor   = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];
    _badgeView1.badgeLabel.shadowOffset  = CGSizeMake(0.0,-0.2);
    _badgeView1.showArrow = YES;
    
    self.badgeView2 = [[CHBadgeView alloc] init];
    [self.view addSubview:_badgeView2];
    _badgeView2.badgeLabel.text = @"Hello World";
    _badgeView2.badgeColor = [UIColor yellowColor];
    _badgeView2.badgeBorderColor = [UIColor redColor];
    _badgeView2.badgeLabel.textColor = [UIColor blackColor];
    _badgeView2.badgeCornerRadius = 10.0f;
    _badgeView2.badgeBorderWidth = 4.0f;
    _badgeView2.showArrow = NO;
    
    self.badgeView3 = [[CHBadgeView alloc] init];
    [self.view addSubview:_badgeView3];
    _badgeView3.badgeLabel.text = @"No Border";
    _badgeView3.badgeColor = [UIColor blueColor];
    _badgeView3.drawBadgeBorder = NO;
    _badgeView3.showArrow = YES;
    
    self.badgeView4 = [[CHBadgeView alloc] init];
    [self.view addSubview:_badgeView4];
    _badgeView4.badgeLabel.text = @"Foo";
    _badgeView4.badgeCornerRadius = 12.0f;
    _badgeView4.badgeColor = [UIColor purpleColor];
    _badgeView4.badgeBorderColor= [UIColor blackColor];
    _badgeView4.badgeBorderWidth = 2.0f;
    _badgeView4.bottomArrowHeight = 4.0f;
    _badgeView4.showArrow = YES;
    
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    _badgeView1.frame = CGRectMake(10, 50, 50, 43);
    _badgeView1.center = CGPointMake(self.view.center.x, _badgeView1.center.y);
    
    _badgeView2.frame = CGRectMake(10, 100, 200, 42);
    _badgeView2.center = CGPointMake(self.view.center.x, _badgeView2.center.y);
    
    _badgeView3.frame = CGRectMake(10, 150, 150, 43);
    _badgeView3.center = CGPointMake(self.view.center.x, _badgeView3.center.y);
    
    _badgeView4.frame = CGRectMake(10, 200, 80, 43);
    _badgeView4.center = CGPointMake(self.view.center.x, _badgeView4.center.y);
    
}



@end
