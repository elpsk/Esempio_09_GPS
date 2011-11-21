//
//  ViewController.h
//  Lezione_09_GPS
//
//  Created by Alberto Pasca on 15/11/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate> {
  
  CLLocationManager *GpsManager;
  
}

@end
