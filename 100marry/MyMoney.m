//
//  TableViewController.m
//  TableViewController
//
//  Created by Yuan Ruo-Jiun on 11/10/2.
//  Copyright 2011年  All rights reserved.
//

#import "MyMoney.h"

@implementation MyMoney

NSMutableArray *listOfMovies;
NSMutableArray *listOfMovies2;
NSMutableArray *listOfMovies3;
NSMutableArray *listOfMovies4;

-(UITableViewCell *) tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier =@"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  
  if (cell == nil) {
    //value1
    cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1
                                  reuseIdentifier:CellIdentifier]autorelease];
  }
  
  
  
  
  if(indexPath.section == 0)
    cell.textLabel.text = [listOfMovies objectAtIndex:indexPath.row];
	else if (indexPath.section == 1)
		cell.textLabel.text = [listOfMovies2 objectAtIndex:indexPath.row];
  else if (indexPath.section == 2)
    cell.textLabel.text = [listOfMovies3 objectAtIndex:indexPath.row];
  else
    cell.textLabel.text = [listOfMovies4 objectAtIndex:indexPath.row];
  
  //    NSString *cellValue =[listOfMovies objectAtIndex:indexPath.row];
  //    cell.textLabel.text = cellValue;
  
  return cell;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)didReceiveMemoryWarning
{
  // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
  
  // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
  listOfMovies = [[NSMutableArray alloc]init];
  listOfMovies2 = [[NSMutableArray alloc]init];
  listOfMovies3 = [[NSMutableArray alloc]init];
  
  [listOfMovies addObject:@"拍婚紗 50,000"];
  [listOfMovies addObject:@"喜餅	80,000"];
  [listOfMovies addObject:@"0.5克拉婚鑽	40,000"];
  [listOfMovies addObject:@"金飾	30,000"];
  [listOfMovies addObject:@"喜帖	2,500"];
  [listOfMovies addObject:@"服飾	4,000"];
  [listOfMovies addObject:@"XＯ洋酒１２瓶	6,000"];
  [listOfMovies addObject:@"皮包	4,000"];
  [listOfMovies addObject:@"女鞋	2,000"];
  [listOfMovies addObject:@"訂婚用西裝	5,000"];
  [listOfMovies addObject:@"聘金	160,000"];
  //    [listOfMovies addObject:@"↑男訂婚預估花費↑383,500"];
  
  [listOfMovies2 addObject:@"開門禮	600"];			
  [listOfMovies2 addObject:@"點燭禮	2,000"];			
  [listOfMovies2 addObject:@"牽新娘禮	3600"];			
  [listOfMovies2 addObject:@"挽面禮	600	"];		
  [listOfMovies2 addObject:@"茶禮	20000"];			
  [listOfMovies2 addObject:@"廚師禮	1200"];			
  [listOfMovies2 addObject:@"分菜禮	600"];		
  [listOfMovies2 addObject:@"捧臉盆水禮	600"];			
  [listOfMovies2 addObject:@"壓桌禮	15000"];	
  [listOfMovies2 addObject:@"姊妹桌禮	2000"];			
  [listOfMovies2 addObject:@"媒人禮	2000"];		
  //    [listOfMovies2 addObject:@"↑訂婚預估紅包↑48,200"];
  
  [listOfMovies3 addObject:@"紅包	15,000"];	
  [listOfMovies3 addObject:@"喜宴	300000"];	
  [listOfMovies3 addObject:@"度蜜月	60000"];
  //    [listOfMovies3 addObject:@"↑結婚預估支出↑375,000"];
  
  [listOfMovies4 addObject:@"金飾	15,500"];
  [listOfMovies4 addObject:@"戒子	4,000"];
  [listOfMovies4 addObject:@"喜帖印製	1,450"];
  [listOfMovies4 addObject:@"西裝口袋紅包	2,400"];
  [listOfMovies4 addObject:@"照相師	1,200"];
  [listOfMovies4 addObject:@"豬腳(紅包代替)	1,200"];
  [listOfMovies4 addObject:@"男鞋	1,900"];
  [listOfMovies4 addObject:@"皮夾,皮帶	1,800"];
  [listOfMovies4 addObject:@"西裝,襯衫,領帶,領帶夾	10,000"];
  [listOfMovies4 addObject:@"端菜	600"];
  [listOfMovies4 addObject:@"宴客花費１０桌	94,500"];
  [listOfMovies4 addObject:@"歸寧吃中餐	8,400"];
  //    [listOfMovies3 addObject:@"↑女訂婚花費↑142,950"];
  
  
  [super viewDidLoad];
  // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
  [super viewDidUnload];
  // Release any retained subviews of the main view.
  // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  // Return YES for supported orientations
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
  // Return the number of sections.
  //0 no display
  //1 1 sections
  return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
  // Return the number of rows in the section.
  //return 0;
  if(section == 0)
		return [listOfMovies count];
	else if (section == 1)
		return [listOfMovies2 count];
  else if (section == 2)
    return [listOfMovies3 count];
  else
    return [listOfMovies4 count];
  
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
  if(section == 0)
		return @"男訂婚預估花費"; 
	else if (section == 1)
		return @"女訂婚預估紅包";  
  else if (section == 2)
    return @"結婚預估支出";
  else
    return @"女訂婚花費";  
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
  if(section == 0)
		return @"383,500"; 
	else if (section == 1)
		return @"48,200";  
  else if (section == 2)
    return @"375,000";
  else  
    return @"142,950";  
}


-(void)dealloc
{  
  [listOfMovies4 release];
  [listOfMovies3 release];
  [listOfMovies2 release];
  [listOfMovies  release];
  [super dealloc];
}




@end
