Unit Converter

A simple interactive unit converter built with R Shiny. 

This project provides a simple Shiny app to make these common conversions easier.


This app converts values between three common unit pairs:

* Pounds ↔ Kilograms
* Miles ↔ Kilometers
* Fahrenheit ↔ Celsius

The project was created as part of the Data Science Specialization course.

⸻

Files

unitConverter/
├── README.md
├── ui.R
├── server.R
├── unitConverter.Rmd
└── unitConverter.html

ui.R

Defines the user interface of the Shiny app, including:

* Unit selection boxes
* Numeric input field
* Output display area

server.R

Contains the server logic for unit conversion.

unitConverter.Rmd

Presentation file explaining the motivation, design, and code of the app.

unitConverter.html

Rendered HTML presentation from the R Markdown file.

⸻

Supported Conversions

From	To
Pound	Kilogram
Kilogram	Pound
Mile	Kilometer
Kilometer	Mile
Fahrenheit	Celsius
Celsius	Fahrenheit

If the selected units are the same, the app returns the original value.

If the selected conversion is not supported, the app displays:

Too complicated for me!

⸻

How to Run

1. Install R and Shiny

Make sure R is installed, then install the Shiny package:

install.packages("shiny")

2. Clone the repository

git clone https://github.com/aifyer/unitConverter.git
cd unitConverter

3. Run the app

In R or RStudio, run:

library(shiny)
runApp()

The app will open in your browser.

⸻
