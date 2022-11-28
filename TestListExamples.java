import static org.junit.Assert.*;
import org.junit.*;
import java.util.ArrayList;

public class TestListExamples {
  // Write your grading tests here!
  @Test
  public void test1(){
        StringChecker check=new myChecker();
        List<String> input1=new ArrayList<>();
        // assertArrayEquals(ListExamples.filter(input1, check).toArray());
        String[] expected={"hi", "hii", "hiii", "hiiii"};
        input1.add("hi");
        input1.add("hii");
        input1.add("hiii");
        input1.add("hiiii");
        assertEquals(expected,input1.toArray());
  }
}
