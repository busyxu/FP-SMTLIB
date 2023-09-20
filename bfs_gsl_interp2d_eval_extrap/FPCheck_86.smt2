(declare-fun x1_ack!877 () (_ BitVec 64))
(declare-fun x0_ack!884 () (_ BitVec 64))
(declare-fun y0_ack!878 () (_ BitVec 64))
(declare-fun x_ack!882 () (_ BitVec 64))
(declare-fun y_ack!883 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!880 () (_ BitVec 64))
(declare-fun z3_ack!881 () (_ BitVec 64))
(declare-fun z0_ack!879 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!884) ((_ to_fp 11 53) x1_ack!877))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!878) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!882) ((_ to_fp 11 53) x0_ack!884))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!882) ((_ to_fp 11 53) x1_ack!877)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!883) ((_ to_fp 11 53) y0_ack!878))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!883) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!882)
                           ((_ to_fp 11 53) x0_ack!884))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!877)
                           ((_ to_fp 11 53) x0_ack!884))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!883)
                           ((_ to_fp 11 53) y0_ack!878))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!878)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!879)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!881)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!880))))
  (FPCHECK_FADD_UNDERFLOW (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
