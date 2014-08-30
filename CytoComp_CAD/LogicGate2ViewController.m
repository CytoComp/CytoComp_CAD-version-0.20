//
//  LogicGate2ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "LogicGate2ViewController.h"

@interface LogicGate2ViewController ()

@end

@implementation LogicGate2ViewController

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
}

- (IBAction)saveAndLogicTwo:(UIButton *)sender {
    NSString *logicImageName = @"AND.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicTwoImageName"];
    
    [defaults synchronize];
    NSLog(@"AND Logic Two saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicTwoNotification" object:nil];
    
    NSLog(@"LogicTwoNotificationn");
}

- (IBAction)saveNotLogicTwo:(UIButton *)sender {
    NSString *logicImageName = @"NOT.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicTwoImageName"];
    
    [defaults synchronize];
    NSLog(@"NOT Logic Two saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicTwoNotification" object:nil];
    
    NSLog(@"LogicTwoNotification");
}

- (IBAction)saveOrLogicTwo:(UIButton *)sender {
    NSString *logicImageName = @"OR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicTwoImageName"];
    
    [defaults synchronize];
    NSLog(@"OR Logic Two saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicTwoNotification" object:nil];
    
    NSLog(@"LogicTwoNotification");
}

- (IBAction)saveXorLogicTwo:(UIButton *)sender {
    NSString *logicImageName = @"XOR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicTwoImageName"];
    
    [defaults synchronize];
    NSLog(@"XOR Logic Two saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicTwoNotification" object:nil];
    
    NSLog(@"LogicTwoNotification");
}

- (IBAction)saveNorLogicTwo:(UIButton *)sender {
    NSString *logicImageName = @"NOR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicTwoImageName"];
    
    [defaults synchronize];
    NSLog(@"NOR Logic Two saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicTwoNotification" object:nil];
    
    NSLog(@"LogicTwoNotification");
}

- (IBAction)saveXnorLogicTwo:(UIButton *)sender {
    NSString *logicImageName = @"XNOR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicTwoImageName"];
    
    [defaults synchronize];
    NSLog(@"XNOR Logic Two saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicTwoNotification" object:nil];
    
    NSLog(@"LogicTwoNotification");
}


- (IBAction)saveNandLogicTwo:(UIButton *)sender {
    NSString *logicImageName = @"NAND.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicTwoImageName"];
    
    [defaults synchronize];
    NSLog(@"NAND Logic Two saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicTwoNotification" object:nil];
    
    NSLog(@"LogicTwoNotification");
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
