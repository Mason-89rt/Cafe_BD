from fastapi import APIRouter
from endpoints.models import Client, Client_name
from db.DBmanager import base_manager
router = APIRouter()


def get_client_id(id: int):
    res = base_manager.execute("SELECT * FROM client WHERE id=?", args=(id,), many=False)
    return Client(id=res[0], name=res[1], surname=res[2], location_id=res[3])


def get_client():
    res = base_manager.execute("select * from client", args=(), many=True)
    clients = []
    for us in res:
        clients.append(Client(id=us[0], name=us[1], surname=us[2], location_id=us[3]))
    return res


def post_client(client: Client):
    res = base_manager.execute("insert into client(id,name,surname,location_id) values(?,?,?,?)", args=(client.id, client.name, client.surname, client.location_id))
    return res


def put_client(id: int, client_update: Client_name):
    res = base_manager.execute("update client set name=? where id=?", args=(client_update.name, id))
    return res


def delete_client(id: int):
    res = base_manager.execute("delete from client where id=?", args=(id,))
    return res


# Endpoints
@router.get('/clients/{id}')
def get_client_endpoint(id: int):
    return get_client_id(id)


@router.get('/clients')
def get_client_endpoint():
    return get_client()


@router.post('/new_client')
def new_client(client: Client):
    return post_client(client)


@router.put('/client_name/{id}')
def patch_client_name(id: int, client_update: Client_name):
    return put_client(id, client_update)


@router.delete('/client/{id}')
def delete_client_id(id: int):
    return delete_client(id)
