import Toybox.Lang;
import Toybox.WatchUi;

class VivoPlanDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new VivoPlanMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}