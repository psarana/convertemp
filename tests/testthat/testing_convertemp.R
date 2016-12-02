context("Temperature Conversion")

test_that("Function correctly converts Fahrenheit to Kelvin", {
  expect_equal(fahr_to_kelvin(0), 255.3722)
  expect_equal(fahr_to_kelvin(-32), 237.5944)
})
test_that("Function correctly converts Fahrenheit to Celsius", {
  expect_equal(fahr_to_celsius(0), -17.77778)
  expect_equal(fahr_to_celsius(32), 0)
})
test_that("Function correctly converts Kelvin to Celsius", {
  expect_equal(kelvin_to_celsius(0), -273.15)
  expect_equal(kelvin_to_celsius(273.15), 0)
})
test_that("Function correctly converts Kelvin to Fahrenheit", {
  expect_equal(kelvin_to_fahr(0), -459.67)
  expect_equal(kelvin_to_fahr(255.3722), -4e-05)
})
test_that("Function correctly converts Celsius to Fahrenheit", {
  expect_equal(celsius_to_fahr(0), 32)
  expect_equal(celsius_to_fahr(-17.77778), -4e-06)
})
test_that("Function correctly converts Celsius to Kelvin", {
  expect_equal(celsius_to_kelvin(0), 273.15)
  expect_equal(celsius_to_kelvin(-273.15), 0)
})
test_that("Function fails when kelvin < 0", {
  expect_warning(kelvin_to_celsius(-1), "Values for Kelvin may not be negative")
  expect_warning(kelvin_to_fahr(-1), "Values for Kelvin may not be negative")
})
