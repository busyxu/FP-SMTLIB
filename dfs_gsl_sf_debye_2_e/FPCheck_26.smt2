(declare-fun a_ack!47 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x4086232bdd7abcd2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!47)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!47)
                                   ((_ to_fp 11 53) a_ack!47)))
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!47)
                 ((_ to_fp 11 53) a_ack!47))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!47)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!47)
                                   ((_ to_fp 11 53) a_ack!47)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!47)
                           ((_ to_fp 11 53) a_ack!47)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!47)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!47)
                           ((_ to_fp 11 53) a_ack!47)))))
  (FPCHECK_FMUL_OVERFLOW #x4000000000000000 a!1)))

(check-sat)
(exit)
