(declare-fun c_ack!64 () (_ BitVec 64))
(declare-fun a_ack!65 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x40762e42fefa39ef))))

(check-sat)
(exit)
