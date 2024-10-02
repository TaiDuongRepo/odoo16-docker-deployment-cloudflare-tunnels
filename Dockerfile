FROM odoo:16.0

# permission
USER root

# Copy configuration files and directories into the container
COPY ./config /etc/odoo
COPY ./extra-addons /mnt/extra-addons
COPY ./filestore /root/.local/share/Odoo/filestore/postgres
COPY ./new_requirements.txt /tmp/requirements.txt


# Install additional python packages
RUN pip install -r /tmp/requirements.txt

# Set permissions for the sessions and filestore directories
RUN chown -R odoo:odoo /root/.local/share/Odoo/filestore/postgres && \
    chmod -R 775 /root/.local/share/Odoo/filestore/postgres

# Expose Odoo services
EXPOSE 8069