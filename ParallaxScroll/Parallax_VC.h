//
//  Parallax_VCViewController.h
//  ParallaxScroll
//
//  Created by James Snee on 05/12/2013.
//  Copyright (c) 2013 James Snee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Parallax_VC : UIViewController <UIScrollViewDelegate>

//Background
@property (strong, nonatomic) IBOutlet UIScrollView *backgroundScroll;
@property (strong, nonatomic) IBOutlet UIView *backgroundContainer;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;

//Foreground
@property (strong, nonatomic) IBOutlet UIScrollView *foregroundScroll;
@property (strong, nonatomic) IBOutlet UIView *foregroundContainer;

@end
