import UIKit

extension UIView {
    func tapAction(_ action: @escaping () -> Void) {
        let tap = MHTapGestureRecognizer(target: self , action: #selector(self.handleTap(_:)))
                tap.action = action
                tap.numberOfTapsRequired = 1

                self.addGestureRecognizer(tap)
                self.isUserInteractionEnabled = true

    }

    @objc func handleTap(_ sender: MHTapGestureRecognizer) {
           sender.action!()
       }


}

class MHTapGestureRecognizer: UITapGestureRecognizer {
    var action : (()->Void)? = nil
}
