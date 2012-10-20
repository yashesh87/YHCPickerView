//
//  ViewController.h
//  YHCPickerViewDemo
//
//  Created by Yashesh Chauhan on 20/10/12.
//  Copyright (c) 2012 Yashesh Chauhan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YHCPickerView.h"

@interface ViewController : UIViewController <YHCPickerViewDelegate>{
    
    IBOutlet UILabel *lblIndex;
    IBOutlet UILabel *lblText;
    NSMutableArray * countriesArray;
}

- (IBAction)btnShowPickerClick:(id)sender;

@end
