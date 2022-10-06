from typing import List, Union

import pandas as pd


def greeting(name: str) -> str:
    return f"Hello, this is {name}"


def greeting_reversed(name: Union[str, int]) -> str:
    name = str(name)
    return f"Hello, this is {name[::-1]}"


def greeting_reversed_modified(name: Union[str, int]) -> Union[str, int]:
    if type(name) == int:
        return name
    return f"Hello, this is {name}"


def main() -> None:
    df = pd.DataFrame({"messages": ["Hello, World!", "Sveikiii!"]})
    print(df.head())

    print(greeting("Dominykas"))
    # print(greeting(10))

    print(greeting_reversed("Dominykas"))
    print(greeting_reversed(10))

    names: List[str] = []

    for name in ["Dominykas", "Edgaras", "Deividas"]:
        names.append(name)

    print(names)

    print(greeting_reversed_modified(10))

    names1: List[str] = []

    for name in ["Dominykas", "Edgaras", "Deividas"]:
        names1.append(name)


if __name__ == "__main__":
    main()
