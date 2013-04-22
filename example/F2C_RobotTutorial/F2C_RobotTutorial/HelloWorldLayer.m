//
//  HelloWorldLayer.m
//  F2C_RobotTutorial
//
//  Created by Jordi.Martinez on 3/15/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CALayer *) scene
{
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer layer];
	
	// return the scene
	return layer;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
        theRobot = [[CCRobot alloc] init];
        [theRobot setPosition:CGPointMake(160, 310)];
        [theRobot setScale:2.0f];
        
        [self addSublayer:theRobot.caLayer];
        
            
	
    }
    
    
	return self;
}

-(void) gotoFrame
{
    [theRobot playFrame:4 fromAnimation:@"moving"];
}

-(void) pause
{
    [theRobot pauseAnimation];
}

-(void) resume
{
    [theRobot resumeAnimation];
}

-(void) doPlay:(CCMenuItemLabel *)item
{
    NSArray *arr = [[theRobot animationEventsTable] allKeys];

    NSString *animationStr = [arr objectAtIndex:item.tag];

    // to determine if the animation should loop we check if it ends in "ing"
    BOOL doesLoop = [animationStr hasSuffix:@"ing"];    
    
    [theRobot playAnimation:[arr objectAtIndex:item.tag] loop:doesLoop wait:NO];
}




@end
