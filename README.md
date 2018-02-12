# Quantif-I: For all your data-logging needs!

Contributors: Jonah Rubin, Mary Clare Shen, Kate Woolverton

---

# Summary
Quantif-I is your solution for experimentation and personal data analysis. Is that new meditation program really helping? Does adjusing your sleep schedule make you feel better rested? How many birds really are outside your window? Quantif-I provides a platform for managing experiments and collecting data over time, and then helps you draw actionable insights from that information. Simply log in, create a new experiment, and begin logging your data over time. You can see everything you’ve collected, and analyze your data using graphs and statistics.

---

# Users
People with internet access, an basic understanding of the scientific method, and a desire to learn more about themselves and their lives.

---

# MVP 
A simple web app that allows the user to record data in experiments and be able to see that data. 
Users should be able to:
 - Create an account
 - Log in to that account
 - Edit that account (user name, password, and name)
 - View their experiments (both all of their experiments and a particular experiment)
 - Create/Edit experiments
 - Log new datapoints for an experiment
 - View the data for an experiment (preferably in a easy-to-visualize way)


 ---

# Functionality
You begin your Quantif-I experience through the homepage (Figure 1), which leads you to either the login screen (Figure 2) , or to account creation (Figure 3). Once you logged in, you can see your account (Figure 4), edit your account (Figure 5), look at your current experiments (Figure 6), see a specific experiment (Figure 7), see a graph corresponding with that experiment (Figure 8) or make a new experiment (Figure 9). Security is ensured for users through password hashing and ensuring that even if someone changes the url to point to another user’s experiments, they are not given access (Figure 10). You can edit your experiments (Figure 11) and change datapoints in experiments (Figure 12).


![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%203.52.24%20PM.png "Figure 1")
Figure 1: The homepage of Quantif-I. This page is for a logged in user.


![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.09.48%20PM.png "Figure 2")
Figure 2: The login page. If the email and password combination match, it will log the user in and give them access to their experiments. Only a logged in user can view account pages and experiments--there are measures in place that prevent someone from simply changing the url to get to any user’s experiments or account page. All passwords are hashed. Emails are required to have a string of characters, followed by an ‘@’, followed by more characters. 


![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.26.04%20PM.png "Figure 3")
Figure 3: An account creation page.


![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.09.20%20PM.png "Figure 4")
Figure 4: An account page. 


![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.09.32%20PM.png "Figure 5")
Figure 5: An edit account page.


![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.09.00%20PM.png "Figure 6")
Figure 6: The list of the user’s experiments. This user has two experiments, “Daily Yoga” and “Bedtime.” “Daily Yoga” is an active experiment, while “Bedtime” is inactive.



![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.51.12%20PM.png "Figure 7")
Figure 7: The page for the experiment “Daily Yoga.” New datapoints can be added to the experiment through this page.



![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.53.42%20PM.png "Figure 8")
Figure 8: A graph for the data in the experiment “Daily Yoga”.



![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.09.10%20PM.png "Figure 9")
Figure 9: A new experiment form.



![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.16.43%20PM.png "Figure 10")
Figure 10: This page is shown if the user attempts to tamper with the url to get to another user’s account.



![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.35.28%20PM.png "Figure 11")
Figure 11: The edit experiment page. 



![alt text](https://github.com/Omicron3141/Quantif-I/blob/master/Pictures/Screen%20Shot%202018-02-11%20at%204.35.39%20PM.png "Figure 12")
Figure 12: The edit datapoint experiment.

---

# Installation Steps
1.Clone the repo
```
git clone https://github.com/Omicron3141/Quantif-I.git path/to/where/you/want/the/files
```

2. Enter the quantifi directory
```
cd quantifi
```

3. Install any needed gems
```
bundle install
```

4. Set up the database
```
rails db:migrate
```

5. Run the server
```
rails server
```

6. Go to http://localhost:3000/ and create an account


---

# Issues

Git: We built our git workflow before the lectures on the subject. Out workflow of separate dev branches and testing before pushing to master worked mostly ok, but was far from perfect. In one instance, we had to create a separate feature branch so two people could work on a feature without trampling on each other’s toes or pushing to master. For future projects, we’d want to create an organization and lock the master branch behind a code review requirement

Workflow: There were several times when one of us was stuck waiting for changes that someone else was working on. We often ended up working on side-tasks of lesser importance. In the future, we should improve our weekly planning to get important things done sooner, so fewer people will be blocked.

Experience: Most of the team had very little experience with any of the technologies used in this project. Thus, simpler tasks took a very long time, so fewer tasks were able to be accomplished. However, we all gained experience that will be useful in future projects.


Known Issues
 - You need to enter a new password whenever you want to change your account details - we ran out of time to address this, but we could seperate the change password functionality from the edit user page. This might make the system harder to use, though.
 - Screen layout is messed up for small screen sizes - we ran out of time, but we could use md and sm column layout classes from bootstrap
 - Dropdown menu on visualize page appears in wrong place - we ran out of time, and are not sure how to fix this. It would likely just take trial and error.


---

# Resources Used

Bootstrap 5

bcrypt gem

chartkit gem


 - Claghorn, George. “Guides.rubyonrails.org.” Getting Started with Rails, RubyOnRails.org, 9 
Feb. 2018, guides.rubyonrails.org/getting_started.html.

 - user2493145. “Ruby on Rails Joining Multiple Tables and How to Extract Data.” Stack Overflow, 
Stack Exchange, Inc., Aug. 2017, stackoverflow.com/questions/17147431/ruby-on-
rails-joining-multiple-tables-and-how-to-extract-data. 

 - Rogers, Callum. “Default Values for Model Fields in a Ruby on Rails Form.” Stack Overflow, 
Stack Exchange, Inc., 2011, stackoverflow.com/questions/4736397/default-values-for-
model-fields-in-a-ruby-on-rails-form. 

 - Shetty, Harish. “How to Set the Default Value for a Datetime Column in Migration Script?” Ruby 
on Rails - How to Set the Default Value for a Datetime Column in Migration Script? - 
Stack Overflow, Sept. 2017, stackoverflow.com/questions/1580805/how-to-set-the
-default-value-for-a-datetime-column-in-migration-script. 

 - e_r. “Ruby: substring to a certain length and also to last whitespace within substring.” String - 
Ruby: substring to a certain length and also to last whitespace within substring - Stack 
Overflow, 31 Jan. 2018, stackoverflow.com/questions/9503554/ruby-substring-to-
A-certain-length-and-also-to-last-whitespace-within-substring.

 - Ruby, Joe. “Ruby-Forum.com.” add_column :Default=>now() ? - Ruby Forum, Ruby-Forum.com, 
24 Aug. 2006, www.ruby-forum.com/topic/78603.

 - Chemist. “Rails Bootstrap how to format form_for (Width grid collapses).” Css - Rails Bootstrap 
how to format form_for (Width grid collapses) - Stack Overflow, Stack Exchange, Inc., 
July 2016, stackoverflow.com/questions/21710486/rails-bootstrap-how-to-format-form-
for-width-grid-collapses. 

 - jnevelson. “Passing parameters to partial view.” Ruby on rails - Passing parameters to partial 
view - Stack Overflow, Stack Exchange, Inc., July 2016, stackoverflow.com/questions/
6672454/passing-parameters-to-partial-view. 

 - ankane. “Chartkick.” File: README - Documentation for chartkick (2.2.5), 2015, www.rubydoc.info/gems/chartkick/2.2.5. 
Hartl, Michael. “Ruby on Rails Tutorial (Rails 5).” Softcover.io, RailsTutorial.org, www.railstutorial.org/book/modeling_users. 
“Floats, Decimals, or Integers.” Ruby - Floats, Decimals, or Integers - Stack Overflow,
stackoverflow.com/questions/18728921/floats-decimals-or-integers.

 - “Guides.rubyonrails.org.” A Guide to Testing Rails Applications - Ruby on Rails Guides,	
guides.rubyonrails.org/testing.html.

 - “Where to Put Rails Modules.” Code with Jason, 23 Jan. 2018,	
www.codewithjason.com/put-rails-modules/.

 - “Rails, Ruby, How to Sort an Array?” Stack Overflow,	
stackoverflow.com/questions/5739158/rails-ruby-how-to-sort-an-array.

 - “How TO - Toggle Hide and Show.” How To Toggle Between Hiding And Showing an Element, www.w3schools.com/howto/howto_js_toggle_hide_show.asp.

 - “How to Set up and Use a Rails Routes Prefix.” Stack Overflow, stackoverflow.com/questions/24622826/how-to-set-up-and-use-a-rails-routes-prefix.


