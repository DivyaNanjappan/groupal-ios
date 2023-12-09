//
//  HomeScreen.swift
//  Groupal
//
//  Created by Divya N on 08/12/23.
//

import SwiftUI

struct HomeScreen: View {
    @State private var currentPage = 0
    let numberOfPages = 4
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView (.vertical, showsIndicators: false){
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 0) {
                            ForEach(1..<4) { index in
                                GeometryReader { geometry in
                                    Image(AppStrings.imageBanner)
                                        .resizable()
                                        .frame(width: geometry.size.width, height: 200)
                                }
                                .frame(width: geometry.size.width, height: 200)
                            }
                        }
                    }
                    PagerIndicator(numberOfPages: numberOfPages, currentPage: $currentPage)
                        .padding(.bottom)
                    
                    LazyVStack() {
                        //Latest Jobs
                        HeaderView(title: AppStrings.latestJob)
                        ForEach(0..<2) { _ in
                            LatestJobView()
                        }
                        
                        //Suggested Job
                        HeaderView(title: AppStrings.suggestedForYou)
                        ForEach(0..<2) { _ in
                            SuggestedJobView()
                        }
                        
                        //Suggested Company
                        HeaderView(title: AppStrings.suggestedForYou)
                        HStack(){
                            ForEach(0..<2) { _ in
                                CompanyView()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct HeaderView: View {
    var title: String
    var body: some View {
        HStack(){
            Text(title)
                .font(.custom(AppStrings.appFont, size: 22))
                .foregroundColor(Color(AppStrings.textColor))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            Text(AppStrings.seeAll)
                .font(.custom(AppStrings.appFont, size: 15))
                .underline()
                .foregroundColor(Color(AppStrings.textColor))
                .padding(0)
            
            Image(AppStrings.imageArrowRight)
                .frame(alignment: .trailing)
                .padding(.horizontal)
            
        }
    }
}

struct LatestJobView: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 15) {
                HStack(spacing: 10) {
                    Image(AppStrings.imageInfosys)
                        .resizable()
                        .frame(width: 42, height: 42)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(AppStrings.productDesigner)
                            .font(.custom(AppStrings.appFont, size: 20))
                            .foregroundColor(Color(AppStrings.textColor))
                        
                        Text(AppStrings.companyName)
                            .foregroundColor(.blue)
                            .font(.custom(AppStrings.appFont, size: 15))
                        
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image(AppStrings.imageSave)
                        .resizable()
                        .frame(width: 24, height: 24)
                }.padding(.top, 10)
                
                HStack(spacing: 10) {
                    HStack(spacing: 0) {
                        Image(AppStrings.imageClock)
                            .renderingMode(.template)
                            .resizable()
                            .foregroundColor(Color.orange)
                            .frame(width: 15, height: 15)
                        
                        Text(AppStrings.fullTime)
                            .font(.custom(AppStrings.appFont, size: 14))
                            .foregroundColor(Color(AppStrings.textColor))
                            .padding(.horizontal, 5)
                            .background(Color.white)
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 0) {
                        Image(AppStrings.imageSuitcase)
                            .renderingMode(.template)
                            .resizable()
                            .foregroundColor(Color.blue)
                            .frame(width: 15, height: 15)
                        
                        Text(AppStrings.yearsOfExperience)
                            .font(.custom(AppStrings.appFont, size: 14))
                            .foregroundColor(Color(AppStrings.textColor))
                            .padding(.horizontal, 5)
                            .background(Color.white)
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 0) {
                        Image(AppStrings.imagePin)
                            .renderingMode(.template)
                            .resizable()
                            .foregroundColor(Color.red)
                            .frame(width: 15, height: 15)
                        
                        Text(AppStrings.jobType)
                            .font(.custom(AppStrings.appFont, size: 14))
                            .foregroundColor(Color(AppStrings.textColor))
                            .padding(.horizontal, 5)
                            .background(Color.white)
                    }
                    
                } .frame(maxWidth: .infinity).padding(.top, 10)
                
                HStack(spacing: 10) {
                    Text(AppStrings.noApplicants)
                        .foregroundColor(Color(AppStrings.textColor))
                        .font(.custom(AppStrings.appFont, size: 15))
                    
                    Spacer()
                    
                    Text(AppStrings.timePosted)
                        .foregroundColor(Color(AppStrings.textColor))
                        .font(.custom(AppStrings.appFont, size: 15))
                }.padding(.top, 10)
                
                Divider()
                    .background(Color.gray)
                    .padding(.top, 10)
                
                HStack(spacing: 5) {
                    Button(action: {
                        // View Jobs action
                    }) {
                        Text(AppStrings.viewJobs)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .font(.custom(AppStrings.appFont, size: 15))
                            .background(Color.white)
                            .foregroundColor(.blue)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                    }
                    
                    Button(action: {
                        // Apply Now action
                    }) {
                        Text(AppStrings.applyNow)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .font(.custom(AppStrings.appFont, size: 15))
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 10)
            }
            .padding(10)
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 3)
            .padding(10)
        }
    }
}

struct CompanyView: View {
    var body: some View {
        HStack(spacing: 10) {
            Image(AppStrings.imageGoogle)
                .resizable()
                .frame(width: 42, height: 42)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(AppStrings.google)
                    .font(.custom(AppStrings.appFont, size: 20))
                    .foregroundColor(Color(AppStrings.textColor))
                
                Text(AppStrings.noHiring)
                    .font(.custom(AppStrings.appFont, size: 15))
                    .foregroundColor(Color(AppStrings.textColor))
            }
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
        .padding(10)
        .frame(maxWidth: .infinity)
    }
}

struct PagerIndicator: View {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    private let indicatorWidth: CGFloat = 10
    private let indicatorSpacing: CGFloat = 5
    
    var body: some View {
        HStack(spacing: indicatorSpacing) {
            ForEach(0..<numberOfPages, id: \.self) { page in
                Circle()
                    .fill(currentPage == page ? Color.blue : Color.gray)
                    .frame(width: indicatorWidth, height: indicatorWidth)
                    .scaleEffect(currentPage == page ? 1.2 : 1.0)
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
