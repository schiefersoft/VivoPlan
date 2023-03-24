import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class VivoPlanMenuDelegate extends WatchUi.MenuInputDelegate 
{
    function initialize() 
    {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item as Symbol) as Void
    {
        var menu;
        if (item == :item_mo) 
        {
            menu=new Rez.Menus.MonMenu();
            menu.setTitle("Montag");
        } 
        else if (item == :item_di) 
        {
            menu=new Rez.Menus.DinMenu();
            menu.setTitle("Dienstag");
        }
        else if (item == :item_mi) 
        {
            menu=new Rez.Menus.MitMenu();
            menu.setTitle("Mittwoch");
        }
        else if (item == :item_do) 
        {
            menu=new Rez.Menus.DonMenu();
            menu.setTitle("Donnerstag");
        }
        else if (item == :item_fr) 
        {
            menu=new Rez.Menus.FreMenu();
            menu.setTitle("Freitag"); 
        }
        WatchUi.pushView(menu, new VivoPlanMenuDelegate(), WatchUi.SLIDE_UP);            
    }
}