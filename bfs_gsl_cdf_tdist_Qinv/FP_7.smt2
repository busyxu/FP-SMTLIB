(declare-fun x_ack!69 () (_ BitVec 64))
(declare-fun mu_ack!68 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!69) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!69) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!68) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) mu_ack!68) ((_ to_fp 11 53) #x4000000000000000)))

(check-sat)
(exit)
