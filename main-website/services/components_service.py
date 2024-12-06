from typing import List
from db_instance import db
from models.components_model import ComponentsModel, NavItem

def get_navbar_items()-> List[NavItem]:
    doc = db.collection('navigation').get()
    return [NavItem.from_dict(data=item.to_dict()) for item in doc]

def get_all_components()-> ComponentsModel:
    doc = db.collection('components').document('settings').get()
    return ComponentsModel.from_dict(data=doc.to_dict())

