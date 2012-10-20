//
//  YHCPickerView.h
//  TestDB
//
//  Created by Yashesh Chauhan on 01/10/12.
//  Copyright (c) 2012 Yashesh Chauhan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol YHCPickerViewDelegate <NSObject>

-(void)selectedRow:(int)row withString:(NSString *)text;

@end

@interface YHCPickerView : UIView<UIActionSheetDelegate,UIPickerViewDataSource,UIPickerViewDelegate,UISearchBarDelegate>{
    
    UIPickerView *pickerView;
    UIToolbar *picketToolbar;
    UISearchBar *txtSearch;
    NSArray *arrRecords;
    UIActionSheet *aac;
    
    NSMutableArray *copyListOfItems;
    BOOL searching;
	BOOL letUserSelectRow;
    
    id <YHCPickerViewDelegate> delegate;
    
}


@property (nonatomic, retain) NSArray *arrRecords;
@property (nonatomic, retain) id <YHCPickerViewDelegate> delegate;

-(id)initWithFrame:(CGRect)frame withNSArray:(NSArray *)arrValues;
-(void)showPicker;
- (void)searchTableView;
-(void)btnDoneClick;
@end
