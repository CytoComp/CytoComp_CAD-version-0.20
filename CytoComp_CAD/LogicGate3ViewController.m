//
//  LogicGate3ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "LogicGate3ViewController.h"

@interface LogicGate3ViewController ()

@end

@implementation LogicGate3ViewController

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


- (IBAction)saveAndLogicThree:(UIButton *)sender {
    NSString *logicImageName = @"AND.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicThreeImageName"];
    
    [defaults synchronize];
    NSLog(@"AND Logic Three saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicThreeNotification" object:nil];
    
    NSLog(@"LogicThreeNotificationn");
}


- (IBAction)saveNotLogicThree:(UIButton *)sender {
    NSString *logicImageName = @"NOT.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicThreeImageName"];
    
    [defaults synchronize];
    NSLog(@"NOT Logic Three saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicThreeNotification" object:nil];
    
    NSLog(@"LogicThreeNotification");
}


- (IBAction)saveOrLogicThree:(UIButton *)sender {
    NSString *logicImageName = @"OR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicThreeImageName"];
    
    [defaults synchronize];
    NSLog(@"OR Logic Three saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicThreeNotification" object:nil];
    
    NSLog(@"LogicThreeNotification");
}



- (IBAction)saveXorLogicThree:(UIButton *)sender {
    NSString *logicImageName = @"XOR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicThreeImageName"];
    
    [defaults synchronize];
    NSLog(@"XOR Logic Three saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicThreeNotification" object:nil];
    
    NSLog(@"LogicThreeNotification");
}



- (IBAction)saveNorLogicThree:(UIButton *)sender {
    NSString *logicImageName = @"NOR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicThreeImageName"];
    
    [defaults synchronize];
    NSLog(@"NOR Logic Three saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicThreeNotification" object:nil];
    
    NSLog(@"LogicThreeNotification");
}


- (IBAction)saveXnorLogicThree:(UIButton *)sender {
    NSString *logicImageName = @"XNOR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicThreeImageName"];
    
    [defaults synchronize];
    NSLog(@"XNOR Logic Three saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicThreeNotification" object:nil];
    
    NSLog(@"LogicThreeNotification");
}


- (IBAction)saveNandLogicThree:(UIButton *)sender {
    NSString *logicImageName = @"NAND.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicThreeImageName"];
    
    [defaults synchronize];
    NSLog(@"NAND Logic Three saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicThreeNotification" object:nil];
    
    NSLog(@"LogicThreeNotification");
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
