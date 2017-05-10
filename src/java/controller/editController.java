/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.newsModel;
import dao.editDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author DucLinh
 */
@Controller
@RequestMapping(value = "/home")
public class editController {
    editDao editdao = new editDao();
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String news(ModelMap mm)
    {
        mm.addAttribute("getedit", new newsModel());
        return "edit";
    }
    @RequestMapping(value = "/xuly",method = RequestMethod.POST)
    public String xuly(@ModelAttribute(value = "getedit") newsModel edit, ModelMap mm )
    {
        editdao.insert(edit);
        mm.put("edit", edit);
        
        return "index";
    }
}
