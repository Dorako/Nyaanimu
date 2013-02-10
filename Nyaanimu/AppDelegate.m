//
//  AppDelegate.m
//  Nyaanimu
//
//  Created by Malthe Elkær on 2/9/13.
//  Copyright (c) 2013 Malthe Elkær. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)generate:(id)sender {
    NSString *title = [_tfTitle stringValue];
    NSString *group = [_tfGroup stringValue];
    NSString *resolution = [_pbResolution titleOfSelectedItem];
    if ([resolution isEqual: @"720p"])
        resolution = @"-480p+-1080p+-XviD";
    NSString *source = [_pbSource titleOfSelectedItem];
    if ([source isEqual: @"TV"])
        source = @"-BD";
    NSString *init = @"http://www.nyaa.eu/?page=rss&term=";
    _tfRSS.stringValue = [NSString stringWithFormat:@"%@%@+%@+%@+%@",init, title, group,resolution, source];
    
}
- (IBAction)copy:(id)sender {
}
@end
