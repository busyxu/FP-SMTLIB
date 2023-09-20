(declare-fun a_ack!4 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!4) ((_ to_fp 11 53) #x4039000000000000)))

(check-sat)
(exit)
