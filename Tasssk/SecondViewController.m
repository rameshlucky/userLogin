//
//  SecondViewController.m
//  Tasssk
//
//  Created by fis on 5/26/16.
//  Copyright © 2016 fis. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "AppDelegate.h"
@interface SecondViewController ()
{

    AppDelegate *app;
    NSString *text;
}
@property (strong, nonatomic) IBOutlet UITextField *aText;
- (IBAction)OK:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"next data %@",app.data);
    app = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
}
- (void)viewDidUnload {
    [super viewDidUnload];
    // Set all IBOutlets to `nil` here.
    // Drop any lazy-load data that you didn't drop in viewWillDisappear:
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)OK:(id)sender {
    text=_aText.text;
    [app.data addObject:text];
   
    NSLog(@"appdata %@",app.data);
    
   
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    

    ViewController *vc=[segue destinationViewController];
   
    vc.arr=app.data;
    NSLog(@"array values %@",vc.arr);
}

@end
