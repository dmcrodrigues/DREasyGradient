//
//  DRViewController.m
//  DREasyGradient-Demo
//
//  Created by David Rodrigues on 01/03/13.
//
//

#import "DRViewController.h"

@interface DRViewController ()

@end

@implementation DRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CGRect frame = CGRectMake(0.0, 0.0, self.view.frame.size.width, 10.0);
    
    CAGradientLayer *gradient = [DREasyGradient gradientWithFrame:frame
                                                      orientation:DRVerticalGradient
                                                           color1:[UIColor blackColor]
                                                           color2:[UIColor clearColor]];
    
    
    [self.view.layer addSublayer:gradient];
    
    frame = CGRectMake(0.0, self.view.frame.size.height - 10.0, self.view.frame.size.width, 10.0);
    
    gradient = [DREasyGradient gradientWithFrame:frame
                                     orientation:DRVerticalGradient
                                          color1:[UIColor clearColor]
                                          color2:[UIColor blackColor]];
    
    frame = CGRectMake(10.0, 30.0, self.view.frame.size.width - 20.0, 50.0);
    
    NSArray *colors = [[NSArray alloc] initWithObjects:
                       [UIColor redColor],
                       [UIColor orangeColor],
                       [UIColor blueColor],
                       nil];
    
    gradient = [DREasyGradient gradientWithFrame:frame
                                     orientation:DRVerticalGradient
                                          colors:colors];
    
    [self.view.layer addSublayer:gradient];

    frame = CGRectMake(10.0, 120.0, self.view.frame.size.width - 20.0, 50.0);
    
    gradient = [DREasyGradient gradientWithFrame:frame
                                     orientation:DRHorizontalGradient
                                          colors:colors];
    
    [self.view.layer addSublayer:gradient];
    
    frame = CGRectMake(10.0, 210.0, self.view.frame.size.width - 20.0, 50.0);
    
    colors = [[NSArray alloc] initWithObjects:
              [UIColor blackColor],
              [UIColor clearColor],
              nil];
    
    gradient = [DREasyGradient gradientWithFrame:frame
                                     orientation:DRHorizontalGradient
                                          colors:colors];
    
    [self.view.layer addSublayer:gradient];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
