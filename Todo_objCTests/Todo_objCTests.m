//
//  Todo_objCTests.m
//  Todo_objCTests
//
//  Created by Krunal Mistry on 3/9/21.
//  Copyright © 2021 Krunal. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ToDoViewModel.h"

@interface Todo_objCTests : XCTestCase
@property (nonatomic, strong) ToDoViewModel *vm;

@end

@implementation Todo_objCTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testgetNumberOfRowsInSection {
    XCTAssertEqual([self.vm getNumberOfRowsInSection], 0);
}

//- (void)testGetTitleOfToDo {
//    XCTAssertEqual([self.vm getTitle:1], (NSString*)@"delectus aut autem");
//}



@end
