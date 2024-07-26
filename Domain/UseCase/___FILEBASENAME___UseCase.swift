// ___FILEHEADER___

import Foundation
import Combine

protocol ___VARIABLE_productName:identifier___UseCase {
    func fetch() -> AnyPublisher<___VARIABLE_productName:identifier___Model, Error>
}

internal final class Default___VARIABLE_productName:identifier___UseCase: ___VARIABLE_productName:identifier___UseCase {
    private let repository: ___VARIABLE_productName:identifier___Repository
    
    init(
        repository: ___VARIABLE_productName:identifier___Repository
    ) {
        self.repository = repository
    }

    func fetch() -> AnyPublisher<___VARIABLE_productName:identifier___Model, Error> {
        repository.fetch()
    }
}
