(declare-fun a_ack!2747 () (_ BitVec 64))
(declare-fun b_ack!2746 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2746))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!2747))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!2747))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!2746))
               ((_ to_fp 11 53) #x3fe62e42fefa39ef))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2746) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2747) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2747)
                       ((_ to_fp 11 53) b_ack!2746))
               ((_ to_fp 11 53) a_ack!2747))
       ((_ to_fp 11 53) b_ack!2746)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2747)
                       ((_ to_fp 11 53) b_ack!2746))
               ((_ to_fp 11 53) b_ack!2746))
       ((_ to_fp 11 53) a_ack!2747)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2747)
               ((_ to_fp 11 53) b_ack!2746))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2746))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!2747)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2747) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!2746))
               ((_ to_fp 11 53) #x3fe62e42fefa39ef))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2747) ((_ to_fp 11 53) #x4065600000000000)))
(assert (FPCHECK_FADD_ACCURACY a_ack!2747 b_ack!2746))

(check-sat)
(exit)
