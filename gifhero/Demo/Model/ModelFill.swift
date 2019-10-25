import UIKit

class ModelFill:ModelProtocol
{
    private let kGifName:String = "assetPigCat.gif"
    
    func factoryGif() -> GifView
    {
        let view:GifView = GifView()
        view.contentMode = UIView.ContentMode.scaleAspectFill
        view.gifNamed = kGifName
        
        return view
    }
}
