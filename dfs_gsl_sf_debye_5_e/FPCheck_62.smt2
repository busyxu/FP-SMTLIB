(declare-fun a_ack!112 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!112) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!112) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!112) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!112) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!112) ((_ to_fp 11 53) #x4086232bdd7abcd2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x405e000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           ((_ to_fp 11 53) a_ack!112))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x404e000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!112)
                           ((_ to_fp 11 53) a_ack!112)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x405e000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           ((_ to_fp 11 53) a_ack!112))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x404e000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!112)
                           ((_ to_fp 11 53) a_ack!112)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x405e000000000000)
                                   ((_ to_fp 11 53) a_ack!112)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x404e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!112)
                                   ((_ to_fp 11 53) a_ack!112)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!112)
                                   ((_ to_fp 11 53) a_ack!112)))
                   ((_ to_fp 11 53) a_ack!112))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x405e000000000000)
                                   ((_ to_fp 11 53) a_ack!112)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x404e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!112)
                                   ((_ to_fp 11 53) a_ack!112)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!112)
                                   ((_ to_fp 11 53) a_ack!112)))
                   ((_ to_fp 11 53) a_ack!112))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x405e000000000000)
                                   ((_ to_fp 11 53) a_ack!112)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x404e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!112)
                                   ((_ to_fp 11 53) a_ack!112)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!112)
                                   ((_ to_fp 11 53) a_ack!112)))
                   ((_ to_fp 11 53) a_ack!112)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!112)
                                   ((_ to_fp 11 53) a_ack!112))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!112)
                                   ((_ to_fp 11 53) a_ack!112))))))
  (FPCHECK_FADD_UNDERFLOW (fp.add roundNearestTiesToEven a!1 a!2) a!3)))

(check-sat)
(exit)
