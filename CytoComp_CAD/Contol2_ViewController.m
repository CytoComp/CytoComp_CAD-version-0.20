//
//  Contol2_ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "Contol2_ViewController.h"

@interface Contol2_ViewController ()

@end

@implementation Contol2_ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.logicTwoInputOne.text = [defaults objectForKey:@"inputOne"];
    self.logicTwoInputTwo.text = [defaults objectForKey:@"inputTwo"];
    self.logicTwoOutputOne.text = [defaults objectForKey:@"outputOne"];
    self.logicTwoInputThree.text = [defaults objectForKey:@"inputThree"];
    self.logicTwoOutputTwo.text = [defaults objectForKey:@"outputTwo"];
    
    //label on off for output one
    self.controlTwoOutputOneLabel.image = [UIImage imageNamed:[defaults objectForKey:@"ControlColorLabel"]];
    
    //arrow for state
   // self.controlTwoArrow.image = [UIImage imageNamed:[defaults objectForKey:@"ControlTwoArrowType"]];
    
    if ([[defaults objectForKey:@"outputTwoMemory"]  isEqual: [defaults objectForKey:@"outputTwo"]])
    {
        self.controlTwoArrow.image = nil;
    }
    
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: [defaults objectForKey:@"outputOne"]] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual: @"no output two saved"])
    {
        self.controlTwoArrow.image = [UIImage imageNamed:@"bow1.png"];
    }
    
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: @"no output one saved"] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual:  @"no output two saved"])
    {
        self.controlTwoArrow.image = [UIImage imageNamed:@"bow2.png"];
    }
    
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: [defaults objectForKey:@"outputOne"]])
    {
        self.controlTwoArrow.image = [UIImage imageNamed:@"bow1.png"];
    }
    
    
    
    //label on off for output two
     self.controlTwoOutputTwoLabel.image = [UIImage imageNamed:[defaults objectForKey:@"ControlTwoColorLabel"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
