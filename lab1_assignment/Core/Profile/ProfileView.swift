//
//  ProfileView.swift
//  lab1_assignment
//
//  Created by Tarikk Brown on 12/6/23.
//


import SwiftUI



struct ProfileView: View {

    @EnvironmentObject var viewModel: AuthViewModel

    @State private var isMapViewActive: Bool = false // State to track navigation activation



    var body: some View {

        NavigationView {

            VStack {

                if let user = viewModel.currentUser {

                    HStack {

                        Text(user.initials)

                            .font(.title)

                            .fontWeight(.semibold)

                            .foregroundColor(.white)

                            .frame(width: 72, height: 72)

                            .background(Color(.systemGray3))

                            .clipShape(Circle())



                        VStack(alignment: .leading, spacing: 4) {

                            Text(user.fullname)

                                .font(.subheadline)

                                .fontWeight(.semibold)

                                .padding(.top, 4)

                            Text(user.email)

                                .font(.footnote)

                                .foregroundColor(.gray)

                        }

                    }

                    .padding()



                    HStack {

                        SettingsRowView(imageName: "gear",

                                        title: "Version",

                                        tintColor: Color(.systemGray))



                        Spacer()



                        Text("1.0.0")

                            .font(.subheadline)

                            .foregroundColor(.gray)

                    }

                    .padding()



                    HStack {

                        Button(action: {

                            viewModel.signOut()

                        }) {

                            SettingsRowView(imageName: "arrow.left.circle.fill",

                                            title: "Sign Out",

                                            tintColor: .red)

                        }



                        Spacer()



                        Button(action: {

                            print("Delete Account")

                        }) {

                            SettingsRowView(imageName: "xmark.circle.fill",

                                            title: "Delete Account",

                                            tintColor: .red)

                        }

                    }

                    .padding()



                    Button(action: {

                        // Set the state to activate the navigation

                        isMapViewActive = true

                    }) {

                        SettingsRowView(imageName: "location.circle.fill",

                                        title: "View Location",

                                        tintColor: .blue)

                    }

                    Spacer()

                    

                    .background(

                        NavigationLink(destination: ViewControllerWrapper(), isActive: $isMapViewActive) {

                            EmptyView()

                        }

                        .hidden()

                    )

                    .padding()

                }

            }

            .navigationBarTitle("Profile")

        }

    }

}







// Preview

#Preview {

    ProfileView()

}