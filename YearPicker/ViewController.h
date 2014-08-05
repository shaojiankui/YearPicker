//
//  ViewController.h
//  YearPicker
//
//  Created by Jakey on 14-7-31.
//  Copyright (c) 2014年 Jakey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YearPickerView.h"
@interface ViewController : UIViewController<YearPickerDelegate,UITextFieldDelegate>{

    YearPickerView *picker;
    
    
}
@property (weak, nonatomic) IBOutlet UITextField *input;
@property (weak, nonatomic) IBOutlet UITextField *input2;
@property (weak, nonatomic) IBOutlet UIToolbar *selsectToolbar;
- (IBAction)doneTouched:(id)sender;
- (IBAction)cancleTouched:(id)sender;

@end
