//
//  Control_ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 8/22/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "Control_ViewController.h"

@interface Control_ViewController ()

@end

@implementation Control_ViewController

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
    self.controlInput1.text = [defaults objectForKey:@"inputOne"];
    self.controlInput2.text = [defaults objectForKey:@"inputTwo"];
    self.controlOutputOne.text = [defaults objectForKey:@"outputOne"];
    
    
    //add observer in Notification center
   // [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(addControlArrow) name:@"ControlOneNotification" object:nil];
    
    //bow on off for state 1
    self.controlOneImage.image = [UIImage imageNamed:[defaults objectForKey:@"ControlArrowType"]];
    
     //label on off for state 1
    self.controlOneOnLabel.image = [UIImage imageNamed:[defaults objectForKey:@"ControlColorLabel"]];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
