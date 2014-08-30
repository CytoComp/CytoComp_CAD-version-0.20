//
//  Logic3ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "Logic3ViewController.h"

@interface Logic3ViewController ()

@end

@implementation Logic3ViewController

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
    self.logicThreeOutputTwo.text = [defaults objectForKey:@"outputTwo"];
    self.logicThreeInputFour.text = [defaults objectForKey:@"inputFour"];
    self.logicThreeOutputThree.text = [defaults objectForKey:@"outputThree"];
    
    
    //add observer in Notification center
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(addLogicThreeGate) name:@"LogicThreeNotification" object:nil];
    
    //preserve state when gong back
    self.logicThreeImage.image = [UIImage imageNamed:[defaults objectForKey:@"logicThreeImageName"]];
    
    //set logic table to case A for sthe stored logic csae if segue to this view
    //if AND gate
    if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"AND.png"]) {
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOT.png"]){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
        //set button title AB or CD to empty, if NOT gate
        if ([[defaults objectForKey:@"outputTwo"] isEqual:@""]) {
            [self.logicThreeCaseAButton setTitle:nil forState:UIControlStateNormal];
            [self.logicThreeCaseBButton setTitle:nil forState:UIControlStateNormal];
            self.logicThreeWireOutputTwo.image = nil;
        } else if ([[defaults objectForKey:@"inputFour"] isEqual:@""]) {
            [self.LogicThreeCaseCButton setTitle:nil forState:UIControlStateNormal];
            [self.logicThreeCaseDButton setTitle:nil forState:UIControlStateNormal];
            self.logicThreeWireInputFour.image = nil;
        }
        
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"OR.png"]){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XNOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
    
    //if input one or two is empty
    if ([[defaults objectForKey:@"outputTwo"] isEqual:@""]) {
        self.logicThreeWireOutputTwo.image = nil;
    } else if ([[defaults objectForKey:@"inputFour"] isEqual:@""]) {
        self.logicThreeWireInputFour.image = nil;
    }

    
    
}

//notification method

- (void)addLogicThreeGate
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.logicThreeImage.image = [UIImage imageNamed:[defaults objectForKey:@"logicThreeImageName"]];
    
    NSLog(@"did recieve notification");
    
    //set logic table to case A, if gate choosen
    //if AND gate
    if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"AND.png"]) {
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOT.png"]){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
        //set button title AB or CD to empty, if NOT gate
        if ([[defaults objectForKey:@"outputTwo"] isEqual:@""]) {
            [self.logicThreeCaseAButton setTitle:nil forState:UIControlStateNormal];
            [self.logicThreeCaseBButton setTitle:nil forState:UIControlStateNormal];
            self.logicThreeWireOutputTwo.image = nil;
        } else if ([[defaults objectForKey:@"inputFour"] isEqual:@""]) {
            [self.LogicThreeCaseCButton setTitle:nil forState:UIControlStateNormal];
            [self.logicThreeCaseDButton setTitle:nil forState:UIControlStateNormal];
            self.logicThreeWireInputFour.image = nil;
        }
        
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"OR.png"]){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XNOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }

}


//truth table simulation
//A button  Name:    inOneOffInTwoOff

- (IBAction)inOneOffInTwoOff:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
    //if AND gate
    if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"AND.png"]) {
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOT.png"]){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
        }
    
    //if OR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"OR.png"]){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XNOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }

}


//B button  Name:     inOneOffInTwoOn
- (IBAction)inOneOffInTwoOn:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"AND.png"]) {
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOT.png"]){
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"OR.png"]){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XNOR.png"] ){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if NAND gate
    else {
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
}



//C button  Name:     inOneOnInTwoOff

- (IBAction)inOneOnInTwoOff:(UIButton *)sender {
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"AND.png"]) {
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOT.png"]){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"OR.png"]){
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XOR.png"] ){
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOR.png"] ){
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XNOR.png"] ){
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if NAND gate
    else {
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = nil;
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
}


//D button  Name:     inOneOnInTwoOn

- (IBAction)inOneOnInTwoOn:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"AND.png"]) {
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOT.png"]){
        self.logicThreeOutputTwoStatus.image = nil;
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = nil;
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"OR.png"]){
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XOR.png"] ){
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"NOR.png"] ){
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = nil;
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicThreeImageName"] isEqual:@"XNOR.png"] ){
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicThreeOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeInputFourStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicThreeOutputThreeStatus.image = nil;
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
