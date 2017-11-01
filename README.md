# nginx + certbot + oauth2_proxy  ![](https://img.shields.io/docker/build/grin/isaac.svg)

Google oauth secrets configured in `.env` file or passed through environment.

Allowed emails list in `/etc/oauth2/auth_emails.cfg` - mount your own or override in derived image.

Detailed configuration of oauth2 client is documented in [oauth2_proxy](https://github.com/bitly/oauth2_proxy)

The rest of the config described in the [parent repo](https://github.com/grinnery/abraham)
