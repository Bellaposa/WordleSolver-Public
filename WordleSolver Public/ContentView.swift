//
//  ContentView.swift
//  WordleSolver Public
//
//  Created by Antonio Posabella on 30/01/22.
//

import SwiftUI

struct ContentView: View {
	@ObservedObject var vm: SolverVM = .init()
	var body: some View {
		let binding = Binding<String>(
			get: { self.vm.searchText },
			set: { self.vm.searchText = $0; self.vm.searchWithWords($0) }
		)
		ZStack {
			Color.black
			VStack {
				Text("Wordle Solver")
					.foregroundColor(.white)
					.padding(.vertical, 30)
					.font(.system(size: 40, weight: .heavy, design: .default))
				
				TextField("Insert character", text: binding)
					.font(.system(size: 25, weight: .heavy, design: .default))
					.padding(.horizontal, 20)
				
				
				ScrollView(.vertical, showsIndicators: true) {
					
					
					ForEach(vm.results, id: \.self) { item in
						HStack {
							Text(item)
								.font(.system(size: 10, weight: .heavy, design: .default))
						}
					}
				}
				Spacer()
			}
		}.frame(width: 400, height: 400)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
