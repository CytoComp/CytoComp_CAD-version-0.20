//
//  Memory3HelpViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "Memory3HelpViewController.h"

@interface Memory3HelpViewController ()

@end

@implementation Memory3HelpViewController

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
    self.helpMemoryThree.text = @"\n\nThe memory state of the first and second system output is shown on top of the view. \n\nStep 1 - set the upper switch on or off. On means, that the output of the system will be stored in memory, whereas off means the opposite.\n\nStep 2 - For the case that you set this output memory on, you can enable a reset function.\n\nSatep 3 - The memory state will define the system state as you can see in the view for the Control Unit after you press Next: Control Unit";
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
