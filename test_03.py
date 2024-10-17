def is_automorphic(n: int) -> bool:
    square = n * n
    square_as_string = str(square)
    res = square_as_string.endswith(str(n))

    return res


def main() -> None:
    print(is_automorphic(5))
    print(is_automorphic(6))
    print(is_automorphic(7))
    print(is_automorphic(25))


if __name__ == '__main__':
    main()

# isAutomorphic(5) => true
