//
//  FigureRenderer.m
//  Eertyks
//
//  Created by Noto Kaname on 12/05/03.
//  Copyright (c) 2012年 Irimasu Densan Planning. All rights reserved.
//

#import "FigureRenderer.h"
#import "cocos2d.h"

@implementation FigureRenderer

+ (void) renderWithFigureType:(FigureRendererType)figureRendererType
{
    switch (figureRendererType) {
        case FigureRendererTypeNextButton:
        {
            //// Color Declarations
            UIColor* gradientColor = [UIColor colorWithRed: 0.42 green: 0.85 blue: 0.88 alpha: 1];
            CGFloat gradientColorHSBA[4];
            [gradientColor getHue: &gradientColorHSBA[0] saturation: &gradientColorHSBA[1] brightness: &gradientColorHSBA[2] alpha: &gradientColorHSBA[3]];
            
            UIColor* gradientColor2 = [UIColor colorWithHue: gradientColorHSBA[0] saturation: gradientColorHSBA[1] brightness: 0.5 alpha: gradientColorHSBA[3]];
            
            //// Abstracted Graphic Attributes
            NSString* textContent = @"次へ";
            NSString* text2Content = @"つぎ";
            
            
            //// Rounded Rectangle Drawing
            UIBezierPath* roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(2.5, 3, 143.5, 61) cornerRadius: 12];
            [[UIColor whiteColor] setFill];
            [roundedRectanglePath fill];
            
            [gradientColor2 setStroke];
            roundedRectanglePath.lineWidth = 1.5;
            [roundedRectanglePath stroke];
            
            
            //// Text Drawing
            CGRect textFrame = CGRectMake(5, 22, 141, 37);
            [gradientColor2 setFill];
            [textContent drawInRect: textFrame withFont: [UIFont fontWithName: @"HiraKakuProN-W6" size: 22] lineBreakMode: UILineBreakModeWordWrap alignment: UITextAlignmentCenter];
            
            
            //// Text 2 Drawing
            CGRect text2Frame = CGRectMake(46, 11, 37, 14);
            [gradientColor2 setFill];
            [text2Content drawInRect: text2Frame withFont: [UIFont fontWithName: @"HiraKakuProN-W3" size: [UIFont smallSystemFontSize]] lineBreakMode: UILineBreakModeWordWrap alignment: UITextAlignmentCenter];
            

        }
            break;
        case FigureRendererTypeNewGameButton:
        {
            //// Color Declarations
            UIColor* gradientColor = [UIColor colorWithRed: 0.42 green: 0.85 blue: 0.88 alpha: 1];
            CGFloat gradientColorHSBA[4];
            [gradientColor getHue: &gradientColorHSBA[0] saturation: &gradientColorHSBA[1] brightness: &gradientColorHSBA[2] alpha: &gradientColorHSBA[3]];
            
            UIColor* gradientColor2 = [UIColor colorWithHue: gradientColorHSBA[0] saturation: gradientColorHSBA[1] brightness: 0.5 alpha: gradientColorHSBA[3]];
            
            //// Abstracted Graphic Attributes
            NSString* textContent = @"新しく始める";
            NSString* text2Content = @"あた";
            NSString* text3Content = @"はじ";
            
            
            //// Rounded Rectangle Drawing
            UIBezierPath* roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(2.5, 3, 143.5, 61) cornerRadius: 12];
            [[UIColor whiteColor] setFill];
            [roundedRectanglePath fill];
            
            [gradientColor2 setStroke];
            roundedRectanglePath.lineWidth = 1.5;
            [roundedRectanglePath stroke];
            
            
            //// Text Drawing
            CGRect textFrame = CGRectMake(5, 22, 141, 37);
            [gradientColor2 setFill];
            [textContent drawInRect: textFrame withFont: [UIFont fontWithName: @"HiraKakuProN-W6" size: 22] lineBreakMode: UILineBreakModeWordWrap alignment: UITextAlignmentCenter];
            
            
            //// Text 2 Drawing
            CGRect text2Frame = CGRectMake(3, 10, 37, 14);
            [gradientColor2 setFill];
            [text2Content drawInRect: text2Frame withFont: [UIFont fontWithName: @"HiraKakuProN-W3" size: [UIFont smallSystemFontSize]] lineBreakMode: UILineBreakModeWordWrap alignment: UITextAlignmentCenter];
            
            
            //// Text 3 Drawing
            CGRect text3Frame = CGRectMake(69, 10, 37, 14);
            [gradientColor2 setFill];
            [text3Content drawInRect: text3Frame withFont: [UIFont fontWithName: @"HiraKakuProN-W3" size: [UIFont smallSystemFontSize]] lineBreakMode: UILineBreakModeWordWrap alignment: UITextAlignmentCenter];
        }
            break;
        case FigureRendererTypeNewGameButtonSelected:
        {
            //// General Declarations
            CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
            CGContextRef context = UIGraphicsGetCurrentContext();
            
            //// Color Declarations
            UIColor* gradientColor = [UIColor colorWithRed: 0.42 green: 0.85 blue: 0.88 alpha: 1];
            CGFloat gradientColorHSBA[4];
            [gradientColor getHue: &gradientColorHSBA[0] saturation: &gradientColorHSBA[1] brightness: &gradientColorHSBA[2] alpha: &gradientColorHSBA[3]];
            
            UIColor* gradientColor2 = [UIColor colorWithHue: gradientColorHSBA[0] saturation: gradientColorHSBA[1] brightness: 0.5 alpha: gradientColorHSBA[3]];
            
            //// Gradient Declarations
            NSArray* gradientColors = [NSArray arrayWithObjects: 
                                       (id)[UIColor whiteColor].CGColor, 
                                       (id)gradientColor.CGColor, 
                                       (id)gradientColor2.CGColor, nil];
            CGFloat gradientLocations[] = {0, 0.45, 0.8};
            CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (CFArrayRef)gradientColors, gradientLocations);
            
            //// Abstracted Graphic Attributes
            NSString* textContent = @"新しく始める";
            NSString* text2Content = @"あた";
            NSString* text3Content = @"はじ";
            
            
            //// Rounded Rectangle Drawing
            UIBezierPath* roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(2.5, 3, 143.5, 61) cornerRadius: 12];
            CGContextSaveGState(context);
            [roundedRectanglePath addClip];
            CGContextDrawLinearGradient(context, gradient, CGPointMake(74.25, 3), CGPointMake(74.25, 64), 0);
            CGContextRestoreGState(context);
            
            [gradientColor2 setStroke];
            roundedRectanglePath.lineWidth = 1.5;
            [roundedRectanglePath stroke];
            
            
            //// Text Drawing
            CGRect textFrame = CGRectMake(5, 22, 141, 37);
            [[UIColor whiteColor] setFill];
            [textContent drawInRect: textFrame withFont: [UIFont fontWithName: @"HiraKakuProN-W6" size: 22] lineBreakMode: UILineBreakModeWordWrap alignment: UITextAlignmentCenter];
            
            
            //// Text 2 Drawing
            CGRect text2Frame = CGRectMake(3, 10, 37, 14);
            [[UIColor whiteColor] setFill];
            [text2Content drawInRect: text2Frame withFont: [UIFont fontWithName: @"HiraKakuProN-W3" size: [UIFont smallSystemFontSize]] lineBreakMode: UILineBreakModeWordWrap alignment: UITextAlignmentCenter];
            
            
            //// Text 3 Drawing
            CGRect text3Frame = CGRectMake(69, 10, 37, 14);
            [[UIColor whiteColor] setFill];
            [text3Content drawInRect: text3Frame withFont: [UIFont fontWithName: @"HiraKakuProN-W3" size: [UIFont smallSystemFontSize]] lineBreakMode: UILineBreakModeWordWrap alignment: UITextAlignmentCenter];
            
            //// Cleanup
            CGGradientRelease(gradient);
            CGColorSpaceRelease(colorSpace);            
        }
            break;
        case FigureRendererTypeNextButtonSelected:
        {
            //// General Declarations
            CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
            CGContextRef context = UIGraphicsGetCurrentContext();
            
            //// Color Declarations
            UIColor* gradientColor = [UIColor colorWithRed: 0.42 green: 0.85 blue: 0.88 alpha: 1];
            CGFloat gradientColorHSBA[4];
            [gradientColor getHue: &gradientColorHSBA[0] saturation: &gradientColorHSBA[1] brightness: &gradientColorHSBA[2] alpha: &gradientColorHSBA[3]];
            
            UIColor* gradientColor2 = [UIColor colorWithHue: gradientColorHSBA[0] saturation: gradientColorHSBA[1] brightness: 0.5 alpha: gradientColorHSBA[3]];
            
            //// Gradient Declarations
            NSArray* gradientColors = [NSArray arrayWithObjects: 
                                       (id)[UIColor whiteColor].CGColor, 
                                       (id)gradientColor.CGColor, 
                                       (id)gradientColor2.CGColor, nil];
            CGFloat gradientLocations[] = {0, 0.45, 0.8};
            CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (CFArrayRef)gradientColors, gradientLocations);
            
            //// Abstracted Graphic Attributes
            NSString* textContent = @"次へ";
            NSString* text2Content = @"つぎ";
            
            
            //// Rounded Rectangle Drawing
            UIBezierPath* roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(2.5, 3, 143.5, 61) cornerRadius: 12];
            CGContextSaveGState(context);
            [roundedRectanglePath addClip];
            CGContextDrawLinearGradient(context, gradient, CGPointMake(74.25, 3), CGPointMake(74.25, 64), 0);
            CGContextRestoreGState(context);
            
            [gradientColor2 setStroke];
            roundedRectanglePath.lineWidth = 1.5;
            [roundedRectanglePath stroke];
            
            
            //// Text Drawing
            CGRect textFrame = CGRectMake(5, 22, 141, 37);
            [[UIColor whiteColor] setFill];
            [textContent drawInRect: textFrame withFont: [UIFont fontWithName: @"HiraKakuProN-W6" size: 22] lineBreakMode: UILineBreakModeWordWrap alignment: UITextAlignmentCenter];
            
            
            //// Text 2 Drawing
            CGRect text2Frame = CGRectMake(46, 11, 37, 14);
            [[UIColor whiteColor] setFill];
            [text2Content drawInRect: text2Frame withFont: [UIFont fontWithName: @"HiraKakuProN-W3" size: [UIFont smallSystemFontSize]] lineBreakMode: UILineBreakModeWordWrap alignment: UITextAlignmentCenter];
            
            //// Cleanup
            CGGradientRelease(gradient);
            CGColorSpaceRelease(colorSpace);
        }
        break;    
    default:
        break;
    }
}

+ (CGSize) sizeForFigureType:(FigureRendererType)figureRendererType
{
    CGSize size = CGSizeZero;
    switch (figureRendererType) {
    case FigureRendererTypeNextButton:
    case FigureRendererTypeNextButtonSelected:
        size =  CGSizeMake(149.0f, 66.0f);
        break;
    default:
        break;
    }
    return size;
}

+ (NSString*) keyNameWithFigureType:(FigureRendererType)figureRendererType
{
    NSString* keyName = nil;
    switch (figureRendererType) {
        keyName = @"FigureRendererTypeNextButton";
        break;
    case FigureRendererTypeNextButtonSelected:
        keyName = @"FigureRendererTypeNextButtonSelected";
        break;
    default:
        break;
    }
    return keyName;
}

+ (UIImage*) createImageWithFigureType:(FigureRendererType)figureRendererType
{
    CGSize sizeImage = [FigureRenderer sizeForFigureType:figureRendererType ];
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(sizeImage.width ,sizeImage.height ) , NO , [UIScreen mainScreen].scale );
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
    
    [FigureRenderer renderWithFigureType:figureRendererType];
    
    CGContextRestoreGState(context);
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();        
    
    return image;
}

+ (CCSprite*) createSpriteWithFigureType:(FigureRendererType)figureRendererType
{
    CCSprite* sprite = nil;
    
    // タイトル画面の作成
    NSAutoreleasePool* autoreleasePool = [[NSAutoreleasePool alloc] init];
    {
        UIImage* image = [self createImageWithFigureType:figureRendererType];
        sprite = [[CCSprite alloc] initWithCGImage:[image CGImage] key:[FigureRenderer keyNameWithFigureType:figureRendererType] ];
    }
    [autoreleasePool release];    
    
    return [sprite autorelease]/*autoreleasePool を抜けてからautorelease 指定を行う*/;
}

+ (CCSpriteBatchNode*) createBatchNodeWithFigureType:(FigureRendererType)figureRendererType
{
    CCSpriteBatchNode* batchNode = nil;
    
    // タイトル画面の作成
    NSAutoreleasePool* autoreleasePool = [[NSAutoreleasePool alloc] init];
    {
        CGSize sizeImage = [FigureRenderer sizeForFigureType:figureRendererType ];
        
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(sizeImage.width ,sizeImage.height ) , NO , [UIScreen mainScreen].scale );
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSaveGState(context);
        
        
        [FigureRenderer renderWithFigureType:figureRendererType];
        
        CGContextRestoreGState(context);
        
        UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
        CCTexture2D* texture2d = [[[CCTexture2D alloc] initWithImage:image] autorelease];
        batchNode = [[CCSpriteBatchNode alloc] initWithTexture:texture2d capacity:29/*defaultCapacity*/ ];
        
        UIGraphicsEndImageContext();        
    }
    [autoreleasePool release];    
    
    return [batchNode autorelease]/*autoreleasePool を抜けてからautorelease 指定を行う*/;
}



@end
