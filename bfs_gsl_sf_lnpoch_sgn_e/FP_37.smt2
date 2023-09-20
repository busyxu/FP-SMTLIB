(declare-fun b_ack!407 () (_ BitVec 64))
(declare-fun a_ack!408 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!408) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!408)
               ((_ to_fp 11 53) b_ack!407))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!407))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!408)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!408) ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
