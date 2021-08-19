//
//  VideoVC.m
//  DevslopesTutorial
//
//  Created by Christian Nicoletti on 8/19/21.
//

#import "VideoVC.h"
#import "Video.h"

@interface VideoVC()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UILabel *descLbl;

@end

@implementation VideoVC
- (IBAction)donePressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.webView.delegate = self;
    
    self.titleLbl.text = self.video.videoTitle;
    self.descLbl.text = self.video.videoDescription;
    [self.webView loadHTMLString:self.video.videoIframe baseURL:nil];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    NSString *css = @".container {position: relative; }";
    
    NSString *js = [NSString stringWithFormat:@"", css];
    
    [self.webView stringByEvaluatingJavaScriptFromString:js];
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
