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
