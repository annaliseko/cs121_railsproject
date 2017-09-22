# CS121 Creative Rails Project: Fedup

# Overview
This project is contributed by Annalise Ko and Patrick McDonough. It is a web application where users can share and view recipes. It also allows users to mark a recipe as complete to let other people using the web app know what meals have been recently cooked. This app is supposed to be an easy way for users to look up recipes and try new things. The purpose of having people check in to recipes might even encourage others to try a certain recipe. They might see that a certain recipe has been recently cooked and may want to try it for themselves. In general, this web app aims to encourage people to share some of their favorite recipes and even try some new ones. 

# MVP
Our MVP was just a website that allowed users to create new posts, edit posts, and delete posts. There was not the option to log in or register yet because we were mainly interested in making sure posts were being added and that they were being shown correctly on the index. After we were able to create a basic post with just a title, description, and image, we added on the ingredients and directions boxes. Afterwards, we added the user functionality that allowed users to log in, log out, and register using their email addresses. All other features, like the settings tab, the username option, and the checklist were extra features and functionality that were not a part of our MVP. 

# Architecture
We used data collection interface and database storage to store and manage all the posts that were created by individual users in our database. We also followed the built in MVC pattern from Ruby on Rails. We added individual model files that would list associations so that relationships could be established amongst classes. We added controller files that defined the functions that would be used on our website. For instance, this is where we defined index, show, new, etc... Based on these functions we created view files that determined what was on each page of our web application. We also created a form that would be rendered in other view files that essentially was the layout of the form for adding a post. 

# Key Issues
The biggest issue we had was that our tutorial used haml files instead of erb. As a result, we had to use a [haml to erb converter](https://haml2erb.org/), but sometimes there would be some glitches in the conversion. To fix these issues, we had to go through each line of code and make sure that we did not miss anything. Most of the time it was an additional or a missing <% end %>, which we would not notice until we went through the entire file. But after realizing that that was a common error, we started to look for it every time there as a haml to erb conversion error. Some other issues that arose during this process were dealing with the additional columns that we later added. For example, we added a username column to the table users. It was difficult to test at first because all the previous posts we created were by users that did not have a username. So we had to run 'rails c' and add in each username to the user of the posts before we could test out the username functionality. Another issue we ran into was that our recipe had associations and so when we tried to delete our recipe posts it would not allow us to do so because of our associations. As a result, we had to add "dependent: :destory" to our model files in order for us to properly delete the posts. 

# Functionality
<img width="900" src="https://user-images.githubusercontent.com/17204243/30728701-b2ce39d6-9f0e-11e7-8589-bb0cb56a1ba9.png">
When someone uses this site for the first time they will see this page. There will be a text that appears letting the user know that they have to first register for an account or log in before being able to upload any photos. 
<br>
<br>

<img width="900" src="https://user-images.githubusercontent.com/17204243/30728738-0f50985c-9f0f-11e7-9b30-aee5f75bad51.png">
Here is the sign up and log in page for the user. An additional feature is that users now have the ability to add a username to their account. 
<br>
<br>

<img width="900" src="https://user-images.githubusercontent.com/17204243/30728757-33905d2e-9f0f-11e7-9ed1-9b30e6b07b7a.png">
Once the user is logged in, they can add a new recipe. 
<br>
<br>

<img width="900" src="https://user-images.githubusercontent.com/17204243/30728774-5779042a-9f0f-11e7-9408-a913c3c8d9d7.png">
Or they can go to their account settings and update their email, username or password. 
<br>
<br>


<img width="900" src="https://user-images.githubusercontent.com/17204243/30728801-a7101a5a-9f0f-11e7-9a53-b9fe1b6b03ac.png">
Users also have the ability to mark a recipe as complete. This just lets the community know that someone has just cooked this recipe. It is just a fun way for people to keep track of what recipes people are cooking now and could even help people decide on what they want to cook. 
<br>
<br>

<img width="900" src="https://user-images.githubusercontent.com/17204243/30728842-e0df8d60-9f0f-11e7-93bd-784ff404a401.png">
If the author of a post is logged in they can edit or delete their recipe as well by clicking on the recipe and selecting either the Edit or Delete button at the bottom. If someone else is viewing the recipe, the Edit and Delete button will not appear.
<br>
<br>

<img width="900" src="https://user-images.githubusercontent.com/17204243/30728857-fdde7552-9f0f-11e7-84af-fd66135d9d9b.png">
If the user deletes or post or clicks to log out they will be prompted with a message to confirm their actions. 
<br>
<br>

# References
Child, Mackenzie, director. How To Build A Recipe Box In Rails 4. YouTube, YouTube, 25 Sept. 2014, www.youtube.com/watch?v=QhdzE1yNs-0.

Hemrick, Ryan, director. Ruby on Rails Tutorial | Building a Checklist. YouTube, YouTube, 17 May 2015, www.youtube.com/watch?v=Z9GaNNztcZk.

“Allow Users to Sign in Using Their Username or Email Address.” Edited by Tasos Maschalidis, GitHub, Plataformatic/Devise/Wiki/HowTo, GitHub, 24 Jan. 2014, github.com/plataformatec/devise/wiki/How-To:-Allow-users-to-sign-in-using-their-username-or-email-address.
