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


## MVC Design Pattern

MVC Design Pattern (Model-View-Controller) is an architectural pattern which separates an application into 3 main groups of components: Models, Views and Controllers.

### Model
It contains the application data (Java Objects / Beans).

### View
It represents the model's data to the user (JSP: Java Server Pages).

### Controller
Exists between the View and the Model to control the data flow (Servlets).



## JSTL

Java server pages Standard Tag Library (JSTL) is a collection of JSP tags.

### JSTL Tag Libraries
- **JSTL Core**: core library (conditions, iterations, etc.),
- **JSTL fmt**: i18n-capable formatting library (data formatting, i18n),
- **JSTL XML**: XML library (manipulating XML data),
- **JSTL SQL**: sql library (write SQL requests),
- **JSTL functions**: functions library (manipulating strings).

### Expression Language EL

Expression Language (EL) is a script language that allows access to Java Objects/Beans through JSP.

```HTML
<p>Full Name: ${ person.fullName }</p>
```

### JSTL example

```HTML
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<c:out value="Hello World!" />

<c:if test="${ not empty name }">
	<h1>${ name }</h1>
</c:if>
```

## Data Access Object DAO

### DAO Design Pattern
DAO Design Pattern is a structural pattern used to isolate the Business (Application) Layer from the Persistence Layer (Database, XML, etc.).

### DAO Design Pattern components
- Model,
- Interface,
- Interface implementation.

