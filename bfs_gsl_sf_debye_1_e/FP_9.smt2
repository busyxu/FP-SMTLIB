(declare-fun a_ack!102 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!102) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!102) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!102) ((_ to_fp 11 53) #x4041acdd632f662a)))

(check-sat)
(exit)
