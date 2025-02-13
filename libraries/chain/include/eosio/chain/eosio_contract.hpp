#pragma once

#include <eosio/chain/types.hpp>
#include <eosio/chain/contract_types.hpp>

namespace eosio { namespace chain {

   class apply_context;

   /**
    * @defgroup native_action_handlers Native Action Handlers
    */
   ///@{
   void apply_led_newaccount(apply_context&);
   void apply_led_updateauth(apply_context&);
   void apply_led_deleteauth(apply_context&);
   void apply_led_linkauth(apply_context&);
   void apply_led_unlinkauth(apply_context&);

   /*
   void apply_led_postrecovery(apply_context&);
   void apply_led_passrecovery(apply_context&);
   void apply_led_vetorecovery(apply_context&);
   */

   void apply_led_setcode(apply_context&);
   void apply_led_setabi(apply_context&);

   void apply_led_canceldelay(apply_context&);
   ///@}  end action handlers

} } /// namespace eosio::chain
