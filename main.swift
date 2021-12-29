//
//  main.swift
//  book
//
//  Created by Amani Almohamadi on 19/05/1443 AH.
//
print ("✨✨✨✨✨✨✨✨✨")
print (" WELCOME IN LIBRARY  ")
print ("✨✨✨✨✨✨✨✨✨")
print(" ")



//print ("Choose ctegory :")
struct book {
    var bookName : String = ""
    var authorName : String = ""
    var bookPrice : String = ""
    var section : String = ""

}

var book1 = book(bookName: "Rich Dad Poor Dad", authorName: "Rebert Kiyosaki" , bookPrice : "45 SR"  , section : "Businees and Management")
var book2 = book(bookName: "The Art of War", authorName: "Sun Tuz" , bookPrice : "60 SR"  , section : "Businees and Management")
var book3 = book(bookName: "Thinking Fast and slow", authorName: "Daniel Kahneman" , bookPrice : "50 SR"  , section : "Businees and Management")


var book4 = book(bookName: "Dictionary of Law", authorName: "Jonathan Law" , bookPrice : "55 SR"  , section : "Law")
var book5 = book(bookName: "Law Express: Medical Law", authorName: "onathan Herring" , bookPrice : "60 SR"  , section : "Law")
var book6 = book(bookName: "Shipping Law", authorName: "Simon Baughen" , bookPrice : " 139 SR"  , section : "Law")


var book7 = book(bookName: "Calculus", authorName: "James Stewart" , bookPrice : " 399 SR"  , section : "Science")
var book8 = book(bookName: "Graded Mathematics 8", authorName: "Bhanot" , bookPrice : " 5 SR"  , section : "Science")
var book9 = book(bookName: "Psychology (AS success Guides)", authorName: "Gill White" , bookPrice : " 19 SR"  , section : "Science")


var book10 = book(bookName: "How not to Die - discover The Foods", authorName: "GENE STONE" , bookPrice:  "65 SR"  , section : "Health")
var book11 = book(bookName: "HRT", authorName: "Mirriam Stoppard" , bookPrice:  "18 SR"  , section : "Health")
var book12 = book(bookName: "Never Be Sick Again", authorName: "Raymond Francis" , bookPrice:  "61 SR"  , section : "Health")

var booksList = [book1 , book2, book3 , book4 , book5 , book6 , book7, book8 ,book9 , book10 , book11 , book12]





var userChoices : String = ""
var whileCondition = true
while whileCondition
{
    
    print ("📚 MENU 📚 ")
    print ("1- Businees and Management 👩🏻‍💻")
    print ("2- Law 👩🏻‍⚖️")
    print ("3- Science 👩🏻‍🏫")
    print ("4-Helth 👩🏻‍⚕️")
    print(" ")
    print("Please choice number of categories!")
    
    if let input = readLine(){
        userChoices = input
        switch userChoices{
            
        case "1":
         print (" 🌟 information books in Businees and Management Catgory 🌟 ")
            showingBooks(BookSection:"Businees and Management")
        case "2":
            print (" 🌟 information books in Law Catgory 🌟 ")
             showingBooks(BookSection:"Law")
        case "3":
            print (" 🌟 information books in Science Catgory 🌟 ")
            showingBooks(BookSection:"Science")

        case "4":
            print (" 🌟 information books in Health Catgory 🌟 ")
            showingBooks(BookSection:"Health")
           whileCondition = false
        default:
            print ("Invild Choice : Please try agine !")
            
        }
    }
}





func showingBooks (BookSection : String)
{
    for book in booksList
    {
        if (BookSection == book.section)
        {
            print("📚 The Books is: \(book.bookName), 📝 The author is: \(book.authorName), 💵 The Price is: \(book.bookPrice) , 🗄 The section is: \(book.section)")
          
        }
    }
}


