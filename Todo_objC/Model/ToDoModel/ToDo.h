//
//  ToDo.h
//  Todo_objC
//
//  Created by Krunal Mistry on 3/9/21.
//  Copyright © 2021 Krunal. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDo : NSObject
@property (nonatomic, assign) NSInteger userId;
@property (nonatomic, assign) NSInteger ID;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) BOOL completed;

+(NSArray *)getParsedData:(NSArray *)responseArray;

@end

NS_ASSUME_NONNULL_END
