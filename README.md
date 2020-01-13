# README

## As a user, I want to be able to create a task
  - A POST request to “/tasks” creates a task that is persisted.
  - Accepted parameters are “title” (type: string) and  “description” (type: text).
​
## As a user, I want to see the details of a request
  - A GET request to “/tasks/:id” returns a representation of the task, with “title” and “description”.
​
## As a user, I want to see my tasks in a list format
  - A GET request to “/tasks” returns a representation of all tasks.
​
## As a user, I want to delete a task.
  - A DELETE request to “/tasks/:id” deletes the task.
​
## As a user, I want to toggle a task’s complete status
  - A request to “/tasks/:id/toggle_completion” toggles the completion status of a given task.
​
## As a user, I want to see when my task was completed
  - The result for GET “/tasks/:id” should be updated to include “completed_at” as well as “status” (which is “complete” for completed requests, and “pending” for incomplete tasks).
  - When the task is toggled, only the most recent completion time displays in “completed_at”.
​
We ask that everyone submit a solution that satisfies the above requirements, but for an entry level candidate, the following would be considered “bonus” questions. More experienced candidates are encouraged to follow through with the requirements below. 
​
## As a user, I want to organize my existing tasks into multiple lists.
  - The user would like tasks to be assigned to particular lists.
  - Lists have only a “title” attribute.
  - The user can create, read, and destroy new lists.
  - Please document your strategy for dealing with the existing tasks that will not yet belong to a list. Explain your reasoning with considerations for data integrity and user experience.
  - All future tasks are required to be assigned to a particular list. 
  - The user can make a GET request to “/lists” and see a representation of all of the lists, including their titles and associated tasks.
  - The user can make a GET request to “/lists/:id” and see a representation of the details for a particular list, including its title and associated tasks.
​
## As a user, I want to mark an entire list as complete
  - A user can make a request to “/list/:id/toggle_complete” 
  - List completion works like task completion, where you can see the completion status and the time of completion. 
  - If a list is marked “complete”, it is represented accordingly on GET “/list/:id”
  - If a list is marked “complete”, its tasks are represented as complete on GET “/task/:id”
  - If the completed list is later marked “incomplete” again, all of its child tasks revert to their initial states of completion. 
​
## As a user, I want to add subtasks for my tasks
  - Subtasks have the same attributes as tasks. 
  - The standard CRUD actions are supported for subtasks.
  - Subtask completion behaves the same as task completion, and shows the time completed if it is complete.
  - When a task is marked as completed, GET “/subtasks/:id” for its children shows as completed.
  - Similar to lists & tasks, marking a task as incomplete again revert its child subtasks to their original state. 
  - GET “/tasks/:id” includes its child subtasks.
  - GET “/lists/:id” includes its child tasks and the subtasks for each child task.
​
## As a user, I want to see a count of all incomplete tasks and subtasks for a given list
  - GET “/lists/:id” should additionally represent an attribute “incomplete_count”. The value should be the total number of incomplete tasks and subtasks within the list.