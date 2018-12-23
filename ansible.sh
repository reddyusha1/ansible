#ansible playbook code to install jenkins server on local machine


---
- name: Download and install jenkins
  hosts: all
  sudo: true
  tasks:

     - name: download jenkins.repo
       get_url:
          url: http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
          dest: /etc/yum.repos.d/jenkins.repo

     - name: import jenkins key
       rpm_key:
         state: present
         key: https://jenkins-ci.org/redhat/jenkins-ci.org.key

     - name: install jenkins
       yum:
         name: jenkins
         state: present

