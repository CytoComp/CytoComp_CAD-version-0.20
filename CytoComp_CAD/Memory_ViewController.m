//
//  Memory_ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 8/22/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "Memory_ViewController.h"

@interface Memory_ViewController ()

@end

@implementation Memory_ViewController

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
       self.memoryOutputOne.text = [defaults objectForKey:@"outputOne"];
    
    
    //initial switch off, this will result initial to nil in user default and thus need an initial arrow fro state swithc off
    NSString *controlArrowType = @"bow1.png";
    
    [defaults setObject:controlArrowType forKey:@"ControlArrowType"];
    
    
    
    //load switch output 1 status from user defaults - if on, so on / else off
    
    if ([[defaults objectForKey:@"outputOneMemory"] isEqual:[defaults objectForKey:@"outputOne"]]) {
          [_outputOneMemory setOn:YES];
    }
    
    else {
          [_outputOneMemory setOn:NO];
        
        
    }
    
    
    
    //load switch reset memory status from user defaults - if on, so on / else off
    if ([[defaults objectForKey:@"resetOutputOneMemory"] isEqual:[defaults objectForKey:@"outputOne"]]) {
        [_resetOutputOneMemory setOn:YES];
    } else {
        [_resetOutputOneMemory setOn:NO];
    }
    
    
    
    
    
    [defaults synchronize];
  
}

//store memory state for output 1 in user defaults
- (IBAction)outputOneMemory:(UISwitch *)sender {
    if(_outputOneMemory.on) {
        //store in user default output1 one is on
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        NSString *memoryOutputOne = [defaults objectForKey:@"outputOne"];
        
        
        [defaults setObject:memoryOutputOne forKey:@"outputOneMemory"];
        
        
        NSLog(@"output1 is saved in user defaults");
        
        
        
        //set arrow type for logic one view
        
        NSString *controlArrowType = nil;
        
        [defaults setObject:controlArrowType forKey:@"ControlArrowType"];
        
         NSLog(@"no arrow in logic one saved");
        
        
        //set green on label color in logic one view
        NSString *controlColorLabel = @"onLabel.png";
        
        [defaults setObject:controlColorLabel forKey:@"ControlColorLabel"];
        
        NSLog(@"color label in logic one saved");
        
        
        [defaults synchronize];
       
        
        
    }
    
    else {
        //store in userdefault output1 off
        
        NSString *memoryOutputOne = @"no output one saved";
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        
        [defaults setObject:memoryOutputOne forKey:@"outputOneMemory"];
        
        NSLog(@"output1 not saved in user defaults");
        
        
        //set arrow type for logic one view
        
        NSString *controlArrowType = @"bow1.png";
        
        [defaults setObject:controlArrowType forKey:@"ControlArrowType"];
        
        NSLog(@"arrow 1 in logic one saved");
        
        //set label color in logic one view
        NSString *controlColorLabel = nil;
        
        [defaults setObject:controlColorLabel forKey:@"ControlColorLabel"];
        
        NSLog(@"color label in logic one saved");
        
        
        [defaults synchronize];
        
       
    }
}


- (IBAction)resetOutputOneMemory:(UISwitch *)sender {
    if(_resetOutputOneMemory.on) {
    //store in user default 1utput1 on
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *resetMemoryOutputOne = [defaults objectForKey:@"outputOne"];
    
    
    [defaults setObject:resetMemoryOutputOne forKey:@"resetOutputOneMemory"];
    
    [defaults synchronize];
    NSLog(@"output1 will be reset is saved in user defaults");
    
}

else {
    //store in user default output1 off
    
    NSString *resetMemoryOutputOne = @"output one can not be resetted";
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
    [defaults setObject:resetMemoryOutputOne forKey:@"resetOutputOneMemory"];
    
    [defaults synchronize];
    NSLog(@"output can not be resetted");
}
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
