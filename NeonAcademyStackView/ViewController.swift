//
//  ViewController.swift
//  NeonAcademyStackView
//
//  Created by Kerem Caan on 1.08.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let stackView: UIStackView = UIStackView()
    let label1: UILabel = UILabel()
    let label2: UILabel = UILabel()
    let label3: UILabel = UILabel()
    let label4: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI() {
        
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .gray
        stackView.setNeedsLayout()
        stackView.layoutIfNeeded()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.right.equalTo(view.snp.right)
            make.left.equalTo(view.snp.left)
            make.bottom.equalTo(view.snp.bottom)
        }
        
        stackView.addArrangedSubview(label1)
        label1.text = "Spell1"
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(label2)
        label2.text = "Spell2"
        label2.translatesAutoresizingMaskIntoConstraints = false

        
        stackView.addArrangedSubview(label3)
        label3.text = "Spell3"
        label3.translatesAutoresizingMaskIntoConstraints = false

        
        stackView.addArrangedSubview(label4)
        label4.text = "Spell4"
        label4.translatesAutoresizingMaskIntoConstraints = false

    }

}

