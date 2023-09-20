(declare-fun x1_ack!176 () (_ BitVec 64))
(declare-fun x2_ack!175 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!176) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!175) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
