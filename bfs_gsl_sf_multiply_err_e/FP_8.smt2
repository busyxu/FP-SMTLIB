(declare-fun a_ack!152 () (_ BitVec 64))
(declare-fun c_ack!151 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!152) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!151) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!152))
             ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
