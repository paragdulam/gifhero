import UIKit

extension GifView
{
    private static let kMaxFramesPerSecond:Int = 20
    
    func factoryDisplayLink(model:GifModel)
    {
        self.model = model
        
        let displayLink:CADisplayLink = CADisplayLink(
            target:self,
            selector:#selector(selectorUpdate(sender:)))
        displayLink.add(
            to:RunLoop.main,
            forMode:RunLoopMode.defaultRunLoopMode)
        
        if #available(iOS 10.0, *)
        {
            displayLink.preferredFramesPerSecond = GifView.kMaxFramesPerSecond
        }
        
        self.displayLink = displayLink
    }
    
    //MARK: selectors
    
    func selectorUpdate(
        sender displayLink:CADisplayLink)
    {
        let timestamp:TimeInterval = displayLink.timestamp
        
        model?.update(
            view:self,
            timestamp:timestamp)
    }
}
