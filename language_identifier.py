# -----------------------------------------------------------------------------
# Import libraries
import nltk
from nltk.tokenize import wordpunct_tokenize
from nltk.corpus import stopwords
nltk.download('stopwords')
import PyPDF2
import os
path = "Input/"
import email
import docx2txt
import pytesseract
import pdf2image
from PIL import Image
import fitz  # pip install PyMuPDF
from time import time
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# Language detector
def lang_detector(test_data):
    lang_ratio ={}
    tokenize_string = wordpunct_tokenize(test_data)
    
    for language in stopwords.fileids():
        set1 = set(stopwords.words(language))
        set2 = set(tokenize_string)
        total_set = set1.intersection(set2)
        lang_ratio[language] = len(total_set)
        print(lang_ratio[language])
    
    final_lang = max(lang_ratio, key=lang_ratio.get)
    max_lang_count = max(lang_ratio.values())
    if max_lang_count == 0:
        print("Method1 :")
        from langdetect import detect
        lang = detect(test_data)
        print(lang)
    else:
        print("Method2 :")
        print("The language of the text file is :" + str(final_lang))
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# Extract digital pdf information
def pdf_information_extractor(files):
    final_string = ""
    file_obj = open(path + str(files), 'rb')
    file_read_obj = PyPDF2.PdfFileReader(file_obj)
    page_obj = file_read_obj.getPage(0)
    final_string = page_obj.extractText()
    print(final_string)
    lang_detector(final_string)
# -----------------------------------------------------------------------------
    
# -----------------------------------------------------------------------------    
# Extract image information for png, jpg, jpeg, tiff
def img_information_extractor(files):
    pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'
    text = pytesseract.image_to_string(path + str(files))
    print(text)
    lang_detector(text)
# -----------------------------------------------------------------------------
    
# -----------------------------------------------------------------------------
# Extract image of non digital and free memory    
def img_information_extractor_for_cache():
    pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'
    file_= "Cache/outfile.png"
    text = pytesseract.image_to_string(file_)
    print(text)
    lang_detector(text)
    os.remove(file_)    
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------    
# Non digital to Img and then Image information    
def non_digital_pdf_information_extractor(files):
    doc = fitz.open(files)
    page = doc.loadPage(0) #number of page
    pix = page.getPixmap()
    output = "outfile.png"
    pix.writePNG("Cache/"+output)
    img_information_extractor_for_cache()
# -----------------------------------------------------------------------------
    
# -----------------------------------------------------------------------------    
# Digital and Non digital classifier    
def digital_nondigital_checker(files):
    pdf_reader = PyPDF2.PdfFileReader(path + str(files), 'rb')
    total_pages = pdf_reader.getNumPages()
    print("Number of pages in pdf : {}".format(total_pages))
    curr_page = 0
    page_type_flag = False
    while total_pages:
        page_data = pdf_reader.getPage(curr_page)
        if '/Font' in page_data['/Resources']:
            print("The pdf is digital.")
            pdf_information_extractor(files)
            total_pages -= 1
            curr_page += 1
            if(page_type_flag):
                print("The pdf is mixed.")
                break
        else:
            print("The pdf is non digital.")
            non_digital_pdf_information_extractor(files)
            total_pages -= 1
            curr_page += 1
            page_type_flag = True
# -----------------------------------------------------------------------------
        
# -----------------------------------------------------------------------------
# Mail information        
def msg_information_extractor(files):
    mail_file = open(path+str(files), 'r')
    subject_line = ""
    for item in mail_file:
        if item.startswith("Subject"):
            subject_line = item[8:]
    
    lang_detector(subject_line)
# -----------------------------------------------------------------------------
    
# -----------------------------------------------------------------------------    
# htm and html information 
def htm_infomation_extractor(files):
    mail_file = open(path+str(files), 'r+', encoding="utf8")
    htm_string = ""
    for item in mail_file:
        htm_string += item
    
    lang_detector(htm_string)
# -----------------------------------------------------------------------------
    
# -----------------------------------------------------------------------------    
# docx information    
def docx_information_extractor(files):
    my_text = docx2txt.process(path + str(files))
    print(my_text[0:100])
    lang_detector(my_text[0:100])
# -----------------------------------------------------------------------------
    
# -----------------------------------------------------------------------------    
# text information
def text_information_extraction(files):
    final_string = ""
    test_data = open(path + str(files), 'r+')
    for item in test_data:
        final_string += item

    final_string = final_string.lower()
    print(final_string)
    lang_detector(final_string)
# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------    
# Take input
def input_from_folder():
    start_time = time()
    for files in os.listdir(path):
        if files.endswith(".png"):
            #img_information_extractor(files)
            pass
        elif files.endswith(".jpg"):
            #img_information_extractor(files)
            pass
        elif files.endswith(".jpeg"):
            #img_information_extractor(files)
            pass
        elif files.endswith(".tif"):
            #img_information_extractor(files)
            pass
        elif files.endswith(".htm"):
            #htm_infomation_extractor(files)
            pass
        elif files.endswith(".html"):
            #htm_infomation_extractor(files)
            pass
        elif files.endswith(".doc"):
            #docx_information_extractor(files)
            pass
        elif files.endswith(".docx"):
            #docx_information_extractor(files)
            pass
        elif files.endswith(".pdf"):
            digital_nondigital_checker(files)
        elif files.endswith(".txt"):
            #text_information_extraction(files)
            pass
        elif files.endswith(".msg"):
            #msg_information_extractor(files)
            pass
        else:
            print("Not matching with the file criteria.....")
    end_time = time()
    
    print("Time required for execution : {}".format(end_time - start_time))
# -----------------------------------------------------------------------------
            
            
# Call me 
if(__name__ == '__main__'):
    input_from_folder()
# -----------------------------------------------------------------------------    