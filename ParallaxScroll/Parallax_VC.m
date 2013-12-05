//
//  Parallax_VCViewController.m
//  ParallaxScroll
//
//  Created by James Snee on 05/12/2013.
//  Copyright (c) 2013 James Snee. All rights reserved.
//

#import "Parallax_VC.h"

#define kScrollFactor 2
#define kForegroundOffset 200

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
    
    [self.foregroundScroll setContentOffset:CGPointMake(0, (0-kForegroundOffset))];
    [self.foregroundScroll setContentInset:UIEdgeInsetsMake(kForegroundOffset, 0.0, 0.0, 0.0)];
}

#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint offsetBg = self.backgroundScroll.contentOffset;
    offsetBg.y = self.foregroundScroll.contentOffset.y / kScrollFactor;
    offsetBg.y += kForegroundOffset;
    [self.backgroundScroll setContentOffset:offsetBg];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
