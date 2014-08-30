//
//  ControlHelpViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/19/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "ControlHelpViewController.h"

@interface ControlHelpViewController ()

@end

@implementation ControlHelpViewController

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
    self.helpControlOne.text = @"This view shows you the states of the system. Which state is the final state of the system depends on the memory state of the output. Try diffent settings and observe the effect.\n\nNext Step - Press Add New State to proceed.";
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
