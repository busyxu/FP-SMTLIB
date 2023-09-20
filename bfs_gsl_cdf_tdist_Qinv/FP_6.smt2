(declare-fun x_ack!57 () (_ BitVec 64))
(declare-fun mu_ack!56 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!57) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!57) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) mu_ack!56) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
