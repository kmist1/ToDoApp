//
//  ToDoViewModel.m
//  Todo_objC
//
//  Created by Krunal Mistry on 3/9/21.
//  Copyright © 2021 Krunal. All rights reserved.
//

#import "ToDoViewModel.h"
#import "APIHandler.h"


@interface ToDoViewModel ()
@property (nonatomic, strong) NSArray *array;
@property (nonatomic, strong) NSError *error;
@end

@implementation ToDoViewModel

-(void)getDataWithCompletionHandler:(void (^)(void))completionHandler{
    
    
    [[APIHandler sharedInstance] getDataWithCompletionHandler:^(NSArray * _Nullable array, NSError * _Nullable error) {
        self.array = array;
        self.error = error;
        completionHandler();
    }];
}


-(int)getNumberOfRowsInSection {
    return (int)self.array.count;
}

-(ToDo*)getToDoAtIndex: (NSInteger)index {
    return self.array[index];
}

-(NSString*) getTitle: (NSInteger)index {
    ToDo* todo = [self getToDoAtIndex:index];
    return [NSString stringWithFormat:@"%@", todo.title];
}



@end
