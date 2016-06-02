//
//  Model.m
//  SomeJSONDemo
//
//  Created by z on 16/6/2.
//  Copyright © 2016年 LC. All rights reserved.
//

#import "Model.h"

@implementation Model




+ (NSDictionary *)objectClassInArray{
    return @{@"author" : [ModelAuthor class], @"comments" : [ModelComments class]};
}
@end


@implementation ModelAuthor

@end


@implementation ModelComments

@end


@implementation ModelCommentsAuthor

@end


