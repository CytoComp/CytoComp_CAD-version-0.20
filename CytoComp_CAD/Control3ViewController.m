//
//  Control3ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "Control3ViewController.h"

@interface Control3ViewController ()

@end

@implementation Control3ViewController

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
    self.logicThreeInputOne.text = [defaults objectForKey:@"inputOne"];
    self.logicThreeInputTwo.text = [defaults objectForKey:@"inputTwo"];
    self.logicThreeOutputOne.text = [defaults objectForKey:@"outputOne"];
    self.logicThreeInputThree.text = [defaults objectForKey:@"inputThree"];
    self.logicThreeOutputTwo.text = [defaults objectForKey:@"outputTwo"];
    self.logicThreeInputFour.text = [defaults objectForKey:@"inputFour"];
    self.logicThreeOutputThree.text = [defaults objectForKey:@"outputThree"];
    
    //memory output one
    
    self.controlOutputOneLabel.image = [UIImage imageNamed:[defaults objectForKey:@"ControlColorLabel"]];
    
    //memory output two
    self.controlThreeOutputTwoLabel.image = [UIImage imageNamed:[defaults objectForKey:@"ControlTwoColorLabel"]];
    
    //label for output three
    
    self.controlThreeOutputThreeLabel.image = [UIImage imageNamed:[defaults objectForKey:@"ControlThreeColorLabel"]];
    
    //arrow for state
    //self.controlThreeBowType.image = [UIImage imageNamed:[defaults objectForKey:@"ControlThreeArrowType"]];
    
    
    
    if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: [defaults objectForKey:@"outputOne"]] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual:  [defaults objectForKey:@"outputTwo"]] && [[defaults objectForKey:@"outputThreeMemory"]  isEqual:  [defaults objectForKey:@"outputThree"]])
    {
        self.controlThreeBowType.image = nil;
    }
    
    
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: [defaults objectForKey:@"outputOne"]] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual:@"no output two saved"] && [[defaults objectForKey:@"outputThreeMemory"]  isEqual:  [defaults objectForKey:@"outputThree"]])
    {
        self.controlThreeBowType.image = nil;
    }
    
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: [defaults objectForKey:@"outputOne"]] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual:  [defaults objectForKey:@"outputTwo"]] && [[defaults objectForKey:@"outputThreeMemory"]  isEqual: @"no output three saved"])
    {
        self.controlThreeBowType.image = [UIImage imageNamed:@"bow1.png"];
    }
    
    
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: [defaults objectForKey:@"outputOne"]] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual: @"no output two saved"] && [[defaults objectForKey:@"outputThreeMemory"]  isEqual: @"no output three saved"])
    {
        self.controlThreeBowType.image = [UIImage imageNamed:@"bow2.png"];
    }
    
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: @"no output one saved"] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual:  [defaults objectForKey:@"outputTwo"]] && [[defaults objectForKey:@"outputThreeMemory"]  isEqual:  [defaults objectForKey:@"outputThree"]])
    {
        self.controlThreeBowType.image = nil;
    }
    
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: @"no output one saved"] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual:  @"no output two saved"] && [[defaults objectForKey:@"outputThreeMemory"]  isEqual:  [defaults objectForKey:@"outputThree"]])
    {
        self.controlThreeBowType.image = nil;
    }
    
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: @"no output one saved"] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual: [defaults objectForKey:@"outputTwo"]] && [[defaults objectForKey:@"outputThreeMemory"]  isEqual: @"no output three saved"])
    {
        self.controlThreeBowType.image = [UIImage imageNamed:@"bow1.png"];
    }
    
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: @"no output one saved"] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual:  @"no output two saved"] && [[defaults objectForKey:@"outputThreeMemory"]  isEqual: @"no output three saved"])
    {
        self.controlThreeBowType.image = [UIImage imageNamed:@"bow3.png"];
        
    }
    
    
    
    
    
    
    //if 1 not set ok
    else if ([[defaults objectForKey:@"outputTwoMemory"]  isEqual:  [defaults objectForKey:@"outputTwo"]] && [[defaults objectForKey:@"outputThreeMemory"]  isEqual:  [defaults objectForKey:@"outputThree"]])
    {
        self.controlThreeBowType.image = nil;
    }
    
    //if 2 not set ok
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: [defaults objectForKey:@"outputOne"]] && [[defaults objectForKey:@"outputThreeMemory"]  isEqual:  [defaults objectForKey:@"outputThree"]])
    {
        self.controlThreeBowType.image = nil;
    }
    
    
    //if 3 not set
    else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: [defaults objectForKey:@"outputOne"]] && [[defaults objectForKey:@"outputTwoMemory"]  isEqual:  [defaults objectForKey:@"outputTwo"]])
    {
        self.controlThreeBowType.image = [UIImage imageNamed:@"bow1.png"];
    }
    
    //if out 1 and 2 not set ok
    else if ([[defaults objectForKey:@"outputThreeMemory"]  isEqual:  [defaults objectForKey:@"outputThree"]])
    {
        self.controlThreeBowType.image = nil;
    }
    
    //if out 1 and 3 not set ok
    else if ([[defaults objectForKey:@"outputTwoMemory"]  isEqual: [defaults objectForKey:@"outputTwo"]])
    {
        self.controlThreeBowType.image = [UIImage imageNamed:@"bow1.png"];
    }
    
    //if out 2 or 3 not set ok
     else if ([[defaults objectForKey:@"outputOneMemory"]  isEqual: [defaults objectForKey:@"outputOne"]])
     {
     self.controlThreeBowType.image = [UIImage imageNamed:@"bow2.png"];
     }
    
    
    
    
    //for the case that a user default is not set and to avoid a strinByAppendingString with nil argument
     
    if ([defaults objectForKey:@"inputOne"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"inputOne"];
        
    }
    
    if ([defaults objectForKey:@"inputTwo"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"inputTwo"];
        
    }
    
    
    if ([defaults objectForKey:@"outputOne"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"outputOne"];
        
    }
    
    if ([defaults objectForKey:@"logicImageName"] == nil) {
        NSString *inputOne = @"?  ";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"logicImageName"];
        
    }
    
    if ([defaults objectForKey:@"outputOneMemory"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"outputOneMemory"];
        
    }
    
    if ([defaults objectForKey:@"resetOutputOneMemory"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"resetOutputOneMemory"];
        
    }
    
    if ([defaults objectForKey:@"inputThree"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"inputThree"];
        
    }
    
    
    if ([defaults objectForKey:@"outputTwo"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"outputTwo"];
        
    }
    
    if ([defaults objectForKey:@"logicTwoImageName"] == nil) {
        NSString *inputOne = @"?  ";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"logicTwoImageName"];
        
    }
    
    if ([defaults objectForKey:@"outputTwoMemory"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"outputTwoMemory"];
        
    }
    
    if ([defaults objectForKey:@"resetOutputTwoMemory"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"resetOutputTwoMemory"];
        
    }
    
    if ([defaults objectForKey:@"inputFour"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"inputFour"];
        
    }
    
    if ([defaults objectForKey:@"outputThree"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"outputThree"];
        
    }
    
    if ([defaults objectForKey:@"logicThreeImageName"] == nil) {
        NSString *inputOne = @"?  ";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"logicThreeImageName"];
        
    }
    
    if ([defaults objectForKey:@"outputThreeMemory"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"outputThreeMemory"];
        
    }
    
    if ([defaults objectForKey:@"resetOutputThreeMemory"] == nil) {
        NSString *inputOne = @"none";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:inputOne forKey:@"resetOutputThreeMemory"];
        
    }

 
   
    
}
- (IBAction)GetQuote:(UIBarButtonItem *)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
   NSString *textToShare = @"Please send me information about a custom order of a biological microprocessor with the following specifications:\n 2 bit processor\n 4 potential inputs\n 3 potential outputs\n 2 bit register memory\n 2 bit RAM";
   
  
    
    //define letter content
    NSString *textToShareOne = [@"Input 1 = " stringByAppendingString:[defaults objectForKey:@"inputOne"]];
    NSString *textToShareTwo = [@"Input 2 = " stringByAppendingString:[defaults objectForKey:@"inputTwo"]];
    NSString *textToShareThree = [@"Output 1 = " stringByAppendingString:[defaults objectForKey:@"outputOne"]];
   
     NSString *textToShareFour = [@"Logic Gate 1 = " stringByAppendingString:[[defaults objectForKey:@"logicImageName"]substringToIndex:3]];
    
    NSString *textToShareFive = [@"Store in Memory 1: " stringByAppendingString:[defaults objectForKey:@"outputOneMemory"]];
    
    NSString *textToShareSix = [@"Reset Memory 1 for: " stringByAppendingString:[defaults objectForKey:@"resetOutputOneMemory"]];
    
    //stage 1 to 2
    NSString *textToShareEight = [@"Input 3 = " stringByAppendingString:[defaults objectForKey:@"inputThree"]];
    NSString *textToShareNine = [@"Output 2 = " stringByAppendingString:[defaults objectForKey:@"outputTwo"]];
    
    NSString *textToShareTen = [@"Logic Gate 2 = " stringByAppendingString:[[defaults objectForKey:@"logicTwoImageName"]substringToIndex:3]];
    
    NSString *textToShareEleven = [@"Store in Memory 2: " stringByAppendingString:[defaults objectForKey:@"outputTwoMemory"]];
    
    NSString *textToShareTwelve = [@"Reset Memory 2 for: " stringByAppendingString:[defaults objectForKey:@"resetOutputTwoMemory"]];
    
    //stage 2 to 3
    NSString *textToShareFourteen = [@"Input 4 = " stringByAppendingString:[defaults objectForKey:@"inputFour"]];
    NSString *textToShareFifteen = [@"Output 3 = " stringByAppendingString:[defaults objectForKey:@"outputThree"]];
    
    NSString *textToShareSixteen = [@"Logic Gate 3 = " stringByAppendingString:[[defaults objectForKey:@"logicThreeImageName"]substringToIndex:3]];
    
    NSString *textToShareSeventeen = [@"Store in Memory 3: " stringByAppendingString:[defaults objectForKey:@"outputThreeMemory"]];
    
    NSString *textToShareEighteen = [@"Reset Memory 3 for: " stringByAppendingString:[defaults objectForKey:@"resetOutputThreeMemory"]];
    
    
    
    //UIImage *imageToShare = [UIImage imageNamed:@"Overview"];
   // NSArray *activityItems = @[textToShare, textToShareOne,textToShareTwo, imageToShare];
    
     NSArray *activityItems = @[textToShare, textToShareOne,textToShareTwo, textToShareThree, textToShareFour, textToShareFive, textToShareSix, textToShareEight, textToShareNine, textToShareTen, textToShareEleven, textToShareTwelve, textToShareFourteen, textToShareFifteen, textToShareSixteen, textToShareSeventeen, textToShareEighteen];
    
    
    UIActivityViewController *activityVC =
    [[UIActivityViewController alloc] initWithActivityItems:activityItems
                                      applicationActivities:nil];
    
    
    activityVC.excludedActivityTypes = @[UIActivityTypeMessage, UIActivityTypePostToWeibo, UIActivityTypePrint, UIActivityTypeCopyToPasteboard, UIActivityTypeAssignToContact, UIActivityTypeSaveToCameraRoll, UIActivityTypePostToFacebook, UIActivityTypePostToFlickr];
    
    
    [self presentViewController:activityVC animated:YES completion:nil];
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
