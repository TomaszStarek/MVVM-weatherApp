   M S B A M L   `   `   `  ����E  AWeatherApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:WeatherApp.ViewModelWeatherApp.ViewModel  5   	   Y1clr-namespace:WeatherApp.ViewModel.ValueConverter#WeatherApp.ViewModel.ValueConverter  5   	   1clr-namespace:WeatherApp.ViewWeatherApp.View  5   	   #    WeatherApp.View.WeatherWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1vm"clr-namespace:WeatherApp.ViewModel     5   	   G	converter1clr-namespace:WeatherApp.ViewModel.ValueConverter     5   	   /localclr-namespace:WeatherApp.View     5   	     � Title$  WeatherWindow��5
   	   $	��450��6   $	��800��6,    � 	Resources 5      $   WeatherApp.ViewModel.WeatherVM   vm=  7WeatherApp.ViewModel.ValueConverter.BoolToRainConverter  
boolToRain��%:   &	        &	        5   
   6     5   
   6(   5      .��5      �  � DataContext# [  6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��20q�6   .+�5      �� $��Search for a city:��6   �� 5      -   5        $��InputTextBox��5      $��27��5      ��5      �� *Query+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�.��5   "    J� InputBindings 5      �� 5      
 �� Key$ Enter��5   !    �� Command 5   !   �� *SearchCommand+	 �� CommandParameter	 5   !   �� *Query+5   !   .��5    )   5!      �� 5"      $
��0,10q�6   $��Search��5%      ��5#      �� *SearchCommand+��5$      �� *Query+5%      �� 5&      ��6   �� *Cities+
 �� SelectedValue
 5'      �� *SelectedCity+��5(      �� 5)      .R�5*      � .+�5+      �� ��6(   �� *LocalizedName+5,      5-      5/      50      � 51   
   $��1��6   ���#4392f1 53      �� *CurrrentConditions+ � ColumnDefinitions 54      �� 55      $��* �6#   �� 56      $
��Auto �6#   .+�58      �� $
��0,10q�6   .+�59      �� # [  6   ���#f4f4f8$��20(�5<      $
��20,0q�5=      ��5:      �� *SelectedCity.LocalizedName+5=      �� 5>      ���#f4f4f8$��18(�5@      $
��20,0q�5A      ��5>      �� *WeatherText+5A      �� 5B      ���#f4f4f8$��18(�5D      $
��20,0q�5E      ��5B      �� *HasPrecipitation+ �� 	Converter# [ 5E      5F      �� 5G      $��1��6   $��Center=�5H      ���#f4f4f8$��30(�5K      $
��20,0q�5L      ��5I      �� *Temperature.Metric.Value+ �� StringFormat$ {0}°C��5L      5M      5N      5O      