import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class VivoPlanApp extends Application.AppBase 
{
    function initialize() 
    {
        AppBase.initialize();
    }

    function onStart(state as Dictionary?) as Void 
    {
    }

    function onStop(state as Dictionary?) as Void 
    {
    }

    function getInitialView() as Array<Views or InputDelegates>? 
    {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new VivoPlanMenuDelegate(), WatchUi.SLIDE_UP);
        return [ new VivoPlanView(), new VivoPlanDelegate() ] as Array<Views or InputDelegates>;        
        /*var menu = new Rez.Menus.MainMenu();
        menu.setTitle("Stundenplan");
        return [ menu, new VivoPlanMenuDelegate() ] as Array<Views or InputDelegates>;*/
    }

}

function getApp() as VivoPlanApp 
{
    return Application.getApp() as VivoPlanApp;
}