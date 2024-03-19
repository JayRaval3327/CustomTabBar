//
//  MainView.swift
//  CustomTabBar
//
//  Created by Jay Raval on 2024-03-18.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab) {
                ViewOne()
                    .tag(0)
                
                ViewTwo()
                    .tag(1)
                
                ViewThree()
                    .tag(2)
                
                ViewFour()
                    .tag(3)
            }
            
            ZStack{
                HStack{
                    ForEach((TabBarItems.allCases), id: \.self){ item in
                        Button{
                            selectedTab = item.rawValue
                        } label: {
                            CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                        }.background(selectedTab == item.rawValue ? Color("CustomColor") : .white)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        
                        
                    }
                }
                .padding(6)
            }
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 2, x: 1, y: 1)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
    
    @ViewBuilder
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View {
        VStack(spacing : 10){
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .white : .gray)
                .frame(width: 15, height: 15)
            
            Text(title)
                .font(.system(size: 14))
                .foregroundColor(isActive ? .white : .gray)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .frame(width: 70, height: 70)
    }
}

#Preview {
    MainView()
}
