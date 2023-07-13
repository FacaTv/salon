#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\nWelcome to Faca's imaginary salon, what you here for?\n"

SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")

APPOINT(){
  SERVICE=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  CUSTOMER=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  SERVICE_FORMAT=$(echo $SERVICE | sed -E 's/\s//g')
  NAME_FORMAT=$(echo $NAME | sed -E 's/\s//g')
  echo -e "\nWhat time would you like your $SERVICE_FORMAT?"
  read SERVICE_TIME
  TIME=$($PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ($CUSTOMER, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  echo -e "\nI have put you down for a $SERVICE_FORMAT at $SERVICE_TIME, $NAME_FORMAT."
}

MAIN_MENU(){

echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE
PHONE_EXISTS=$($PSQL "SELECT customer_id, name FROM customers WHERE phone='$CUSTOMER_PHONE'")
if [[ -z $PHONE_EXISTS ]]
then
  echo -e "\nWhat's your name?"
  read CUSTOMER_NAME
  INSERT=$($PSQL "INSERT INTO customers (name, phone) VALUES ('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
  APPOINT
  else 
  APPOINT
  
fi
}

MENU() {

if [[ $1 ]]
then
  echo -e "\n$1"
fi

echo "$SERVICES" | while read SERVICE_ID BAR NAME
do
  echo "$SERVICE_ID) $NAME"
done

read SERVICE_ID_SELECTED

  if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
  then 
    MENU "try again"
  else
    PRODUCT=$($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED")

    if [[ -z $PRODUCT ]]
    then
      MENU "Try again"
    else
      MAIN_MENU
    fi
  fi
}

MENU
