package ExceptionDemo;
/*
 * 运行时异常与非运行时异常的区别：
 * 运行时异常是不可查异常，不需要进行显式的捕捉
 * 非运行时异常是可查异常，必须进行显式的捕捉，或者抛出
 */
public class ExceptionDemo3 {
	public static void main(String[] args) {
		String str = null;
		try {
			str.toString();
		}catch(NullPointerException e){
			System.out.println("捕捉到运行时异常：NullPointerException");
		}
		
		StringBuffer sb = new StringBuffer("1234567890");
		try {
            for (int i = 0; i < 100; i++) {
                sb.append(sb.toString());
            }
        } catch (OutOfMemoryError e) {
            System.out.println("捕捉到内存用光错误:  OutOfMemoryError");
        }
	}
}
