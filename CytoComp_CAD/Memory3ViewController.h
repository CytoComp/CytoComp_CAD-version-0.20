//
//  Memory3ViewController.h
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Memory3ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *memoryThreeOutputOne;
@property (weak, nonatomic) IBOutlet UILabel *memoryThreeOutputTwo;
@property (weak, nonatomic) IBOutlet UILabel *memoryThreeOutputThree;

//memory output one

@property (weak, nonatomic) IBOutlet UIImageView *memoryThreeOutputOneLabel;

//memory output two

@property (weak, nonatomic) IBOutlet UIImageView *memoryThreeOutputTwoLabel;

//switch memory settings

@property (weak, nonatomic) IBOutlet UISwitch *memoryThreeOutputThreeSwitch;

@property (weak, nonatomic) IBOutlet UISwitch *memoryThreeResetSwitch;

@end
