# Shell Script Cheat Sheet


## Variables
- Define Variables
    ```sh
    name="Shubham"  # no spaces around =
    num=21
    ```
- Access Variables
    Variables are accessed using the **$** symbol
    ```sh
    $name
    $num
    ```

## Arithmetic Operators
- `expr`, `let`, `(( ))`, `$(( ))` can be used, for sake of simplicity use only `$(( ))`
    ```sh
    sum=$((a + b))      # no need to use $a and $b inside the parenthesis as we already use $ outside the parenthesis
    diff=$((a - b))
    prod=$((a * b))
    div=$((a / b))
    mod=$((a % b))
    ```

## Read and Write
- Write 
    ```sh
    echo "Hello world"
    ```
- Read
    ```sh
    read name
    ```
- Read with prompt
    ```sh
    read -p "Enter your name: " name

## Comparison Operators
- Use `-eq`, `-ne`, `-lt`, `-le`, `-gt`, `-ge` for comparisons
    ```sh
    if [ $a -eq $b ]; then echo "Equal"; fi
    ```
    **NOTE:** Comaparison operators donot return a value that can be captured, i.e,
    ```sh
    bool=$((a -eq b))      # does not work
    ```
    instead if needed to capture value, use conditionals

## Conditionals (if-elseif-else)
- ```sh
    if [ $num -eq 10 ]; then         # note the space after '[' and before ']'
        echo "$num equal to 10"
    elif [ $num -gt 10 ]; then
        echo "$num greater than 10"
    else
        echo "$num less than 10"
    fi
    ```

## Loops
- For Loop
    ```sh
    for i in 1 2 3 4 5
    do
        echo "Number: $i"       # 1 2 3 4 5
    done
    ```
- C-style syntax
    ```sh
    for ((i-0; i<5; i++))
    do
        echo "Number: $i"
    done
    ```
- While loop
    ```sh
    count=1
    while [ $count -le 5 ]
    do
        echo "$count"
        count=$((count + 1))
    done
    ```

## Case statements (like switch case)

- ```sh
    read -p "Enter a number: " num
    case $num in
        1) echo "One" ;;
        2) echo "Two" ;;
        *) echo "Default" ;;
    esac
    ```