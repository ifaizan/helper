# A helper script to perform certain daily operations

./helper.sh [OPTIONS]

    Options:
        --webp                                  Configure the server to serve webp images
        --allow-cloudflare                      Configure nginx to allow only traffic from Cloudflare
        --install-node                         	Install the specified version of node
	    --npm-package					        Install any npm package (yarn, pm2 etc) and configure master user    
        --version                               Display version of this script
        -h , --help                             Display this help and exit
    Examples:
    
 
 ## Webp installation 
```./helper.sh --webp [app1] [app2]		            [Install and configure webp on multiple applications]```

 ## Allow Cloudflare only
```./helper.sh --allow-cloudflare [app1] [app2]		[Install and configure Nginx to serve traffic from CF only]```

 ## Install desired node version
 ```./helper.sh --install-node 12.18.3		        [Install the specified node and npm version from official repositories]```

 ## Install desired node packages
  ```./helper.sh --npm-package pm2 yarn gulp		[Install the specified npm packages and create environment for master user]```
