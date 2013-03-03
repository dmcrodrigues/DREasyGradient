/*
 * Copyright (c) 2013 David Rodrigues
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

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
