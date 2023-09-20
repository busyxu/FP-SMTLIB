(declare-fun a_ack!65 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x4086232bdd7abcd2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4038000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4038000000000000)
                           ((_ to_fp 11 53) a_ack!65))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4028000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!65)
                           ((_ to_fp 11 53) a_ack!65)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4038000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4038000000000000)
                           ((_ to_fp 11 53) a_ack!65))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4028000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!65)
                           ((_ to_fp 11 53) a_ack!65)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4038000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4038000000000000)
                                   ((_ to_fp 11 53) a_ack!65)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!65)
                                   ((_ to_fp 11 53) a_ack!65)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!65)
                                   ((_ to_fp 11 53) a_ack!65)))
                   ((_ to_fp 11 53) a_ack!65))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4038000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4038000000000000)
                                   ((_ to_fp 11 53) a_ack!65)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!65)
                                   ((_ to_fp 11 53) a_ack!65)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!65)
                                   ((_ to_fp 11 53) a_ack!65)))
                   ((_ to_fp 11 53) a_ack!65))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4038000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4038000000000000)
                                   ((_ to_fp 11 53) a_ack!65)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!65)
                                   ((_ to_fp 11 53) a_ack!65)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!65)
                                   ((_ to_fp 11 53) a_ack!65)))
                   ((_ to_fp 11 53) a_ack!65))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!1 a!2)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!65)
                                   ((_ to_fp 11 53) a_ack!65))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!65)
                                   ((_ to_fp 11 53) a_ack!65))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4010000000000000) a!3)
    (CF_exp (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) a_ack!65)))))))

(check-sat)
(exit)
