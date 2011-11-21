//
//  ViewController.m
//  Lezione_09_GPS
//
//  Created by Alberto Pasca on 15/11/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  GpsManager = [[CLLocationManager alloc] init];
  
  // gps
  [GpsManager startUpdatingLocation];
  
  // bussola
  [GpsManager startUpdatingHeading];
  
}

#pragma mark -
#pragma mark GPS_DELEGATE
#pragma mark -

- (void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {

  NSLog(@" *** GPS LOCATION UPDATE *** ");
  NSLog(@" Latitude:  %f", newLocation.coordinate.latitude);
  NSLog(@" Longitude: %f", newLocation.coordinate.longitude);
  NSLog(@" Altitude:  %f", newLocation.altitude);
  NSLog(@" *************************** ");

}

- (void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
  NSLog(@"FAIL: %@", error.localizedDescription);
}

#pragma mark -
#pragma mark BUSSOLA_DELEGATE
#pragma mark -

- (void) locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading {

  // -128 to +128
  NSLog(@" *** HEADING UPDATE *** ");
  NSLog(@" X: %f", newHeading.x );
  NSLog(@" Y: %f", newHeading.y );
  NSLog(@" Z: %f", newHeading.z );
  NSLog(@" *************************** ");

}

- (BOOL)locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)manager {
  return YES;
}


- (void)viewDidUnload
{
  [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
