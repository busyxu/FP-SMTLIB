(declare-fun x1_ack!820 () (_ BitVec 64))
(declare-fun x0_ack!828 () (_ BitVec 64))
(declare-fun y0_ack!821 () (_ BitVec 64))
(declare-fun x_ack!826 () (_ BitVec 64))
(declare-fun y_ack!827 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!824 () (_ BitVec 64))
(declare-fun z1_ack!823 () (_ BitVec 64))
(declare-fun z3_ack!825 () (_ BitVec 64))
(declare-fun z0_ack!822 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!828) ((_ to_fp 11 53) x1_ack!820))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!821) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!826) ((_ to_fp 11 53) x0_ack!828))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!826) ((_ to_fp 11 53) x1_ack!820))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!827) ((_ to_fp 11 53) y0_ack!821))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!827) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!826) ((_ to_fp 11 53) x0_ack!828))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!826) ((_ to_fp 11 53) x1_ack!820))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!827) ((_ to_fp 11 53) y0_ack!821))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!827) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!820)
                       ((_ to_fp 11 53) x0_ack!828))
               ((_ to_fp 11 53) x0_ack!828))
       ((_ to_fp 11 53) x1_ack!820)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!820)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!820)
                       ((_ to_fp 11 53) x0_ack!828)))
       ((_ to_fp 11 53) x0_ack!828)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!821))
               ((_ to_fp 11 53) y0_ack!821))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!821)))
       ((_ to_fp 11 53) y0_ack!821)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!820)
                                   ((_ to_fp 11 53) x0_ack!828)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!821)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!822)
                                   ((_ to_fp 11 53) z3_ack!825))
                           ((_ to_fp 11 53) z1_ack!823))
                   ((_ to_fp 11 53) z2_ack!824))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
