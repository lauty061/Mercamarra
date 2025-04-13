function cargarCarrito() {
    return JSON.parse(localStorage.getItem('carrito')) || [];
}

function guardarCarrito(carrito) {
    localStorage.setItem('carrito', JSON.stringify(carrito));
}

function mostrarCarrito() {
    const carrito = cargarCarrito();
    const tbody = document.getElementById('carrito-body');
    tbody.innerHTML = '';

    let total = 0;
    carrito.forEach((producto, index) => {
        const precioNumerico = parseFloat(producto.precio) || 0;
        total += precioNumerico;

        tbody.innerHTML += `
            <tr>
                <td>${producto.nombre}</td>
                <td>${producto.categoria}</td>
                <td>$${precioNumerico.toLocaleString()}</td>
                <td><button onclick="eliminarDelCarrito(${index})">Eliminar</button></td>
            </tr>
        `;
    });

    document.getElementById('total').innerText = `$${total.toLocaleString()}`;
}

function eliminarDelCarrito(index) {
    const carrito = cargarCarrito();
    carrito.splice(index, 1);
    guardarCarrito(carrito);
    mostrarCarrito();
}

document.addEventListener('DOMContentLoaded', mostrarCarrito);
