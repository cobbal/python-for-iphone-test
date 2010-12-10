//
//  main.m
//  iOS-python-test
//
//  Created by Andrew Cobb on 12/5/10.
//  Copyright 2010 Andrew Cobb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "python2.6/Python.h"

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
    Py_SetPythonHome((char *)[resourcePath UTF8String]);
    Py_Initialize();

    int retVal = UIApplicationMain(argc, argv, nil, nil);
    
    Py_Finalize();
    [pool release];
    return retVal;
}
