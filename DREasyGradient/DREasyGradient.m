//
//  DREasyGradient.m
//  MinGradient
//
//  Created by David Rodrigues on 01/03/13.
//  Copyright (c) 2013 David Rodrigues. All rights reserved.
//

#import "DREasyGradient.h"

@implementation DREasyGradient

#pragma mark -

+(CAGradientLayer *)gradientWithFrame:(CGRect)frame orientation:(DRGradientOrientation)orientation colors:(NSArray *)colors
{
    NSMutableArray *cgColors = [[NSMutableArray alloc] initWithCapacity:colors.count];
    
    for (id color in colors) {
        if ([color isKindOfClass:[UIColor class]]) {
            [cgColors addObject:(id)[(UIColor *)color CGColor]];
        }
    }
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    
    if (orientation == DRHorizontalGradient) {
        gradient.startPoint = CGPointMake(0.0, 0.5);
        gradient.endPoint = CGPointMake(1.0, 0.5);
    }
    
    gradient.frame = frame;
    gradient.colors = cgColors;
    
    return gradient;
}

+(CAGradientLayer *)gradientWithFrame:(CGRect)frame orientation:(DRGradientOrientation)orientation color1:(UIColor *)color1 color2:(UIColor *)color2
{
    NSArray *colors = [NSArray arrayWithObjects:color1, color2, nil];
    
    return [DREasyGradient gradientWithFrame:frame orientation:orientation colors:colors];
}

#pragma mark - Image methods

+(UIImage *)gradientImageWithFrame:(CGRect)frame orientation:(DRGradientOrientation)orientation color1:(UIColor *)color1 color2:(UIColor *)color2
{
    CALayer *gradientLayer = [DREasyGradient gradientWithFrame:frame
                                                   orientation:orientation
                                                        color1:color1
                                                        color2:color2];
    
    return [DREasyGradient imageFromLayer:gradientLayer];
}

+(UIImage *)gradientImageWithFrame:(CGRect)frame orientation:(DRGradientOrientation)orientation colors:(NSArray *)colors
{
    CALayer *gradientLayer = [DREasyGradient gradientWithFrame:frame
                                                   orientation:orientation
                                                        colors:colors];
    
    return [DREasyGradient imageFromLayer:gradientLayer];
}

#pragma mark - Helper

+(UIImage *)imageFromLayer:(CALayer *)layer
{
    UIGraphicsBeginImageContext(layer.bounds.size);
    [layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
