//
//  IO3ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "IO3ViewController.h"

@interface IO3ViewController ()

@end

@implementation IO3ViewController

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
    self.inputOutputThreeOutputTwo.text = [defaults objectForKey:@"outputTwo"];
    
    //load user defaults from previous session
    self.inputOutputThreeInputFour.text = [defaults objectForKey:@"inputFour"];
    self.inputOutputThreeOutputThree.text = [defaults objectForKey:@"outputThree"];
    
}
- (IBAction)saveInputOutputThree:(UIBarButtonItem *)sender {
    NSString *inputFour = [_inputOutputThreeInputFour text];
    NSString *outputThree = [_inputOutputThreeOutputThree text];
    
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:inputFour forKey:@"inputFour"];
    [defaults setObject:outputThree forKey:@"outputThree"];
    [defaults synchronize];
    NSLog(@"Data InputOutputThree saved");
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
