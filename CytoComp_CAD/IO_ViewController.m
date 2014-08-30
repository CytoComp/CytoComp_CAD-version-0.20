//
//  ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 8/22/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "IO_ViewController.h"

@interface IO_ViewController ()

@end

@implementation IO_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //load user defaults from previous session
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    self.inputOneTextField.text = [defaults objectForKey:@"inputOne"];
    self.inputTwoTextField.text = [defaults objectForKey:@"inputTwo"];
    self.outputOneTextField.text = [defaults objectForKey:@"outputOne"];
    self.inputCellType.text = [defaults objectForKey:@"inputCellType"];
}


- (IBAction)saveInputOutputOne:(UIBarButtonItem *)sender {
    NSString *inputOne = [_inputOneTextField text];
    NSString *inputTwo = [_inputTwoTextField text];
    NSString *outputOne = [_outputOneTextField text];
    NSString *inputCellType = [_inputCellType text];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:inputOne forKey:@"inputOne"];
    [defaults setObject:inputTwo forKey:@"inputTwo"];
    [defaults setObject:outputOne forKey:@"outputOne"];
    [defaults setObject:inputCellType forKey:@"inputCellType"];
    [defaults synchronize];
    NSLog(@"Data InputOutputOne saved");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
