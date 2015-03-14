-module(db).
-compile(export_all).

write(Key, Value, [{Key, _} | T]) ->
  [{Key, Value} | T];
write(Key, Value, [H | T]) ->
  [H | write(Key, Value, T)];
write(Key, Value, []) ->
  [{Key, Value}].