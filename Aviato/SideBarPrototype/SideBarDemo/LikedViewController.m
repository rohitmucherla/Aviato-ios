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
    
    /* Create an Image View to replace the Title View */
    UIImageView *imageView =
    [[UIImageView alloc]
     initWithFrame:CGRectMake(0.0f, 0.0f, 100.0f, 40.0f)];
    
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    /* Load an image. Be careful, this image will be cached */
    UIImage *image = [UIImage imageNamed:@"likedHeader.png"];
    
    /* Set the image of the Image View */
    [imageView setImage:image];
    
    /* Set the Title View */
    self.navigationItem.titleView = imageView;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
