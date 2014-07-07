/**
 * Created by hosseinrabizadeh on 6/15/14.
 */
$(function(){
    $("#btn-login").click(function(){
        var username=$("#login-username");
        var password=$("#login-password");
        var msgW=$('.msg-warning');
        var msgS=$('.msg-success');
        var box = $('#loginbox');
        var logout= $(".logout");
        var loginform=$('#loginform');
        var loginbtn = $('#btn-login');
        var loginbox_title = $('#loginbox_title');
        var re =/[^@]+/
        user_name= re.exec(username.val());

        if (username.val()=='' || password.val() =='')
        {
            msgW.show();
            msgS.hide();
            logout.hide();
            loginform.show();
            loginbtn.show();
        }
        else {
            msgS.text('Welcome ' + user_name + '!');
            msgS.show();
            logout.show().click(function()
            {
                window.location.reload();
            });
            msgW.hide();
            box.hide();
            loginform.hide();
            loginbtn.hide();
        }
    });
});