# jee-example


## Create new project

### Install Eclipse and Tomcat
- Install **Eclipse IDE for Enterprise Java and Web Developers**,
- Install **Apache Tomcat** (for Linux users, just download and unzip tar.gz file under /usr/local/),

### Create a new project
- Launch Eclipse,
- Select File - New - Dynamic Web Project,
- Click "New Runtime" Button,
- Select Apache Tomcat version (similar to downloaded version),
- Check "Create a new local server",
- Click "Next",
- Select Tomcat installation directory,
- Click Finish - Finish,
- Create a new Servlet,
- Run your web application (Run as - Run on Server).

### Convert to Maven project
- Right click on the project name,
- Select Configure - Convert to Maven Project.

### Basics

#### MVC Design Pattern
MVC Design Pattern (Model-View-Controller) is an architectural pattern which separates an application into 3 main groups of components: Models, Views and Controllers.

#### Model
It contains the application data (Java Objects / Beans).

#### View
It represents the model's data to the user (JSP: Java Server Pages).

#### Controller
Exists between the View and the Model to control the data flow (Servlets).

