//
//  MainScreen.swift
//  Groupal
//
//  Created by Divya N on 08/12/23.
//

import SwiftUI

struct MainScreen: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(AppStrings.imageMenu)
                    .resizable()
                    .frame(width: 32, height: 32)
                    .padding(.horizontal, 10)
                
                Text(selectedTabName())
                    .font(.custom(AppStrings.appFont, size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppStrings.textColor))
                    .frame(maxWidth: .infinity)
                
                Image(AppStrings.imageUser)
                    .resizable()
                    .frame(width: 42, height: 42)
                    .background(Image(AppStrings.imageHeptagon))
                    .padding(5)
                    .padding(.horizontal, 10)
            }
            .frame(height: 60)
            .background(Color.white)
            .shadow(radius: 4)
            
            Spacer()
            
            TabView(selection: $selectedTab) {
                HomeScreen()
                    .tabItem {
                        Image(AppStrings.imageMenuHome)
                            .renderingMode(.template)
                            .foregroundColor(.gray)
                        Text(AppStrings.menuHome)
                            .font(.custom(AppStrings.appFont, size: 15))
                    }
                    .tag(0)
                
                JobsScreen()
                    .tabItem {
                        Image(AppStrings.imageMenuJobs)
                            .renderingMode(.template)
                            .foregroundColor(.gray)
                        Text(AppStrings.menuJobs)
                            .font(.custom(AppStrings.appFont, size: 15))
                    }
                    .tag(1)
                
                JobsScreen()
                    .tabItem {
                        Image(AppStrings.imageMenuSaved)
                            .renderingMode(.template)
                            .foregroundColor(.gray)
                        Text(AppStrings.menuSaved)
                            .font(.custom(AppStrings.appFont, size: 15))
                    }
                    .tag(2)
                
                ProfileScreen()
                    .tabItem {
                        Image(AppStrings.imageMenuProfile)
                            .renderingMode(.template)
                            .foregroundColor(.gray)
                        Text(AppStrings.menuProfile)
                            .font(.custom(AppStrings.appFont, size: 15))
                    }
                    .tag(2)
            }
        }
    }
    
    func selectedTabName () -> String {
        var name = ""
        switch(selectedTab){
        case 1 : name = AppStrings.searchJob
        case 2 : name = AppStrings.searchJob
        case 3 : name = AppStrings.yourProfile
        default:
            name = AppStrings.menuHome
        }
        
        return name
        
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
