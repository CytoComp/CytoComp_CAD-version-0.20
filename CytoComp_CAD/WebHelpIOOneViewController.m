//
//  WebHelpIOOneViewController.m
//  CytoComp_CAD
//
//  Created by Dr Gerd Moe-Behrens on 1/13/14.
//  Copyright (c) 2014 Dr Gerd Moe-Behrens. All rights reserved.
//

#import "WebHelpIOOneViewController.h"

@interface WebHelpIOOneViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation WebHelpIOOneViewController

@synthesize webView = _webView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


//use reader function ref see: http://stackoverflow.com/questions/7657553/ios-access-to-safari-reader-feature-through-uiwebview
/*
#define readJS @"(function(){window.baseUrl='https://www.readability.com';window.readabilityToken='';var s=document.createElement('script');s.setAttribute('type','text/javascript');s.setAttribute('charset','UTF-8');s.setAttribute('src',baseUrl+'/bookmarklet/read.js');document.documentElement.appendChild(s);})()"


- (void)webViewDidFinishLoad:(UIWebView *)webviewNew
{
    [webviewNew stringByEvaluatingJavaScriptFromString:readJS];}

*/


//readability
// alternative to the web link http://journals.sfu.ca/rncsb/index.php/csbj/article/view/csbj.201304003/272 one can use http://www.readability.com/m?url=http://journals.sfu.ca/rncsb/index.php/csbj/article/view/csbj.201304003/272


- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    self.webView.scalesPageToFit = YES;
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://journals.sfu.ca/rncsb/index.php/csbj/article/view/csbj.201304003/272"]]];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
