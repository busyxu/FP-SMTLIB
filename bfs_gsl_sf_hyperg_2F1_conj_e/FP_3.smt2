(declare-fun c_ack!15 () (_ BitVec 64))
(declare-fun d_ack!16 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!16))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!15) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
