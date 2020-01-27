//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    let viewModel: ___VARIABLE_baseName___ViewModel
    weak var coordinator: Coordinator?

    init(coordinator: Coordinator, viewModel: ___VARIABLE_baseName___ViewModel) {
        self.viewModel = viewModel
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension ___FILEBASENAMEASIDENTIFIER___ {

    func setup() {
        title = "___VARIABLE_baseName___".translated()
        view.accessibilityIdentifier = "___VARIABLE_baseName___"
        setupInterface()
        addConstraints()
    }

    func setupInterface() {
        //view.addSubview(<#view#>)
    }

    func addConstraints() {
        NSLayoutConstraint.activate([

        ])
    }
}
