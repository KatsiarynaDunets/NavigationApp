//
//  FirstVC.swift
//  HW Navigation
//
//  Created by Kate on 21/08/2023.
//

import UIKit

class FirstVC: UIViewController {
    
    
    @IBOutlet weak var labelText: UILabel!
    
    @IBAction func goToSecondVC(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondVC", sender: "Hello from FirstVC")
    }
    
    @IBAction func goToThirdVC(_ sender: UIButton) {
        let vc = ThirdVC(nibName: "ThirdVC", bundle: nil)
        vc.dataString = "Hello from FirstVC"
        vc.navigationItem.title = "XIB VC"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goToFourthVCWithoutSeague() {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        guard let fourthVC = storyboard.instantiateViewController(withIdentifier: "FourthVC") as? FourthVC else {
            return
        }
        fourthVC.navigationItem.title = "Fourth VC"
        fourthVC.dataString = "Hello from FirstVC"
        /// present modally
        present(fourthVC, animated: true)
    }
    
    @IBAction func  unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
        if let fourthVC = unwindSegue.source as? FourthVC {
        labelText.text = fourthVC.dataString
    }
}
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC",
           let secondVC = segue.destination as? SecondVC,
           let dataString = sender as? String
        {
            secondVC.dataString = dataString
            secondVC.firstVC = self
            
        } else if segue.identifier == "goToFourtVC",
                    let fourthVC = segue.destination as? FourthVC
        {
            fourthVC.dataString = "Hello!"
        }
        
    }
    
}
