//
//  TextFieldInAlertViewController.h
//  TextFieldInAlert
//
//  Created by Simsmac on 4/28/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextFieldInAlertViewController : UIViewController <UITextInputTraits, UITextFieldDelegate, UIAlertViewDelegate> {

	UITextField *userNameField;
	UITextField *passwordField;
	
	UIAlertView *loginAlert;
}

@property (nonatomic, retain) UITextField *userNameField;
@property (nonatomic, retain) UITextField *passwordField;

@end

