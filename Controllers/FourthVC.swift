//
//  FourthVC.swift
//  HW Navigation
//
//  Created by Kate on 21/08/2023.
//

import UIKit

class FourthVC: UIViewController {
    var dataString: String?
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.text = dataString
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToFirstVC", sender: nil)
    }
}
