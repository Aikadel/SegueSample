//
//  ResultViewController.swift
//  SegueSample
//
//  Created by  on 23.04.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    var textForLabel: String?
    var age: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = textForLabel
    }
    
    @IBAction private func cancelDidTap(_ unwindSegue: UIStoryboardSegue) {
        dismiss(animated: true)
    }
}
