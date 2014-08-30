//
//  LogicDetailsViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 9/20/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "LogicHelpViewController.h"

@interface LogicHelpViewController ()

@end

@implementation LogicHelpViewController

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
    self.helpLogicOne.text = @"\n\nStep 1 - Press Logic Gate: a popover will appear where you can choose the appropiate logic gate. Press the + button and the logic gate of choice will be set. OBS: the NOT gate is only for one input systems.\n\nStep 2 - Press the A, B, C or D button and you will see effects of different states of the inputs on the output. A green circle means on, no circle means off.\n\nStep 3 - Press Next: Design Memory: this will lead you to the next step of memory design";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
