import com.chen.ChenApplication;
import com.chen.service.HelloWord;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023/10/20 14:58
 * @Description:
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = ChenApplication.class)
public class TestMethod {


    @Autowired
    private HelloWord helloWords;

    @Test
    public void helloTest() {

        System.out.println(helloWords.helloWord());
    }
}
