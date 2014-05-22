//
//  AGTCharacterModel.m
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 6/1/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import "AGTCharacterModel.h"



@implementation AGTCharacterModel

@synthesize firstName = _firstName;

-(id) initWithFirstName: (NSString *) aFirstName
               lastName: (NSString *) aLastName
                  alias: (NSString *) anAlias
               wikiPage: (NSURL *) aWikiPage
                  photo: (UIImage *) aPhoto
              soundData: (NSData *) aSoundData{
    
    if (self = [super init]) {
        
        _firstName = aFirstName;
        _lastName = aLastName;
        _alias = anAlias;
        _wikiPage = aWikiPage;
        _photo = aPhoto;
        _soundData = aSoundData;
    }
    return self;
}

-(id) initWithAlias: (NSString *) anAlias
           wikiPage: (NSURL *) aWikiPage
              photo: (UIImage *) aPhoto
          soundData: (NSData *) aSoundData{
    
    return [self initWithFirstName:nil
                          lastName:nil
                             alias:anAlias
                          wikiPage:aWikiPage
                             photo:aPhoto
                         soundData:aSoundData];
    
}







@end
