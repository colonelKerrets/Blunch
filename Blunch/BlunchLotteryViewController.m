//
//  BlunchLotteryViewController.m
//  Blunch
//
//  Created by Oberst Tanja on 14.10.14.
//  Copyright (c) 2014 Oberst Tanja. All rights reserved.
//

#import "BlunchLotteryViewController.h"

@interface BlunchLotteryViewController ()

@property NSArray *blunchNames;

@end

@implementation BlunchLotteryViewController

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.blunchNames count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.blunchNames [row];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.blunchNames = @[@"Tanja", @"Ida", @"Sandra", @"Jonas", @"Paul", @"Petter"];
    
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
