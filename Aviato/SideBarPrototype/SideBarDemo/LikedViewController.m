//
//  PhotoViewController.m

#import "LikedViewController.h"
#import "SWRevealViewController.h"

@interface LikedViewController ()

@end


@implementation LikedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Liked Events"; 
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
