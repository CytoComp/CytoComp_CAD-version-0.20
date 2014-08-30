//
//  Logic_ViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 8/22/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "Logic_ViewController.h"

@interface Logic_ViewController ()

@end

@implementation Logic_ViewController

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
    self.logicInputOne.text = [defaults objectForKey:@"inputOne"];
    self.logicInputTwo.text = [defaults objectForKey:@"inputTwo"];
    self.logicOutputOne.text = [defaults objectForKey:@"outputOne"];
    
    //add observer in Notification center for image logic gate
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(addLogicGate) name:@"LogicOneNotification" object:nil];
    
    //preserve state when going back
    self.logicOneImage.image = [UIImage imageNamed:[defaults objectForKey:@"logicImageName"]];
    
    //set logic table to case A for sthe stored logic csae if segue to this view 
    //if AND gate
    if ([[defaults objectForKey:@"logicImageName"] isEqual:@"AND.png"]) {
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicImageName"] isEqual:@"NOT.png"]){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
        //set button title AB or CD to empty, if NOT gate
        if ([[defaults objectForKey:@"inputOne"] isEqual:@""]) {
            [self.logicCaseAButton setTitle:nil forState:UIControlStateNormal];
            [self.logicCaseBButton setTitle:nil forState:UIControlStateNormal];
            self.logicOneWireInputOne.image = nil;
        } else if ([[defaults objectForKey:@"inputTwo"] isEqual:@""]) {
            [self.logicCaseCButton setTitle:nil forState:UIControlStateNormal];
            [self.logicCaseCAndDButton setTitle:nil forState:UIControlStateNormal];
            self.logicOneWireInputTwo.image = nil;
        }

    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"OR.png"]){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"NOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XNOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
    
    //if input one or two is empty
    if ([[defaults objectForKey:@"inputOne"] isEqual:@""]) {
        self.logicOneWireInputOne.image = nil;
    } else if ([[defaults objectForKey:@"inputTwo"] isEqual:@""]) {
        self.logicOneWireInputTwo.image = nil;
    }

}

//notification method for logic gate image

- (void)addLogicGate
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.logicOneImage.image = [UIImage imageNamed:[defaults objectForKey:@"logicImageName"]];
    
    NSLog(@"did recieve notification");
    
    //set logic table to case A, if gate choosen
    //if AND gate
    if ([[defaults objectForKey:@"logicImageName"] isEqual:@"AND.png"]) {
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicImageName"] isEqual:@"NOT.png"]){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
        //set button title AB or CD to empty, if NOT gate
        if ([[defaults objectForKey:@"inputOne"] isEqual:@""]) {
            [self.logicCaseAButton setTitle:nil forState:UIControlStateNormal];
            [self.logicCaseBButton setTitle:nil forState:UIControlStateNormal];
            self.logicOneWireInputOne.image = nil;
        } else if ([[defaults objectForKey:@"inputTwo"] isEqual:@""]) {
            [self.logicCaseCButton setTitle:nil forState:UIControlStateNormal];
            [self.logicCaseCAndDButton setTitle:nil forState:UIControlStateNormal];
            self.logicOneWireInputTwo.image = nil;
        }
        
        
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"OR.png"]){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"NOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XNOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }

}



//truth table simulation
//A button
- (IBAction)inOneOffInTwoOff:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicImageName"] isEqual:@"AND.png"]) {
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicImageName"] isEqual:@"NOT.png"]){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
         
    //if OR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"OR.png"]){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"NOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XNOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
   
}
//B button
- (IBAction)inOneOffInTwoOn:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicImageName"] isEqual:@"AND.png"]) {
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicImageName"] isEqual:@"NOT.png"]){
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"OR.png"]){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"NOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XNOR.png"] ){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if NAND gate
    else {
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }

}
//C button
- (IBAction)inOneOnInTwoOff:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicImageName"] isEqual:@"AND.png"]) {
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicImageName"] isEqual:@"NOT.png"]){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"OR.png"]){
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XOR.png"] ){
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"NOR.png"] ){
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XNOR.png"] ){
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if NAND gate
    else {
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = nil;
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }

}
//D button
- (IBAction)inOneOnInTwoOn:(UIButton *)sender {
    
    //getting user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if AND gate
    if ([[defaults objectForKey:@"logicImageName"] isEqual:@"AND.png"]) {
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
    }
    //if Not gate //add input 1 is nil or input 2 is nil
    //input one is defined and imput two is empty
    else if ( [[defaults objectForKey:@"logicImageName"] isEqual:@"NOT.png"]){
        self.logicOneInputOneStatus.image = nil;
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = nil;
    }
    //if OR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"OR.png"]){
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if XOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XOR.png"] ){
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if NOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"NOR.png"] ){
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = nil;
        
    }
    //if XNOR gate
    else if ([[defaults objectForKey:@"logicImageName"] isEqual:@"XNOR.png"] ){
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        
    }
    //if NAND gate
    else {
        self.logicOneInputOneStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneInputTwoStatus.image = [UIImage imageNamed:@"onLabel.png"];
        self.logicOneOutputOneStatus.image = nil;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
