   M S B A M L   `   `   `  ����A  =Agenda, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:AgendaAgenda  5          Agenda.AddBroker   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      &localclr-namespace:Agenda     5        N� Title$  	AddBroker��5	       � 	Resources 5
         brokerViewSource��%   &	        �� 5   
   6   5      .��5      � 
���� ��$��0,4,0,-4q�6   .+�5   
   �� $
��Left=�6   $��
194,23,0,0q�6/   $
��Wrap=�6C   $��Ajouter un courtier��6W   $	��Top=�6r   $	��396��6�   $��54��6�   
�������$
��20px(�6�    �� TextAlignment$ Center=�6�   � 5   
   -   5         �Name$ grid1��5       � DataContext# [  6   $
��Left=�6N   $��
10,101,0,0q�6i   $	��Top=�6}   $	��130��6�   $	��780��6�    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    .+�5      �� $
��Nom:��6   $��0��6#   $
��Left=�63   $��3q�6N   $��0��6Y   $��Center=�6f   �� 5      -   5         ��Name$ firstnameTextBox��5      $��1��60   $
��Left=�6@   $��23��6[   $��
3,5,-540,5q�6g   $��0��6{   $��Center=�6�   $	��667��6  ��6�   �� *	Firstname+ �� Mode$ TwoWay=�	 �� NotifyOnValidationError	 . 
 �� ValidatesOnExceptions
 . 6  �� 5      $��Prenom:��6   $��0��6&   $
��Left=�66   $��3q�6Q   $��1��6\   $��Center=�6i   �� 5      -   5        $ lastnameTextBox��5      $��1��6/   $
��Left=�6?   $��23��6Z   $��
3,5,-541,5q�6f   $��1��6z   $��Center=�6�   $	��667��6  ��6�   �� *
Lastname+$ TwoWay=�	 . 
 . 6  �� 5      $��Mail:��6   $��0��6$   $
��Left=�64   $��3q�6O   $��2��6Z   $��Center=�6g   �� 5       -   5        $ mailTextBox��5       $��1��6+   $
��Left=�6;   $��24��6V   $��
3,4,-542,4q�6b   $��2��6v   $��Center=�6�   $	��667��6�   ��6�   �� *Mail+$ TwoWay=�	 . 
 . 6�   �� 5!      $��Téléphone:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��3��6_   $��Center=�6l   �� 5"      -   5        $ phoneNumberTextBox��5"      $��1��62   $
��Left=�6B   $��24��6]   $��
3,4,-543,4q�6i   $��3��6}   $��Center=�6�   $	��667��6	  ��6�   �� *PhoneNumber+$ TwoWay=�	 . 
 . 6	  5#      �� 5$   
   -   5        $��BtnSend��5$   '   $��Enregistrer��6   $
��Left=�66   $��194,256,0,0q�6Q   $	��Top=�6f   $	��164��6~   $��37��6�   6�   �� 5%   
   -   5        $��	BtnCancel��5%   #   $��Annuler��6   $
��Left=�65   $��457,256,0,0q�6P   $	��Top=�6e   $	��164��6}   $��37��6�   6�   5&      5'      