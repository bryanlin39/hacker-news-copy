# Hacker News Copy

### Core Functionality
- [] Post Class: title, author, link, votes, time posted
- [] Comment Class: content, author, time posted (one to many with post)
- [] CRUD for posts
- [] CRUD for comments
- [] Integration testing


### Further Exploration
- [] Custom CSS styling
- [] Comments within comments
- [] Scopes
- [] Add/edit comments on the same page as the post



rails g model class column1:type column2:type
  (class is singular, don't need to specify type if string)

rails g controller classes view1 view2
  (class is plural, index new show edit)


TASKS
id      task_name      list_id
1         clean           1
2         laundry         1
3         finish work     2

LISTS
id      list_name
1         home
2         office

TASKSLISTS
tasks_count   list_id   task_id
1               1           1
1               1           2
1               2           3
