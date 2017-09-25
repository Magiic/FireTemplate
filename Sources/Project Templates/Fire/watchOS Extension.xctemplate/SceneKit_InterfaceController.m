//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "GameController.h"

@interface ___FILEBASENAME___ ()

@property (strong, nonatomic) IBOutlet WKInterfaceSCNScene *scnInterface;
@property (strong, nonatomic) GameController *gameController;

@end

@implementation ___FILEBASENAME___

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    self.gameController = [[GameController alloc] initWithSceneRenderer:self.scnInterface];
}

- (IBAction)handleTap:(WKTapGestureRecognizer *)gestureRecognize {
    // Highlight the tapped nodes
    CGPoint p = gestureRecognize.locationInObject;
    [self.gameController highlightNodesAtPoint:p];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end
