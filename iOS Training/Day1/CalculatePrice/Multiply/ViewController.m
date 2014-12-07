//
//  ViewController.m
//  Multiply
//
//  Created by L on 5/12/14.
//  Copyright (c) 2014 L. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *quantityTextField;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UITextField *gstTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
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

- (IBAction) onCalculateButtonPressed:(UIButton *)sender {
    double result = self.quantityTextField.text.intValue * self.priceTextField.text.floatValue * self.gstTextField.text.floatValue;
    self.resultLabel.text = [NSString stringWithFormat:@"%g", result];
}
@end
