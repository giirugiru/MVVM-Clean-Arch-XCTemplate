// ___FILEHEADER___

import UIKit

public final class ___VARIABLE_productName:identifier___Coordinator {
    
    // MARK: - Properties
    private var navigationController: UINavigationController?
    
    init(
        navigationController: UINavigationController?
    ) {
        self.navigationController = navigationController
    }

    // MARK: - Private
    // Create View Controller
    private func make___VARIABLE_productName:identifier___ViewController() -> ___VARIABLE_productName:identifier___ViewController {
        let repository = make___VARIABLE_productName:identifier___Repository()
        let useCase = make___VARIABLE_productName:identifier___UseCase(
            respository: repository
        )
        let viewModel = make___VARIABLE_productName:identifier___ViewModel(
            useCase: useCase
        )
        let viewController = ___VARIABLE_productName:identifier___ViewController.create(
            with: viewModel
        )
        return viewController
    }
    
    // Create View Model
    private func make___VARIABLE_productName:identifier___ViewModel(
        useCase: ___VARIABLE_productName:identifier___UseCase
    ) -> ___VARIABLE_productName:identifier___ViewModel {
        return ___VARIABLE_productName:identifier___ViewModel(
            coordinator: self, 
            useCase: useCase
        )
    }
    
    // Create Use Case
    private func make___VARIABLE_productName:identifier___UseCase(
        respository: ___VARIABLE_productName:identifier___Repository
    ) -> ___VARIABLE_productName:identifier___UseCase {
        return Default___VARIABLE_productName:identifier___UseCase(
            repository: respository
        )
    }
    
    // Create Repository
    private func make___VARIABLE_productName:identifier___Repository() -> ___VARIABLE_productName:identifier___Repository {
        return Default___VARIABLE_productName:identifier___Repository()
    }
    
    // MARK: - Public
    // Entry Point
    func route() {
        
    }

    func create() -> ___VARIABLE_productName:identifier___ViewController {
        let vc = make___VARIABLE_productName:identifier___ViewController()
        return vc
    }
}
