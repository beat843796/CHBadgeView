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

@property (nonatomic, strong) CHBadgeView *badgeView;

@end

@implementation CHDemoViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.badgeView = [[CHBadgeView alloc] init];
    
    [self.view addSubview:_badgeView];
    
    _badgeView.badgeLabel.text = @" 1";
    
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    _badgeView.frame = CGRectMake(10, 30, 50, 43);
    
}



@end
