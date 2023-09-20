(declare-fun x1_ack!396 () (_ BitVec 64))
(declare-fun x0_ack!404 () (_ BitVec 64))
(declare-fun y0_ack!397 () (_ BitVec 64))
(declare-fun x_ack!402 () (_ BitVec 64))
(declare-fun y_ack!403 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!400 () (_ BitVec 64))
(declare-fun z1_ack!399 () (_ BitVec 64))
(declare-fun z3_ack!401 () (_ BitVec 64))
(declare-fun z0_ack!398 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!404) ((_ to_fp 11 53) x1_ack!396))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!397) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!402) ((_ to_fp 11 53) x0_ack!404))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!402) ((_ to_fp 11 53) x1_ack!396))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!403) ((_ to_fp 11 53) y0_ack!397))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!403) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!402) ((_ to_fp 11 53) x0_ack!404))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!402) ((_ to_fp 11 53) x1_ack!396))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!403) ((_ to_fp 11 53) y0_ack!397))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!403) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!396)
                                   ((_ to_fp 11 53) x0_ack!404)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!397)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!398)
                                   ((_ to_fp 11 53) z3_ack!401))
                           ((_ to_fp 11 53) z1_ack!399))
                   ((_ to_fp 11 53) z2_ack!400))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
