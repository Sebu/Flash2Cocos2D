//
//  CCRobot.h
//  FlashToCocos
//
//  Created by Jordi.Martinez on 9/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CACharacter.h"

@interface CCRobot : CACharacter <FTCCharacterDelegate>
{
    FTCSprite   *wheel;
}

@end
