//
//  BlunchLotteryViewController.m
//  Blunch
//
//  Created by Oberst Tanja on 14.10.14.
//  Copyright (c) 2014 Oberst Tanja. All rights reserved.
//

#import "BlunchLotteryViewController.h"

@interface BlunchLotteryViewController ()

@property (strong, nonatomic) NSArray *blunchNames;
@property (weak, nonatomic) IBOutlet UIPickerView *lotteryPicker;

@end

@implementation BlunchLotteryViewController

#pragma mark - UIPickerViewDataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.blunchNames count];
}

#pragma mark - UIPickerViewDelegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.blunchNames [row];
}

#pragma mark - View

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.lotteryPicker selectRow: (arc4random() % [self.blunchNames
                                                count]) inComponent: 0 animated: YES];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.lotteryPicker selectRow:2 inComponent:0 animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
    
    self.blunchNames = @[@"Tanja", @"Ida", @"Sandra", @"Jonas", @"Paul", @"Petter"];
    self.blunchNames = [self.blunchNames arrayByAddingObjectsFromArray: self.blunchNames];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
