# Project-Midterm

## Giới thiệu
- Đây là project nhỏ về một website bán hàng online .
-  Project sử dụng công nghệ Spring boot và tổ chức theo mô hình MVC.
- Project đang trong quá trình hoàn hiện nên sẽ có xảy ra nhiều lỗi 
- Các chức năng chính của Website là đăng nhập, xem thông tin sản phẩm, xem đi chi tiết thông tin sản phẩm , thêm sản phẩm vào vỏ hàng,tìm kiếm theo tên ,màu , loại , giá tiền.
## Cấu trúc :
### - Database: 
 - Database.sql ( Tạo database )
 - OnlineShopProject.cdb ( Sơ đồ thực thể )
### - Template:
 - Toàn bộ template hoàn chỉnh 
### Midterm : 
 - src/mainRepository.java/tdtu/javatech/midterm/
 - pom.xml ( Chứa các thông tin về project và các thư viện )
### - src/main/java/tdtu/javatech/midterm :
#### Controller : ( Chứa các file Controller)
 - Api : Gồm ProductAPI.java và CartAPI.java
 - CartController.java
 - HomeController.java
 - LoginController.java
 - LogoutController.java
 - ProductController.java
#### Model : ( Chứa các Model)
 - Admin.java
 - Brand.java
 - Cart.java
 - Color.java
 - Product.java
 - Category.java
 - Role.java
 - Transaction.java
 - User.java
#### Repository : ( Chứ các repository của các Model)
  - AdminRepository.java
 - BrandRepository.java
 - CartRepository.java
 - ColorRepository.java
 - ProductRepository.java
 - CategoryRepository.java
 - RoleRepository.java
 - UserRepository.java
 #### Service : (Chứa các Interface Service)
- Implement
- CartService.java
- UserService.java
- ProductService.java
 ##### Implement: ( Chứa các file implement các Interface)
 - CartServiceImp.java
- UserServiceImp.java
- ProductServiceImp.java
 #### MidtermApplication.java

 ### - src/main/java/tdtu/javatech/resources : 
 #### static : ( Các file Css , js, png)
  - css 
  - images
  - js
  - plugins
#### template :  ( Chứa các file html)
  - Layout
  - cart.html
  - category.html
  - index.html ( Trang chính)
  - login.html
  - single.html
#### application.properties

## Cách chạy project : 
 - Cần phải tải các trình biên dịch có Tomcat như Intelliji,Esclip 
 - Cần có kết nối cơ cở dữ liệu như XAMPP, Laragon, Docker và sử dụng hệ quản trị MYSQL
 - Clone project về máy và mở folder Midterm băng trình biên dịch .
 - Import file Database.sql (Database/)
 - Đăng nhập vào website với email :"customer@gmail.com" và password : "0"
 

 ## CURL command:

### Product API  
 - get all products : `localhost:8000/api/product`
 - get one product : `localhost:8000/api/product/get/{id}`
 - add new product : `localhost:8000/api/product/add`
 - update product  : `localhost:8000/api/product/update/{id}`
 - delete product : `localhost:8000/api/product/delete/{id}`
 Example  - GET : 
 ![image](https://user-images.githubusercontent.com/94584468/229361289-1bd57073-2390-49a0-8d34-7607972c4221.png)

### Cart API  
 - get all carts : `localhost:8000/api/cart`
 - get one cart : `localhost:8000/api/cart/get/{id}`
 - add new cart : `localhost:8000/api/cart/add`
 - update cart  : `localhost:8000/api/cart/update/{id}`
 - delete cart : `localhost:8000/api/cart/delete/{id}`
  Example  - GET : 
  ![image](https://user-images.githubusercontent.com/94584468/229361393-38daa7fd-9a1d-40ac-904f-a91eddd043a8.png)

Thanks for read !
 
 
