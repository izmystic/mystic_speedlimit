window.addEventListener("message", function (event) {
    if (event.data.action == "display") {
        type = event.data.type

        if (type === null) {
            $(".speed").hide();
        } else {
            $('.limit').html(type);
            $(".speed").show();
        }

        $(".ui").fadeIn();
    } else if (event.data.action == "hide") {
        $(".ui").fadeOut();
    }
});