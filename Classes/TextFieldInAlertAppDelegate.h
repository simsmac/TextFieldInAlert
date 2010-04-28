//
//  TextFieldInAlertAppDelegate.h
//  TextFieldInAlert
//
//  Created by Simsmac on 4/28/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TextFieldInAlertViewController;

@interface TextFieldInAlertAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TextFieldInAlertViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TextFieldInAlertViewController *viewController;

@end

