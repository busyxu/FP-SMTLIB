(declare-fun x_ack!31 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!31))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!31))
            ((_ to_fp 11 53) #x3fe5368f08461f9f))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!31)) ((_ to_fp 11 53) #x4016a09e667f3bcd)))

(check-sat)
(exit)
