//
//  AppDelegate.m
//  F2C_RobotTutorial
//
//  Created by Jordi.Martinez on 3/15/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import "cocos2d.h"

#import "AppDelegate.h"
#import "GameConfig.h"
#import "HelloWorldLayer.h"

@implementation AppDelegate {
    CCDirectorIOS * _director;
    UINavigationController *_navController;
}

@synthesize window;


- (void) applicationDidFinishLaunching:(UIApplication*)application
{
    
    window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
	_navController = [[UINavigationController alloc] initWithRootViewController:_director];
	_navController.navigationBarHidden = YES;
    
	[window setRootViewController:_navController];
	[window makeKeyAndVisible];
    
	[[CCFileUtils sharedFileUtils] setiPadSuffix:@"-ipad"];
	[[CCFileUtils sharedFileUtils] setiPhoneRetinaDisplaySuffix:@"-hd"];
	[[CCFileUtils sharedFileUtils] setiPadRetinaDisplaySuffix:@"-ipadhd"];
    
    [_navController.view.layer addSublayer:[HelloWorldLayer scene]];

}


- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
}

-(void) applicationDidEnterBackground:(UIApplication*)application {
}

-(void) applicationWillEnterForeground:(UIApplication*)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

- (void)applicationSignificantTimeChange:(UIApplication *)application {
}

- (void)dealloc {
}

@end
