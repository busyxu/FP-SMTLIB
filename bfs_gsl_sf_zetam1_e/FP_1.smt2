(declare-fun a_ack!52 () (_ BitVec 64))
(assert (fp.leq ((_ to_fp 11 53) a_ack!52) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!52) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!52) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!52) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
