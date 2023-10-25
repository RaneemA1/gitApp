//
//  Explore_View.swift
//  ViewRaneem
//
//  Created by ٍٍRaneem A on 10/04/1445 AH.
//

import SwiftUI

struct Explore_View: View {
    @State private var searchBar = ""
    
    
    var items: [(Image, String , Color)] = [
        (Image(systemName: "light.strip.2.fill"), "Trending Repositories" , .purple),
        (Image(systemName: "face.smiling"), "Awesome Lists", .brown)
    ]
    
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    
                   
                    HStack{
                        Text("Discover")
                        .font(.title).bold()
                        .foregroundColor(.white)
                        Spacer()
                    }
                    
                    VStack{
                        ForEach(items, id: \.1) { item in
                            My_List(image: item.0, title: item.1, color: item.2)
                        }
                    }
                    .padding()
                    .background(
                        Rectangle()
                            .cornerRadius(23)
                            .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                            .foregroundColor(Color.white.opacity(0.22))
                    )
                    
                    ActivityView()
                    
                }
                .padding()
                .background(.black)
                .navigationTitle("Explore")
                .searchable(text: $searchBar , prompt: "search" )
                
            }
        }
    }
}

#Preview {
    Explore_View()
}


struct ActivityView: View {
    var body: some View {
        HStack{
            Text("Activity")
                .font(.title).bold()
                .foregroundColor(.white)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease")
                    .font(.title).bold()
                    .foregroundColor(.gray)
            })
        }
        
        
        VStack(spacing: 30){
            
            HStack{
                    Image(systemName: "airtag")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70,height: 70)
                        .foregroundColor(.black)
           
                }
        
            Text("Aplle/Swift-syntax")
                .foregroundColor(.black)
                .font(.title2).bold()
            
            Text("A set of Swift libraries for parsing,inspecting generating, and transforming swift source code.")
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                
            
        }// End_VStack
        
        .padding()
        .background(
            ZStack{
            Rectangle()
                
                .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
              //  .foregroundColor(Color.gray.opacity(0.20))
                LinearGradient(gradient: Gradient(colors: [Color.white,Color.white, Color.white]), startPoint: .leading, endPoint: .trailing)
            } .cornerRadius(30)
        )
        
        
    }
}

