//
//  Logic3ViewController.h
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Logic3ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *logicThreeOutputTwo;
@property (weak, nonatomic) IBOutlet UILabel *logicThreeInputFour;
@property (weak, nonatomic) IBOutlet UILabel *logicThreeOutputThree;

@property (weak, nonatomic) IBOutlet UIImageView *logicThreeImage;

//1,2,3 truth table simulation (UIImageViewlogicThreeOutputTwoStatus)

@property (weak, nonatomic) IBOutlet UIImageView *logicThreeOutputTwoStatus;

@property (weak, nonatomic) IBOutlet UIImageView *logicThreeInputFourStatus;

@property (weak, nonatomic) IBOutlet UIImageView *logicThreeOutputThreeStatus;


//set title for Thruth Logic Three Case in case of Not Gate

//4 outlet for A button (logicThreeCaseAButton)
@property (weak, nonatomic) IBOutlet UIButton *logicThreeCaseAButton;

//5 outlet for B button
@property (weak, nonatomic) IBOutlet UIButton *logicThreeCaseBButton;

// 6 outlet for C button
@property (weak, nonatomic) IBOutlet UIButton *LogicThreeCaseCButton;

//7 outlet for D button
@property (weak, nonatomic) IBOutlet UIButton *logicThreeCaseDButton;

//8 wire input 1 (logicThreeWireOutputTwo)

@property (weak, nonatomic) IBOutlet UIImageView *logicThreeWireOutputTwo;

//9 wire input 2
@property (weak, nonatomic) IBOutlet UIImageView *logicThreeWireInputFour;

@end
