//
//  iOS_python_testAppDelegate.m
//  iOS-python-test
//
//  Created by Andrew Cobb on 12/5/10.
//  Copyright 2010 Andrew Cobb. All rights reserved.
//

#import "iOS_python_testAppDelegate.h"
#import "python2.6/Python.h"

@implementation iOS_python_testAppDelegate

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [self.window makeKeyAndVisible];
    
    const char * prog = [[NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"RemoteInteractive"
                                                                                            ofType:@"py"]
                                                   encoding:NSUTF8StringEncoding
                                                      error:nil] UTF8String];
    PyRun_SimpleString(prog);    
    
    return YES;
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
