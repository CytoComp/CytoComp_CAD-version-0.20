//
//  Logic_ViewController.h
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 8/22/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Logic_ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *logicInputOne;
@property (weak, nonatomic) IBOutlet UILabel *logicInputTwo;
@property (weak, nonatomic) IBOutlet UILabel *logicOutputOne;


@property (weak, nonatomic) IBOutlet UIImageView *logicOneImage;

//truth table simulation
@property (weak, nonatomic) IBOutlet UIImageView *logicOneInputOneStatus;
@property (weak, nonatomic) IBOutlet UIImageView *logicOneInputTwoStatus;
@property (weak, nonatomic) IBOutlet UIImageView *logicOneOutputOneStatus;

//set title for Thruth Logic Case in case of Not Gate

//outlet for A button
@property (weak, nonatomic) IBOutlet UIButton *logicCaseAButton;

//outlet for B button
@property (weak, nonatomic) IBOutlet UIButton *logicCaseBButton;

//outlet for C button
@property (weak, nonatomic) IBOutlet UIButton *logicCaseCButton;

//outlet for D button
@property (weak, nonatomic) IBOutlet UIButton *logicCaseCAndDButton;

//wire input 1
@property (weak, nonatomic) IBOutlet UIImageView *logicOneWireInputOne;

//wire input two
@property (weak, nonatomic) IBOutlet UIImageView *logicOneWireInputTwo;

@end
