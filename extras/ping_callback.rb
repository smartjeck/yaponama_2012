#!/bin/env ruby
# encoding: utf-8
#
module PingCallback

  # TODO check заменил на after_commit
  #ActionController::Base.class_eval {
  #  def process(*)
  #    logger.debug 'Очистка Thread.current[:pinged] = false'
  #    Thread.current[:pinged] = false
  #    super
  #  end
  #}

  def self.included(base)
    base.instance_eval{
      after_save :ping_callback
      after_destroy :ping_callback
      after_commit :flush
    }

    # TODO check Закомментировал process, сейчас попробую используя after_commit
    def flush
      logger.debug 'Очистка Thread.current[:pinged] = false'
      Thread.current[:pinged] = false
    end


    def ping_callback
      # TODO Добавить товары и прочие ассоциации
      #
      logger.info "Текущее состояние Thread.current[:pinged] #{Thread.current[:pinged]}"
      if self.class == User 
        unless self.frozen?
          unless Thread.current[:pinged]
            Thread.current[:pinged] = true
            if self.ping
              self.ping.touch
            else
              self.create_ping
            end
          end
        end
      else
        if self.class.reflect_on_all_associations.map{|assoc| assoc.name}.include?(:user)
          if self.user && !self.user.frozen?
            unless Thread.current[:pinged]
              Thread.current[:pinged] = true
              if self.user.ping
                self.user.ping.touch
              else
                self.user.create_ping
              end
            end
          end

        elsif self.class.reflect_on_all_associations.map{|assoc| assoc.name}.include?(:car)
          if self.car.user && !self.car.frozen?
            unless Thread.current[:pinged]
              Thread.current[:pinged] = true
              if self.car.user.ping
                self.car.user.ping.touch
              else
                self.car.user.create_ping
              end
            end
          end

        elsif self.class.reflect_on_all_associations.map{|assoc| assoc.name}.include?(:order)
          if self.order.user && !self.order.frozen?
            unless Thread.current[:pinged]
              Thread.current[:pinged] = true
              if self.order.user.ping
                self.order.user.ping.touch
              else
                self.order.user.create_ping
              end
            end
          end
        end
      end
    end
  end
end
