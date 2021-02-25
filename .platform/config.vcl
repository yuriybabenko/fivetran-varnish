# config.vcl
#backend home {
#    .host = "fivetran.com";
#}

sub vcl_recv {
    #if (req.url ~ "^/hello-world/") {
        set req.backend_hint = application.backend();
    #}

    # set req.backend_hint = home;
}