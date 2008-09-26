/*
 * RegexViewController.m
 * View Controller holding some text fields for a string, pattern, substitute and the result.
 * 
 * Copyright 2008 Artifacts - Fine Software Development
 * http://www.artifacts.de
 * Author: Michael Markowski (m.markowski@artifacts.de)
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#import "RegexViewController.h"
#include "regex.h"
#import "AFRegexString.h" // Will extend NSString by adding some regex methods.

@implementation RegexViewController

@synthesize output;
@synthesize input;
@synthesize pattern;
@synthesize substitute;

- (void)viewWillAppear:(BOOL)animated
{
	self.output.text = [self.input.text stringByRegex:self.pattern.text substitution:self.substitute.text];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
	@try { 
		self.output.text = [self.input.text stringByRegex:self.pattern.text substitution:self.substitute.text];
	} 
	@catch (NSException *exception) 
	{ 
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[exception name] message: [exception reason]
													   delegate: self cancelButtonTitle: @"OK" otherButtonTitles: nil];
		[alert show];
		[alert release];		
	} 
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	return YES;
}

@end
