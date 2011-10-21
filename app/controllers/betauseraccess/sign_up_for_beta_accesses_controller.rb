module Betauseraccess 
  class SignUpForBetaAccessesController < ApplicationController
    before_filter :isuseramoderator, :except=>[:new,:create,:thanks]
    
    def isuseramoderator
    	unless(IsCurrentUserModerator?)
    	  redirect_to root_path
    	end
    end	
  
    def thanks
    	 respond_to do |format|
        format.html
      end
    end
  
    # GET /sign_up_for_beta_accesses
    # GET /sign_up_for_beta_accesses.xml
    def index
      @sign_up_for_beta_accesses = SignUpForBetaAccess.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @sign_up_for_beta_accesses }
      end
    end
  
    # GET /sign_up_for_beta_accesses/1
    # GET /sign_up_for_beta_accesses/1.xml
    def show
      @sign_up_for_beta_access = SignUpForBetaAccess.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @sign_up_for_beta_access }
      end
    end
  
    # GET /sign_up_for_beta_accesses/new
    # GET /sign_up_for_beta_accesses/new.xml
    def new
      @sign_up_for_beta_access = SignUpForBetaAccess.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @sign_up_for_beta_access }
      end
    end
  
    # GET /sign_up_for_beta_accesses/1/edit
    def edit
      @sign_up_for_beta_access = SignUpForBetaAccess.find(params[:id])
    end
  
    # POST /sign_up_for_beta_accesses
    # POST /sign_up_for_beta_accesses.xml
    def create
      @sign_up_for_beta_access = SignUpForBetaAccess.new(params[:sign_up_for_beta_access])
  
      respond_to do |format|
        if @sign_up_for_beta_access.save
          format.html { redirect_to(@sign_up_for_beta_access, :notice => 'Sign up for beta access was successfully created.') }
          format.xml  { render :xml => @sign_up_for_beta_access, :status => :created, :location => @sign_up_for_beta_access }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @sign_up_for_beta_access.errors, :status => :unprocessable_entity }
        end
      end
    end
  
    # PUT /sign_up_for_beta_accesses/1
    # PUT /sign_up_for_beta_accesses/1.xml
    def update
      @sign_up_for_beta_access = SignUpForBetaAccess.find(params[:id])
  
      respond_to do |format|
        if @sign_up_for_beta_access.update_attributes(params[:sign_up_for_beta_access])
          format.html { redirect_to(@sign_up_for_beta_access, :notice => 'Sign up for beta access was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @sign_up_for_beta_access.errors, :status => :unprocessable_entity }
        end
      end
    end
  
    # DELETE /sign_up_for_beta_accesses/1
    # DELETE /sign_up_for_beta_accesses/1.xml
    def destroy
      @sign_up_for_beta_access = SignUpForBetaAccess.find(params[:id])
      @sign_up_for_beta_access.destroy
  
      respond_to do |format|
        format.html { redirect_to(sign_up_for_beta_accesses_url) }
        format.xml  { head :ok }
      end
    end
  end
end