   M S B A M L   `   `   `  ����A  =Agenda, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:AgendaAgenda  5          Agenda.BrokersList   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      &localclr-namespace:Agenda     5      -   5          N� Title$  Liste des Courtiers��5	       � 	Resources 5
         brokerViewSource��%   &	        �� 5   
   6   5      .��5      � 
���"�"� � DataContext# [  6$   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ brokerDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��10,10,385,10q�6~      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�      
IsReadOnly . ��6f   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        brokerIDColumn��,  &System.Windows.Controls.DataGridColumn	   Header$	 	Broker ID��5   Z   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 SizeToHeader 6m   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *
BrokerID+6m     5      -   5        firstnameColumn��$	 	Firstname��5   \   $
 SizeToHeader 6o    6>   �� *	Firstname+6o     5      -   5        lastnameColumn��$	 Lastname��5   Z   $
 SizeToHeader 6l    6=   �� *
Lastname+6l     5      -   5        
mailColumn��$
	 Mail��5   R   $
 SizeToHeader 6`    69   �� *Mail+6`     5      -   5        phoneNumberColumn��$	 Phone Number��5   `   $
 SizeToHeader 6v    6@   �� *PhoneNumber+6v   5      � 5   
   -   5         �Name$ grid1��5      $
��Left=�6   $��
441,38,0,0q�69   $	��Top=�6M   $	��166��6e   $	��349��6r    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5       $
��Auto �6    �� 5!      $
��Auto �6    �� 5"      $
��Auto �6    .+�5$      �� $��
Broker ID:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��0��6_   $��Center=�6l   �� 5%      -	   5         ��Name$ brokerIDTextBox��5%      $��1��6/   $
��Left=�6?   $��23��6Z   $��
3,5,-112,5q�6f   $��0��6z   $��Center=�6�   $	��236��6   �� 
IsReadOnly . ��6�   �� *
BrokerID+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6  �� 5&      $��
Firstname:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��1��6_   $��Center=�6l   �� 5'      -
   5        $ firstnameTextBox��5'      $��1��60   $
��Left=�6@   $��23��6[   $��
3,5,-111,5q�6g   $��1��6{   $��Center=�6�   $	��236��6  ��6�   �� *	Firstname+$ TwoWay=� .  . 6  �� 5(      $��	Lastname:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��2��6^   $��Center=�6k   �� 5)      -   5        $ lastnameTextBox��5)      $��1��6/   $
��Left=�6?   $��23��6Z   $��
3,5,-110,5q�6f   $��2��6z   $��Center=�6�   $	��236��6  ��6�   �� *
Lastname+$ TwoWay=� .  . 6  �� 5*      $��Mail:��6   $��0��6$   $
��Left=�64   $��3q�6O   $��3��6Z   $��Center=�6g   �� 5+      -   5        $ mailTextBox��5+      $��1��6+   $
��Left=�6;   $��24��6V   $��
3,4,-109,4q�6b   $��3��6v   $��Center=�6�   $	��236��6�   ��6�   �� *Mail+$ TwoWay=� .  . 6�   �� 5,      $��Phone Number:��6   $��0��6,   $
��Left=�6<   $��3q�6W   $��4��6b   $��Center=�6o   �� 5-      -   5        $ phoneNumberTextBox��5-      $��1��62   $
��Left=�6B   $��24��6]   $��
3,4,-108,4q�6i   $��4��6}   $��Center=�6�   $	��236��6	  ��6�   �� *PhoneNumber+$ TwoWay=� .  . 6	  5.      �� 5/   
   -   5         ��Name$ 	BtnModify��5/      $��Enregistrer��6$   $
��Left=�6:   $��547,225,0,0q�6U   $	��Top=�6j   $��75��6�   6�   �� 50   
   -   5        $ 	BtnDelete��50      $��	Supprimer��6$   $
��Left=�68   $��685,225,0,0q�6S   $	��Top=�6h   $��75��6�   6�   52      53      