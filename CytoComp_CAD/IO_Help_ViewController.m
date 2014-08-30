//
//  IO_Details_ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 9/20/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "IO_Help_ViewController.h"

@interface IO_Help_ViewController ()

@end

@implementation IO_Help_ViewController

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
    _helpTextInOutOne.text = @"Goal: define the custom settings of a biological microprocessor with the following specifications: 2 bit processor, 4 potential inputs, 3 potential outputs, 2 bit register memory and 2 bit RAM. The app will guide you through the necessary steps. Each unit has its specific help window.\n\nStep 1 - Enter as system input the name of one or two biological signal molecules of interest. If you want only one input, just leave one field empty. Note, one input only will limit your system. In the next step you can only choose a NOT gate, if you want to get a working system.\n\nStep 2 - Enter the name of an output molecule of interest.\n\nStep 3 - Enter the cell type of interest.\n\nStep 4 - Press Save in order to save your inputs.\n\nStep 5 - Press Next: Design the Arithmetic Logic Unit.\n\nStep 6 - Press Reference: this leads to a review paper about a biological microprocessor";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
