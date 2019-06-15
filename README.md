# IexPryCrash

Minimum example to reproduce a bug

Issue: https://github.com/elixir-lang/elixir/issues/8729 <br>
Fixed in: https://github.com/elixir-lang/elixir/pull/8730/files

## Steps to reproduce

1. Run `mix test`

## Outputs

Elixir 1.7.4:
```
Cannot pry #PID<0.165.0> at IexPryCrashTest."test greets the world"/1 (test/iex_pry_crash_test.exs:7). Is an IEx shell running?
```

Elixir 1.8.0:
```
** (exit) exited in: GenServer.call(IEx.Broker, {:take_over, "Request to pry #PID<0.159.0> at IexPryCrashTest.\"test greets the world\"/1 (test/iex_pry_crash_test.exs:7)\n\n    5: \n    6:   test \"greets the world\" do\n\e[1m    7:     IEx.pry()\n\e[22m    8: \n    9:     assert IexPryCrash.hello() == :world\n", [evaluator: #PID<0.159.0>, binding: [], dot_iex_path: "", env: %Macro.Env{aliases: [], context: nil, context_modules: [IexPryCrashTest], contextual_vars: [], current_vars: %{}, file: "/Users/amatalai/work/iex_pry_crash/test/iex_pry_crash_test.exs", function: {:"test greets the world", 1}, functions: [{ExUnit.Assertions, [assert: 2, assert_in_delta: 3, assert_in_delta: 4, assert_raise: 2, assert_raise: 3, flunk: 0, flunk: 1, refute: 2, refute_in_delta: 3, refute_in_delta: 4]}, {ExUnit.Callbacks, [on_exit: 1, on_exit: 2, start_supervised: 1, start_supervised: 2, start_supervised!: 1, start_supervised!: 2, stop_supervised: 1]}, {Kernel, [!=: 2, !==: 2, *: 2, +: 1, +: 2, ++: 2, -: 1, -: 2, --: 2, /: 2, <: 2, <=: 2, ==: 2, ===: 2, =~: 2, >: 2, >=: 2, abs: 1, apply: 2, apply: 3, binary_part: 3, bit_size: 1, byte_size: 1, ceil: 1, div: 2, elem: 2, exit: 1, floor: 1, function_exported?: 3, get_and_update_in: 3, ...]}], lexical_tracker: nil, line: 7, macro_aliases: [], macros: [{ExUnit.DocTest, [doctest: 1, doctest: 2]}, {ExUnit.Case, [describe: 2, test: 1, test: 2, test: 3]}, {ExUnit.Assertions, [assert: 1, assert_receive: 1, assert_receive: 2, assert_receive: 3, assert_received: 1, assert_received: 2, catch_error: 1, catch_exit: 1, catch_throw: 1, refute: 1, refute_receive: 1, refute_receive: 2, refute_receive: 3, refute_received: 1, refute_received: 2]}, {ExUnit.Callbacks, [setup: 1, setup: 2, setup_all: 1, setup_all: 2]}, {Kernel, [!: 1, &&: 2, ..: 2, <>: 2, @: 1, alias!: 1, and: 2, binding: 0, binding: 1, def: 1, def: 2, defdelegate: 2, defexception: 1, defguard: 1, defguardp: 1, defimpl: 2, defimpl: 3, defmacro: 1, defmacro: 2, defmacrop: 1, defmacrop: 2, defmodule: 2, defoverridable: 1, defp: 1, ...]}], module: IexPryCrashTest, prematch_vars: :warn, requires: [ExUnit.Assertions, ExUnit.Callbacks, ExUnit.Case, ExUnit.DocTest, IEx, Kernel, Kernel.Typespec], unused_vars: %{}, vars: []}, prefix: "pry", stacktrace: [{IexPryCrashTest, :"test greets the world", 1, [file: 'test/iex_pry_crash_test.exs', line: 7]}, {ExUnit.Runner, :exec_test, 1, [file: 'lib/ex_unit/runner.ex', line: 355]}, {:timer, :tc, 1, [file: 'timer.erl', line: 166]}, {ExUnit.Runner, :"-spawn_test_monitor/4-fun-1-", 4, [file: 'lib/ex_unit/runner.ex', line: 306]}]]}, :infinity)
    ** (EXIT) no process: the process is not alive or there's no process currently associated with the given name, possibly because its application isn't started
code: IEx.pry()
stacktrace:
  (elixir) lib/gen_server.ex:979: GenServer.call/3
  lib/iex/pry.ex:72: IEx.Pry.pry/2
  test/iex_pry_crash_test.exs:7: (test)
```
