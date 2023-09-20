(declare-fun x1_ack!1074 () (_ BitVec 64))
(declare-fun x0_ack!1082 () (_ BitVec 64))
(declare-fun y0_ack!1075 () (_ BitVec 64))
(declare-fun x_ack!1080 () (_ BitVec 64))
(declare-fun y_ack!1081 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z2_ack!1078 () (_ BitVec 64))
(declare-fun z1_ack!1077 () (_ BitVec 64))
(declare-fun z3_ack!1079 () (_ BitVec 64))
(declare-fun z0_ack!1076 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1082) ((_ to_fp 11 53) x1_ack!1074))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1075) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1080) ((_ to_fp 11 53) x0_ack!1082))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1080) ((_ to_fp 11 53) x1_ack!1074))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1081) ((_ to_fp 11 53) y0_ack!1075))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1081) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1080) ((_ to_fp 11 53) x0_ack!1082))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1080) ((_ to_fp 11 53) x1_ack!1074)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1081) ((_ to_fp 11 53) y0_ack!1075))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1081) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1074)
                       ((_ to_fp 11 53) x0_ack!1082))
               ((_ to_fp 11 53) x0_ack!1082))
       ((_ to_fp 11 53) x1_ack!1074)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1074)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1074)
                       ((_ to_fp 11 53) x0_ack!1082)))
       ((_ to_fp 11 53) x0_ack!1082)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1075))
               ((_ to_fp 11 53) y0_ack!1075))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1075)))
       ((_ to_fp 11 53) y0_ack!1075)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!1076)
                  ((_ to_fp 11 53) z3_ack!1079))
          ((_ to_fp 11 53) z1_ack!1077))
  z2_ack!1078))

(check-sat)
(exit)
