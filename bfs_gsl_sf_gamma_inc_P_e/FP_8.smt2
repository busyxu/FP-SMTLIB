(declare-fun a_ack!110 () (_ BitVec 64))
(declare-fun b_ack!109 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!110) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!109) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!109) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!109) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!109)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!110)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!110) ((_ to_fp 11 53) #x412e848000000000)))

(check-sat)
(exit)
