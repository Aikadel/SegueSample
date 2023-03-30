//
//  ViewController.swift
//  SegueSample
//
//  Created by on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func buttonDidTap(_ sender: UIButton) {
        performSegue(withIdentifier: "showResult", sender: self)
    }
    
    @IBAction private func detailButtonDidTap(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let detailVC = segue.destination as? DetailViewController {
                detailVC.view.backgroundColor = .systemPink
            }
        } else if segue.identifier == "showResult" {
            if let resultVC = segue.destination as? ResultViewController {
                resultVC.textForLabel = "Some Another Label!"
                resultVC.view.backgroundColor = .green
            }
        }
    }
}
