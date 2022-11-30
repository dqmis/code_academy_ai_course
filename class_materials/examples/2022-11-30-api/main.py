from typing import List

import cloudpickle
import pandas as pd
from fastapi import FastAPI
from pydantic import BaseModel

cat_features = ["fuel", "seller_type", "transmission", "model"]
cont_features = ["km_driven", "owner", "mileage", "engine", "max_power", "seats", "year"]

model = cloudpickle.load(open("./model.pkl", "rb"))


class CarInput(BaseModel):
    fuel: str
    seller_type: str
    transmission: str
    name: str
    km_driven: float
    owner: str
    mileage: str
    engine: str
    max_power: str
    seats: float
    year: int


app = FastAPI()


@app.get("/health")
def health():
    return {"health": "alive"}


@app.post("/predict")
def predict(inputs):
    print(inputs)
    parsed_input = pd.DataFrame([inputs.dict()])

    print(parsed_input)

    predictions = model.predict(parsed_input)
    return {"predictions": predictions}
