import requests


def get_all_clients():
    response = requests.get('http://127.0.0.1:8000/clients_start/clients')
    if response.status_code == 200:
        post_data = response.json()
        print(post_data)


get_all_clients()





#def get_id_client():
#    id_client = input("enter the ID of the client you want to receive")
#    response = requests.get(f'http://127.0.0.1:8000/clients_start/clients/{id_client}')
#    if response.status_code == 200:
#        post_data = response.json()
#        print(post_data)
#
#
#get_id_client()
#
#
#def post_client():
#    id_client = input("ID")
#    name = input("name")
#    surname = input("surname")
#    location_id = input("location_id")
#    data = {"id": id_client,
#            "name": name,
#            "surname": surname,
#            "location_id": location_id}
#    response = requests.post('http://127.0.0.1:8000/clients_start/new_client', json=data)
#    print(response.json())
#
#
#post_client()


def update_client():
    id_client = input("enter the ID of the client you want to update")
    name = input("Name")
    data = {'name': name}
    response = requests.put(f'http://127.0.0.1:8000/clients_start/client_name/{id_client}', json=data)
    new_post_data = response.json()
    print(new_post_data)


update_client()


def delete_id_client():
    id_client = input("enter the ID of the staff you want to delete")
    response = requests.delete(f'http://127.0.0.1:8000/staff_start/staff/{id_client}')
    post_data = response.json()
    print(post_data)


delete_id_client()