//
//  JobsScreen.swift
//  Groupal
//
//  Created by Divya N on 08/12/23.
//

import SwiftUI

struct JobsScreen: View {
    @State private var searchText = ""
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false){
            LazyVStack() {
                HStack {
                    Button(action: {
                        // Handle filter button action
                    }) {
                        Image(AppStrings.imageSearch)
                            .renderingMode(.template)
                            .resizable()
                            .foregroundColor(Color.gray)
                            .frame(width: 15, height: 15)
                    }
                    TextField(AppStrings.searchJobsHere, text: $searchText)
                        .padding(.leading, 10)
                    
                    Button(action: {
                        // Handle filter button action
                    }) {
                        Image(AppStrings.imageFilter)
                            .renderingMode(.template)
                            .resizable()
                            .foregroundColor(Color.blue)
                            .frame(width: 15, height: 15)
                    }
                }
                .padding(10)
                .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                .cornerRadius(10)
                .padding(10)
                ForEach(0..<5) { _ in
                    SuggestedJobView()
                }
            }
        }
    }
}

struct JobsScreen_Previews: PreviewProvider {
    static var previews: some View {
        JobsScreen()
    }
}
