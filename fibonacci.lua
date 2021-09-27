function main()
    local index = tonumber(arg[1]);
    assertIndex(index);
    print(fibonacci(index));
end

function fibonacci(index)
    local initial = initiateMatrix();
    local current = initiateMatrix();
    for i = 3, index do
        current = multiply(current, initial);
    end
    return current[1][1];
end

function initiateMatrix()
    return {{ 1, 1 }, { 1, 0 }};
end

function multiply(a, b)
    local topLeft = a[1][1] * b[1][1] + a[1][2] * b[2][1];
    local topRight = a[1][1] * b[1][2] + a[1][2] * b[2][2];
    local bottomLeft = a[2][1] * b[1][1] + a[2][2] * b[2][1];
    local bottomRight = a[2][1] * b[1][2] + a[2][2] * b[2][2];

    return {{ topLeft, topRight }, { bottomLeft, bottomRight }};
end

function assertIndex(index)
    if (index < 1 or index > 68) then
        error("Index must be a positive integer.");
    end
end

main()