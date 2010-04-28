//
//  TextFieldInAlertViewController.m
//  TextFieldInAlert
//
//  Created by Simsmac on 4/28/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "TextFieldInAlertViewController.h"

@implementation TextFieldInAlertViewController

@synthesize userNameField, passwordField;

- (void)loadView {
	[super viewDidLoad];

	loginAlert = [[UIAlertView alloc] initWithTitle:@"Login To Google Reader" message:@"\n\n_" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Sign In", nil];
	userNameField = [[UITextField alloc] initWithFrame:CGRectMake(12, 45, 260, 25)];
	passwordField = [[UITextField alloc] initWithFrame:CGRectMake(12, 85, 260, 25)];
	
	CGAffineTransform moveUp = CGAffineTransformMakeTranslation(0, 80);
	[loginAlert setTransform:moveUp];
	
	[userNameField setBackgroundColor:[UIColor whiteColor]];
	[userNameField setPlaceholder:@"Email"];
	userNameField.keyboardAppearance = UIKeyboardAppearanceAlert;
	userNameField.delegate = self;
	userNameField.autocapitalizationType = UITextAutocapitalizationTypeNone;
	userNameField.autocorrectionType = UITextAutocorrectionTypeNo;
	userNameField.enablesReturnKeyAutomatically = YES;
	userNameField.keyboardType = UIKeyboardTypeEmailAddress;
	userNameField.borderStyle = UITextBorderStyleLine;
	
	[passwordField setBackgroundColor:[UIColor whiteColor]];
	[passwordField setPlaceholder:@"Password"];
	passwordField.secureTextEntry = YES;
	passwordField.keyboardAppearance = UIKeyboardAppearanceAlert;
	passwordField.delegate = self;
	passwordField.autocapitalizationType = UITextAutocapitalizationTypeNone;
	passwordField.autocorrectionType = UITextAutocorrectionTypeNo;
	passwordField.enablesReturnKeyAutomatically = YES;
	passwordField.keyboardType = UIKeyboardTypeASCIICapable;
	passwordField.returnKeyType = UIReturnKeyDone;
	passwordField.borderStyle = UITextBorderStyleLine;
	
	[loginAlert addSubview:userNameField];
	[loginAlert addSubview:passwordField];
	[loginAlert show];
	[userNameField becomeFirstResponder];
	[loginAlert release];
	[userNameField release];
	[passwordField release];
}

#pragma mark -
#pragma mark Delegate Callbacks

- (BOOL)textFieldShouldReturn:(UITextField *)textField	{
	[textField resignFirstResponder];
	if (textField == passwordField) {
			//TODO: call login method
		NSLog(@"logging in now");
		[loginAlert dismissWithClickedButtonIndex:1 animated:YES];
	} else {
		[passwordField becomeFirstResponder];
	}
	
	return NO;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (buttonIndex == 1) {
			//TODO: call login method
		NSLog(@"logging in now");
	} else {
			//maybe quit app if they hit cancel.
		NSLog(@"Canceling login");
	}
}

#pragma mark -

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    [super dealloc];
}

@end
