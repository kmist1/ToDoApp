//
//  ToDoViewModel.h
//  Todo_objC
//
//  Created by Krunal Mistry on 3/9/21.
//  Copyright © 2021 Krunal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDo.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoViewModel : NSObject
@property (nonatomic, strong) ToDo *todo;
-(void)getDataWithCompletionHandler:(void (^)(void))completionHandler;
-(int)getNumberOfRowsInSection;
-(ToDo*)getToDoAtIndex: (NSInteger)index;
-(NSString*) getTitle: (NSInteger)index;
@end

NS_ASSUME_NONNULL_END
