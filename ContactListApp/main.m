//
//  main.m
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

void printMenu() {
    NSLog(@"What would you like to do next?");
    NSLog(@"new - Create a new contact");
    NSLog(@"list - List all contacts");
    NSLog(@"quit - Exit Application");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL stayOpen = true;
        NSString* menuPrompt = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application";
        //NSDictionary *command = @{@"":@"",
        
        
        
        
        
        
        while (stayOpen) {
            
            
            
            InputCollector* myInputCollector = [InputCollector new];
            
            [myInputCollector inputForPrompt:menuPrompt];
            
            
            
            
            
        }
        
        
        
        
        
    }
    return 0;
}



























