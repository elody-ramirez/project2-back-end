# NBA Fantasy Team Creator

## Link to Front End Repo
https://github.com/elody-ramirez/project2-client

## Technologies Used
- Ruby on Rails
- Sql

## Planning
My approach to this project is to first create my player resource. After created
the resource I would test it with the CRUD methods. Once I know that is working
correctly I can then create my join table between users and players called
userplayers, which I would also test with CRUD methods. After I will make
userplayers ProtectedController and then add user ownership to the userplayers
resource.

## Development Process
I was able to proceed as planned. Once I had everything running on the back end,
I realized I never had the intention of letting the user update any players
or userplayers. The userplayers resource only had user_id and player_id. In
order to let the user update a resource I created a new resource called
createduser. The intention is that a user can make their own player and later
update the rating of their created player. During every step of the process I
also manually input players into a csv file.

## Future Features
I think I want to add a one-to-one relationship between user and player to have
their created user. That way I don't need the createdplayer resource.

## Entity Relation Diagram
https://imgur.com/gallery/jqoehEW
