Document Object Model (DOM) 

#Resources 
* W3 School
* Google
* Youtube

#Stop and Test

Stop and test offten to make sure that its not broken.
I will test each part that I make.

#Breaks
Breaks can def improve the quality and amount of learning.

11:03 AM CST

# How to link jQuery lib using CDN(Content Delivery Network)

> <head>
> <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/
> jquery.min.js"></script>
> </head>

#Basic Syntax $(selector).action()
* A $ sign to define/access jQuery.
* A (selector) to "query (or find)" HTML elements.
* A jQuery action() to be preformed to the element or elements.

#Examples:

* $(this).hide() - hides the current element.
* $("p").hide() - hides all <p> elements.
* $(".test").hide() - hides all elements with class="test".
* $("#test").hide() - hides the element with id="test".

# .Ready method 
 
 To prevent the jQuery code from running before the document is finished loading.

>$ (document) .ready (function)(){
>  // jQuery methods go here...
>}


# Element Selector 

The jQuery element selector selects elements based on the element name.

You can select all <p> elements on a page like this:
$ ("p")

# #id Selector

jQuery uses the id attribute of an HTML tag to find the specific element.

An id should be unique so you can find a single unique element.

To find an element with a specfic id, write a hash character and the id of the HTML element.

# .class Selector

To find elements with a specific class, write a period followed by the class name.

# MORE EXAMPLES OF JQUERY SELECTORS ON THIS PAGE 

https://www.w3schools.com/jquery/jquery_selectors.asp 

# Events

Events are all of the diffrent visitor's actions that a web page can respond to.

An event represents th precise moment when something happens

Ex)
* moving a mouse over an element 
* selecting a radio button
* clicking on an element 

# COMMON DOM EVENTS IN LINK TO WEBSITE

https://www.w3schools.com/jquery/jquery_events.asp

1:03 PM CST


