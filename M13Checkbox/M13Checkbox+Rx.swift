//
//  M13Checkbox+Rx.swift
//  M13Checkbox Demo
//
//  Created by Rodrigo Longhi Guimarães on 15/01/19.
//  Copyright © 2019 Brandon McQuilkin. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

extension Reactive where Base: M13Checkbox {
    var checkState: Driver<M13Checkbox.CheckState> {
        return self.base.checkStatePubSub
            .asDriver(onErrorJustReturn: .mixed)
    }
}
