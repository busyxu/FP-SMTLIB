(declare-fun a_ack!65 () (_ BitVec 64))
(declare-fun b_ack!64 () (_ BitVec 64))
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!65)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!65)) (fp.abs ((_ to_fp 11 53) b_ack!64))))

(check-sat)
(exit)
