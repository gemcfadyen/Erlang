-module(greeting).

%% The interface offered by this module
-export([helloworld/1]).


helloworld(Name) -> io:format("Hello ~s~n", [Name]), secret_function(10).

%% This function is not exported, so it is privatised. 
%% Ie the methods in this module have access to it, but it is not on the public interface of the module (as it is not in the export list)
secret_function(Number) -> Number + 10.