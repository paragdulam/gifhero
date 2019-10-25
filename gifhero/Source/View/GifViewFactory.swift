import UIKit

extension GifView
{
    func factoryImage()
    {
        let imageView:UIImageView = UIImageView()
        imageView.isUserInteractionEnabled = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = UIView.ContentMode.center
        imageView.clipsToBounds = true
        self.imageView = imageView
        
        addSubview(imageView)
        
        NSLayoutConstraint(
            item:imageView,
            attribute:NSLayoutConstraint.Attribute.top,
            relatedBy:NSLayoutConstraint.Relation.equal,
            toItem:self,
            attribute:NSLayoutConstraint.Attribute.top,
            multiplier:1,
            constant:0).isActive = true
        
        NSLayoutConstraint(
            item:imageView,
            attribute:NSLayoutConstraint.Attribute.bottom,
            relatedBy:NSLayoutConstraint.Relation.equal,
            toItem:self,
            attribute:NSLayoutConstraint.Attribute.bottom,
            multiplier:1,
            constant:0).isActive = true
        
        NSLayoutConstraint(
            item:imageView,
            attribute:NSLayoutConstraint.Attribute.left,
            relatedBy:NSLayoutConstraint.Relation.equal,
            toItem:self,
            attribute:NSLayoutConstraint.Attribute.left,
            multiplier:1,
            constant:0).isActive = true
        
        NSLayoutConstraint(
            item:imageView,
            attribute:NSLayoutConstraint.Attribute.right,
            relatedBy:NSLayoutConstraint.Relation.equal,
            toItem:self,
            attribute:NSLayoutConstraint.Attribute.right,
            multiplier:1,
            constant:0).isActive = true
    }
}
