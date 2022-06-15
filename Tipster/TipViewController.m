//
//  TipViewController.m
//  Tipster
//
//  Created by Max Bagatini Alves on 6/15/22.
//

#import "TipViewController.h"

@interface TipViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipSegCtrl;

@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"Tapped!");
    [self.view endEditing:true];
}

- (IBAction)updateTotal:(id)sender {
    double tipPercentages[] = {0.10, 0.15, 0.20};
    double selectedTipPercentage = tipPercentages[self.tipSegCtrl.selectedSegmentIndex];
    double billValue = [self.billField.text doubleValue];
    double tipValue = billValue * selectedTipPercentage;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tipValue];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", tipValue + billValue];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
