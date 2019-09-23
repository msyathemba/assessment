# This is test plan for Todo items application FRONT END

Feature: Feature for ToDoList Item application

   Feature Description

#1
@deplotoyDocker
Scenario: Application must be able to deploy to docker
Given docker is installed on user machine
And Docker image has been built
And Docker image is running
When I Navigate to `http://localhost:8081
Then I should see the ToDoList Item application


#2
@updatesonRefresh
Scenario: Multiple users should be able to view the shared public todo list

Given Application is launched by multiple users
When I one user updates a todo item
Then All other users should see the updated todoitem after they refresh their browser

@updatesonRefresh
Scenario: Multiple users should be able to view the shared public todo list

Given Application is launched by multiple users
When I one user adds a todolistitem
Then All other users should see the added todolistitem after they refresh their browser

@updatesonRefresh
Scenario: Multiple users should be able to view the shared public todo list

Given Application is launched by multiple users
When I one user deletes a todo item
Then All other users should see the deleted todo item after they refresh their browser

#3
@dataPersistence
Scenario: Persistance of data after refresh

Given Application is launched
And There are todo items
When I refresh the page
Then I should see the same todo items

#4
@notEmpty
Scenario: Todo items should not be empty

Given Application is launched
Then i should see atleast one todo item displayed

#5
@addtodoItems
Scenario Outline: Add todo list item

Given Application is launched
When I enter todo list item"<todolist>" on input field
And i click on submit button
Then i should see new todo list item on the list

Examples:
|todolist|
|sam|

#6
@deletetodoitem
Scenario: Delete todo list item

Given Application is launched
And There is more then one todo list item 
When i click on the x button
Then i should see new list without deleted item

@deletetodoitem
Scenario: Delete todo list item

Given Application is launched
And There is one todo item 
When i click on the x button
Then i should see error message

#7
@edittodoitem
Scenario Outline: Edit todo list item

Given Application is launched
When i enter value on input field of the item i want to Edit"<todo_item>"
And i click on update button
Then i should see updated todo item on list

Examples:
|todo_item|
|example|



