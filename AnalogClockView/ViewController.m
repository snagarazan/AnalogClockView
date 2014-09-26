//
//  ViewController.m
//  AnalogClockView
//
//  Created by Nagarajan on 9/26/14.
//  Copyright (c) 2014 Nagarajan. All rights reserved.
//

#import "ViewController.h"
#import "BEMAnalogClockView.h"
@interface ViewController ()

@end

@implementation ViewController
{
    BEMAnalogClockView* analogClockView;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    analogClockView =[[BEMAnalogClockView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-70,self.view.frame.size.height/2-110, 150,150)];
    analogClockView.enableShadows = YES;
    analogClockView.realTime = YES;
    analogClockView.currentTime = YES;
    analogClockView.setTimeViaTouch = YES;
    analogClockView.borderColor = [UIColor redColor];
    analogClockView.borderWidth = 7;
    analogClockView.faceBackgroundColor = [UIColor blackColor];
    analogClockView.faceBackgroundAlpha = 1.0;
    analogClockView.delegate = (id)self;
    analogClockView.digitFont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:12];
    analogClockView.digitColor = [UIColor whiteColor];
    analogClockView.enableDigit = YES;
    analogClockView.userInteractionEnabled = NO;

    analogClockView.minuteHandLength= 50;
    analogClockView.hourHandLength= 35;
    analogClockView.secondHandLength= 60;
  
    analogClockView.minuteHandWidth= 4.0;
    analogClockView.hourHandWidth = 4.0;
    
    analogClockView.secondHandOffsideLength =10;
    analogClockView.minuteHandOffsideLength = 7;
    analogClockView.hourHandOffsideLength = 7;
    analogClockView.enableDigit=YES;
    [self.view addSubview:analogClockView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
