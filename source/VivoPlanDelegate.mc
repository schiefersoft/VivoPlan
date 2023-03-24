import Toybox.Lang;
import Toybox.WatchUi;

class VivoPlanDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean 
    {
        var menu=new Rez.Menus.MainMenu();
        menu.setTitle("Stundenplan");
        WatchUi.pushView(menu, new VivoPlanMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}