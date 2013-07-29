require 'ruboto/activity'
require 'ruboto/widget'

ruboto_import_widgets :LinearLayout, :Button, :ListView

$buttons = ["Start Monitoring", "Stop Monitoring", "Options"]

$irb.start_ruboto_activity do
  def on_create (bundle)
		super
		self.title  = "SMS Regex Alerter"
		$main_actiity = self

		setContentView(
      	linear_layout(:orientation => LinearLayout::VERTICAL) do
        	linear_layout do
       			button :text => $buttons[0],  :on_click_listener => proc{|v| start_monitoring()}
       			button :text => $buttons[1],  :on_click_listener => proc{|v| stop_monitoring()}
         	end
      	end
      )
  	end

  	def start_monitoring()
  		print "Startng to Watch..."
  		puts "done"
  	end

  	def stop_monitoring()
  		print "Stopping to Watch..."
  		puts "done"
  	end
end	
