//
//  ProfileView.swift
//  ViewRaneem
//
//  Created by ٍٍRaneem A on 10/04/1445 AH.
//

import SwiftUI

struct ProfileView: View {
    
    var items: [(Image, String , Color)] = [
        (Image(systemName: "square.dashed.inset.filled"), "Repositories", .gray),
        (Image(systemName: "homekit"), "Organizations", .orange),
        (Image(systemName: "star.square.fill"), "Starred", .yellow)
    ]
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
                VStack{
                    HStack(spacing: 15){
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFit()
                            .font(.title)
                            .frame(width: 80,height: 80)
                            .foregroundColor(.white)
                            .background(.gray.opacity(0.4))
                            .cornerRadius(45)
                        
                        VStack(alignment: .leading ){
                            Text("Raneem BinDoaij")
                                .foregroundColor(.white)
                                .bold()
                                .font(.title3)
                            Text("Raneem")
                                .foregroundColor(.gray)
                            
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    VStack{
                        Text("i failed the turing test!")
                            .foregroundColor(.white)
                            .padding()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    ProfileDetails()
                    
                    HStack{
                        
                        Image(systemName: "trophy")
                            .foregroundColor(.gray)
                            .font(.title3)
                        
                        ZStack{
                            Image("Image12")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 5 * 9)
                                .padding(.trailing,  6 * 10)
                            Image("Image13")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 5 * 9)
                            Image("Image14")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 5 * 9)
                                .padding(.leading,  5 * 9)
                            
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                    
                } .padding()
                
                VStack{
                    ForEach(items, id: \.1) { item in
                        My_List(image: item.0, title: item.1, color: item.2)
                    }
                }
                .padding()
                .background(
                    Rectangle()
                    
                        .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                        .foregroundColor(Color.gray.opacity(0.22))
                )
                
                HStack{
                    Image(systemName:"pin.circle")
                        .foregroundColor(.gray)
                    Text("Pinned")
                        .foregroundColor(.gray)
                        
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)

                
                ScrollView(.horizontal){
                    HStack{
                        RoundedRectangle(cornerRadius: 4)
                            .frame(width: 9 * 35, height: 8 * 20)
                            .foregroundColor(Color.gray.opacity(0.20))
                            .overlay(
                                HStack(spacing: 15){
                                    Image("sticker")
                                        .resizable()
                                        .scaledToFit()
                                        .font(.title)
                                        .frame(width: 40,height: 40)
                                        .foregroundColor(.green)
                                        .background(.gray.opacity(0.3))
                                        .cornerRadius(50)
                                    
                                    VStack(alignment: .leading ){
                                        Text("Raneem BinDoaij")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.title3)
                                        Text("Raneem")
                                            .foregroundColor(.gray)
                                        
                                    }
                                }
                                
                            )
                        
                        RoundedRectangle(cornerRadius: 4)
                            .frame(width: 9 * 35, height: 8 * 20)
                            .foregroundColor(Color.gray.opacity(0.20))
                            .overlay(
                                HStack{
                                    ZStack{
                                        Image("Image12")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 5 * 10)
                                            .padding(.trailing,  7.5 * 10)
                                        Image("Image13")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 5 * 10)
                                        Image("Image14")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 5 * 10)
                                            .padding(.leading,  7.5 * 10)
                                        
                                    }
                                    
                                }
                            )
                        
                    }
                }
                .padding(.horizontal)
                
                
            }
            .background(.black)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 10){
                        Button(action: {}){
                            Image(systemName: "gearshape")
                        }
                        
                        Button(action: {}){
                            Image(systemName: "square.and.arrow.up")
                        }
                    }
                }
                
                
            }
        }
    }
}

struct ProfileView_previews: PreviewProvider{
    static var previews: some View {
        ProfileView()
    }
}


struct ProfileDetails: View {
    
    var body: some View {
        
        VStack(alignment: .leading , spacing: 10){
            
            HStack(spacing: 10 ){
                
                Image(systemName: "building.2")
                    .scaledToFit()
                    .foregroundColor(.gray)
                
                Text("@safcsp  ")
                    .foregroundColor(.white)
                    .font(.subheadline).bold()
                
                Image(systemName: "mappin.and.ellipse.circle")
                    .scaledToFit()
                    .foregroundColor(.gray)
                
                Text("Riyadh,Kingdom of Saudi Arabia")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                
            }
            
            HStack(spacing: 8 ){
                
                Image(systemName: "link")
                    .scaledToFit()
                    .foregroundColor(.gray)
                Text("lab.sa")
                    .foregroundColor(.white)
                    .font(.subheadline).bold()
                
                Image(systemName: "slider.horizontal.3")
                    .scaledToFit()
                    .foregroundColor(.gray)
                
                Text("Developer Program Member")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                
            }
            
            HStack(spacing: 8 ){
                
                Image(systemName: "person")
                    .scaledToFit()
                    .foregroundColor(.gray)
                
                Text("12 ")
                    .foregroundColor(.white)
                    .font(.subheadline).bold()
                
                Text("followers ・")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                
                Text("3")
                    .foregroundColor(.white)
                    .font(.subheadline).bold()
                
                Text("following")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                
            }
            
            
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}



