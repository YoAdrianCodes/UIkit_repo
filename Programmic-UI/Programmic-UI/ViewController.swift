//
//  ViewController.swift
//  Programmic-UI
//
//  Created by Adrian GC on 4/13/26.
//

import UIKit

class ViewController: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        view.backgroundColor = .systemBackground
        title = "first screen"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    func setupButton(){
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemBlue
        nextButton.configuration?.title = "Next"
        
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goToNextScreen(){
        let nextScreen = SecondScreen()
        nextScreen.title = "second screen"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}

#Preview {
    UINavigationController(rootViewController: ViewController())
}
