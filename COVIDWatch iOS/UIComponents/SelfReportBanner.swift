//
//  SelfReportBanner.swift
//  COVIDWatch iOS
//
//  Created by Isaiah Becker-Mayer on 4/2/20.
//  Copyright © 2020 IZE. All rights reserved.
//

import UIKit

class SelfReportBanner: UIView {

    @IBOutlet var thisView: UIView!
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder?.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
    @IBOutlet weak var selfReportButton: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        Bundle.main.loadNibNamed("SelfReportBanner", owner: self, options: nil)
        self.addSubview(self.thisView)
        self.selfReportButton.layer.cornerRadius = 10
    }
    
    @IBAction func selfReportButtonPressed(_ sender: UIButton) {
        print("selfReportButtonPressed")
        parentViewController?.performSegue(withIdentifier: "toSelfReport", sender: self)
    }
}
