//
//  WordleSolver_PublicTests.swift
//  WordleSolver PublicTests
//
//  Created by Antonio Posabella on 30/01/22.
//

import XCTest
@testable import WordleSolver_Public

class WordleSolver_PublicTests: XCTestCase {

	var vm: SolverVM!
    
	override func setUpWithError() throws {
		vm = SolverVM()
    }
		
	func testDictionaryPath() {
		XCTAssert(vm.dictionaryPath.isEmpty == false)
	}
	
	func testContent() {
		let content = vm.words
		XCTAssert(content.count == 7910)
	}
}
