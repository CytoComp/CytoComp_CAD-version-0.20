//
//  Logic2_ViewController.h
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Logic2_ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *logicTwoOutputOe;
@property (weak, nonatomic) IBOutlet UILabel *logicTwoOutputTwo;
@property (weak, nonatomic) IBOutlet UILabel *logicTwoNewInputThree;

@property (weak, nonatomic) IBOutlet UIImageView *logicTwoImage;

//1,2,3 truth table simulation (UIImageViewlogicTwoOutputOneStatus)

@property (weak, nonatomic) IBOutlet UIImageView *logicTwoOutputOneStatus;

@property (weak, nonatomic) IBOutlet UIImageView *logicTwoInputThreeStatus;

@property (weak, nonatomic) IBOutlet UIImageView *logicTwoOutputTwoStatus;



//set title for Thruth Logic Two Case in case of Not Gate

//4 outlet for A button (logicTwoCaseAButton)

@property (weak, nonatomic) IBOutlet UIButton *logicTwoCaseAButton;


//5 outlet for B button

@property (weak, nonatomic) IBOutlet UIButton *logicTwoCaseTwoButton;


// 6 outlet for C button

@property (weak, nonatomic) IBOutlet UIButton *logicTwoCaseCButton;


//7 outlet for D button

@property (weak, nonatomic) IBOutlet UIButton *logicTwoCaseDButton;


//8 wire input 1 (logicTwoWireOutputOne)

@property (weak, nonatomic) IBOutlet UIImageView *logicTwoWireOutputOne;


//9 wire input 2

@property (weak, nonatomic) IBOutlet UIImageView *logicTwoWireInputThree;


@end
