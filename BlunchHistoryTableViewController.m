//
//  BlunchHistoryTableViewController.m
//  Blunch
//
//  Created by Oberst Tanja on 11.10.14.
//  Copyright (c) 2014 Oberst Tanja. All rights reserved.
//

#import "BlunchHistoryTableViewController.h"

@interface BlunchHistoryTableViewController ()

@end

@implementation BlunchHistoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.title = @"History";
    

    self.navigationItem.hidesBackButton = YES;
    self.navigationItem.leftBarButtonItem.enabled = NO;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Start"
                                                                              style:UIBarButtonItemStyleDone
                                                                             target:self
                                                                             action:@selector(pressStart)];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) pressStart {

    [self.navigationController popToRootViewControllerAnimated:YES];
    
}
//- (void)viewWillAppear:(BOOL)animated {}
//
//

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"Januar";
            break;
        case 1:
            return @"Feb";
            break;
        case 2:
            return @"March";
            break;
        case 3:
            return @"Januar";
            break;
            
        default:
            break;
    }
    
    return [NSString stringWithFormat:@"%li", (long)section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 7;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *blubber = [tableView dequeueReusableCellWithIdentifier:@"blunchHistoryTableViewCell" forIndexPath:indexPath];
    BlunchHistoryTableViewCell *cell = (BlunchHistoryTableViewCell *) blubber;
    
    
    if (indexPath.section == 0) {
        
        switch (indexPath.row) {
            case 0:
                cell.dayLabel.text = @"X";
                cell.monthLabel.text = @"Month";
                cell.nameLabel.text = @"MUSTERNAME";
                break;
            case 1:
                cell.dayLabel.text = @"Xakdsjka";
                cell.monthLabel.text = @"Month";
                cell.nameLabel.text = @"MUSTERNAME";
                break;
            case 2:
                cell.dayLabel.text = @"Xlkklklkl";
                cell.monthLabel.text = @"Month";
                cell.nameLabel.text = @"MUSTERNAME";
                
                break;
            default:
                break;
        }
    } else if (indexPath.section == 1) {
        
        switch (indexPath.row) {
            case 0:
                cell.dayLabel.text = @"X";
                cell.monthLabel.text = @"Month";
                cell.nameLabel.text = @"MUSTERNAME";
                break;
            case 1:
                cell.dayLabel.text = @"Xakdsjka";
                cell.monthLabel.text = @"Month";
                cell.nameLabel.text = @"MUSTERNAME";
                break;
            case 2:
                cell.dayLabel.text = @"Xlkklklkl";
                cell.monthLabel.text = @"Month";
                cell.nameLabel.text = @"MUSTERNAME";
                
                break;
            default:
                break;
        }
        

    } else if (indexPath.section == 2) {
        
        switch (indexPath.row) {
            case 0:
                cell.dayLabel.text = @"X";
                cell.monthLabel.text = @"Month";
                cell.nameLabel.text = @"MUSTERNAME";
                break;
            case 1:
                cell.dayLabel.text = @"Xakdsjka";
                cell.monthLabel.text = @"Month";
                cell.nameLabel.text = @"MUSTERNAME";
                break;
            case 2:
                cell.dayLabel.text = @"Xlkklklkl";
                cell.monthLabel.text = @"Month";
                cell.nameLabel.text = @"MUSTERNAME";
                
                break;
            default:
                break;
        }
        
        
    }

    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
