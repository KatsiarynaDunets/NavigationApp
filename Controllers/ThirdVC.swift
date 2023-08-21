//
//  ThirdVC.swift
//  HW Navigation
//
//  Created by Kate on 21/08/2023.

import UIKit

class ThirdVC: UIViewController {
    var dataString: String?
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.text = dataString
    }
    @IBAction func backAction(_ sender: UIButton) {
       
        
        //сделаем  back используя NavVC
        navigationController?.popViewController(animated: true) // back to the previous vC
       //popToRootViewController(animated: <#T##Bool#>) - back to the FIRST VC
    }
}
