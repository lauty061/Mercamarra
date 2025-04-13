package com.tienda.controller;

import com.tienda.model.Usuario;
import com.tienda.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import java.util.Optional;

@Controller
@RequestMapping("/usuarios")
@SessionAttributes("nombreUsuario")
public class UsuarioController {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @GetMapping("/registro")
    public String mostrarFormularioRegistro(Model model) {
        model.addAttribute("usuario", new Usuario());
        return "registro";
    }

    @PostMapping("/registro")
    public String registrarUsuario(@ModelAttribute Usuario usuario, Model model) {
        if (usuarioRepository.findByEmail(usuario.getEmail()).isPresent()) {
            model.addAttribute("error", "El correo ya esta registrado.");
            return "registro"; 
        }
        usuarioRepository.save(usuario);
        model.addAttribute("nombreUsuario", usuario.getNombre());
        return "index";
    }

    @GetMapping("/login")
    public String mostrarFormularioLogin(Model model) {
        model.addAttribute("usuario", new Usuario());
        return "login";
    }

    @PostMapping("/login")
    public String iniciarSesion(@ModelAttribute Usuario usuario, Model model) {
        Optional<Usuario> usuarioEncontrado = usuarioRepository.findByEmail(usuario.getEmail());
        if (usuarioEncontrado.isPresent() &&
                usuarioEncontrado.get().getPassword().equals(usuario.getPassword())) {
            model.addAttribute("nombreUsuario", usuarioEncontrado.get().getNombre());
            return "index";
        }
        model.addAttribute("error", "Correo o contrasena incorrectos.");
        return "login"; 
    }

    @GetMapping("/logout")
    public String cerrarSesion(SessionStatus sessionStatus) {
        sessionStatus.setComplete();
        return "index";
    }
}
