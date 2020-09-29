*** Settings ***

*** Variables ***
${email_id_login}  identifierId
${email_id_next}  identifierNext
${password}  xpath = //*[@id="password"]/div[1]/div/div[1]/input
${password_next}  passwordNext
${compose}  xpath  =  //*[contains(text(), "Compose")]
${to_field}  name:to
${subject_field}  name:subjectbox
${mail_body}  xpath  =  //div[@aria-label='Message Body']
${send_button}  xpath  =  //div[@aria-label='Send ‪(Ctrl-Enter)‬']
${hangouts_section}  xpath  =  //div[@aria-label='Hangouts']
${search_mail}  xpath  =  //input[@aria-label='Search mail']
${search_button}  xpath  =  //button[@aria-label='Search mail']
${select_all}  xpath  =  /html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[2]/div[1]/div/div/div[1]/div/div[1]/span
${delete_mails}  xpath  =  //div[@aria-label='Delete']
${deleted_confirm_text}  xpath  =  //*[contains(text(), "Some messages in your bin or spam folders match your search. ")]
${account_image}  xpath  =  //*[@id="gb"]/div[2]/div[3]/div[1]/div[2]/div/a/img
${sign_out_link}  xpath  =  //a[contains(text(), "Sign out")]
${search_mail_result}  xpath  =  //div[@role="main"]/div/div[2]/div/table
${mail_body_searched}  xpath  =  //div[@role="listitem"]