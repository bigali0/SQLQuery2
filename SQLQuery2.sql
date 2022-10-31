--Select
Select ContactName Adi,CompanyName Sirketadi,City Sehir  from Customers  -- Alias

Select * from Customers where City = 'London'  -- filtreleme icin where kullanilir

Select * from Products where categoryId=1 or categoryId =3  -- categoryId si hem 1 hem 3 olanlari filtreledik

Select * from Products where categoryId=1 and UnitPrice>=10

--order by

Select * from Products order by ProductName  -- urunleri urun ismine gore siraladi 

Select * from Products order by CategoryID,ProductName -- urunler urun id si icinde urun ismine gore siralandi 

Select * from Products order by UnitPrice desc -- fiyata gore en pahalidan ucuza dogru siraladik

--where

Select * from Products where CategoryID=1 order by UnitPrice desc

Select count (*) from Products


Select count (*) from Products where CategoryID =2  -- CategirID si 2 olan urunlerin sayisi

--group By

Select categoryId,count (*) from Products group By CategoryID -- hangi categoryde kac farkli urun oldugu 

--having

Select categoryId,count (*) from Products group By CategoryID having count (*) <10 -- icerisinde 10 dan az urun olan categoryler

Select categoryId,count (*) from Products where UnitPrice>20
group By CategoryID having count (*) <10  -- fiyati 20 den fazla olan uruneri kategory Id ye 
--gore gruplayip sayisi 10 dan kucuk olanlar

--JOIN

Select *from Products inner join Categories  -- Products tablosunun hepsini birlestirdi
on Products.CategoryID=Categories.CategoryID

Select Products.ProductID,Products.ProductName , Products.UnitPrice, Categories.CategoryName from Products inner join Categories 
on Products.CategoryID=Categories.CategoryID  -- Products tablosunun istenilen kolonlarini birlestirdi

Select Products.ProductID,Products.ProductName , Products.UnitPrice, Categories.CategoryName from Products inner join Categories 
on Products.CategoryID=Categories.CategoryID 
where Products.UnitPrice>10 -- Products tablosunun istenilen kolonlarini birlestirdi fiyati 10 buyuk olanlari verdi

Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID

--satilmayan urunler

Select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID -- urunler tablosunda solda olup satis tablosunda (sagda)olmayan 
--satilmayan urunler(butun urunleri satis var)

--hic urun satin almamis olan musteriler
Select *from Customers c left join Orders o 
on c.CustomerID = o.CustomerID 
where o.CustomerID is null  -- Costomers listesinde olup henuz order etmemis olanlar


--2 den fazla tabloyu join etmek

Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o 
on o.OrderID= od.OrderID





