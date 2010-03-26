class TempEmailsController < ApplicationController
  # GET /temp_emails
  # GET /temp_emails.xml
  def index
    @temp_emails = TempEmail.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @temp_emails }
    end
  end

  # GET /temp_emails/1
  # GET /temp_emails/1.xml
  def show
    @temp_email = TempEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @temp_email }
    end
  end

  # GET /temp_emails/new
  # GET /temp_emails/new.xml
  def new
    @temp_email = TempEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @temp_email }
    end
  end

  # GET /temp_emails/1/edit
  def edit
    @temp_email = TempEmail.find(params[:id])
  end

  # POST /temp_emails
  # POST /temp_emails.xml
  def create
    @temp_email = TempEmail.new(params[:temp_email])

    respond_to do |format|
      if @temp_email.save
        flash[:notice] = 'TempEmail was successfully created.'
        format.html { redirect_to(@temp_email) }
        format.xml  { render :xml => @temp_email, :status => :created, :location => @temp_email }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @temp_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /temp_emails/1
  # PUT /temp_emails/1.xml
  def update
    @temp_email = TempEmail.find(params[:id])

    respond_to do |format|
      if @temp_email.update_attributes(params[:temp_email])
        flash[:notice] = 'TempEmail was successfully updated.'
        format.html { redirect_to(@temp_email) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @temp_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /temp_emails/1
  # DELETE /temp_emails/1.xml
  def destroy
    @temp_email = TempEmail.find(params[:id])
    @temp_email.destroy

    respond_to do |format|
      format.html { redirect_to(temp_emails_url) }
      format.xml  { head :ok }
    end
  end
end
