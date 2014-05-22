//
//  AGTCharacterTableModel.h
//  StarWars
//
//  Created by Juan Antonio Martin Noguera on 22/05/14.
//  Copyright (c) 2014 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AGTCharacterModel.h"

@interface AGTCharacterTableModel : NSObject

@property (nonatomic, readonly) int rebelCount;
@property (nonatomic, readonly) int imperialCount;

- (AGTCharacterModel *) rebelCharacterAtIndex: (int) index;
- (AGTCharacterModel *) imperialCharacterAtIndex:(int) index;

@end
