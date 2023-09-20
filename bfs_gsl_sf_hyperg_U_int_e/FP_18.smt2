(declare-fun c_ack!371 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!371) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!371) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!371) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
