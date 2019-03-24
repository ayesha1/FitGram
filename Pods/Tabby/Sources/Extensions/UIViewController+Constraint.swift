import UIKit

extension UIView {

    func constraint(_ subview: UIView, attributes: NSLayoutConstraint.Attribute...) {
    for attribute in attributes {
      addConstraint(NSLayoutConstraint(
        item: subview, attribute: attribute,
        relatedBy: .equal, toItem: self,
        attribute: attribute, multiplier: 1, constant: 0)
      )
    }
  }
}
