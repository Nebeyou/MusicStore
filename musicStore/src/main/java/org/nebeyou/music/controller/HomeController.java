package org.nebeyou.music.controller;

import org.nebeyou.music.dao.ProductDao;
import org.nebeyou.music.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;


/**
 * Created by Neb on 4/1/2017.
 */
@Controller
public class HomeController {
    @Autowired
    private ProductDao productDao;
  //  private Path path;
    @GetMapping("/")
    public String root(){
        return "home";
    }
    @RequestMapping("/productList")
    public String getProduct(Model model) {
        List<Product> products = productDao.getAllProduct();


        model.addAttribute("products",products);
        return "productList";
    }
    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId,Model model) throws IOException{
        Product product=productDao.getProductById(productId);
        model.addAttribute(product);
        return "viewProduct";
    }
    @RequestMapping("/admin")
    public String adminPage(){
        return  "admin";
    }
    @GetMapping("/admin/productInventory")
    public String productInventory(Model model){
        List<Product> products=productDao.getAllProduct();
        model.addAttribute("products",products);
        return "productInventory";
    }
    @GetMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model){
        Product product=new Product();
        product.setProductCategory("Instument");
        product.setProductCondition("new");
        product.setProdcutStatus("active");
        model.addAttribute("product",product);
        return "addProduct";
    }
    @PostMapping("/admin/productInventory/addProduct")
    public String addProductPost(@ModelAttribute("product") Product product, HttpServletRequest request){
        productDao.addProduct(product);
        MultipartFile productImage=product.getProductImage();
        String rootDirectory=request.getSession().getServletContext().getRealPath("/");
        path= Paths.get(rootDirectory+"\\WEB-INF\\resource\\images\\"+product.getProductID()+".png");
        if(productImage!=null&&!productImage.isEmpty()){
            try {
                   productImage.transferTo(new File(path.toString()));
            }catch (Exception e){
                throw new RuntimeException("product image saved failed!");
            }
        }

        return "redirect:/admin/productInventory/";
    }
    @RequestMapping("/admin/productInventory/deleteProduct/{productId}")
    public String deleteProduct(@PathVariable String productId,Model model) throws IOException{
        productDao.deleteProduct(productId);
        return "redirect:/admin/productInventory";
    }
   
}
