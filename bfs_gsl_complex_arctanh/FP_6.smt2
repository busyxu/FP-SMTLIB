(declare-fun y_ack!58 () (_ BitVec 64))
(declare-fun x_ack!59 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) y_ack!58) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) x_ack!59) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!59) ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
