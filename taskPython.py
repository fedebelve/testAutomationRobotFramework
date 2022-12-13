# Import the required libraries
from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn

# Create a function to execute the RPA task
def execute_rpa_task():
    # Get the SeleniumLibrary instance
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

    # Open the browser and log in to the website
    selenium_lib.open_browser('https://www.example.com', 'chrome')
    selenium_lib.input_text('username', 'my_username')
    selenium_lib.input_text('password', 'my_password')
    selenium_lib.click_button('Log In')

    # Navigate to the specific page and extract the data
    selenium_lib.go_to('https://www.example.com/customer-list')
    customer_list = selenium_lib.get_webelements('//table/tbody/tr')

    # Manipulate the data and save it to a file
    sorted_customer_list = sorted(customer_list, key=lambda x: x.text)
    with open('customer_list.txt', 'w') as f:
        for customer in sorted_customer_list:
            f.write(customer.text + '\n')

    # Close the browser
    selenium_lib.close_browser()

# Execute the RPA task
execute_rpa_task()