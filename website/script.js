//want to add items to local storage and retrieve them in shopping cart
//retrieve the items currently in local storage, update the data, then write back to local storage so each page doesn't rewrite local storage

//DOM variables
const btns = document.getElementsByClassName("add-to-cart");

const productsKey = "products"
const productsData = []

window.onload = () => {
    renderCart()
}

btns.addEventListener("click", function(evt) {
    evt.preventDefault()
    let product = evt.target.getAttribute("value")
})

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