//
//  FigureRenderer.h
//  Eertyks
//
//  Created by Noto Kaname on 12/05/03.
//  Copyright (c) 2012年 Irimasu Densan Planning. All rights reserved.
//

#import <Foundation/Foundation.h>

// #define USING_COCOS2D

typedef enum tagFigureRendererType
{
    FigureRendererTypeNextButton
    ,FigureRendererTypeNextButtonSelected
}FigureRendererType;

@class CCSprite;
@class CCSpriteBatchNode;

@interface FigureRenderer : NSObject

+ (void) renderWithFigureType:(FigureRendererType)figureRendererType;
+ (CGSize) sizeForFigureType:(FigureRendererType)figureRendererType;
+ (NSString*) keyNameWithFigureType:(FigureRendererType)figureRendererType;
#ifdef USING_COCOS2D
+ (CCSprite*) createSpriteWithFigureType:(FigureRendererType)figureRendererType;
+ (CCSpriteBatchNode*) createBatchNodeWithFigureType:(FigureRendererType)figureRendererType;
#endif
+ (UIImage*) createImageWithFigureType:(FigureRendererType)figureRendererType;

@end
