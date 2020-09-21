
class A:
    def foo(self):
        print('A')
 
class B(A):
    def foo(self):
        print('B')
        super(B, self).foo()
 
class C(A):
    def foo(self):
        print('C')
        super(C, self).foo()
 
class D(B,C):
    def foo(self):
        print('D')
        super(D, self).foo()
 
d = D()
d.foo()
