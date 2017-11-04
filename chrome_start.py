# coding: utf-8
from pyvirtualdisplay import Display
from selenium import webdriver
display = Display(visible=0, size=(1080, 920))
display.start()
options = webdriver.ChromeOptions()
options.add_argument("--no-sandbox")
chrome = webdriver.Chrome(chrome_options=options)
