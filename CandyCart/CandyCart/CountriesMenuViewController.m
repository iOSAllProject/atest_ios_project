//
//  CountriesMenuViewController.m
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/4/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import "CountriesMenuViewController.h"
#import "ProfileViewController.h"
#import "BillingCheckOutViewController.h"
#import "ShippingCheckOutViewController.h"
@interface CountriesMenuViewController ()

@end

@implementation CountriesMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    menuItems = [[DataService instance] countries];
    for(int i=0;i<[menuItems count];i++){
        
        if([selectedCountry isEqualToString:[[menuItems objectAtIndex:i] objectForKey:@"code"]])
        {
            NSIndexPath* selectedCellIndexPath= [NSIndexPath indexPathForRow:i inSection:0];
            [tbl selectRowAtIndexPath:selectedCellIndexPath animated:false scrollPosition:UITableViewScrollPositionMiddle];
            break;
        }
    }

}


-(void)selectedCountry:(NSString*)country_code
{
    
    selectedCountry = country_code;
        
    
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
    tableView = tbl;
    
    // Configure the cell...
    cell.textLabel.text = [[ToolClass instance] decodeHTMLCharacterEntities:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"country"]];
    cell.detailTextLabel.text = [[menuItems objectAtIndex:indexPath.row] objectForKey:@"code"];
    return cell;
}

- (UITableViewCellAccessoryType)tableView:(UITableView *)tv accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *children = [[menuItems objectAtIndex:indexPath.row] objectForKey:@"states"];
    if([children count] == 0)
    {
        return UITableViewCellAccessoryNone;
    }
    else
    {
        return UITableViewCellAccessoryDisclosureIndicator;
    }
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
    

    NSArray *children = [[menuItems objectAtIndex:indexPath.row] objectForKey:@"states"];
    if([children count] == 0)
    {
        if(chooseController == 1)
        {
        [profileController updateStateTextFieldNoState];
        }
        else if(chooseController == 2){
            [billingController updateStateTextFieldNoState];
        }
        else if(chooseController == 3){
            [shippingController updateStateTextFieldNoState];
        }
    }
    else
    {
        DynamicTableViewController *dynamic = [[DynamicTableViewController alloc] init];
        [dynamic setStateArray:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"states"]];
         dynamic.title = @"States";
        if(chooseController == 1)
        {
        [dynamic setProfileController:profileController];
            [profileController updateStateTextFieldNoState];
        }
        else if(chooseController == 2)
        {
            [dynamic setBillingController:billingController];
            [billingController updateStateTextFieldNoState];
        }
        else if(chooseController == 3)
        {
            [dynamic setShippingController:shippingController];
            [shippingController updateStateTextFieldNoState];
        }
            
            
        [self.navigationController pushViewController:dynamic animated:YES];
         
    }
  
    if(chooseController == 1)
    {
    [profileController updateCountryTextField:[[ToolClass instance] decodeHTMLCharacterEntities:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"country"]] countryCode:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"code"]];
    }
    else if( chooseController == 2)
    {
       [billingController updateCountryTextField:[[ToolClass instance] decodeHTMLCharacterEntities:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"country"]] countryCode:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"code"]];
        
    }
    else if( chooseController == 3)
    {
        [shippingController updateCountryTextField:[[ToolClass instance] decodeHTMLCharacterEntities:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"country"]] countryCode:[[menuItems objectAtIndex:indexPath.row] objectForKey:@"code"]];
        
        
    }
    
}


-(void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([indexPath row] == ((NSIndexPath*)[[tableView indexPathsForVisibleRows] lastObject]).row){
        //end of loading
        //for example [activityIndicator stopAnimating];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
