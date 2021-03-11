//
//  ToDoViewController.h
//  Todo_objC
//
//  Created by Krunal Mistry on 3/9/21.
//  Copyright © 2021 Krunal. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDoViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tViewToDo;


@end

NS_ASSUME_NONNULL_END
