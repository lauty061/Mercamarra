
let carrito = [];

function cargarCarrito() {
    const datos = localStorage.getItem('carrito');
    carrito = datos ? JSON.parse(datos) : [];
}

function guardarCarrito() {
    localStorage.setItem('carrito', JSON.stringify(carrito));
}

function agregarAlCarrito(nombre, categoria, precio) {
    const productoExistente = carrito.find(producto => producto.nombre === nombre);
    if (productoExistente) {
        alert(`El producto "${nombre}" ya está en el carrito.`);
        return;
    }

    carrito.push({ nombre, categoria, precio });
    guardarCarrito();
    alert(`Producto "${nombre}" agregado al carrito.`);
    console.log(`Carrito actualizado:`, carrito);
}

function inicializarBotonesComprar() {
    console.log("Inicializando botones comprar...");

    document.querySelectorAll('.buy-btn').forEach(boton => {
        boton.addEventListener('click', (event) => {
            const card = event.target.closest('.product-card');
            const nombre = card.querySelector('h3').innerText;
            const precio = parseFloat(card.querySelector('p').innerText.replace('$', '').replace(/\./g, ''));
            const categoria = card.getAttribute('data-category');

            console.log(`Intentando agregar producto: Nombre: ${nombre}, Categoría: ${categoria}, Precio: ${precio}`);
            agregarAlCarrito(nombre, categoria, precio);
        });
    });
}

function aplicarFiltros() {
    document.querySelectorAll('.filter-btn').forEach(filtro => {
        filtro.addEventListener('click', () => {
            const filterValue = filtro.getAttribute('data-filter');
            document.querySelectorAll('.product-card').forEach(producto => {
                const marca = producto.getAttribute('data-brand');
                producto.style.display = (filterValue === 'all' || marca === filterValue) ? 'block' : 'none';
            });
        });
    });
}

document.addEventListener('DOMContentLoaded', () => {
    cargarCarrito();
    inicializarBotonesComprar();
    aplicarFiltros();
});
