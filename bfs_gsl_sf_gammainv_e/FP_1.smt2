(declare-fun a_ack!4 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.leq ((_ to_fp 11 53) a_ack!4) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4) (CF_floor a_ack!4))))

(check-sat)
(exit)
