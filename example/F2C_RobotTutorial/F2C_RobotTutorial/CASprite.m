//
//  CASprite.m
//  F2C_RobotTutorial
//
//  Created by Sebastian Szczepanski on 2/4/13.
//
//

#import "CASprite.h"

@implementation CASprite



+(FTCSprite*)spriteWithFile:(NSString*)name
{
    CASprite *sprite = [[CASprite alloc ] init];
    UIImage *texture = [UIImage imageNamed:name];
    sprite.caLayer.frame = CGRectMake(0.0, 0.0, texture.size.width, texture.size.height);
    sprite.caLayer.contents = (id) texture.CGImage;
    
    return sprite;
}

-(id)init
{
    self = [super init];
    if(self)
    {
        _layer = [CALayer layer];
    }

    return self;
}

-(CALayer*)caLayer
{
    return _layer;
}

-(id)layer
{
    return _layer;
}

-(void)setZPosition:(float)pos
{
    [_layer setZPosition:pos];
}
-(void)setScaleX:(float)scaleX andY:(float)scaleY
{
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DRotate(transform, self.zRotation * M_PI / 180, 0.0, 0.0, -1.0);
    _layer.transform = CATransform3DScale(transform, scaleX, scaleY, 1.0);
}

-(void)setRotation:(float)angle
{
    CATransform3D transform = _layer.transform;
    float rotationDelta = angle - self.zRotation;
    self.zRotation = angle;
    _layer.transform = CATransform3DRotate(transform, rotationDelta * M_PI / 180, 0.0, 0.0, -1.0);
}

-(void)setPosition:(CGPoint)position
{
    [_layer setPosition:position];
}

-(void)setAnchorPoint:(CGPoint)point
{
    [_layer setAnchorPoint:point];
}

-(CGRect)frame
{
    return _layer.frame;
}

@end
