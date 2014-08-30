//
//  IO2_ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "IO2_ViewController.h"

@interface IO2_ViewController ()

@end

@implementation IO2_ViewController

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
    self.inputOutputOutputOne.text = [defaults objectForKey:@"outputOne"];
    
    //load user defaults from previous session
    self.inputThreeText.text = [defaults objectForKey:@"inputThree"];
    self.outputTwoTextField.text = [defaults objectForKey:@"outputTwo"];
    
}


- (IBAction)saveInputOutputTwo:(UIBarButtonItem *)sender {
    NSString *inputThree = [_inputThreeText text];
    NSString *outputTwo = [_outputTwoTextField text];

    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:inputThree forKey:@"inputThree"];
    [defaults setObject:outputTwo forKey:@"outputTwo"];
    [defaults synchronize];
    NSLog(@"Data InputOutputTwo saved");
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
