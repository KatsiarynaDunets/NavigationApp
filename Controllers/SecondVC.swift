//
//  SecondVC.swift
//  HW Navigation
//
//  Created by Kate on 21/08/2023.
//

import UIKit

class SecondVC: UIViewController {
    var dataString: String?
    
    @IBOutlet weak var labelText: UILabel!
    
    //для ссылок на экземпляры классов надо добавить  weak
    weak var firstVC: FirstVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.text = dataString
    }
    @IBAction func closeAction(_ sender: UIButton) {
        firstVC?.navigationItem.title = "Hello from SecondVC"
        
        //закроем модальное окно
        dismiss(animated: true)
    }
}
