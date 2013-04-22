//
//  FTCSprite.m
//  FlashToCocos
//
//  Created by Jordi.Martinez on 9/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FTCSprite.h"
#import "FTCCharacter.h"
#import "CASprite.h"

@implementation FTCSprite

@synthesize name;
@synthesize ignorePosition = _ignorePosition;
@synthesize ignoreRotation = _ignoreRotation;
@synthesize ignoreScale = _ignoreScale;
@synthesize ignoreAlpha = _ignoreAlpha;
@synthesize animationsArr = _animationsArr;




+(FTCSprite*)spriteWithFile:(NSString*)name
{
    FTCSprite *sprite = [CASprite spriteWithFile:name];
 
    return sprite;
}

-(void) setCurrentAnimation:(NSString *)_framesId forCharacter:(FTCCharacter *)_character
{
    currentCharacter = _character;
    currentAnimationInfo = [self.animationsArr objectForKey:_framesId];
}

-(NSMutableDictionary*) animationsArr
{
    if (_animationsArr == nil)
        _animationsArr = [[NSMutableDictionary alloc] init];

    return _animationsArr;
}

-(void) setCurrentAnimationFramesInfo:(NSArray *)_framesInfoArr forCharacter:(FTCCharacter *)_character
{
    currentCharacter = _character;
    currentAnimationInfo = _framesInfoArr;
}


-(void) applyFrameInfo:(FTCFrameInfo *)_frameInfo
{
    if (!_ignorePosition) {
        [self setPosition:CGPointMake(_frameInfo.x, _frameInfo.y)];
    }
    
    if (!_ignoreRotation) {
        [self setRotation:_frameInfo.rotation];
        //        [self setRotationZ:_frameInfo.rotation];

    }
    
    if (!_ignoreScale) {
        if (_frameInfo.scaleX==0) _frameInfo.scaleX = 1.0;
        if (_frameInfo.scaleY==0) _frameInfo.scaleY = 1.0;
        [self setScaleX:_frameInfo.scaleX andY:_frameInfo.scaleY];
    }
    
//    if (!_ignoreAlpha)
//        [self setOpacity:_frameInfo.alpha * 255];
}


-(void) playFrame:(int)_frameindex
{
    if (!currentAnimationInfo) return;
    if (_frameindex < currentAnimationInfo.count) 
        [self applyFrameInfo:[currentAnimationInfo objectAtIndex:_frameindex]];
}

@end
