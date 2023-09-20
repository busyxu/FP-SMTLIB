(declare-fun a_ack!974 () (_ BitVec 64))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!974))
       ((_ to_fp 11 53) #x3e60000000000000)))

(check-sat)
(exit)
