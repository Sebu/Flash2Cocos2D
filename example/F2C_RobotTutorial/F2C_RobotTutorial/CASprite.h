//
//  CASprite.h
//  F2C_RobotTutorial
//
//  Created by Sebastian Szczepanski on 2/4/13.
//
//

#import "FTCSprite.h"

@interface CASprite : FTCSprite
{
    CALayer* _layer;
}

-(CALayer*)caLayer;
@end
