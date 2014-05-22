//
//  AGTCharacterModel.h
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 6/1/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGTCharacterModel : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *alias;
@property (strong, nonatomic) NSURL *wikiPage;
@property (strong, nonatomic) UIImage *photo;
@property (strong, nonatomic) NSData *soundData;

// designated
-(id) initWithFirstName: (NSString *) aFirstName
               lastName: (NSString *) aLastName
                  alias: (NSString *) anAlias
               wikiPage: (NSURL *) aWikiPage
                  photo: (UIImage *) aPhoto
              soundData: (NSData *) aSoundData;


-(id) initWithAlias: (NSString *) anAlias
           wikiPage: (NSURL *) aWikiPage
              photo: (UIImage *) aPhoto
          soundData: (NSData *) aSoundData;


@end
