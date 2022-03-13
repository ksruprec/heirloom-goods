//want to add items to local storage and retrieve them in shopping cart
//retrieve the items currently in local storage, update the data, then write back to local storage so each page doesn't rewrite local storage

//DOM variables
const btns = document.querySelectorAll(".add-to-cart");
const cartList = document.getElementById("cart-list")
let total = document.querySelector(".total")

const productsKey = "products"
let productsData = []

// window.onload = () => {
//     loadProducts()
// }

btns.forEach(function (i) {
    i.addEventListener("click", function(evt) {
        evt.preventDefault()
        let product = evt.target.getAttribute("value");
        let price = evt.target.getAttribute("data-price");
        let id = evt.target.getAttribute("id")
        // let id = Math.ceil(Math.random() * 1000000)
        console.log("you added these items to the cart")
        addProducts(id, product, price)
        // saveProducts()
    });
});

const loadProducts = () => {
    products = JSON.parse(localStorage.getItem(productsKey))
    if (products == null) {
        products = []
    }
    //clear out list and rewrite each time 
    cartList.innerHTML = ""
    products.forEach(product => {
        addProducts(product.product)
    })
}

// const addProducts = (product) => {
//     if (product) {
//         let li = document.createElement('li');
    
//         li.innerText = product
//         cartList.appendChild(li);
//     }
// }

function addProducts(id, product, price){
   
    if(localStorage.getItem('products')){
        productsData = JSON.parse(localStorage.getItem('products'));
    }
    productsData.push({id: id, product: product, price: price})
    //saves products to local storage
    // localStorage.setItem('products', JSON.stringify(productsData));
    saveProducts()
}

const saveProducts = () => {
    localStorage.setItem(productsKey, JSON.stringify(productsData))
}

//adding event listener only to button that was clicked
// for (var i = 0; i < btns.length; i++) {
//     btns[i].addEventListener("click", function(e) {
//         //getting value attribute from event target that has description of product that was clicked
//         let product = e.target.getAttribute("value");
//         console.log(product)
//         //attempted to add product to unordered list
//         let listProducts = document.getElementById("cart-list")
//         if (listProducts) {
//             let newProduct = document.createElement("li");
//             newProduct.innerHTML = product;
//             listProducts.appendChild(newProduct);
//         }
//         //saving product to productsData array
//         productsData.push(product)
//         localStorage.setItem(productsKey, JSON.stringify(productsData))
    
//     });
// }