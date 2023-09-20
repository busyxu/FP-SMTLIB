(declare-fun a_ack!917 () (_ BitVec 64))
(declare-fun b_ack!916 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!916))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!917)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!916) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!917) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!917)
                    ((_ to_fp 11 53) b_ack!916))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
