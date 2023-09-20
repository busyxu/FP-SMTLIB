(declare-fun x_ack!17 () (_ BitVec 64))
(declare-fun nu1_ack!16 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!17) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!17) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!16) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
