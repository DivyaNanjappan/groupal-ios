//
//  SuggestedJobView.swift
//  Groupal
//
//  Created by Divya N on 09/12/23.
//

import SwiftUI

struct SuggestedJobView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 10) {
                
                HStack(spacing: 10) {
                    Image(AppStrings.imageInfosys)
                        .resizable()
                        .frame(width: 42, height: 42)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(AppStrings.productDesigner)
                            .font(.custom(AppStrings.appFont, size: 20))
                            .foregroundColor(Color(AppStrings.textColor))
                        
                        Text(AppStrings.companyName)
                            .foregroundColor(.blue)
                            .font(.custom(AppStrings.appFont, size: 15))
                        
                    }.frame(maxWidth: .infinity, alignment: .leading)
                }.padding(.top, 10)
                
                HStack(spacing: 10) {
                    Text(AppStrings.noApplicants)
                        .font(.custom(AppStrings.appFont, size: 15))
                        .foregroundColor(Color(AppStrings.textColor))
                    
                    Spacer()
                    
                    Text(AppStrings.timePosted)
                        .font(.custom(AppStrings.appFont, size: 15))
                        .foregroundColor(Color(AppStrings.textColor))
                }.padding(.top, 10)
                
                Divider()
                    .background(Color.gray)
                    .padding(.top, 10)
                
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
                }.padding(.top, 10)
                
                Text(AppStrings.jobDescription)
                    .font(.custom(AppStrings.appFont, size: 16))
                    .foregroundColor(Color(AppStrings.textColor))
                    .multilineTextAlignment(.leading) // Adjust the alignment here
                    .padding(.top, 10)
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
            .frame(maxWidth: .infinity)
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
        .padding(10)
        .frame(maxWidth: .infinity)
    }
}

struct SuggestedJobView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedJobView()
    }
}
