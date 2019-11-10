from PIL import Image
import pytesseract

def ocr_script(filename):
    img = Image.open(filename)
    text = pytesseract.image_to_string(img)
    return text

# print(ocr_script('test.png'))

# print(pytesseract.image_to_string(Image.open('test.png')))

# print(pytesseract.image_to_string('test.png'))