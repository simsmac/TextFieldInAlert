//
//  TextFieldInAlertAppDelegate.m
//  TextFieldInAlert
//
//  Created by Simsmac on 4/28/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "TextFieldInAlertAppDelegate.h"
#import "TextFieldInAlertViewController.h"

@implementation TextFieldInAlertAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
