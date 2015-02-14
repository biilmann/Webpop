<pop:form enctype="multipart/form-data" id="upload-form" name="upload-form" method="post" mailto="viv@lumina.net.nz" mailsubject="Miners Inline Hockey | New upload form submission">
  
  <div class="row">
    
    <div class="columns">
      <h3>Send us the news!</h3>
    </div>
  
    <div class="large-6 columns">
      <label for="name">Your Name (required)</label>
      <input required name="name" type="text" id="name" class="input-text" />
    </div>
    
    <div class="large-6 columns">
      <label for="email">Your Email (required)</label>
      <input required name="email" id="email" type="email" class="input-text" />
    </div>
    
    <div class="columns">
     
      <h4>Paste in your newsy blurb below:</h4>
  
      <p>
        <textarea name="message" id="message"></textarea>
      </p>
  
      <h4>Attach photo(s) or PDF file(s):</h4>
  
      <p>
        <input type="file" name="file-1" accept="application/pdf,image/*"/>
        <input type="file" name="file-2" accept="application/pdf,image/*"/>
        <input type="file" name="file-3" accept="application/pdf,image/*"/>
      </p>
      
    </div>
      
    <div class="columns" id="feedback-container">
        <pop:success>
          <div class="successful form-feedback">
            <h3>Thanks!</h3>
            <p>That form has been sent. We will get back to you soon.<br />
            <strong>Miners Inline Hockey</strong></p>
          </div>
        </pop:success>
        <pop:error>
          <div class="alert-box error form-feedback">Oops! Sorry there was an error!</div>
        </pop:error>
    </div>
    
    <div class="small-4 medium-2 large-2 columns">
      <p>
        <img id="loader-icon" src="/img/misc/loader-icon.gif"/>
      </p>
    </div>
    
    <div class="small-4 medium-8 large-8 columns end">
      <p>
        <button id="send-form" type="submit" class="medium button">&nbsp; Send &nbsp;</button>
      </p>
    </div>
    
  </div>
  
</pop:form>

<a class="close-reveal-modal">&#215;</a>
