//
//  ViewController.m
//  Tasssk
//
//  Created by fis on 5/26/16.
//  Copyright © 2016 fis. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

{
   
    AppDelegate *mainDelegate;
   }
@property (strong, nonatomic) IBOutlet UITableView *aTable;
- (IBAction)Go:(id)sender;

@end

@implementation ViewController
@synthesize arr;
- (void)viewDidLoad {
    
     //[[self navigationController] setNavigationBarHidden:NO animated:YES];
    [super viewDidLoad];
       // NSLog(@"%@",data);
   // self.navigationItem.hidesBackButton = YES;
    // Do any additional setup after loading the view, typically from a nib.
   [_aTable reloadData];
   
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

{
    return [arr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithFrame:CGRectZero];
       

    }
    cell.textLabel.text=[arr objectAtIndex:indexPath.row];
   
        return cell;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Go:(id)sender {
    [self performSegueWithIdentifier:@"go" sender:nil];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
     mainDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
   
    arr=mainDelegate.data;
     }
@end
