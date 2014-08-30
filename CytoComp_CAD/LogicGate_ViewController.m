//
//  DesignTool_ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 8/22/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "LogicGate_ViewController.h"

@interface LogicGate_ViewController ()

@end

@implementation LogicGate_ViewController

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
- (IBAction)saveLogicOne:(UIButton *)sender {
    
    NSString *logicImageName = @"AND.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicImageName"];
    
    [defaults synchronize];
    NSLog(@"AND Logic One saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicOneNotification" object:nil];
    
    NSLog(@"LogicOneNotificationn");
    
}


- (IBAction)saveNotLogic:(UIButton *)sender {
    
    NSString *logicImageName = @"NOT.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicImageName"];
    
    [defaults synchronize];
    NSLog(@"NOT Logic One saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicOneNotification" object:nil];
    
    NSLog(@"LogicOneNotification");
  
}

- (IBAction)saveOrLogic:(UIButton *)sender {
    
    NSString *logicImageName = @"OR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicImageName"];
    
    [defaults synchronize];
    NSLog(@"OR Logic One saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicOneNotification" object:nil];
    
    NSLog(@"LogicOneNotification");
}


- (IBAction)saveXorLogic:(UIButton *)sender {
    NSString *logicImageName = @"XOR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicImageName"];
    
    [defaults synchronize];
    NSLog(@"XOR Logic One saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicOneNotification" object:nil];
    
    NSLog(@"LogicOneNotification");
}

- (IBAction)saveNORLogic:(UIButton *)sender {
    
    NSString *logicImageName = @"NOR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicImageName"];
    
    [defaults synchronize];
    NSLog(@"NOR Logic One saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicOneNotification" object:nil];
    
    NSLog(@"LogicOneNotification");
}


- (IBAction)saveXnoeLogic:(UIButton *)sender {
    
    NSString *logicImageName = @"XNOR.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicImageName"];
    
    [defaults synchronize];
    NSLog(@"XNOR Logic One saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicOneNotification" object:nil];
    
    NSLog(@"LogicOneNotification");
}

- (IBAction)saveNandLogic:(UIButton *)sender {
    
    NSString *logicImageName = @"NAND.png";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:logicImageName forKey:@"logicImageName"];
    
    [defaults synchronize];
    NSLog(@"NAND Logic One saved");
    
    //add notification in order to change the view in Logic View Controller
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LogicOneNotification" object:nil];
    
    NSLog(@"LogicOneNotification");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
