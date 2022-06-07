from typing import List

from fastapi import FastAPI, Depends
from starlette.responses import Response

from crud import CrudService
from database import db
from models import TeaCreate, Tea, Result

router = FastAPI()


@router.on_event("startup")
async def on_startup():
    await db.ensure_created()


@router.get("/tea/{id}", response_model=tea)
async def get_tea_by_id(id: int, crud: CrudService = Depends()):
    return await crud.get_by_id(id)


@router.get("/tea", response_model=List[tea])
async def get_list_of_all_tea(response: Response, crud: CrudService = Depends()):
    return await crud.get_all()


@router.post("/tea", response_model=Result)
async def create(model: teaCreate, crud: CrudService = Depends()):
    await crud.create(model)
    return Result(status="Tea created successfully.")


@router.put("/tea/{id}", response_model=Result)
async def update_tea_by_id(id: int, model: teaCreate, crud: CrudService = Depends()):
    await crud.update(id, model)
    return Result(status="Tea updated successfully.")


@router.delete("/tea/{id}", response_model=Result)
async def delete_tea_by_id(id: int, crud: CrudService = Depends()):
    await crud.delete(id)
    return Result(status="Tea deleted successfully.")
