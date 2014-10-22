//
//  BlunchLotteryViewController.m
//  Blunch
//
//  Created by Oberst Tanja on 14.10.14.
//  Copyright (c) 2014 Oberst Tanja. All rights reserved.
//

#import "BlunchLotteryViewController.h"
#import <MessageUI/MessageUI.h>

@interface BlunchLotteryViewController ()

@property (strong, nonatomic) NSArray *blunchNames;
@property (strong, nonatomic) NSDictionary  *myData;

@property (strong, nonatomic) NSArray *emailTitle;
@property (strong, nonatomic) NSArray *messageBody;
@property (strong, nonatomic) NSArray *toRecipents;
@property (weak, nonatomic) IBOutlet UIPickerView *lotteryPicker;

@property (nonatomic) BOOL alreadyChoosen;

@end


@implementation BlunchLotteryViewController

- (IBAction)showEmail:(id)sender {
    // Email Subject
    NSString *emailTitle = @"Test Email";
    // Email Content
    NSString *messageBody = @"<h1>Learning iOS Programming!</h1>"; // Change the message body to HTML
    // To address
    
    NSInteger row = [self.lotteryPicker selectedRowInComponent:0];
    NSString *key = [self.myData.allKeys objectAtIndex:row];
    NSString *mail = [self.myData valueForKey:key];
    
    NSArray *toRecipents = [NSArray arrayWithObject:mail];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];

}


#pragma mark - MFMailComposeViewControllerDelegate

- (void) mailComposeController:(MFMailComposeViewController *)composer didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    
    switch (result)
    {
        case MFMailComposeResultCancelled:
            [[[UIAlertView alloc] initWithTitle:@"Oooops"
                                        message:@"Are you sure? ;)"
                                       delegate:self
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil] show];
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            [[[UIAlertView alloc] initWithTitle:@"Awesome"
                                        message:@"Thanks for sending the mail."
                                       delegate:self
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil] show];
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self performSegueWithIdentifier: @"historySegue" sender: self];
    
  
}

#pragma mark - UIPickerViewDataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.myData.count;
    
//    return [self.blunchNames count];
}

#pragma mark - UIPickerViewDelegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.myData.allKeys objectAtIndex:row];
    
//    return self.blunchNames [row];
}

#pragma mark - View

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (!self.alreadyChoosen) {
        [self.lotteryPicker selectRow: (arc4random() % [self.myData.allKeys
                                                        count]) inComponent: 0 animated: YES];
          self.alreadyChoosen = YES;
    }

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
//    if (!self.alreadyChoosen) {
//        [self.lotteryPicker selectRow:2 inComponent:0 animated:YES];
//        self.alreadyChoosen = YES;
//    }
    
}

- (void)viewDidLoad {

    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;

    self.alreadyChoosen = NO;
    
    
    self.myData = @{@"Tanja": @"tanja.oberst@foo.gmx",
                    @"Ida": @"Ida@foo.gmx",
                    @"Sandra": @"sandra@foo.gmx",
                    @"Jonas": @"Jonas@foo.gmx"};
    

    
    
    self.blunchNames = @[@"Tanja", @"Ida", @"Sandra", @"Jonas", @"Paul", @"Petter"];
    
    
    
    self.blunchNames = [self.blunchNames arrayByAddingObjectsFromArray: self.blunchNames];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
