//
//  Memory3ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "Memory3ViewController.h"

@interface Memory3ViewController ()

@end

@implementation Memory3ViewController

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
    self.memoryThreeOutputOne.text = [defaults objectForKey:@"outputOne"];
    self.memoryThreeOutputTwo.text = [defaults objectForKey:@"outputTwo"];
    self.memoryThreeOutputThree.text = [defaults objectForKey:@"outputThree"];
    
    //memory output one
    self.memoryThreeOutputOneLabel.image = [UIImage imageNamed:[defaults objectForKey:@"ControlColorLabel"]];
    
    //memory two output
    //label on off for output two
    self.memoryThreeOutputTwoLabel.image = [UIImage imageNamed:[defaults objectForKey:@"ControlTwoColorLabel"]];
    
    
    
    
    //load switch output 1 status from user defaults - if on, so on / else off
    
    if ([[defaults objectForKey:@"outputThreeMemory"] isEqual:[defaults objectForKey:@"outputThree"]]) {
        [_memoryThreeOutputThreeSwitch setOn:YES];
    } else {
        [_memoryThreeOutputThreeSwitch setOn:NO];
    }
    
    //load switch reset memory status from user defaults - if on, so on / else off
    if ([[defaults objectForKey:@"resetOutputThreeMemory"] isEqual:[defaults objectForKey:@"outputThree"]]) {
        [_memoryThreeResetSwitch setOn:YES];
    } else {
        [_memoryThreeResetSwitch setOn:NO];
    }
    [defaults synchronize];
    
}


//memory three switch

- (IBAction)memoryThreeOutputThreeSwitchAction:(UISwitch *)sender {
    
   
    //if output 3 on, so no bow
    if (_memoryThreeOutputThreeSwitch.on) {
        
        //store switch satus for output 3 in user defaults
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        NSString *memoryOutputThree = [defaults objectForKey:@"outputThree"];
        
        
        [defaults setObject:memoryOutputThree forKey:@"outputThreeMemory"];
        
        
        NSLog(@"output3 is saved in user defaults");
        
        
        //set green color label in logic 3 for output 3
        NSString *controlThreeColorLabel = @"onLabel.png";
        
        [defaults setObject:controlThreeColorLabel forKey:@"ControlThreeColorLabel"];
        
        NSLog(@"color label in logic two saved");
        
        
       
        [defaults synchronize];
        
    }
    
    //if output 3 off
    else
    
    {
        //store switch satus for output 3 in user defaults
        NSString *memoryOutputThree = @"no output three saved";
        
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        
        [defaults setObject:memoryOutputThree forKey:@"outputThreeMemory"];
        
        
        NSLog(@"output3 not saved in user defaults");
        
        
        
        
        //set green color label
        
        NSString *controlThreeColorLabel = nil;
        
        [defaults setObject:controlThreeColorLabel forKey:@"ControlThreeColorLabel"];
        
        NSLog(@"color label in logic three saved");
        
    
        //defaults synchronize
         [defaults synchronize];
    }
    
    
    
}

//reset memory three

- (IBAction)memoryThreeResetAction:(UISwitch *)sender {
    
    //store switch satus for reset in user defaults
    
    if (_memoryThreeResetSwitch.on) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        NSString *resetMemoryOutputThree = [defaults objectForKey:@"outputThree"];
        
        
        [defaults setObject:resetMemoryOutputThree forKey:@"resetOutputThreeMemory"];
        
        [defaults synchronize];
        NSLog(@" 'output3 will be reset' is saved in user defaults");
        
    } else {
        NSString *resetMemoryOutputThree = @"output three can not be resetted";
        
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        
        [defaults setObject:resetMemoryOutputThree forKey:@"resetOutputThreeMemory"];
        
        [defaults synchronize];
        NSLog(@" output can not be resetted");
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
