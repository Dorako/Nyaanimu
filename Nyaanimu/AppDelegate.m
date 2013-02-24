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
    if ([group isEqual: @"Automatic"])
        group = @"&filter=3";
    NSString *resolution = [_pbResolution titleOfSelectedItem];
    if ([resolution isEqual: @"720p"])
        resolution = @"-480+-1080+-XviD";
    else if ([resolution isEqual: @"1080p"])
        resolution = @"1080";
    else if ([resolution isEqual: @"480p"])
        resolution = @"480";
    NSString *source = [_pbSource titleOfSelectedItem];
    if ([source isEqual: @"TV"])
        source = @"-BD+-\"Blu-Ray\"";
    else source = @"BD|\"Blu-Ray\"";
    
    NSString *init = @"http://www.nyaa.eu/?page=rss&cats=1_37&term=";
    _tfRSS.stringValue = [NSString stringWithFormat:@"%@%@+%@+%@+%@",init, title,resolution, source, group];
    
}
- (IBAction)copy:(id)sender {
    NSPasteboard *pasteBoard = [NSPasteboard generalPasteboard];
    [pasteBoard declareTypes:[NSArray arrayWithObjects:NSStringPboardType, nil] owner:nil];
    [pasteBoard setString: [_tfRSS stringValue] forType:NSStringPboardType];
}
@end
