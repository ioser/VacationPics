//
//  REMViewController.m
//  VacationPics
//
//  Created by Richard E Millet on 2/21/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import "REMViewController.h"

@interface REMViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation REMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.imageView.frame = CGRectMake(0, 0, self.imageView.image.size.width, self.imageView.image.size.height);
	self.scrollView.contentSize = self.imageView.image.size;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollViewDelegate method

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
	return self.imageView;
}

@end
