//
//  Logic2_ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "Logic2_ViewController.h"

@interface Logic2_ViewController ()

@end

@implementation Logic2_ViewController

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
    self.logicTwoOutputOe.text = [defaults objectForKey:@"outputOne"];
    self.logicTwoOutputTwo.text = [defaults objectForKey:@"outputTwo"];
    self.logicTwoNewInputThree.text = [defaults objectForKey:@"inputThree"];
    
    //add observer in Notification center
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(addLogicTwoGate) name:@"LogicTwoNotification" object:nil];
    
    //preserve state when gong back
    self.logicTwoImage.image = [UIImage imageNamed:[defaults objectForKey:@"logicTwoImageName"]];
    
    
    //set logic table to case A for sthe stored logic csae if segue to this view
    //if AND gate
    if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"AND.png"]) {
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOT.png"]){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
        //set button title AB or CD to empty, if NOT gate
        if ([[defaults objectForKey:@"outputOne"] isEqual:@""]) {
            [self.logicTwoCaseAButton setTitle:nil forState:UIControlStateNormal];
            [self.logicTwoCaseTwoButton setTitle:nil forState:UIControlStateNormal];
            self.logicTwoWireOutputOne.image = nil;
        } else if ([[defaults objectForKey:@"inputThree"] isEqual:@""]) {
            [self.logicTwoCaseCButton setTitle:nil forState:UIControlStateNormal];
            [self.logicTwoCaseDButton setTitle:nil forState:UIControlStateNormal];
            self.logicTwoWireInputThree.image = nil;
        }
        
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"OR.png"]){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XNOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
    
    //if input one or two is empty
    if ([[defaults objectForKey:@"outputOne"] isEqual:@""]) {
        self.logicTwoWireOutputOne.image = nil;
    } else if ([[defaults objectForKey:@"inputThree"] isEqual:@""]) {
        self.logicTwoWireInputThree.image = nil;
    }
    
    
}

//notification method

- (void)addLogicTwoGate
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.logicTwoImage.image = [UIImage imageNamed:[defaults objectForKey:@"logicTwoImageName"]];
    
    NSLog(@"did recieve notification");
    
    //set logic table to case A, if gate choosen
    //if AND gate
    if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"AND.png"]) {
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOT.png"]){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
        //set button title AB or CD to empty, if NOT gate
        if ([[defaults objectForKey:@"outputOne"] isEqual:@""]) {
            [self.logicTwoCaseAButton setTitle:nil forState:UIControlStateNormal];
            [self.logicTwoCaseTwoButton setTitle:nil forState:UIControlStateNormal];
            self.logicTwoWireOutputOne.image = nil;
        } else if ([[defaults objectForKey:@"inputThree"] isEqual:@""]) {
            [self.logicTwoCaseCButton setTitle:nil forState:UIControlStateNormal];
            [self.logicTwoCaseDButton setTitle:nil forState:UIControlStateNormal];
            self.logicTwoWireInputThree.image = nil;
        }
        
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"OR.png"]){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XNOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }

}


//truth table simulation
//A button  Name:    inOneOffInTwoOff

- (IBAction)inOneOffInTwoOff:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"AND.png"]) {
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOT.png"]){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    
    //if OR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"OR.png"]){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XNOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
}


//B button  Name:     inOneOffInTwoOn

- (IBAction)inOneOffInTwoOn:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"AND.png"]) {
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOT.png"]){
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"OR.png"]){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XNOR.png"] ){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if NAND gate
    else {
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
}


//C button  Name:     inOneOnInTwoOff


- (IBAction)inOneOnInTwoOff:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"AND.png"]) {
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOT.png"]){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"OR.png"]){
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XOR.png"] ){
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOR.png"] ){
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XNOR.png"] ){
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if NAND gate
    else {
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = nil;
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
}

//D button  Name:     inOneOnInTwoOn

- (IBAction)inOneOnInTwoOn:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"AND.png"]) {
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOT.png"]){
        self.logicTwoOutputOneStatus.image = nil;
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = nil;
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"OR.png"]){
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XOR.png"] ){
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"NOR.png"] ){
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = nil;
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicTwoImageName"] isEqual:@"XNOR.png"] ){
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicTwoOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoInputThreeStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicTwoOutputTwoStatus.image = nil;
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
