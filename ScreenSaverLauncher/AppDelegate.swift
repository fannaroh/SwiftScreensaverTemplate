//  Created by Robert Pankrath on 13.03.16.
//  Copyright © 2016 Robert Pankrath. All rights reserved.

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    let screenSaverView = SwiftScreensaverView(frame: NSZeroRect, isPreview: false)!
    var timer: NSTimer?
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        guard let contentView = window.contentView else { return }
        
        screenSaverView.frame = contentView.bounds
        contentView.addSubview(screenSaverView)
        
        screenSaverView.startAnimation()
        timer = NSTimer.scheduledTimerWithTimeInterval(1/30, target: screenSaverView, selector: "animateOneFrame", userInfo: nil, repeats: true)
    }

}
