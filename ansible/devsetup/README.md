#RUN
ansible-playbook -K -i hosts dev-server.yml

ansible-playbook -i hosts dev-repos.yml

ansible-playbook -i hosts dev-apps.yml
