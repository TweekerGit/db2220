from sqlmodel import SQLModel, Field


class Result(SQLModel):
    status: str


class Tea(SQLModel, table=True):
    __tablename__ = "Tea"

    id: int = Field(primary_key=True)
    name: str = Field()
    description: str = Field()


class TeaCreate(SQLModel):
    name: str = Field(default="Tea")
    description: str = Field(default="Tasty tea")
