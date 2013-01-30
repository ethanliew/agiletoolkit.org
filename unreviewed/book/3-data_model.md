# Data Model

![Data Image](images/data-model.png)

In Agile Toolkit Views can interact with the Data Layer through Models. Model is a class implementing Active Record and ORM as well as holding meta-data for the objects. You must understand that there are two types of models - Relational and Non-Relational (or NoSQL) and that Model_Table (relational) extends the other. To most of the User Interface both classes are compatible, however both model implementation use a very different way to interact with data.
