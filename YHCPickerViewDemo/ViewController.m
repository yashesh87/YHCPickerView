//
//  ViewController.m
//  YHCPickerViewDemo
//
//  Created by Yashesh Chauhan on 20/10/12.
//  Copyright (c) 2012 Yashesh Chauhan. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"YHCPickerDemo";
    
    countriesArray = [[NSMutableArray alloc] init]; 
    
    NSLocale *locale = [NSLocale currentLocale];
    
    NSArray *countryArray = [NSLocale ISOCountryCodes]; 
    for (NSString *countryCode in countryArray) 
    {
        NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
        
        NSString *displayNameString = [locale displayNameForKey:NSLocaleCountryCode value:countryCode];
        [countriesArray addObject:displayNameString];
        [pool release];
        
    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}


-(void)selectedRow:(int)row withString:(NSString *)text{
    
    NSLog(@"%d",row);
    lblIndex.text = [NSString stringWithFormat:@"%d",row];
    lblText.text = text;
    
}


- (IBAction)btnShowPickerClick:(id)sender {
    

    YHCPickerView *objYHCPickerView = [[YHCPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 480) withNSArray:countriesArray];
    
    objYHCPickerView.delegate = self;
    [self.view addSubview:objYHCPickerView];
    [objYHCPickerView showPicker];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
