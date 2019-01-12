class ControlWindow extends JFrame implements ActionListener{
  JButton rupButton, gupButton, bupButton, rdownButton, gdownButton, bdownButton, resetButton, colorButton;
  //JTextField textField;
  JPanel panel;
  
  final_processing_homework parentWindow;
  
  ControlWindow(final_processing_homework parentWindow){
    super("Control Window");
    this.parentWindow = parentWindow;
    this.setSize(350, 240);
    
    panel = new JPanel();
    panel.setLayout(null);
    
    
    rupButton = new JButton("▲");
    rupButton.setActionCommand("rupButton_Pushed");
    rupButton.addActionListener(this);
    rupButton.setBounds(50, 10, 50, 50);
    panel.add(rupButton);
    
    gupButton = new JButton("▲");
    gupButton.setActionCommand("gupButton_Pushed");
    gupButton.addActionListener(this);
    gupButton.setBounds(150, 10, 50, 50);
    panel.add(gupButton);
    
    bupButton = new JButton("▲");
    bupButton.setActionCommand("bupButton_Pushed");
    bupButton.addActionListener(this);
    bupButton.setBounds(250, 10, 50, 50);
    panel.add(bupButton);
    
    rdownButton = new JButton("▼");
    rdownButton.setActionCommand("rdownButton_Pushed");
    rdownButton.addActionListener(this);
    rdownButton.setBounds(50, 65, 50, 50);
    panel.add(rdownButton);
    
    gdownButton = new JButton("▼");
    gdownButton.setActionCommand("gdownButton_Pushed");
    gdownButton.addActionListener(this);
    gdownButton.setBounds(150, 65, 50, 50);
    panel.add(gdownButton);
    
    bdownButton = new JButton("▼");
    bdownButton.setActionCommand("bdownButton_Pushed");
    bdownButton.addActionListener(this);
    bdownButton.setBounds(250, 65, 50, 50);
    panel.add(bdownButton);
    
    
    resetButton = new JButton("top");
    resetButton.setActionCommand("resetButton_Pushed");
    resetButton.addActionListener(this);
    resetButton.setBounds(180, 150, 100, 50);
    panel.add(resetButton);
    
    colorButton = new JButton("color reset");
    colorButton.setActionCommand("colorButton_Pushed");
    colorButton.addActionListener(this);
    colorButton.setBounds(70, 150, 100, 50);
    panel.add(colorButton);
    
    
    
    //textField = new JTextField("");
    //panel.add(textField, BorderLayout.CENTER);   
    
   this.getContentPane().add(panel);
   this.setVisible(true);
  
  }
  
  @Override
  void actionPerformed(ActionEvent e){
   String actionCommand = e.getActionCommand();
   //textField.setText(actionCommand);
   parentWindow.eventsCalledFromControlWindow(actionCommand); 
  }
  
}
