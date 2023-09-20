(declare-fun b_ack!3002 () (_ BitVec 64))
(declare-fun a_ack!3003 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3002) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3003) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!3002) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!3003) ((_ to_fp 11 53) #x408f400000000000)))
(assert (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                        ((_ to_fp 11 53) b_ack!3002)
                        ((_ to_fp 11 53) b_ack!3002)))
        ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
