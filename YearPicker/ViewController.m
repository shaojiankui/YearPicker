//
//  ViewController.m
//  YearPicker
//
//  Created by Jakey on 14-7-31.
//  Copyright (c) 2014年 Jakey. All rights reserved.
//

#import "ViewController.h"
#import "YearPickerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    picker = [[YearPickerView alloc]initWithFrame:CGRectMake(0, 480, 320, 216)];
    picker.frame = CGRectMake(0, 480, 320, 216);
    picker.pickerDeleage = self;

    
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField == self.input) {
        self.input.inputView = picker;
        self.input.inputAccessoryView = self.selsectToolbar;
        picker.minYear = 2014;
        picker.maxYear = 2050;
        picker.tag = self.input.tag;
        [picker reload];
    }
    if (textField == self.input2) {
        self.input2.inputView = picker;
        self.input2.inputAccessoryView = self.selsectToolbar;
        picker.minYear = 1970;
        picker.maxYear = 1980;
        picker.tag = self.input2.tag;
        [picker reload];
    }
}

-(void)didSelectPickerYear:(NSString *)year inputTag:(NSInteger)tag{
    if (tag == self.input.tag) {
        self.input.text = year;
    }
    if (tag == self.input2.tag) {
        self.input2.text = year;
    }
}

- (IBAction)doneTouched:(id)sender {
    if (picker.tag == self.input.tag) {
        self.input.text = picker.currentYear;
    }
    if (picker.tag == self.input2.tag) {
        self.input2.text = picker.currentYear;
    }
    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
}

- (IBAction)cancleTouched:(id)sender {
    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
    self.input.text = @"";
    self.input2.text = @"";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
