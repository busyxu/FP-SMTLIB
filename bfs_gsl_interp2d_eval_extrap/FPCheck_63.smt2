(declare-fun x1_ack!602 () (_ BitVec 64))
(declare-fun x0_ack!607 () (_ BitVec 64))
(declare-fun y0_ack!603 () (_ BitVec 64))
(declare-fun x_ack!605 () (_ BitVec 64))
(declare-fun y_ack!606 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!604 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!607) ((_ to_fp 11 53) x1_ack!602))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!603) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!605) ((_ to_fp 11 53) x0_ack!607))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!605) ((_ to_fp 11 53) x1_ack!602)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!606) ((_ to_fp 11 53) y0_ack!603))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!606) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!605)
                                   ((_ to_fp 11 53) x0_ack!607))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!602)
                                   ((_ to_fp 11 53) x0_ack!607)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!606)
                                   ((_ to_fp 11 53) y0_ack!603))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!603))))))
  (FPCHECK_FMUL_ACCURACY (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!604)))

(check-sat)
(exit)
