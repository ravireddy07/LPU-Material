interface a<T>
{
 T max(T z);
}
class P88InetrfaceGenerics<T> implements a<T>
{
public T max(T z)
{
return z;
}
public static void main(String args[])
{
Ba<Integer> obj =new Ba<Integer>();
int abc=obj.max(33);
System.out.println(abc);

}
}