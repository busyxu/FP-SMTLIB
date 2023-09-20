(declare-fun key_ack!4165 () (_ BitVec 32))
(declare-fun limit_ack!4164 () (_ BitVec 64))
(declare-fun epsabs_ack!4163 () (_ BitVec 64))
(declare-fun b_ack!4162 () (_ BitVec 64))
(declare-fun a_ack!4166 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!4165 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4165)))
(assert (= #x00000001 key_ack!4165))
(assert (not (bvult #x00000000000003e8 limit_ack!4164)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4163)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4166)
                                   ((_ to_fp 11 53) b_ack!4162))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4162)
                                   ((_ to_fp 11 53) a_ack!4166)))
                   ((_ to_fp 11 53) #x3febacf827b9bb3e))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4166)
                    ((_ to_fp 11 53) b_ack!4162)))
    a!1)))

(check-sat)
(exit)
