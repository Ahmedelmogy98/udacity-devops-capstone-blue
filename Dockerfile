# STEP-01
FROM nginx:alpine

# STEP-02
RUN rm /usr/share/nginx/html/index.html

# STEP-03: COPY SOURCE CODE TO PRODUCTION
COPY public/index.html /usr/share/nginx/html
#COPY public/index2.html /usr/share/nginx/html/index2.html 
