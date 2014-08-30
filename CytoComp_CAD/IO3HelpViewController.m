//
//  IO3HelpViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "IO3HelpViewController.h"

@interface IO3HelpViewController ()

@end

@implementation IO3HelpViewController

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
    
    self.helpInputThree.text = @"\n\nStep 1 - Enter as system input the name of a fourth biological signal molecule of interest. If you want only one input, just leave one field empty. Note, one input only will limit your system. In the next step you can only choose a NOT gate, if you want to get a working system.\n\nStep 2 - Enter the name of a third output molecule of interest.\n\nStep 3 - Press Save in order to save your inputs.\n\nStep 4 - Press Next: Design the Arithmetic Logic Unit.";
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
