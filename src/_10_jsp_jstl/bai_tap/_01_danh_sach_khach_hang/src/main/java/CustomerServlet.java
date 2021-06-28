import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"", "/customers"})
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList;
    static {
        customerList = new ArrayList<>();
        customerList.add(new Customer("Mạnh Dũng", "01/02/1998", "Nghệ An","/assert/nam-2.jpg"));
        customerList.add(new Customer("Bảo Hoàng", "10/12/1999", "Bình Dương","/assert/nam-3.jpg"));
        customerList.add(new Customer("Thu Hà", "22/09/1996", "Quảng Ngãi","/assert/nu-1.jpg"));
        customerList.add(new Customer("Lê Ly", "01/12/2000", "Đà Nẵng","/assert/nu-2.jpg"));
        customerList.add(new Customer("Hoàng Hải", "31/01/1989", "Quảng Nam","/assert/nam-1.jpg"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("list",customerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("list.jsp");
        requestDispatcher.forward(request,response);
    }
}
