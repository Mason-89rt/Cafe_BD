from pydantic import BaseModel


class User(BaseModel):
    id: int
    login: str
    password: str


class User_login(BaseModel):
    login: str


class User_logins_password(BaseModel):
    login: str
    password: str



class Client(BaseModel):
    id: int
    name: str
    surname: str
    location_id: int


class Client_name(BaseModel):
    name: str


class Staff(BaseModel):
    id: int
    name: str
    surname: str
    post_id: int
    user_id: int


class Staff_name_surname(BaseModel):
    name: str
    surname: str


class Dish(BaseModel):
    id: int
    name_dish: str
    consituent_dish: str
    price_dish: int
    time_cook_dish: str


class Menu(BaseModel):
    id: int
    dish_id: int
    type_menu: str


class Location(BaseModel):
    id: int
    address: str
    deliveries_id: int
