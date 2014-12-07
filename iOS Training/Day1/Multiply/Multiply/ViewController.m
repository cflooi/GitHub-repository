//
//  ViewController.m
//  Multiply
//
//  Created by L on 5/12/14.
//  Copyright (c) 2014 L. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentControl;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UIView *myView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSliderValueChanged:(UISlider *)sender {
    self.multiplierLabel.text = [NSString stringWithFormat:@"%d", (int)sender.value];
}

- (IBAction)onCalculateButtonPressed:(id)sender {
    // Hide keyboard
    [self.numberTextField resignFirstResponder];
    
    // Compute result
    int number = self.numberTextField.text.intValue;
    int multiplier = self.multiplierLabel.text.intValue;
    int final;
    if (0 == self.operatorSegmentControl.selectedSegmentIndex)
        final = number * multiplier;
    else
        final = number / multiplier;
    
    // Change background color
    if (final > 20) {
        self.myView.backgroundColor = [UIColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];
    } else {
        self.myView.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    }
    
    // Display result text
    if (0 == final % 3 && 0 == final % 5) {
        self.answerLabel.text = @"fizzbuzz";
    } else if (0 == final % 3) {
        self.answerLabel.text = @"fizz";
    } else if (0 == final % 5) {
        self.answerLabel.text = @"buzz";
    } else {
        self.answerLabel.text = [NSString stringWithFormat:@"%d", final];
    }
}

@end
