//
//  CACharacter.m
//  F2C_RobotTutorial
//
//  Created by Sebastian Szczepanski on 2/2/13.
//
//

#import "CACharacter.h"

@implementation CACharacter


-(id)init
{
    self = [super init];
    if(self)
    {
        _layer = [CALayer layer];
    }
    
    return self;
}

-(void)addChild:(FTCSprite*)child z:(int)index
{
    [_layer addSublayer:child.layer];
    [child setZPosition:index];
}


-(void)reorderChild:(FTCSprite*)child z:(int)index
{
    [child setZPosition:index];
}

-(void) setScale:(float)scale
{
    CATransform3D transform = CATransform3DIdentity;
    _layer.transform = CATransform3DScale(transform, scale, -scale, 1.0);
}


-(CALayer*)caLayer
{
    return _layer;
}



-(void)setPosition:(CGPoint)pos
{
    [_layer setPosition:pos];
}
@end
