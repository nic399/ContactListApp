//
//  InputCollector.m
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector
    
    
    -(NSString*) inputForPrompt:(NSString *)promptString {
        NSLog(@"%@", promptString);
        char inputChar[511];
        fgets(inputChar, 511, stdin);
        self.userInput = [[NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[ NSCharacterSet whitespaceAndNewlineCharacterSet]];
        return self.userInput;
    }
    
    
@end
