//
//  Parallax_VCViewController.m
//  ParallaxScroll
//
//  Created by James Snee on 05/12/2013.
//  Copyright (c) 2013 James Snee. All rights reserved.
//

#import "Parallax_VC.h"

#define kSCROLL_FACTOR 2

@interface Parallax_VC ()

@end

@implementation Parallax_VC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    //Background
    [self.backgroundScroll addSubview:self.backgroundContainer];
    [self.backgroundScroll setContentSize:CGSizeMake(self.backgroundContainer.frame.size.width,
                                                     self.backgroundContainer.frame.size.height)];
    
    //Foreground
    [self.foregroundScroll addSubview:self.foregroundContainer];
    [self.foregroundScroll setContentSize:CGSizeMake(self.foregroundContainer.frame.size.width,
                                                     self.foregroundContainer.frame.size.height)];
    
    [self.foregroundScroll setContentOffset:CGPointMake(0, -200)];
    [self.foregroundScroll setContentInset:UIEdgeInsetsMake(200.0, 0.0, 0.0, 0.0)];
}

#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint offsetBg = self.backgroundScroll.contentOffset;
    offsetBg.y = self.foregroundScroll.contentOffset.y / kSCROLL_FACTOR;
    offsetBg.y += 200;
    [self.backgroundScroll setContentOffset:offsetBg];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
