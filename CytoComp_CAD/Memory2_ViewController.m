//
//  Memory2_ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "Memory2_ViewController.h"

@interface Memory2_ViewController ()

@end

@implementation Memory2_ViewController

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
    self.memoryTwoOutputOne.text = [defaults objectForKey:@"outputOne"];
    self.memoryTwoOutputTwo.text = [defaults objectForKey:@"outputTwo"];
    
  
    
    //memory of label two
    self.memoryTwoLabelOutputOne.image = [UIImage imageNamed:[defaults objectForKey:@"ControlColorLabel"]];
    
    
    //load switch output 1 status from user defaults - if on, so on / else off
    
    if ([[defaults objectForKey:@"outputTwoMemory"] isEqual:[defaults objectForKey:@"outputTwo"]]) {
        [_switchMemoryTwoOutputTwo setOn:YES];
    } else {
        //to init the switch set it on and than off
        [_switchMemoryTwoOutputTwo setOn:YES];
        [_switchMemoryTwoOutputTwo setOn:NO];
    }
    
    //load switch reset memory status from user defaults - if on, so on / else off
    if ([[defaults objectForKey:@"resetOutputTwoMemory"] isEqual:[defaults objectForKey:@"outputTwo"]]) {
        [_switchMemoryTwoReset setOn:YES];
    } else {
        //to init the switch set it on and than off
        [_switchMemoryTwoReset setOn:YES];
        [_switchMemoryTwoReset setOn:NO];
    }
    
    [defaults synchronize];
}

- (IBAction)memoryTwoOutputTwoMemory:(UISwitch *)sender {
    
    if (_switchMemoryTwoOutputTwo.on) {
        //store in user defaults output2 is on
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        NSString *memoryOutputTwo = [defaults objectForKey:@"outputTwo"];
        
        
        [defaults setObject:memoryOutputTwo forKey:@"outputTwoMemory"];
        
        
        NSLog(@"output2 is saved in user defaults");
        
        //set green on label color in logic two view for output two
        NSString *controlTwoColorLabel = @"onLabel.png";
        
        [defaults setObject:controlTwoColorLabel forKey:@"ControlTwoColorLabel"];
        
        NSLog(@"color label in logic two saved");
        
        
        
        [defaults synchronize];
      
    } else {
        
        //store in user defaults output2 is off
        
        NSString *memoryOutputTwo = @"no output two saved";
        
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        
        [defaults setObject:memoryOutputTwo forKey:@"outputTwoMemory"];
        
        
        NSLog(@"output2 not saved in user defaults");
        
        
        
        
        
        //set off label color in logic two view for output two
        NSString *controlTwoColorLabel = nil;
        
        [defaults setObject:controlTwoColorLabel forKey:@"ControlTwoColorLabel"];
        
        NSLog(@"color label in logic two saved");
        
        
        
        [defaults synchronize];
        
    }
}


- (IBAction)memoryTwoReset:(UISwitch *)sender {
    
    if (_switchMemoryTwoReset.on) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        NSString *resetMemoryOutputTwo = [defaults objectForKey:@"outputTwo"];
        
        
        [defaults setObject:resetMemoryOutputTwo forKey:@"resetOutputTwoMemory"];
        
        [defaults synchronize];
        NSLog(@" 'output2 will be reset' is saved in user defaults");
        
    } else {
        
        NSString *resetMemoryOutputTwo = @"output two can not be resetted";
        
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        
        [defaults setObject:resetMemoryOutputTwo forKey:@"resetOutputTwoMemory"];
        
        [defaults synchronize];
        NSLog(@"output can not be resetted");
    }
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
