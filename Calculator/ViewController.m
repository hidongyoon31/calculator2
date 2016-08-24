//
//  ViewController.m
//  Calculator
//
//  Created by 이동윤 on 2016. 8. 24..
//  Copyright © 2016년 Lotte. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
enum opr{none, plus,minus,divide,multiply};
typedef enum  opr Operator;
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@end

@implementation ViewController{
    int currentValue;
    Operator currentOpr;
    Calculator *calc;
    
}
- (IBAction)buttonClicked:(id)sender {
    UIButton *btn =(UIButton *)sender;
    int value = (int)btn.tag;
    if(currentOpr==none){
         currentValue = currentValue *10 +value;
    }else{
        currentValue = value;
    }
    
    self.myLabel.text =[NSString stringWithFormat:@"%d",currentValue];
    

}
- (IBAction)clickOpr:(id)sender {
    UIButton *clacbtn = (UIButton *)sender;
    int number =(int)clacbtn.tag;
    switch (number) {
        case 1:
            currentOpr = plus;
            break;
        case 2:
            currentOpr = minus;
            break;
        case 3:
            currentOpr = multiply;
            break;
        case 4:
            currentOpr = divide;
            break;
            
        default:
            break;
    }
    [calc setAccumulator:currentValue];
}
- (IBAction)clickEqual:(id)sender {
    
    switch (currentOpr) {
        case plus:
            [calc add:currentValue];
            break;
        case minus:
            [calc subtract:currentValue];
            break;
        case multiply:
            [calc multiply:currentValue];
            break;
        case divide:
            [calc divide:currentValue];
            break;
        default:
            break;
    }
    currentValue = [calc accumulator];
       self.myLabel.text=[NSString stringWithFormat:@"%d",currentValue ];
}
- (IBAction)clear:(id)sender {
    currentValue=0;
    self.myLabel.text = @"0";
}
-(IBAction)unwind:(UIStoryboardSegue *)sender{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    calc =[[Calculator alloc]init];
    currentOpr = none;
    currentValue = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end