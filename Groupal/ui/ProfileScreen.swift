//
//  ProfileScreen.swift
//  Groupal
//
//  Created by Divya N on 08/12/23.
//

import SwiftUI

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Image(AppStrings.imageUser)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(10)
                
                Text(AppStrings.hintName)
                    .font(.custom(AppStrings.appFont, size: 20))
                    .foregroundColor(Color(AppStrings.textColor))
                
                Text(AppStrings.productDesigner)
                    .font(.custom(AppStrings.appFont, size: 16))
                    .foregroundColor(Color(AppStrings.textColor))
                
                CardView(title: AppStrings.personalInfo, icon: AppStrings.imageEdit) {
                    VStack(alignment: .leading, spacing: 10) {
                        InfoItem(label: AppStrings.dateOfBirth, value: AppStrings.hintDOB)
                        InfoItem(label: AppStrings.gender, value: AppStrings.hintGender)
                        InfoItem(label: AppStrings.martialStatus, value: AppStrings.hintMartialStatus)
                        InfoItem(label: AppStrings.differentlyAbled, value: AppStrings.hintPhysicalState)
                    }.frame(maxWidth: .infinity).padding(10)
                }
                
                CardView(title: AppStrings.contactInfo, icon: AppStrings.imageEdit) {
                    VStack(alignment: .leading, spacing: 20) {
                        InfoItem(label: AppStrings.emailId, value:  AppStrings.hintEmail)
                        InfoItem(label: AppStrings.mobileNumber, value: AppStrings.hintMobileNo)
                        InfoItem(label: AppStrings.alternateMobileNumber, value: AppStrings.nilString)
                        InfoItem(label: AppStrings.address, value: AppStrings.hintAddress)
                        InfoItem(label: AppStrings.district, value: AppStrings.hintAddress)
                        InfoItem(label: AppStrings.state, value: AppStrings.hintPhysicalState)
                        InfoItem(label: AppStrings.pinCode, value: AppStrings.hintPinCode)
                    }.frame(maxWidth: .infinity).padding(10)
                }
                
                CardView(title: AppStrings.educationInfo, icon: AppStrings.imageAdd) {
                    VStack(alignment: .leading, spacing: 10) {
                        InfoItem(label: AppStrings.mobileDesignDegree, value: AppStrings.oxfordUniversity)
                        InfoItem(label: AppStrings.mobileDesignDegree, value: AppStrings.oxfordUniversity)
                    }.frame(maxWidth: .infinity).padding(10)
                }
                
                CardView(title: AppStrings.socialLinks, icon: AppStrings.imageAdd) {
                    VStack(alignment: .leading, spacing: 10) {
                        InfoItem(label: AppStrings.linkedIn, value: AppStrings.linkedInURL)
                        InfoItem(label: AppStrings.twitter, value: AppStrings.twitterURL)
                    }.frame(maxWidth: .infinity).padding(10)
                }
                
                CardView(title: AppStrings.languages, icon: AppStrings.imageAdd) {
                    VStack(alignment: .leading, spacing: 20) {
                        InfoItem(label: AppStrings.english, value: AppStrings.readWriteSpeak)
                        InfoItem(label: AppStrings.tamil, value: AppStrings.readWriteSpeak)
                    }.frame(maxWidth: .infinity).padding(10)
                }
            }
            .padding(10)
        }
    }
}

struct CardView<Content: View>: View {
    var title: String
    var icon: String
    var content: () -> Content
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text(title)
                    .font(.custom(AppStrings.appFont, size: 20))
                    .foregroundColor(Color(AppStrings.textColor))
                    .padding(.vertical, 10)
                Spacer()
                Image(icon)
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                    .padding(5)
            }
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            Divider().padding(.horizontal, 10)
            
            content()
        }
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 3)
        .padding(.horizontal, 10)
        .padding(.bottom, 10)
    }
}

struct InfoItem: View {
    var label: String
    var value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(label)
                .font(.custom(AppStrings.appFont, size: 16))
                .foregroundColor(.gray)
            Text(value)
                .font(.custom(AppStrings.appFont, size: 16))
                .foregroundColor(Color(AppStrings.textColor))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal, 10)
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
