//
//  Contact.h
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
    
    @property NSString* name;
    @property NSString* email;
    
    -(instancetype)initWithName: (NSString*)name andEmail:(NSString *)email;
    -(void)printContact;
    -(BOOL)containsString: (NSString*)searchString;

@end
