   M S B A M L   `   `   `  ����L  HMinimalBrowser.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:MinimalBrowser.UIMinimalBrowser.UI  5   	   "    MinimalBrowser.UI.MainWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:MinimalBrowser.UI     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5        $
��Back��5      $��5q�6=   �� 5      -   5        $��Forward��5      $��5q�6C   �� 5      -   5        $��Refresh��5      $��5q�6C   �� 5      -   5         ��Name$ 
urlTextBox��5      $	��600��6*   $��5q�66   �� 5      -   5        $��Go��5      $��5q�69   5      (  "System.Windows.Controls.WebBrowser  5   
   -   5          Name$ 
webBrowser��5      $��1��6)   5      5      