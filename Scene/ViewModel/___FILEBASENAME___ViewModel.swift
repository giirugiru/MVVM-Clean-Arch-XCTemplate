// ___FILEHEADER___

import Foundation
import Combine

internal final class ___VARIABLE_productName:identifier___ViewModel {
    
    // MARK: - Properties
    private let coordinator: ___VARIABLE_productName:identifier___Coordinator
    private let useCase: ___VARIABLE_productName:identifier___UseCase
    private var cancelables = Set<AnyCancellable>()
    let output = Output()
    
    // MARK: - Input Output Variable
    struct Input {
        let didLoad: PassthroughSubject<Void, Never>
    }
    
    class Output {
        @Published var result: ___VARIABLE_productName:identifier___ResultData = .initial
    }
    
    deinit {
        cancelables.forEach { $0.cancel() }
        cancelables.removeAll()
    }
    
    // MARK: - Initializer
    init(
        coordinator: ___VARIABLE_productName:identifier___Coordinator, 
        useCase: ___VARIABLE_productName:identifier___UseCase
    ) {
        self.coordinator = coordinator
        self.useCase = useCase
    }
    
    // MARK: - Functions
    func bind(_ input: Input) {
        input.didLoad
            .receive(on: DispatchQueue.global())
            .flatMap {
                return self.useCase.fetch()
                    .map { Result.success($0) }
                    .catch { Just(Result.failure($0)) }
                    .eraseToAnyPublisher()
            }
            .receive(on: DispatchQueue.main)
            .sink { [weak self] result in
                guard let self else { return }
                
                switch result {
                case .success(let model):
                    self.output.result = .success(model)
                case .failure(let error):
                    self.output.result = .failure(error)
                }
            }
            .store(in: &cancelables)
    }
}

extension ___VARIABLE_productName:identifier___ViewModel {
    enum ___VARIABLE_productName:identifier___ResultData {
        case initial
        case success(___VARIABLE_productName:identifier___Model)
        case failure(Error)
    }
}