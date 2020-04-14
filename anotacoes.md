## **Scaffold**
Implementa o básico do Material Design

    Scaffold(
        appBar: ...,
        body: ...,
        bottomNavigationBar:...,
        floatingActionButton: ...,
        floatingActionButtonLocation: ...,
    )

## **Container:**
Como uma `div` ou uma `view`  
Se não tiver uma `child`, vai ocupar o maior espaço possível  
Se tiver, vai ocupar o tamanho dele  
Permite a personalização de `width`, `height`, `margin` e `padding`

    Container(
        ...
    ),

---

## **Column:**
Permite agrupar mais de um `child` em uma coluna  

    Column(
        children: <Widget>[
            ...
        ],
        ...
    ),

### **Tamanho:**

Por padrão, ocupa o maior espaço vertical possível, enquanto o horizontal fica do tamanho de seus `child`  
É possível mudar isso utilizando

    mainAxisSize: MainAxisSize.min

### **Direção:**

De baixo para cima (padrão):

    verticalDirection: VerticalDiretion.down

De cima para baixo:

    verticalDirection: VerticalDiretion.up

### **Espaçamento:**

Padrão:

    mainAxisAlignment: MainAxisAlignment.start

Utiliza os mesmos espaçamentos que o css flex:
- `start`
- `center`
- `end`
- `spaceAround` (margin igual)
- `spaceBetween` (joga pros cantos)
- `spaceEvenly` (igual)

Para um espaçamento específico entre childs específicos, pode-se usar entre eles:

    SizedBox(
        height: 20.0
    ),

### **Alinhamento:**

Define o alinhamento horizontal dos `childs`

Padrão:

    crossAxisAlignment: CrossAxisAlignment.center

- `start`
- `center`
- `end`
- `stretch` (todos do maior tamanho possível)

### **Ocupar o Espaço Horizontal Inteiro:**

Uma maneira de fazer isso é criando um `child container` com `width` infinita

    Column(
        children: <Widget>[
            Container (
                width: double.infinity
            ),
        ],
    ),

---

## **Row**

Permite agrupar mais de um `child` em uma linha

**Utiliza das mesmas propriedades que a column, apenas trocando o horizontal pelo vertical e vice-versa**

## **Cores:**
As cores são especificadas de acordo com o [Material Design](https://material.io/design/color/the-color-system.html#tools-for-picking-colors)

    backgroundColor: Colors.white,
    color: Colors.black

---

## **Margin e Padding:**

### **Todos:**
    margin: EdgeInsets.all(20.0)  
    padding: EdgeInsets.all(10.0)

### **Vertical e Horizontal:**
    margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0)  
    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0)  

### **Todas Diferentes:**
    margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
    padding: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
- Ordem: Left, Top, Right, Bottom

### **Apenas uma**
    margin: EdgeInsets.only(left: 30.0)

---

## **Texto**

Adicionar um texto é tão simples quanto:

    Text('Hello World')

Para estilizar um texto, é necessário usar a propriedade style:

    Text(
        'Hello World',
        style: TextStyle(
            ...
        )
    )

Algumas propriedades:

- `backgroundColor`
- `color`
- `decoration`
- `decorationColor`
- `decorationStyle`
- `decorationThickness`
- `fontFamily`
- `fontStyle`
- `fontWeight`
- `fontSize`
- `letterSpacing`
- `shadows`

---

## **Imagem**

Para adicionar uma imagem local, utiliza-se

    Image(
        image: AssetImage('images/imagem.png')
    )

    Image(
        image: NetworkImage('https://exemplo.com/imagem.png')
    )

Para uma maneira mais simples:

    Image.asset('images/imagem.png')

    Image.network('https://exemplo.com/imagem.png')

É possível definir a `width` e `height` da imagem utilizando as propriedades de mesmo nome