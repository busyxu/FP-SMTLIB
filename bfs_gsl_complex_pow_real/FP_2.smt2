(declare-fun x1_ack!85 () (_ BitVec 64))
(declare-fun y1_ack!83 () (_ BitVec 64))
(declare-fun x_ack!84 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!85) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) y1_ack!83) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!84) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
