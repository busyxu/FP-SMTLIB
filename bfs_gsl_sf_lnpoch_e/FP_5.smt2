(declare-fun a_ack!31 () (_ BitVec 64))
(declare-fun b_ack!30 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!31)
                     ((_ to_fp 11 53) b_ack!30))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!30) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!30))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!31)))))

(check-sat)
(exit)
