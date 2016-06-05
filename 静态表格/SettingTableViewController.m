//
//  SettingTableViewController.m
//  静态表格
//
//  Created by 南珂 on 16/6/5.
//  Copyright © 2016年 Nicole. All rights reserved.
//

#import "SettingTableViewController.h"
#import "User.h"
@interface SettingTableViewController ()

@property (nonatomic, strong) User *currentuser;

@end

@implementation SettingTableViewController

- (User *)currentuser
{
    if (!_currentuser) {
        _currentuser = [[User alloc] init];
        _currentuser.wechatNumber = @"test";
        _currentuser.qqNumber = @"123456";
        _currentuser.phoneNumber = @"18519719938";
        _currentuser.email = @"357642251@qq.com";
        _currentuser.protectAccount = NO;
    }
    return _currentuser;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"账号与安全";
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    } else if (section == 1) {
        return 3;
    } else {
        return 3;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = @"微信号";
            cell.detailTextLabel.text = self.currentuser.wechatNumber;
            cell.accessoryType = UITableViewCellAccessoryNone;
            break;
        case 1:
            if (indexPath.row == 0) {
                cell.textLabel.text = @"QQ号";
                cell.detailTextLabel.text = self.currentuser.qqNumber;
            } else if (indexPath.row == 1) {
                cell.textLabel.text = @"手机号";
                cell.detailTextLabel.text = self.currentuser.phoneNumber;
            } else {
                cell.textLabel.text = @"邮箱地址";
                cell.detailTextLabel.text = self.currentuser.email;
            }
            break;
        case 2:
            if (indexPath.row == 0) {
                cell.textLabel.text = @"微信密码";
            } else if (indexPath.row == 1) {
                cell.textLabel.text = @"账号保护";
                cell.detailTextLabel.text = self.currentuser.isProtextAccount ? @"已保护" : @"未保护";
                UIImageView *imageView = [[UIImageView alloc] init];
                imageView.frame = CGRectMake(210, 11, 20, 20);
                imageView.image = [UIImage imageNamed:self.currentuser.isProtextAccount ? @"ProfileLockOn" : @"ProfileLockOff"];
                [cell.contentView addSubview:imageView];
            } else {
                cell.textLabel.text = @"微信安全中心";
            }
            break;
            
        default:
            break;
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
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
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
