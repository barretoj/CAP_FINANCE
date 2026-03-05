namespace cap.schema;

using { managed, cuid } from '@sap/cds/common';

entity Wallets : cuid, managed {
    @title : 'Nome'
    name : String(50);
    createdAt : DateTime;
}

entity Categories : cuid, managed {
    @title : 'Nome'
    name : String(50);
    
    @title : 'Ícone'
    icon : String(30);

    @title : 'Cor'
    color : String(50);
}

entity Movements : cuid, managed {
    @title : 'Título'
    title : String(50);
    
    @title : 'Valor'
    amount : Decimal(10,2);

    @title : 'Data'
    date : Date;

    @title : 'Tipo'
    type : Association to MovementType;

    @title : 'Carteira'
    wallet : Association to Wallets;

    @title : 'Categoria'
    category : Association to Categories;

    @title : 'Nota'
    note : String(255);

    createdAt : DateTime;
}

entity MovementType : cuid, managed {
    @title : 'Descrição'
    description : String(50);
}