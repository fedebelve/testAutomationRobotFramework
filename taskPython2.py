# Import the required libraries
from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn

# Create a function to perform the RPA task
def perform_rpa_task():
    # Get the RPA software instance
    rpa = BuiltIn().get_library_instance('RPA')

    # Log in to the website using the RPA software
    rpa.open_browser('https://www.example.com')
    rpa.input_text('username', 'myusername')
    rpa.input_text('password', 'mypassword')
    rpa.click_element('login_button')

    # Navigate to the desired page on the website
    rpa.click_element('customers_link')

    # Extract the customer data from the page
    customer_data = rpa.get_table_cells('customer_table')

    # Manipulate the customer data
    sorted_customers = sorted(customer_data)
    unique_customers = list(set(sorted_customers))

    # Save the manipulated customer data to a file
    with open('customer_data.txt', 'w') as f:
        for customer in unique_customers:
            f.write(customer + '\n')

    # Log a success message
    logger.info('RPA task completed successfully')

# Call the function to perform the RPA task
perform_rpa_task()