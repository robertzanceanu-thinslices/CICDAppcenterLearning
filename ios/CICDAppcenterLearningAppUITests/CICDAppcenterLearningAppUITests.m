//
//  CICDAppcenterLearningAppUITests.m
//  CICDAppcenterLearningAppUITests
//
//  Created by Robert Zanceanu on 26.10.2022.
//

#import <XCTest/XCTest.h>

@interface CICDAppcenterLearningAppUITests : XCTestCase

@end

@implementation CICDAppcenterLearningAppUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    
    // UI tests must launch the application that they test.
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];
  
  [app.staticTexts[@"Open up App.js to start working on your app!"] tap];

  [app.buttons[@"New button! Press it to track event!"] tap];
  
  [app.buttons[@"New button! Feature!"] tap];
  [app.buttons[@"OK"] tap];
  
      
}

- (void)testLaunchPerformance {
    if (@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *)) {
        // This measures how long it takes to launch your application.
        [self measureWithMetrics:@[[[XCTApplicationLaunchMetric alloc] init]] block:^{
            [[[XCUIApplication alloc] init] launch];
        }];
    }
}

@end
