(declare-fun c_ack!142 () (_ BitVec 64))
(declare-fun a_ack!143 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!143) ((_ to_fp 11 53) #x40762e42fefa39ef))))

(check-sat)
(exit)
