Erlang
======

Exercises used for learning Erlang


# Setting Up Erlang #

## Installing ##

* [Download](http://www.erlang.org/download.html) and Install the latest version of Erlang onto your machine:
* Create an environment variable called <code>ERLANG_HOME</code> and point it to your installation directory.
* Add <code>%ERLANG_HOME%\bin</code> to your <code>PATH</code> variable.

## Eclipse Setup ##

* Download and install the _Erlide_ plugin for Eclipse - this can be found by searching in the Marketplace, or you could go to the _Help_ menu, choose _Install New Software..._ and add the following update site: <code>http://erlide.org/update</code>
* Go to <code>Windows/Preferences/Erlang/Installed runtimes</code> and add your Erlang installation directory.
* Create a new _Run_ configuration for Erlide: <code>Run/Run configurations...</code> with these properties
 * On the _Erlang_ tab 
     * Make sure that your Erlang project(s) are checked.  _Only files in these projects will be picked up by the plugin._
 * On the _Runtime_ tab
     * Choose the installed runtime e.g. _erl5.9_ from the drop-down list
     * Specify the module name as 'erlide' and choose the _long-name_ radio option

# Running your programs #

* Create an Erlang module file and export a function that will be called.
* Make sure that your Erlang Runtime is running as described above then simply navigate to the _Console_ view that is running the _Erlide_ runtime and start invoking your exported functions.  
 * Remember to include the module name when invoking the function e.g. <code>moduleName:functionName(Argument).</code>
 * **Tip**: hitting _F9_ will recompile your file to pick up any changes you make.
 * 
 

# Running through the shell #

* Type erl to open the Erlang shell (or welr if you are using Windows).
* Compile using c(filename) where the filename is the module name eg: c(guards).
* Run using module:function(input parameters) eg: guards:valid_date(12,2).

# Viewing the messages sent to the shell
* When running the methods in the file parallel, pass in the number you wish to perform the factorial on.
* To view the time taken, call flush(). The time taken in seconds will be displayed.
* To see the threads processing the observer tool can be used.  observer:start(). and navigate to the Load Chart tab.
* etop:start() will also display the processes running.
