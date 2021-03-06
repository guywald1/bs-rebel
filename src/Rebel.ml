(* This is the Rebel entrypoint;
 * It's purposefully written so that modules are defined either
 * from `src/native` or `src/js` depending on the backend. It's also
 * written to support both bsb and bsb-native.
 * You'll find the actual externally facing module types in the
 * `src/dev/Rebel_types.re` file.
 *)

#if BS_NATIVE then
  #if BSB_BACKEND = "js" then
    module MutableQueue = MutableQueue_native
  #else
    module MutableQueue = MutableQueue_js
  #end
#else
  module MutableQueue = MutableQueue_js
#end

#if BS_NATIVE then
  #if BSB_BACKEND = "js" then
      module MutableStack = MutableStack_native
  #else
    module MutableStack = MutableStack_js
  #end
#else
  module MutableStack = MutableStack_js
#end

#if BS_NATIVE then
  #if BSB_BACKEND = "js" then
      module Array = Array_native
  #else
    module Array = Array_js
  #end
#else
  module Array = Array_js
#end
