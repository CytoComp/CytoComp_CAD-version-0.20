//
//  Control3ViewController.h
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Control3ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *logicThreeInputOne;
@property (weak, nonatomic) IBOutlet UILabel *logicThreeInputTwo;
@property (weak, nonatomic) IBOutlet UILabel *logicThreeOutputOne;
@property (weak, nonatomic) IBOutlet UILabel *logicThreeInputThree;
@property (weak, nonatomic) IBOutlet UILabel *logicThreeOutputTwo;
@property (weak, nonatomic) IBOutlet UILabel *logicThreeInputFour;
@property (weak, nonatomic) IBOutlet UILabel *logicThreeOutputThree;

//memory output one
@property (weak, nonatomic) IBOutlet UIImageView *controlOutputOneLabel;

//memory output two
@property (weak, nonatomic) IBOutlet UIImageView *controlThreeOutputTwoLabel;

//memory output three

@property (weak, nonatomic) IBOutlet UIImageView *controlThreeOutputThreeLabel;

//arrow for state

@property (weak, nonatomic) IBOutlet UIImageView *controlThreeBowType;

@end
