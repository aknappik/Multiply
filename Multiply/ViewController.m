//
//  ViewController.m
//  Multiply
//
//  Created by Alison K. Knappik on 5/12/14.
//  Copyright (c) 2014 aknapp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;



@end

@implementation ViewController

int sliderValue;

- (IBAction)sliderAction:(id)sender {
    sliderValue = (int)self.mySlider.value;
    self.myNumber.text = [NSString stringWithFormat:@"%d", sliderValue];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   // UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];

   
    
}



- (IBAction)onCalculateButtonPressed:(id)sender {
    NSInteger myNumber = [self.myNumber.text integerValue];
    NSInteger myMultiplier = [self.myMultiplier.text integerValue];
    NSInteger finalValue = myNumber * myMultiplier;
    NSString *stringValue = [NSString stringWithFormat:@"%d", finalValue];
    
    
    if (finalValue > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    if ((finalValue %3 == 0) && (finalValue %5 == 0)){
        self.myAnswer.text = @"fizzbuzz";
    }
        else if (finalValue %3 == 0) {
        self.myAnswer.text = @"fizz";}
    
            else if (finalValue %5 ==0) {
            self.myAnswer.text = @"buzz";
            }else {
                self.myAnswer.text = stringValue;
            }
    //gets rid of the keyboard
    [self.myAnswer resignFirstResponder];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
