//  FISCardSwitcherViewController.m

#import "FISCardSwitcherViewController.h"

@interface FISCardSwitcherViewController ()

@property (weak, nonatomic)IBOutlet UILabel *topLabel;
@property (weak, nonatomic)IBOutlet UILabel *middleLabel;
@property (weak, nonatomic)IBOutlet UILabel *bottomLabel;

@end

@implementation FISCardSwitcherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.threeOfSpades = [[FISCard alloc] initWithSuit:@"♠️"
                                                  rank:@"3"];
    self.fourOfClubs = [[FISCard alloc] initWithSuit:@"♣️"
                                                rank:@"4"];
    self.eightOfDiamonds = [[FISCard alloc] initWithSuit:@"♦️"
                                                    rank:@"8"];
    self.tenOfHearts = [[FISCard alloc] initWithSuit:@"♥️"
                                                rank:@"10"];
}

- (void)setLabelText:(FISCard *)text {
    self.topLabel.text = text.cardLabel;
    self.middleLabel.text = text.cardLabel;
    self.bottomLabel.text = text.cardLabel;
}

- (IBAction)playThreeOfSpades:(id)sender {
    [self setLabelText:self.threeOfSpades];
}
- (IBAction)playFourOfClubs:(id)sender {
    [self setLabelText:self.fourOfClubs];
}
- (IBAction)playEightOfDiamonds:(id)sender {
    [self setLabelText:self.eightOfDiamonds];
}
- (IBAction)playTenOfHearts:(id)sender {
    [self setLabelText:self.tenOfHearts];
}
@end
