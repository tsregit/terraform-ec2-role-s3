# Terraform - EC2 - IAM - ROLE

En este ejemplo se muestra como crear:

1. **Un usuario IAM** asociado a un **Grupo** y este a su vez asociado a una **Politica** para tener acceso a **S3**
2. **Una instancia EC2** 

Para sociar el grupo a la politica es mediante el ARN de la politica que se genera.

Para ejecutar esta plantilla se debe agregar los valores al **tfvars-dev.json**
```
{
    "aws_region": "us-east-1",
    "aws_id": "ID_OWNER",
    "pgp_key": "keybase:name_profile",
    "policy_arn": "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "name_group": "AdministradoresS3Full",
    "ssh_public_key": "ssh-rsa public-key-generated",
    "force_destroy": true,
    "password_reset_required": false,
    "upload_iam_user_ssh_key": true
}
```

Luego ejecutar los siguientes comandos de terraform

```
terraform init
terraform plan -var-file="./tfvars-dev.json"
terraform apply -var-file="./tfvars-dev.json" -auto-approve
```

Cuando se realice el **apply** se mostrara por consola el contenido de varios **outputs**. Para obtener la contraseña es de la siguiente manera:

Con el output llamado **password**. Pegar el contendio en la consola para ejecutar el decrypt y que el valor del password se guarde en un archivo llamado **password.txt**


```
echo "wcFMA2J0YuuIr5NGARAAsCD7oxUlB8Rbk8H3kvq81Jj8NnYL5fzHiczLqB4eH7Ag8R52+WbSt0JBpr/IcVZcH3nJsvFmccv+4Tzp/Gqos2fkYoD5aVSheJ3YVN5YJdFW2To9gjL6N2Rjzp/zdLwbFlAGpWH0uTwwGCDHaC3AH5DlGhCmVN6PME0a8csAzZl0IjnyBGIt6SMBv9Xw+Q+UteBVJ6UEUySaeAh4U5oIgpLSz5s/8v3pHQR0sk2BjC3b3ILRJl9v3Y1TCRwmX3zreAmxNGnk3M1PXBJHejli0b+tk20demNOlOKbHY4Rs3cQQLYL9Qi8dGA7rK9XJIwUKxsXB6kXSAfaD6vWfmH4BS/bcmJAlw5PDzYyPZQay8WJL+PPQkA33gj3D0zoO5lHhrGjNKomp3WYtxldgj7GSbb7DauDm5gAyuTQixXVwTAndyXQNb7Z5fSYlPVzJQj5AMQ6sJL9+gStcjZNnCax3BdBK5HNUs4yxvSxof0XeDq0GE+CLLQfov2Gic8/sF6PHA5Qo5GyRB1VeqBYdOuNF27EWSBru5OqC2BJ8gaVtdz4Ssjhh6BhW0P6yBXLv22f8VF5SCy8sT2Ker1lFJtwipcMb9NYZLp5N7UrG2XfDEc83AAbNn9X1yM0FdYntC9hCx1poda5g4s11T70D0Z+Q332gAvkH8ima5Yb5fU7S/jS4AHknFWHDaj5TPyGuDlYgOoutOHFlOCZ4I/hQCXgp+JjDKXJ4NjkWFBurXuaC4NLGXDSU309aODJ4gFgoj7gj+ScHpVayUCEeaNXo/tJwFkN4qAwItDhZiQA" | base64 --decode | keybase pgp decrypt > password.txt
```