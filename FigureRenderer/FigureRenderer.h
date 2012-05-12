//
//  FigureRenderer.h
//  Eertyks
//
//  Created by Noto Kaname on 12/05/03.
//  Copyright (c) 2012年 Irimasu Densan Planning. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum tagFigureRendererType
{
    ,FigureRendererTypeNextButton
    ,FigureRendererTypeNextButtonSelected
}FigureRendererType;

@class CCSprite;
@class CCSpriteBatchNode;

@interface FigureRenderer : NSObject

+ (void) renderWithFigureType:(FigureRendererType)figureRendererType;
+ (CGSize) sizeForFigureType:(FigureRendererType)figureRendererType;
+ (CCSprite*) createSpriteWithFigureType:(FigureRendererType)figureRendererType;
+ (NSString*) keyNameWithFigureType:(FigureRendererType)figureRendererType;
+ (CCSpriteBatchNode*) createBatchNodeWithFigureType:(FigureRendererType)figureRendererType;
+ (UIImage*) createImageWithFigureType:(FigureRendererType)figureRendererType;

@end
