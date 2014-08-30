//
//  MemoryDetailsViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 9/20/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "MemoryHelpViewController.h"

@interface MemoryHelpViewController ()

@end

@implementation MemoryHelpViewController

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
    self.helpMemoryOne.text = @"\n\nStep 1 - set the upper switch on or off. On means, that the output of the system will be stored in the memory, whereas off means the opposite.\n\nStep 2 - For the case that you set this output memory on, you can enable a reset function.\n\nStep 3 - The memory state will define the system state as you can see in the view for the Control Unit after you press Next: Control Unit";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
