import pandas as pd


def main() -> None:
    df = pd.DataFrame({"messages": ["Hello, World!", "Sveikiii!"]})
    print(df.head())


if __name__ == "__main__":
    main()
