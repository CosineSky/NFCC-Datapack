# Data
scoreboard players operation COUNT_DOWN sec_elapsed = COUNT_DOWN tick_elapsed
scoreboard players operation COUNT_DOWN sec_elapsed /= CONST_20 data
scoreboard players operation MINUTE tick_elapsed = COUNT_DOWN sec_elapsed
scoreboard players operation MINUTE tick_elapsed /= CONST_60 data
scoreboard players operation MINUTE_01 tick_elapsed = MINUTE tick_elapsed
scoreboard players operation MINUTE_01 tick_elapsed /= CONST_10 data
scoreboard players operation MINUTE_00 tick_elapsed = MINUTE tick_elapsed
scoreboard players operation MINUTE_00 tick_elapsed %= CONST_10 data
scoreboard players operation SECOND tick_elapsed = COUNT_DOWN sec_elapsed
scoreboard players operation SECOND tick_elapsed %= CONST_60 data
scoreboard players operation SECOND_01 tick_elapsed = SECOND tick_elapsed
scoreboard players operation SECOND_01 tick_elapsed /= CONST_10 data
scoreboard players operation SECOND_00 tick_elapsed = SECOND tick_elapsed
scoreboard players operation SECOND_00 tick_elapsed %= CONST_10 data

# MINUTE_01
execute if score MINUTE_01 tick_elapsed matches 0 run clone -1948 5 -60 -1948 9 -58 -1944 13 -57 replace
execute if score MINUTE_01 tick_elapsed matches 1 run clone -1950 5 -60 -1950 9 -58 -1944 13 -57 replace
execute if score MINUTE_01 tick_elapsed matches 2 run clone -1952 5 -60 -1952 9 -58 -1944 13 -57 replace
execute if score MINUTE_01 tick_elapsed matches 3 run clone -1954 5 -60 -1954 9 -58 -1944 13 -57 replace
execute if score MINUTE_01 tick_elapsed matches 4 run clone -1956 5 -60 -1956 9 -58 -1944 13 -57 replace
execute if score MINUTE_01 tick_elapsed matches 5 run clone -1958 5 -60 -1958 9 -58 -1944 13 -57 replace
execute if score MINUTE_01 tick_elapsed matches 6 run clone -1960 5 -60 -1960 9 -58 -1944 13 -57 replace
execute if score MINUTE_01 tick_elapsed matches 7 run clone -1962 5 -60 -1962 9 -58 -1944 13 -57 replace
execute if score MINUTE_01 tick_elapsed matches 8 run clone -1964 5 -60 -1964 9 -58 -1944 13 -57 replace
execute if score MINUTE_01 tick_elapsed matches 9 run clone -1966 5 -60 -1966 9 -58 -1944 13 -57 replace

# MINUTE_00
execute if score MINUTE_00 tick_elapsed matches 0 run clone -1948 5 -60 -1948 9 -58 -1944 13 -53 replace
execute if score MINUTE_00 tick_elapsed matches 1 run clone -1950 5 -60 -1950 9 -58 -1944 13 -53 replace
execute if score MINUTE_00 tick_elapsed matches 2 run clone -1952 5 -60 -1952 9 -58 -1944 13 -53 replace
execute if score MINUTE_00 tick_elapsed matches 3 run clone -1954 5 -60 -1954 9 -58 -1944 13 -53 replace
execute if score MINUTE_00 tick_elapsed matches 4 run clone -1956 5 -60 -1956 9 -58 -1944 13 -53 replace
execute if score MINUTE_00 tick_elapsed matches 5 run clone -1958 5 -60 -1958 9 -58 -1944 13 -53 replace
execute if score MINUTE_00 tick_elapsed matches 6 run clone -1960 5 -60 -1960 9 -58 -1944 13 -53 replace
execute if score MINUTE_00 tick_elapsed matches 7 run clone -1962 5 -60 -1962 9 -58 -1944 13 -53 replace
execute if score MINUTE_00 tick_elapsed matches 8 run clone -1964 5 -60 -1964 9 -58 -1944 13 -53 replace
execute if score MINUTE_00 tick_elapsed matches 9 run clone -1966 5 -60 -1966 9 -58 -1944 13 -53 replace

# SECOND_01
execute if score SECOND_01 tick_elapsed matches 0 run clone -1948 5 -60 -1948 9 -58 -1944 13 -47 replace
execute if score SECOND_01 tick_elapsed matches 1 run clone -1950 5 -60 -1950 9 -58 -1944 13 -47 replace
execute if score SECOND_01 tick_elapsed matches 2 run clone -1952 5 -60 -1952 9 -58 -1944 13 -47 replace
execute if score SECOND_01 tick_elapsed matches 3 run clone -1954 5 -60 -1954 9 -58 -1944 13 -47 replace
execute if score SECOND_01 tick_elapsed matches 4 run clone -1956 5 -60 -1956 9 -58 -1944 13 -47 replace
execute if score SECOND_01 tick_elapsed matches 5 run clone -1958 5 -60 -1958 9 -58 -1944 13 -47 replace
execute if score SECOND_01 tick_elapsed matches 6 run clone -1960 5 -60 -1960 9 -58 -1944 13 -47 replace
execute if score SECOND_01 tick_elapsed matches 7 run clone -1962 5 -60 -1962 9 -58 -1944 13 -47 replace
execute if score SECOND_01 tick_elapsed matches 8 run clone -1964 5 -60 -1964 9 -58 -1944 13 -47 replace
execute if score SECOND_01 tick_elapsed matches 9 run clone -1966 5 -60 -1966 9 -58 -1944 13 -47 replace

# SECOND_00
execute if score SECOND_00 tick_elapsed matches 0 run clone -1948 5 -60 -1948 9 -58 -1944 13 -43 replace
execute if score SECOND_00 tick_elapsed matches 1 run clone -1950 5 -60 -1950 9 -58 -1944 13 -43 replace
execute if score SECOND_00 tick_elapsed matches 2 run clone -1952 5 -60 -1952 9 -58 -1944 13 -43 replace
execute if score SECOND_00 tick_elapsed matches 3 run clone -1954 5 -60 -1954 9 -58 -1944 13 -43 replace
execute if score SECOND_00 tick_elapsed matches 4 run clone -1956 5 -60 -1956 9 -58 -1944 13 -43 replace
execute if score SECOND_00 tick_elapsed matches 5 run clone -1958 5 -60 -1958 9 -58 -1944 13 -43 replace
execute if score SECOND_00 tick_elapsed matches 6 run clone -1960 5 -60 -1960 9 -58 -1944 13 -43 replace
execute if score SECOND_00 tick_elapsed matches 7 run clone -1962 5 -60 -1962 9 -58 -1944 13 -43 replace
execute if score SECOND_00 tick_elapsed matches 8 run clone -1964 5 -60 -1964 9 -58 -1944 13 -43 replace
execute if score SECOND_00 tick_elapsed matches 9 run clone -1966 5 -60 -1966 9 -58 -1944 13 -43 replace