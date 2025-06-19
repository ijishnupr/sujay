FROM odoo:16

# Copy your config and addons if any
COPY ./odoo.conf /etc/odoo/odoo.conf
#COPY ./addons /mnt/extra-addons

# Set permissions (optional for custom addons)
RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo
