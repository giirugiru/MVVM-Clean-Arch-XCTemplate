// ___FILEHEADER___

import Foundation
import Combine

protocol ___VARIABLE_productName:identifier___Repository {
    func fetch() -> AnyPublisher<___VARIABLE_productName:identifier___Model, Error>
}

internal final class Default___VARIABLE_productName:identifier___Repository: ___VARIABLE_productName:identifier___Repository {
    
    init() { }
    
    func fetch() -> AnyPublisher<___VARIABLE_productName:identifier___Model, Error> {
        return Future<___VARIABLE_productName:identifier___Model, Error> { promise in
            promise(.success(.init()))
        }
        .eraseToAnyPublisher()
    }
}
