(declare-fun x1_ack!1106 () (_ BitVec 64))
(declare-fun x0_ack!1114 () (_ BitVec 64))
(declare-fun y0_ack!1107 () (_ BitVec 64))
(declare-fun x_ack!1112 () (_ BitVec 64))
(declare-fun y_ack!1113 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!1110 () (_ BitVec 64))
(declare-fun z1_ack!1109 () (_ BitVec 64))
(declare-fun z3_ack!1111 () (_ BitVec 64))
(declare-fun z0_ack!1108 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1114) ((_ to_fp 11 53) x1_ack!1106))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1107) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1112) ((_ to_fp 11 53) x0_ack!1114))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1112) ((_ to_fp 11 53) x1_ack!1106))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1113) ((_ to_fp 11 53) y0_ack!1107))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1113) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1112) ((_ to_fp 11 53) x0_ack!1114))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1112) ((_ to_fp 11 53) x1_ack!1106)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1113) ((_ to_fp 11 53) y0_ack!1107))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1113) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1106)
                       ((_ to_fp 11 53) x0_ack!1114))
               ((_ to_fp 11 53) x0_ack!1114))
       ((_ to_fp 11 53) x1_ack!1106)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1106)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1106)
                       ((_ to_fp 11 53) x0_ack!1114)))
       ((_ to_fp 11 53) x0_ack!1114)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1107))
               ((_ to_fp 11 53) y0_ack!1107))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1107)))
       ((_ to_fp 11 53) y0_ack!1107)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1106)
                                   ((_ to_fp 11 53) x0_ack!1114)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1107)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!1108)
                                   ((_ to_fp 11 53) z3_ack!1111))
                           ((_ to_fp 11 53) z1_ack!1109))
                   ((_ to_fp 11 53) z2_ack!1110))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
