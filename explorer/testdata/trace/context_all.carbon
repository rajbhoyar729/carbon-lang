// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

package ExplorerTest api;

interface TestInterface {}

fn Main() -> i32 {
  return 0;
}

// Place checks after code so that line numbers are stable, reducing merge
// conflicts.
// ARGS: --trace_file=- --trace_phase=all --trace_file_context=all %s
// NOAUTOUPDATE
// SET-CHECK-SUBSET
// CHECK:STDOUT: ** declaring interface As
// CHECK:STDOUT: ** declaring function Main
// CHECK:STDOUT: interface As {
// CHECK:STDOUT: fn Main ()-> i32 {
// CHECK:STDOUT: --- step exp Main() .0. (<Main()>:0) --->
