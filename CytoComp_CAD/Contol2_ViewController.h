//
//  Contol2_ViewController.h
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Contol2_ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *logicTwoInputOne;
@property (weak, nonatomic) IBOutlet UILabel *logicTwoInputTwo;
@property (weak, nonatomic) IBOutlet UILabel *logicTwoOutputOne;
@property (weak, nonatomic) IBOutlet UILabel *logicTwoInputThree;
@property (weak, nonatomic) IBOutlet UILabel *logicTwoOutputTwo;

//memory output one state
@property (weak, nonatomic) IBOutlet UIImageView *controlTwoOutputOneLabel;

//control two arrow for states

@property (weak, nonatomic) IBOutlet UIImageView *controlTwoArrow;

//memory output two state

@property (weak, nonatomic) IBOutlet UIImageView *controlTwoOutputTwoLabel;

@end
