(declare-fun x1_ack!1056 () (_ BitVec 64))
(declare-fun x0_ack!1064 () (_ BitVec 64))
(declare-fun y0_ack!1057 () (_ BitVec 64))
(declare-fun x_ack!1062 () (_ BitVec 64))
(declare-fun y_ack!1063 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!1060 () (_ BitVec 64))
(declare-fun z1_ack!1059 () (_ BitVec 64))
(declare-fun z3_ack!1061 () (_ BitVec 64))
(declare-fun z0_ack!1058 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1064) ((_ to_fp 11 53) x1_ack!1056))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1057) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1062) ((_ to_fp 11 53) x0_ack!1064))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1062) ((_ to_fp 11 53) x1_ack!1056))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1063) ((_ to_fp 11 53) y0_ack!1057))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1063) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1062) ((_ to_fp 11 53) x0_ack!1064))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1062) ((_ to_fp 11 53) x1_ack!1056)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1063) ((_ to_fp 11 53) y0_ack!1057))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1063) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1056)
                       ((_ to_fp 11 53) x0_ack!1064))
               ((_ to_fp 11 53) x0_ack!1064))
       ((_ to_fp 11 53) x1_ack!1056)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1056)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1056)
                       ((_ to_fp 11 53) x0_ack!1064)))
       ((_ to_fp 11 53) x0_ack!1064)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1057))
               ((_ to_fp 11 53) y0_ack!1057))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1057)))
       ((_ to_fp 11 53) y0_ack!1057)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!1058)
                  ((_ to_fp 11 53) z3_ack!1061))
          ((_ to_fp 11 53) z1_ack!1059))
  z2_ack!1060))

(check-sat)
(exit)
