//
//  ViewController.m
//  SidebarDemo

#import "FeedViewController.h"
#import "SWRevealViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Event Feed";
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
//    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
//                                                           [UIFont fontWithName:@"Avenir" size:15.0], nil]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
