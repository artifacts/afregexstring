/*
 * RegexViewController.h
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

#import <UIKit/UIKit.h>

@interface RegexViewController : UIViewController <UITextFieldDelegate> {
	IBOutlet UITextField *input;
	IBOutlet UITextField *pattern;
	IBOutlet UITextField *substitute;	
	IBOutlet UITextView *output;
}
@property (nonatomic, retain) UITextView *output;
@property (nonatomic, retain) UITextField *input;
@property (nonatomic, retain) UITextField *pattern;
@property (nonatomic, retain) UITextField *substitute;	

- (BOOL)textFieldShouldReturn:(UITextField *)textField;

@end

