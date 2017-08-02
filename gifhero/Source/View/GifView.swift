import UIKit

class GifView:UIView
{
    var model:GifModel?
    var strategy:GifStrategy?
    private weak var displayLink:CADisplayLink?
    
    init()
    {
        super.init(frame:CGRect.zero)
        clipsToBounds = true
        isUserInteractionEnabled = false
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.clear
        contentMode = UIViewContentMode.scaleAspectFill

        strategyStand()
    }
    
    required init?(coder:NSCoder)
    {
        return nil
    }
    
    deinit
    {
        displayLink?.invalidate()
    }
    
    var url:URL?
    {
        didSet
        {
            strategy?.clearModel()
        }
    }
    
    var gifNamed:String?
    {
        didSet
        {
            strategy?.clearModel()
        }
    }
    
    override func removeFromSuperview()
    {
        super.removeFromSuperview()
        
        displayLink?.invalidate()
    }
    
    override func layoutSubviews()
    {
        strategy?.changeSize()
        
        super.layoutSubviews()
    }
    
    override var contentMode:UIViewContentMode
    {
        didSet
        {
            strategy?.changeSize()
        }
    }
    
    //MARK: selectors
    
    func selectorUpdateDisplayLink(
        sender displayLink:CADisplayLink)
    {
    }
    
    //MARK: private
    
    private func strategyStand()
    {
        strategy = GifStrategyStand(view:self)
    }
}
