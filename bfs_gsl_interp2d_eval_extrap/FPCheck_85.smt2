(declare-fun x1_ack!861 () (_ BitVec 64))
(declare-fun x0_ack!868 () (_ BitVec 64))
(declare-fun y0_ack!862 () (_ BitVec 64))
(declare-fun x_ack!866 () (_ BitVec 64))
(declare-fun y_ack!867 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!864 () (_ BitVec 64))
(declare-fun z3_ack!865 () (_ BitVec 64))
(declare-fun z0_ack!863 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!868) ((_ to_fp 11 53) x1_ack!861))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!862) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!866) ((_ to_fp 11 53) x0_ack!868))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!866) ((_ to_fp 11 53) x1_ack!861)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!867) ((_ to_fp 11 53) y0_ack!862))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!867) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!866)
                           ((_ to_fp 11 53) x0_ack!868))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!861)
                           ((_ to_fp 11 53) x0_ack!868))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!867)
                           ((_ to_fp 11 53) y0_ack!862))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!862)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!863)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!865)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!864))))
  (FPCHECK_FADD_OVERFLOW (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
