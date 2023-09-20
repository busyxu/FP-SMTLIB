(declare-fun y_ack!108 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!108) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
