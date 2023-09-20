(declare-fun x_ack!7 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) x_ack!7) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!7) ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
