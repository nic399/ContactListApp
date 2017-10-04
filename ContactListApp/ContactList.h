//
//  ContactList.h
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject
    @property NSMutableArray* contactList;
    
    -(instancetype)init;
    -(void)addContact:(Contact*)newContact;

@end
