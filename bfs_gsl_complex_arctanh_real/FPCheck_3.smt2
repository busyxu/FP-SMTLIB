(declare-fun x_ack!6 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!6) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x_ack!6) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
