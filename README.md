# Terraform - EC2 - IAM - ROLE

EN este ejemplo se muestra como crear 

**Un usuario IAM** asociado a un **Grupo** y este a su vez asociado a una **Politica** para tener acceso a **S3**
**Una instancia EC2** 

Pasociar el grupo a la politica es por el ARN de la politica

```
arn:aws:iam::aws:policy/AmazonS3FullAccess
```
