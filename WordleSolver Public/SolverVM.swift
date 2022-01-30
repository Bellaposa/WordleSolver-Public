//
//  SolverVM.swift
//  WordleSolver Public
//
//  Created by Antonio Posabella on 30/01/22.
//

import Foundation

final class SolverVM: ObservableObject {
	
	var searchText: String = ""
	
	var dictionaryPath: String {
		Bundle.main.path(forResource: "big5", ofType: "txt") ?? .init()
	}
	
	var words: [String] {
		var _words: [String] = []
		do {
			let content = try String(contentsOfFile: dictionaryPath)
			_words = content.split(separator: "\n").map(String.init)
		} catch {
			
		}
		
		return _words
	}
	
	@Published var results: [String] = []
	
	func searchWithWords(_ word: String) {
//		var _results: [String] = []
//		let wordsCharacters = word.map { $0 }
//		for word in words {
//			for character in wordsCharacters {
//				if word.contains(character) {
//					_results.append(word)
//				}
//			}
//		}
//
//		results = _results
	}
}
