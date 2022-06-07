from typing import List

from fastapi import Depends, HTTPException
from sqlalchemy.ext.asyncio import AsyncSession, AsyncConnection
from sqlalchemy.sql import text

from database import db
from models import Tea, TeaCreate


class CrudService:
    def __init__(self, session: AsyncSession = Depends(db.get_session)):
        self._session = session

    async def get_by_id(self, id: int) -> Tea:
        query = text("""SELECT * FROM Tea WHERE id=:id""")
        result = await self._session.execute(query, {"id": id})
        model = result.one_or_none()
        if not model:
            raise HTTPException(status_code=404, detail="Tea not found.")
        return Tea(
            id=model[0],
            name=model[1],
            description=model[2],
        )

    async def count_all(self) -> int:
        query = text("""SELECT COUNT(*) FROM Tea""")
        result = await self._session.execute(query)
        return result.scalar()

    async def get_all(self) -> List[Tea]:
        query = text("""SELECT id, name, description FROM Tea""")
        result = await self._session.execute(query)
        models = []
        for row in result.all():
            tea = Tea(
                id=row[0],
                name=row[1],
                description=row[2],
            )
            models.append(tea)
        return models

    async def create(self, model: TeaCreate) -> Tea:
        query = text("""
            INSERT INTO Tea (name, description)
            VALUES (:name, :description)
            """)
        result = await self._session.execute(query, model.dict())
        await self._session.commit()
        return result

    async def update(self, id: int, model: TeaCreate) -> None:
        query = text("""
            UPDATE Tea 
            SET name=:name, description=:description
            WHERE id=:id
            """)
        params = {"id": id}
        params.update(model.dict())
        result = await self._session.execute(query, model.dict())
        await self._session.commit()
        return result

    async def delete(self, id: int) -> None:
        query = text("""DELETE FROM Tea WHERE id=:id""")
        await self._session.execute(query, {"id": id})
        await self._session.commit()
