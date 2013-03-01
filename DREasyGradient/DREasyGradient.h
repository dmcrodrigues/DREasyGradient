//
//  DREasyGradient.h
//  MinGradient
//
//  Created by David Rodrigues on 01/03/13.
//  Copyright (c) 2013 David Rodrigues. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

typedef enum {
    DRHorizontalGradient,
    DRVerticalGradient
} DRGradientOrientation;

@interface DREasyGradient : NSObject

+(CAGradientLayer *)gradientWithFrame:(CGRect)frame orientation:(DRGradientOrientation)orientation colors:(NSArray *)colors;

+(CAGradientLayer *)gradientWithFrame:(CGRect)frame orientation:(DRGradientOrientation)orientation color1:(UIColor *)color1 color2:(UIColor *)color2;

+(UIImage *)gradientImageWithFrame:(CGRect)frame orientation:(DRGradientOrientation)orientation colors:(NSArray *)colors;

+(UIImage *)gradientImageWithFrame:(CGRect)frame orientation:(DRGradientOrientation)orientation color1:(UIColor *)color1 color2:(UIColor *)color2;

@end
