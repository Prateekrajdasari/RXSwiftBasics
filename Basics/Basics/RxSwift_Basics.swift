//
//  RxSwift_Basics.swift
//  Basics
//
//  Created by Prateek Raj on 13/08/22.
//

import Foundation
import RxCocoa
import RxRelay
import RxSwift

class RxBasics {
    
    var arr = [1,2,3,4,5,6]
    var dict = ["a": "A", "b": "B"]
    
     required init() {
         
         showObservables()
    }
    
    func showObservables() {
        
        var observable_of = Observable.of(1,2,3,4)
        var observable_fromDict = Observable.from(dict)
        var observable_fromArray = Observable.from(arr)
        var observable_fromString = Observable.from(" Prateek Raj ")
        
        let disposeBag = DisposeBag()
        
        print("observable_of")
    observable_of.subscribe { event in
            
            switch event {
            case .next(let value):
                print(value)
            case .error(let error):
                print(error)
            case .completed:
                print("Completed")
            }
        }.disposed(by: disposeBag)
        
        print("observable_fromDict")
    observable_fromDict.subscribe { event in
            
            switch event {
            case .next(let value):
                print(value)
            case .error(let error):
                print(error)
            case .completed:
                print("Completed")
            }
        }.disposed(by: disposeBag)
        
        print("observable_fromArray")
    observable_fromArray.subscribe { event in
            
            switch event {
            case .next(let value):
                print(value)
            case .error(let error):
                print(error)
            case .completed:
                print("Completed")
            }
        }.disposed(by: disposeBag)
        
        print("observable_fromString")
        observable_fromString.subscribe { event in
            switch event {
            case .next(let value):
                print(value)
            case .error(let error):
                print(error)
            case .completed:
                print("Completed")
            }
        }.disposed(by: disposeBag)
        
        let publishSubject = PublishSubject<Int>()

//        observable_of.
        
        arr.append(10)
        dict["b"] = "C"

        print(arr)
        print(dict)

        
//        print("observable_of: \(observable_of)")
//        print("observable_fromDict: \(observable_fromDict)")
//        print("observable_fromArray: \(observable_fromArray)")
//        print("observable_fromString: \(observable_fromString)")
    }
}
