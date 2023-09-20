(declare-fun a_ack!454 () (_ BitVec 64))
(declare-fun b_ack!453 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!454) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!453) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!453) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!453) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!453)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!454)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!454) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!453)
                                  ((_ to_fp 11 53) a_ack!454))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!453)
                                  ((_ to_fp 11 53) a_ack!454)))
                  ((_ to_fp 11 53) a_ack!454))))
  (not a!1)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!454) ((_ to_fp 11 53) b_ack!453)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!454)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fc999999999999a)
               ((_ to_fp 11 53) b_ack!453))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!454) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!453)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!454)))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!453 a_ack!454))

(check-sat)
(exit)
