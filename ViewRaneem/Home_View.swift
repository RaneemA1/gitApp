//
//  Home_View.swift
//  ViewRaneem
//
//  Created by ٍٍRaneem A on 10/04/1445 AH.
//

import SwiftUI

struct Home_View: View {
    // Search
    @State private var searchBar = ""
    
    
    var items: [(Image, String , Color)] = [
        (Image(systemName: "circle.square.fill"), "Issues" , .green),
        (Image(systemName: "switch.programmable.square"), "Pull Requests", .blue),
        (Image(systemName: "tray"), "Discussions", .purple),
        (Image(systemName: "aspectratio"), "Projects", .white),
        (Image(systemName: "square.dashed.inset.filled"), "Repositories", .gray),
        (Image(systemName: "homekit"), "Organizations", .orange),
        (Image(systemName: "star.square.fill"), "Starred", .yellow)
    ]
    
    
    var body: some View {
        
        NavigationStack{
            VStack{
                ScrollView{
                    
                    MyWorkView()
                    
                    VStack{
                        ForEach(items, id: \.1) { item in
                            My_List(image: item.0, title: item.1, color: item.2)
                        }
                    }
                    .padding()
                    .background(
                        Rectangle()
                            .cornerRadius(20)
                            .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                            .foregroundColor(Color.gray.opacity(0.20))
                    )
                    
                    FavoritesView()
                    ShortcutsView()
                    
                }
                .padding()
                .background(.black)
                .navigationTitle("Home")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: {}){
                            Image(systemName: "plus.circle")
                        }
                    }
                }
                .searchable(text: $searchBar , prompt: "search" )
                
            } // End_NavigationStack
        }
    }
}

#Preview {
    Home_View()
}



struct MyWorkView: View {
    var body: some View {
        HStack{
            Text("My Work")
                .font(.title).bold()
                .foregroundColor(.white)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "ellipsis")
                    .font(.title).bold()
                    .foregroundColor(.gray)
            })
        } // End_ HStack
        .padding(.bottom,10)
    }
}


struct FavoritesView: View {
    var body: some View {
        HStack{
            Text("Favorites")
                .font(.title).bold()
                .foregroundColor(.white)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "ellipsis")
                    .font(.title).bold()
                    .foregroundColor(.gray)
                
            })
        }
        
        VStack(spacing: 15){
            Text("Add favorite repositories here to have quick access at any time, without having to search")
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
            
            Button(action: {}, label: {
                Text("Add Favorites")
                    .font(.title3).bold()
                    .foregroundColor(.blue)
                    .padding()
                    .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                    .background(.gray)
                    .cornerRadius(10)
                
            })
            Text("Add favorite repositories here to here to have quick access at any time, without having to search")
                .foregroundColor(.white)
            
        }// End_VStack
        
        .padding()
        .background(
            Rectangle()
                .cornerRadius(20)
                .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                .foregroundColor(Color.gray.opacity(0.20))
        )
   
    }
    
}


struct ShortcutsView: View {
    var body: some View {
        HStack{
            Text("Shortcuts")
                .font(.title).bold()
                .foregroundColor(.white)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "ellipsis")
                    .font(.title).bold()
                    .foregroundColor(.gray)
            })
        }
        
        
        VStack(spacing: 15){
            
            HStack{
                
               
                    Image(systemName: "circle.square.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                        .foregroundColor(.green)
//                Circle()
//                    .frame(width: 20,height: 20)
                    Image(systemName: "switch.programmable.square")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                        .foregroundColor(.blue)
                    Image(systemName: "tray")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                        .foregroundColor(.purple)
                    Image(systemName: "square.dashed.inset.filled")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                        .foregroundColor(.orange)
                    Image(systemName: "homekit")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                        .foregroundColor(.red)
                }
        
            
            Text("The things you need, one tap away Fast access to your lists of Issues, Pull Requests, or Discussions.")
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
            
            Button(action: {}, label: {
                Text("Get started")
                    .font(.title3).bold()
                    .foregroundColor(.blue)
                    .padding()
                    .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                    .background(.gray)
                    .cornerRadius(10)
                
            })
            
        }// End_VStack
        
        .padding()
        .background(
            Rectangle()
                .cornerRadius(20)
                .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                .foregroundColor(Color.gray.opacity(0.20))
        )
        
        
    }
}

