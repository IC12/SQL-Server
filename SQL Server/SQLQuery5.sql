update system_data set val_str = 'false'
where key_name = 'KEY_IS_SERVER'

update system_data set val_str = 'true'
where key_name = 'KEY_IS_COLETOR_SERVER'