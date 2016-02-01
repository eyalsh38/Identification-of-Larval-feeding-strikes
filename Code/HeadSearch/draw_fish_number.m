function fdataCurr_numbered = draw_fish_number(fdataCurr, mouth_x, mouth_y,w,h,params, segment_num)

    add_segment_num = 1;
    fdataCurr_numbered=0;
    
    if add_segment_num
        idx_offset = 0; % set fish_idx text above segment_idx text
    else
        idx_offset=10; % set fish_idx text in the middle
    end

    if params.draw_level==1 || params.draw_level==3 || params.draw_level==2
        textstring = sprintf('%d',params.fish_idx);
        position = [mouth_x  mouth_y+idx_offset];
        box_color = 'yellow';
        font_size = 12;
        fdataCurr_numbered = ...
            insertText(fdataCurr,...
            position,textstring,...
            'AnchorPoint','LeftBottom',...
            'FontSize',font_size,...
            'BoxColor',box_color);
        
       if add_segment_num 
            textstring = sprintf('%d',segment_num);
            position = [mouth_x  mouth_y+idx_offset+uint32(1.3*font_size)];
            box_color = 'red';
            fdataCurr_numbered = ...
                insertText(fdataCurr_numbered,...
                position,textstring,...
                'AnchorPoint','LeftBottom',...
                'FontSize',font_size,...
                'BoxColor',box_color);
       end
        
        textstring = 'Fish index';
        position = [w/2 - 40  h];
        box_color = 'yellow';
        fdataCurr_numbered = ...
            insertText(fdataCurr_numbered,...
            position,textstring,...
            'AnchorPoint','LeftBottom',...
            'FontSize',font_size,...
            'BoxColor',box_color);
        
        if add_segment_num
            textstring = 'Segment index';
            position = [w/2 + 40  h];
            box_color = 'red';
            fdataCurr_numbered = ...
                insertText(fdataCurr_numbered,...
                position,textstring,...
                'AnchorPoint','LeftBottom',...
                'FontSize',font_size,...
                'BoxColor',box_color);
        end
    end
    
end