(declare-fun x_ack!238 () (_ BitVec 64))
(declare-fun y_ack!237 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!238) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!238))
        (fp.abs ((_ to_fp 11 53) y_ack!237))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!238) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!237) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) y_ack!237))
        ((_ to_fp 11 53) #x6016a09e667f3bcc)))

(check-sat)
(exit)
