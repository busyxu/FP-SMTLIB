(declare-fun x1_ack!1000 () (_ BitVec 64))
(declare-fun x0_ack!1008 () (_ BitVec 64))
(declare-fun y0_ack!1001 () (_ BitVec 64))
(declare-fun x_ack!1006 () (_ BitVec 64))
(declare-fun y_ack!1007 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!1004 () (_ BitVec 64))
(declare-fun z1_ack!1003 () (_ BitVec 64))
(declare-fun z3_ack!1005 () (_ BitVec 64))
(declare-fun z0_ack!1002 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1008) ((_ to_fp 11 53) x1_ack!1000))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1001) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1006) ((_ to_fp 11 53) x0_ack!1008))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1006) ((_ to_fp 11 53) x1_ack!1000)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1007) ((_ to_fp 11 53) y0_ack!1001))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1007) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1006)
                           ((_ to_fp 11 53) x0_ack!1008))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1000)
                           ((_ to_fp 11 53) x0_ack!1008))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!1007)
                           ((_ to_fp 11 53) y0_ack!1001))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!1001)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!1002)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!1005)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!1003))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!1004))))))

(check-sat)
(exit)
