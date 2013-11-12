-module(parallel).
-export([start/1, start_parallel/1, process/0]).

%sequential processing
start([]) -> finished;
start([H|T]) -> self() ! seconds_to_calculate(fun factorial/1, H),
	            start(T).


%parallel processing
start_parallel([]) -> finished;
start_parallel([H|T]) -> ProcPid = spawn(parallel, process, []),
						 ProcPid ! {self(), H},
						 start_parallel(T).

process() -> receive 
				{Pid, N} -> Pid ! seconds_to_calculate(fun factorial/1, N)
			  end.


seconds_to_calculate(Function, Args) ->
										{Nanoseconds, _Result} = timer:tc(Function, [Args]),
										{seconds, Nanoseconds / 1000000}.


%Tail recusive factorial
factorial(N) -> factorial(N, 1).

factorial(0, Total) -> Total;
factorial(N, Total) -> factorial(N-1, N * Total).