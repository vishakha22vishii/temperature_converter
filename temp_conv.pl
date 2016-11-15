#!/usr/bin/perl
use strict;
use warnings;
print "Enter the temperature: ";
my $temp = <STDIN>;
chomp($temp);
print "Enter the Conversion to be performed:F-C ";
print "C-F";
print "C-K";
print "K-C";
my $conv = <STDIN>;
chomp($conv);
my $cel;
my $fah;
if ($conv eq 'F-C')
{
 $cel = ($temp - 32) * 5/9;
 print "Temperature from $temp degree Fahrenheit is $cel degree Celsius";
}
if ($conv eq 'C-F')
{
 $fah = (9 * $temp/5) + 32;
 print "Temperature from $temp degree Celsius is $fah degree Fahrenheit"; 
}
use Win32::GUI();  # Version 1.06 from CPAN http://a$main->lvinalexander.com/perl/edu/articles/pl010015/
use DBI;
#!/usr/bin/perl
use strict;
use warnings;
print "Enter the temperature in first textbox: ";
my $conv = <STDIN>;
chomp($conv);
my $cel;
my $fah;
my $kel;
my $temp;
my $main = Win32::GUI::Window->new(
  -name   => 'Main',
  -width  => 485, 
  -height => 550,
  -title  => $0
);



   my $font = Win32::GUI::Font->new(
                -name => "Comic Sans MS", 
                -size => 14,
        );
   my $font1 = Win32::GUI::Font->new(
                -name => "Comic Sans MS", 
                -size => 18,

        );
   push (@{my $tmp},$main->AddLabel(
      -name => "Title",
      -align => "center",
      -font => $font1,
      -pos => [ 50, 10 ],
      -size => [ 300, 35 ],
      -text => "Temperature Conversion",
      -visible => '1',
            -background => [255,255,255],
            -foreground => [0,0,0],
));
push (@{my $tmp},$main->AddLabel(
      -name => "Output",
      -align => "center",
      -font => $font1,
      -pos => [ 150, 200 ],
      -size => [ 100, 35 ],
      #-text => "To-DO Application",
      -visible => '1',
            -background => [255,255,255],
            -foreground => [0,0,0],
      ));
 
$main->AddTextfield(
        -name   => "Entered",
        -left   => 150,
        -top    => 80,
        -width  => 100,
        -height => 25,

);

#$main->AddTextfield(
 #       -name   => "Calculated",
  #      -left   => 150,
   #     -top    => 200,
    #    -width  => 100,
     #   -height => 25,

#);
 $main->AddButton(
                -name => "Button1",
                -text => "C->F",
                -font => $font,
                -pos  => [ 50, 120 ],
);
 $main->AddButton(
                -name => "Button2",
                -text => "C->K",
                -font => $font,
                -pos  => [ 100, 120 ],
); $main->AddButton(
                -name => "Button3",
                -text => "K->C",
                -font => $font,
                -pos  => [ 150, 120 ],
); $main->AddButton(
                -name => "Button4",
                -text => "K->F",
                -font => $font,
                -pos  => [ 200, 120 ],
); $main->AddButton(
                -name => "Button5",
                -text => "F->C",
                -font => $font,
                -pos  => [ 250, 120 ],
); $main->AddButton(
                -name => "Button6",
                -text => "F->K",
                -font => $font,
                -pos  => [ 300, 120 ],
);
$main->Show;
Win32::GUI->Dialog();   # Enter message loop
exit;
 sub Button1_Click {  $temp = $main->Entered->Text(); $|=1;
                       $fah = (9 * $temp/5) + 32;
                      $main->Output->Text() = $fah; $|=1;
                      $main->Entered->Clear();
                      
}
 sub Button2_Click {  $temp = $main->Entered->Text(); $|=1;
                      $kel = $temp + 273.15;
                      $main->Output->Text() = $kel; $|=1;
                      $main->Entered->Clear();
}
 sub Button3_Click {  $temp = $main->Entered->Text(); $|=1;
                      $cel = $temp - 273.15; 
                      #$main->Output->Text() = $cel; $|=1;
                      print "Hello, world, from $fah.\n";
                      $main->Entered->Clear();
} 
sub Button4_Click {   $temp = $main->Entered->Text(); $|=1;
                      $fah = $temp + 459.67; 
                      $main->Output->Text() = $fah; $|=1;
                      $main->Entered->Clear();
} 
sub Button5_Click {   $temp = $main->Entered->Text(); $|=1;
                      $cel = ($temp - 32) * 5/9;
                      $main->Output->Text() = $cel; $|=1;
                      $main->Entered->Clear();
} 
sub Button6_Click {  $main->lv->Clear();
                      $temp = $main->Entered->Text(); $|=1;
                      $kel = ($temp + 459.67)* 5/9;
                      $main->Output->Text() = $kel; $|=1;
                      $main->Entered->Clear();
}
