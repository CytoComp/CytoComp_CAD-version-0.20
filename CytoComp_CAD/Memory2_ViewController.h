//
//  Memory2_ViewController.h
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 12/30/13.
//  Copyright (c) 2013 Dr Gerd Moe-Behrens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Memory2_ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *memoryTwoOutputOne;
@property (weak, nonatomic) IBOutlet UILabel *memoryTwoOutputTwo;


@property (weak, nonatomic) IBOutlet UIImageView *memoryTwoLabelOutputOne;


//switch memory settings

@property (weak, nonatomic) IBOutlet UISwitch *switchMemoryTwoOutputTwo;

@property (weak, nonatomic) IBOutlet UISwitch *switchMemoryTwoReset;

@end
