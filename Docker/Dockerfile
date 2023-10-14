FROM nginx:alpine
## Step 1:
## Remove the default file "index.html" and replace by the new one.
RUN rm /usr/share/nginx/html/index.html

## Step 2:
# Copy source code to nginx html folder
COPY squirtle-app/index.html /usr/share/nginx/html