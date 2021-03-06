// RUN: not %swift -typecheck -target %target-triple %s -emit-fixits-path %t.remap -I %S/Inputs
// RUN: c-arcmt-test %t.remap | arcmt-test -verify-transformed-files %s.result

enum E1 {
  case e1
  case e2
  case e3
}

func foo1(_ e: E1) {
  switch e {
  }
}

func foo1 (_ i : Int) {
  switch i {
  }
}
