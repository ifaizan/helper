# A helper script to perform certain daily operations

./helper.sh [OPTIONS]

    Options:
        --webp                                  Configure the server to serve webp images
        --allow-cloudflare                      Configure nginx to allow only traffic from Cloudflare
        --version                               Display version of this script
        -h , --help                             Display this help and exit
    Examples:
    
 
 ## Webp installation 
```./helper.sh --webp [app1] [app2]		[Install and configure webp on multiple applications]```

 ## Allow Cloudflare only
```./helper.sh --allow-cloudflare [app1] [app2]		[Install and configure Nginx to serve traffic from CF only]```
