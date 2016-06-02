//
//  Model.h
//  SomeJSONDemo
//
//  Created by z on 16/6/2.
//  Copyright © 2016年 LC. All rights reserved.
//

#import <Foundation/Foundation.h>


@class ModelAuthor,ModelComments,ModelCommentsAuthor;
@interface Model : NSObject


@property (nonatomic, strong) NSArray<ModelComments *> *comments;

@property (nonatomic, strong) NSArray<ModelAuthor *> *author;

@property (nonatomic, copy) NSString *text;


@end


@interface ModelAuthor : NSObject

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *name;

@end

@interface ModelComments : NSObject

@property (nonatomic, strong) ModelCommentsAuthor *author;

@property (nonatomic, copy) NSString *text;

@end

@interface ModelCommentsAuthor : NSObject

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *name;

@end

