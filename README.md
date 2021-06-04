# Number To Letter
Convert numbers to letters

By _senor16_

You can convert numbers up to `quadrillion` it  looks like `1 000 000 000 000 000` with 15 zeros.  

You can change the limit by modifying to `convert` function
The following lines :    

    #Label
    labels = %w[thousand million billion trillion quadrillion]
    
    #dividers
    dividers = [1000, 1_000_000, 1_000_000_000, 1_000_000_000_000,
                1_000_000_000_000_000]

For example to set the limits to `trillion`, modify those line like that:

    #Label
    labels = %w[thousand million billion trillion]
    
    #dividers
    dividers = [1000, 1_000_000, 1_000_000_000, 1_000_000_000_000]

If you want to go beyond, may be to convert numbers up to `Quintillion`, apply those changes :

    #Label
    labels = %w[thousand million billion trillion quadrillion quintillion]
    
    #dividers
    dividers = [1000, 1_000_000, 1_000_000_000, 1_000_000_000_000,
                1_000_000_000_000_000, 1_000_000_000_000_000_000]

By _senor16_