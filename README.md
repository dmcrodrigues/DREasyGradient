DREasyGradient
==============
This project is just an helper with a minimal API to create gradients easily on iOS applications.

![image](https://raw.github.com/dmcrodrigues/DREasyGradient/master/DREasyGradient-Demo/screenshot.png)

## Usage
To use DREasyGradient you just need to import the folder `DREasyGradient/`. This folder contains the header and the source code.

### API
```Objective-C
// create a gradient with multiple colors
+(CAGradientLayer *)gradientWithFrame:(CGRect)frame
                          orientation:(DRGradientOrientation)orientation
                               colors:(NSArray *)colors

// create a gradient with just two colors
+(CAGradientLayer *)gradientWithFrame:(CGRect)frame
                          orientation:(DRGradientOrientation)orientation
                               color1:(UIColor *)color1
                               color2:(UIColor *)color2

// create a gradient with multiple colors
+(UIImage *)gradientImageWithFrame:(CGRect)frame
                       orientation:(DRGradientOrientation)orientation
                            colors:(NSArray *)colors;

// create a gradient with just two colors
+(UIImage *)gradientImageWithFrame:(CGRect)frame
                       orientation:(DRGradientOrientation)orientation
                            color1:(UIColor *)color1
                            color2:(UIColor *)color2;
```
> You can control the gradient orientation using `DRVerticalGradient` or `DRVerticalGradient`.

### Example
```Objective-C
CGRect frame = CGRectMake(10.0, 30.0, self.view.frame.size.width - 20.0, 50.0);

NSArray *colors = [[NSArray alloc] initWithObjects:
                   [UIColor redColor],
                   [UIColor orangeColor],
                   [UIColor blueColor],
                   nil];

gradient = [DREasyGradient gradientWithFrame:frame
                                 orientation:DRVerticalGradient
                                      colors:colors];

[self.view.layer addSublayer:gradient];
```

## Dependencies

- `QuartzCore.framework`

## Licence
[MIT License](http://en.wikipedia.org/wiki/MIT_License)