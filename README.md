# UIStoryboardSegue Lab

![Oprah](http://i.imgur.com/nipZJFj.jpg?1)  

> Do the one thing you think you cannot do. Fail at it. Try again. Do better the second time. The only people who never tumble are those who never mount the high wire. This is your moment. Own it. -[Oprah Winfrey](https://en.wikipedia.org/wiki/Oprah_Winfrey)

## Overview

In this lab you'll create an app that displays a list in a table view. 

## Instructions

In this lab, you will create a simple iOS app that displays a list of animals in a table view. Tapping on a cell in the table view will bring up another view that shows the emoji for that animal, as well as the English name of that animal. The nav bar title should be changed to the English name as well.

The main view of your iOS app should look like this:

![Main view](https://s3.amazonaws.com/learn-verified/animals-main-view.png)

The detailed view should look like this:

![Detail view](https://s3.amazonaws.com/learn-verified/animals-detail-view.png)

A basic Xcode project has been set up for you in the file `Animals/Animal.xcodeproj` in this repo, but the rest is up to you to implement. Here are the steps you must complete to finish this lab:

1. Drag a new table view controller to `Main.storyboard`.
2. Set the new table view controller to be the initial view controller in its Attributes Inspector.
3. Set the reuse identifier for the table view's cells to "AnimalCell" using the Attributes Inspector.
4. Embed a navigation controller in the storyboard. Select **Table View Controller Scene**. From the **Editor Menu**, open the **Embed In** submenu and select **Navigation Controller**.
5. Set the nav bar title of the table view to "Animals".
6. Set the class of the table view to `AnimalListViewController`.
7. Add another view controller to `Main.storyboard`. Find a **View Controller** in the object library and drag it onto the storyboard.
8. Set the class of the new view controller you just created to `AnimalViewController`.
9. Set the background color of your new view controller's view to dark grey using the Attributes Inspector.
10. Drag a new label onto the `AnimalViewController` scene. Drop it roughly in the center (but a bit above). Center the text. Set the text size to 72 and its color to white. (These attributes can all be set in the Attributes Inspector.)
11. Drag another label onto the `AnimalViewController` scene. Put this label a bit below the one you created in Step 10. Use the Attributes Inspector to center the text and make it white.
12. Create a segue between the table view and the detail view you just arranged. This is a bit tricky, since you haven't done this at all before, but it's pretty easy. Select the area of the table view marked **Prototype Cells**. Hold down <kbd>Control</kbd> and drag a connection to the `AnimalViewController` scene. A popup menu will appear. Under **Selection Segue**, select **Push**. Congratulations! You've created your first segue! Easy, huh?
13. Select the segue icon and bring up its Attributes Inspector. Change the identifier of the segue to "AnimalDetailView".
14. Now it's time to implement the table view controller. Open up `AnimalListViewController.swift` in the Xcode editor. The first thing you must do is create an instance variable to store the list of animals to display in the table view. These animals are:
	* Dog
	* Cat
	* Mouse
	* Hamster
	* Bunny
	* Panda
	* Lion
	* Pig
	* Frog
	* Octopus
15. Implement the method `numberOfSections(in:)`. (If you need help, take a look at the previous lessons to give you a hint.)
16. Implement the method `tableView(_:numberOfRowsInSection:)`. (Again, if you some help, take a look at the previous lessons.)
17. Now you need to add the IB outlets for the `AnimalViewController` scene. Switch back to `Main.storyboard` and select the **Animal View Controller Scene**, then open up `AnimalViewController` in the assistant editor. <kbd>Control</kbd>-drag to add IB oulets for both labels to `AnimalViewController`.
18. Open up `AnimalViewController.swift` in Xcode's editor. Add an instance variable for the animal being represented in this view, so it can be set by the table view when preparing the segue. (Remember: This variable initially won't be set when the view controller is created. What type should it be?)
19. Implement `viewWillAppear(_:)` in `AnimalViewController`. This method will have to do three things:
	1. Set the smaller text label to the English name of the animal represented in this view.
	2. Set the larger text label to the emoji corresponding to the animal. (You may want to create a helper method to map the English name of the animal to its emoji.<!-- Should give mapping here, but emoji doesn't work in READMEs -->)
	3. Set the nav bar title to the English name of the animal.
20. One last thing: You need to prepare the segue. Switch back to `AnimalViewListController.swift` and implement the method `prepare(for:sender:)`. This method should get the destination view controller (an instance of `AnimalViewController`) and the currently-selected table cell, and set the destination view controller's `animal` property to the name of the current table selection. Refer back to the previous lesson if you need help implementing this method.

That's it! You should now have a fully-functional version of this application. Congratulations! You're well on your way to becoming an expert in iOS segues.

<a href='https://learn.co/lessons/SegueLab' data-visibility='hidden'>View this lesson on Learn.co</a>
