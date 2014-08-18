//
//  DynamicTableViewController.m
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/4/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import "DynamicTableViewController.h"
#import "ProfileViewController.h"
#import "BillingCheckOutViewController.h"
#import "ShippingCheckOutViewController.h"
@interface DynamicTableViewController ()

@end

@implementation DynamicTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)setStateArray:(NSArray*)ary{
    menuItems = ary;
}

-(void)setProfileController:(ProfileViewController*)pro{
    
    profileController = pro;
    chooseController = 1;
}

-(void)setBillingController:(BillingCheckOutViewController*)pro{
    
    billingController = pro;
    chooseController = 2;
}

-(void)setShippingController:(ShippingCheckOutViewController*)pro{
    
    shippingController = pro;
    chooseController = 3;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [menuItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
    }
    
    
    // Configure the cell...
    cell.textLabel.text = [[ToolClass instance] decodeHTMLCharacterEntities:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"state"]];
    cell.detailTextLabel.text = [[menuItems objectAtIndex:indexPath.row] objectForKey:@"state_code"];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    
    if(chooseController ==1)
    {
     [profileController updateStateTextField:[[ToolClass instance] decodeHTMLCharacterEntities:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"state"]] stateCode:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"state_code"]];
        
    }
    else if(chooseController == 2)
    {
         [billingController updateStateTextField:[[ToolClass instance] decodeHTMLCharacterEntities:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"state"]] stateCode:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"state_code"]];
        
    }
    else if(chooseController == 3)
    {
        [shippingController updateStateTextField:[[ToolClass instance] decodeHTMLCharacterEntities:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"state"]] stateCode:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"state_code"]];
        
    }
}

@end
