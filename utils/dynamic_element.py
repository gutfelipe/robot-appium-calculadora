import robot.api.logger

__version__ = '1.0.0'

class dynamic_element:
    ROBOT_LIBRARY_VERSION = __version__
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def get_locator_calculate(self, locator, num):
#     robot.api.logger.console()
      return locator[("button_"+num)]
 
    def get_count_size(self, num):
        return len(num)

    def get_list_locator_calculate(self, locator, num):
      list_locator = []
      for element in num:
          if element == '.':
             element = "dot"
          list_locator.append(dynamic_element.get_locator_calculate(self, locator, element))
      return list_locator

    def normalize_result(self, result):
      result_str = str(round(float(result), 6))
      if ".0" in result_str:
          result_str = result_str.replace(".0","") 
#      robot.api.logger.console(result_str)
      return result_str
