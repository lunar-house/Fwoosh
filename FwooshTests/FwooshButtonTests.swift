//
//  FwooshButtonXCTest.swift
//  FwooshTests
//
//  Created by Andrzej Prochyra on 08/12/2025.
//

import ViewInspector
import XCTest

@testable import Fwoosh

final class FwooshButtonTests: XCTestCase {

    func testTheStartButtonIsPresent() throws {
        let sut = FwooshView()
        try sut.inspect().find(button: "Start")
    }
}
