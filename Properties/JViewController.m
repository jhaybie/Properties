//
//  JViewController.m
//  Properties
//
//  Created by Jhaybie on 9/19/13.
//  Copyright (c) 2013 Jay Basco. All rights reserved.
//

#import "JViewController.h"
#import "Person.h"

@interface JViewController ()
{
    __weak IBOutlet UILabel *myLabel;
    __weak IBOutlet UILabel *myLabel2;
    __weak IBOutlet UITextField *myTextField;
    __weak IBOutlet UITextField *myTextField2;
    Person *person;
    Person *person2;
}

- (IBAction)buttonPressed:(UIButton *)sender;

@end

@implementation JViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    person = [[Person alloc] init];
    person2 = [[Person alloc] init];
    person.salary = 50.00;
    person2.salary = 75.00;
    
    NSLog(@"Person 1 makes %.2f per hour.", person.salary);
    NSLog(@"Person 2 makes %.2f per hour.", person2.salary);
    NSLog(@"Person 1 takes home %.2f per hour.", person.netsalary);
    NSLog(@"Person 1 takes home %.2f per hour.", person2.netsalary);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender
{
    person.name = myTextField.text;
    person2.name = myTextField2.text;
    if (sender.tag == 1)
    {
        myLabel.text = [@"Hello, " stringByAppendingString:myTextField.text];
    } else
    {
        myLabel2.text = [@"Hello, " stringByAppendingString:myTextField2.text];
    }
}
@end
