//
//  projectTableViewController.m
//  App
//
//  Created by Dawit Abera on 3/21/17.
//  Copyright © 2017 University of Washington. All rights reserved.
//

#import "projectTableViewController.h"
#import "projectTableViewCell.h"
@interface projectTableViewController ()

@end

@implementation projectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    _Title = @[@"Count()",
               @"Insertitem()",
               @"DeleteList()",
               @"Pop()",
               @"SortInsert()",
               @"Append()",
               @"RemoveDuplicates()",
               @"Reverse()",];
    _Description = @[@"Count the number of items",
                     @"Inseret an item in the nth position",
                     @"Delete the content of the list",
                     @"Delete the head node and returns the heads",
                     @"Sorts the list content in increasing order",
                     @"Appends 'b' into the end of 'a' and sets 'b' to nullptr",
                     @"Deletes any duplicate nodes from the list",
                     @"Rearrange the .next pointer and the head pointer",];
    _Images = @[@"projectIcon.png",
                @"projectIcon.png",
                @"projectIcon.png",
                @"projectIcon.png",
                @"projectIcon.png",
                @"projectIcon.png",
                @"projectIcon.png",
                @"projectIcon.png",];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _Title.count;     // since we dont know how many rows we may have, use count to generate the number of rows
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"projectTableViewCell";
    projectTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    int row  = [indexPath row];
    cell.TitleLabel.text = _Title[row];
    cell.DescriptionLabel.text = _Description[row];
    cell.ThumImage.image = [UIImage imageNamed:_Images[row]];
    
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
