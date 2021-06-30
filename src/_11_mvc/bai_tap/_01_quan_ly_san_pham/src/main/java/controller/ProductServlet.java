package controller;

import model.bean.Product;
import model.service.ProductService;
import model.service.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controller.ProductServlet", urlPatterns = {"/product"})
public class ProductServlet extends HttpServlet {
    ProductServiceImpl services = new ProductServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "search":
                search(request, response);
                break;
            case "edit":
                editProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            default:
                showList(request, response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showFormEdit(request, response);
                break;
            case "detail":
                showDetail(request, response);
                break;
            default:
                showList(request, response);
                break;
        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nameSearch").toLowerCase();
        List<Product> list = services.searchByName(name);
        request.setAttribute("productList", list);
        RequestDispatcher rd = request.getRequestDispatcher("product/search.jsp");
        rd.forward(request,response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("/product/create.jsp");
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        float price = Float.parseFloat(request.getParameter("price"));
        String description = request.getParameter("description");
        String manufacturer = request.getParameter("manufacturer");
        Product productNew = new Product(id, name, price, description, manufacturer);
        if (services.create(productNew)) {
            response.sendRedirect("/product");
        } else {
            request.setAttribute("errorId", id);
            RequestDispatcher rd = request.getRequestDispatcher("product/create.jsp");
            rd.forward(request, response);
        }

    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idDel = Integer.parseInt(request.getParameter("id"));
        services.delete(idDel);
        response.sendRedirect("/product");
    }

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = services.getDetail(id);
        request.setAttribute("product", product);
        RequestDispatcher rd = request.getRequestDispatcher("product/edit.jsp");
        rd.forward(request, response);
    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        float price = Float.parseFloat(request.getParameter("price"));
        String description = request.getParameter("description");
        String manufacturer = request.getParameter("manufacturer");
        Product productEdited = new Product(id, name, price, description, manufacturer);
        services.save(productEdited);
        response.sendRedirect("product");
    }

    private void showDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = services.getDetail(id);
        request.setAttribute("productDetail", product);
        RequestDispatcher rd = request.getRequestDispatcher("product/detail.jsp");
        rd.forward(request, response);
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = services.getAll();
        request.setAttribute("productList", productList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("product/showlist.jsp");
        requestDispatcher.forward(request, response);
    }

}
