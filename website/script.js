//could not figure out how to link all html pages properly so products added to cart from any page
//  ends up in same local storage array
const productsKey = "products"
const productsData = []
window.onload = () => {
    let btns = document.getElementsByClassName("add-to-cart");
    //adding event listener only to button that was clicked
    for (var i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function(e) {
            //getting value attribute from event target that has description of product that was clicked
            let product = e.target.getAttribute("value");
            console.log(product)
            //attempted to add product to unordered list
            let listProducts = document.getElementById("cart-list")
            if (listProducts) {
                let newProduct = document.createElement("li");
                newProduct.innerHTML = product;
                listProducts.appendChild(newProduct);
            }
            //saving product to productsData array
            productsData.push(product)
            localStorage.setItem(productsKey, JSON.stringify(productsData))
        
        });
    }
}