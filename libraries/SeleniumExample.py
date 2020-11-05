from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions

class SeleniumExample:

    """
    after the WebDriverWait function you can add commands such as
    click()
    enabled()
    more information here https://selenium-python.readthedocs.io/waits.html
    """

    def __get_library(self, lib):
        """
        Returns the library instance. It is required in order to instantiate
        a driver object (library.webdriver.browser).
        """
        return BuiltIn().get_library_instance(lib)

    def __element_presence(self, library, locator):
        driver = self.__get_library(library)._current_browser()
        WebDriverWait(driver, 60).until(expected_conditions.presence_of_element_located(
            By.XPATH(locator))).is_displayed()

    def display_example(self, library, locator):
        #Checks that the element is displayed
        self.__element_presence(library, locator).is_displayed()

