# delegatePlay
A simple app that demonstrates a custom delegate

1. Subclass UIView and name it DrawerView. This view will animate in from the bottom and will animate out when the user dismisses it. 
2. Add a button on the UIView that says 'dismiss'
3. Write a custom delegate protocol that tells the delegate when the 'dismiss' button was tapped
4. In the root view controller, add a button that presents the drawer (animate the drawer into the view). Set the root view controller as the delegate of the DrawerView. Respond to the 'dismiss' button by animating the view out.
