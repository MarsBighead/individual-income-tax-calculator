# iit-calculator

China Individual Income Tax Calculator, Version 2011 to 2018.

## Usage

*Before tax income = 5000

```bash
[hbu@hbu iit-calculator]$ ./calculator
China Individual Income Tax Version 2011
Please enter income amount: 5000
After-tax income(Y/N, default: yes): n

Calcuator is running under income with tax mode.


China Individual Tax Version 2011
Before Tax: 5000.000000
After Tax: 4955.000000
Tax: 45.000000

China Individual Tax Version 2018
Before Tax: 5000.000000
After Tax: 5000.000000
Tax: 0.000000

China Individual Tax Version 2018
Tax reduction amount: 45.000000
```

*After tax income = 4955

```bash
[hbu@hbu iit-calculator]$ ./calculator
China Individual Income Tax Version 2011
Please enter income amount: 4955
After-tax income(Y/N, default: yes):

Calcuator is running under income without tax mode.


China Individual Tax Version 2011
Before Tax: 5000.000000
After Tax: 4955.00000
Tax: 45.000000

China Individual Tax Version 2018
Before Tax: 5000.000000
After Tax: 5000.000000
Tax: 0.000000

China Individual Tax Version 2018
Tax reduction amount: 45.000000

```

*After tax income = 3500

```bash
[hbu@hbu iit-calculator]$ ./calculator
China Individual Income Tax Version 2011
Please enter income amount: 3500
After-tax income(Y/N, default: yes):

Calcuator is running under income without tax mode.


China Individual Tax Version 2011
Before Tax: 3500.000000
After Tax: 3500.000000
Tax: 0.000000

China Individual Tax Version 2018
Before Tax: 3500.000000
After Tax: 3500.000000
Tax: 0.000000

China Individual Tax Version 2018
Tax reduction amount: 0.000000
```

*Before tax income = 12000

```bash
[hbu@hbu iit-calculator]$ ./calculator
China Individual Income Tax Version 2011
Please enter income amount: 12000
After-tax income(Y/N, default: yes):

Calcuator is running under income without tax mode.


China Individual Tax Version 2011
Before Tax: 13493.333333
After Tax: 12000.000000
Tax: 1493.333333

China Individual Tax Version 2018
Before Tax: 13493.333333
After Tax: 12854.000000
Tax: 639.333333

China Individual Tax Version 2018
Tax reduction amount: 854.000000

```
