//
//  SyrLinearGradient.m
//  SyrNative
//
//  Created by Anderson,Derek on 11/17/17.
//  Copyright © 2017 Anderson,Derek. All rights reserved.
//

#import "SyrLinearGradient.h"

@implementation SyrLinearGradient

+(NSObject*) render: (NSDictionary*) component {
  UIView* view = [[UIView alloc] init];
  NSDictionary* style = [[[component objectForKey:@"instance"] objectForKey:@"props"] valueForKey:@"style"];
  view.frame = [self styleFrame:style];
  
  CAGradientLayer *gradientLayer = [CAGradientLayer layer];
  gradientLayer.frame = view.layer.bounds;
  
  gradientLayer.colors = [NSArray arrayWithObjects:
                          (id)[UIColor colorWithWhite:1.0f alpha:1.0f].CGColor,
                          (id)[UIColor colorWithWhite:0.0f alpha:0.9f].CGColor,
                          nil];
  
  gradientLayer.locations = [NSArray arrayWithObjects:
                             [NSNumber numberWithFloat:0.0f],
                             [NSNumber numberWithFloat:1.0f],
                             nil];
  
  [view.layer addSublayer:gradientLayer];
  
  return [self styleView:view withStyle:style];
}

@end
