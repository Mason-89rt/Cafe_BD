from fastapi import FastAPI
from endpoints.client import router as router_clients
from endpoints.user import router as router_users
from endpoints.staff import router as router_staff
from db.DBmanager import base_manager
from set import SCRIPTS_PATH

app = FastAPI()
app.include_router(router_users, prefix='/users_start')
app.include_router(router_clients, prefix='/clients_start')
app.include_router(router_staff, prefix='/staff_start')


@app.get('/')
def start_page():
    return 'Page BD'


base_manager.cr_base(SCRIPTS_PATH)
