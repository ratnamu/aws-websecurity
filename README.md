# aws-websecurity
Assignment_AWSWEBSECURITY

This project involves the following steps or procedure:

1) Automate the deployment of a webserver using any confguration management tool which serves a static web page and redirects to secure site [https] instaed of the default http ensuring all other ports are closed. We can use a self signed certificate here.

    H/W and S/W Resources involed : 
      AWS EC2 Red hat linux instances
      Apache 2.4 Version 
      Ansible
      GIT
      
      
    Procedure:
      a) Procure instances of AWS EC2 machines for deployment
      b) One server is configured as ansible host by installing ansible and writing the playbooks and configuring the ssh login`
      c) Playbook does the following
          GIT checkout of the ansible playbook [ in common role of playbook]
          Install apache
          Modify the httpd.conf file as per the template, store the template and modify as per the dns_name
          Start the httpd daemon
          Load the default web page 
          Configure SSL certificates and HTTPS
          Restart apache on any httpd.conf changes
          
2) Validate the configuration of the web server using automation. This involves another playbook
          PlayBook Does the following
           a) Check for running http process
           b) Verify if the status code of the secure URL is the 200 OK code, which is the successful code
          
          
          
          For more details on command used and their outputs, please refer readme.us
          
         
            
          
        
        
        
      
    
