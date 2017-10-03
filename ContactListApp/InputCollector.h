//
//  InputCollector.h
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject
    
    @property NSString* userInput;
    
    
    
    -(NSString*) inputForPrompt: (NSString *) promptString;

@end
