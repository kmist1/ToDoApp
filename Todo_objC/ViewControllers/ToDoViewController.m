//
//  ToDoViewController.m
//  Todo_objC
//
//  Created by Krunal Mistry on 3/9/21.
//  Copyright © 2021 Krunal. All rights reserved.
//

#import "ToDoViewController.h"
#import "ToDoViewModel.h"
#import "DetailViewController.h"

@interface ToDoViewController ()
@property (nonatomic, strong) ToDoViewModel *vm;
@property (nonatomic, strong) NSArray *array;
@end

@implementation ToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.vm = [ToDoViewModel new];
    [self.vm getDataWithCompletionHandler:^{
        //this is th eright place to tell you data have ben recived
        NSLog(@"getting data");
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tViewToDo reloadData];
        });
    }];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.vm.getNumberOfRowsInSection;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"todoCell";
 
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
 
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [self.vm getTitle:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetailViewController* detailVC = [storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    detailVC.todolabel = [self.vm getTitle:indexPath.row];
    [self.navigationController pushViewController:detailVC animated:YES];
    
}





@end
