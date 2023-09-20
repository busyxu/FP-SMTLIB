(declare-fun x1_ack!1092 () (_ BitVec 64))
(declare-fun x0_ack!1100 () (_ BitVec 64))
(declare-fun y0_ack!1093 () (_ BitVec 64))
(declare-fun x_ack!1098 () (_ BitVec 64))
(declare-fun y_ack!1099 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!1096 () (_ BitVec 64))
(declare-fun z1_ack!1095 () (_ BitVec 64))
(declare-fun z3_ack!1097 () (_ BitVec 64))
(declare-fun z0_ack!1094 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1100) ((_ to_fp 11 53) x1_ack!1092))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1093) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1098) ((_ to_fp 11 53) x0_ack!1100))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1098) ((_ to_fp 11 53) x1_ack!1092))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1099) ((_ to_fp 11 53) y0_ack!1093))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1099) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1098) ((_ to_fp 11 53) x0_ack!1100))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1098) ((_ to_fp 11 53) x1_ack!1092)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1099) ((_ to_fp 11 53) y0_ack!1093))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1099) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1092)
                       ((_ to_fp 11 53) x0_ack!1100))
               ((_ to_fp 11 53) x0_ack!1100))
       ((_ to_fp 11 53) x1_ack!1092)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1092)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1092)
                       ((_ to_fp 11 53) x0_ack!1100)))
       ((_ to_fp 11 53) x0_ack!1100)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1093))
               ((_ to_fp 11 53) y0_ack!1093))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1093)))
       ((_ to_fp 11 53) y0_ack!1093)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!1094)
                  ((_ to_fp 11 53) z3_ack!1097))
          ((_ to_fp 11 53) z1_ack!1095))
  z2_ack!1096))

(check-sat)
(exit)
