(declare-fun x1_ack!1103 () (_ BitVec 64))
(declare-fun x0_ack!1107 () (_ BitVec 64))
(declare-fun x2_ack!1104 () (_ BitVec 64))
(declare-fun b_ack!1106 () (_ BitVec 64))
(declare-fun a_ack!1105 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1107) ((_ to_fp 11 53) x1_ack!1103)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1103) ((_ to_fp 11 53) x2_ack!1104)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1103)
                       ((_ to_fp 11 53) x0_ack!1107))
               ((_ to_fp 11 53) x0_ack!1107))
       ((_ to_fp 11 53) x1_ack!1103)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1103)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1103)
                       ((_ to_fp 11 53) x0_ack!1107)))
       ((_ to_fp 11 53) x0_ack!1107)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1104)
                       ((_ to_fp 11 53) x1_ack!1103))
               ((_ to_fp 11 53) x1_ack!1103))
       ((_ to_fp 11 53) x2_ack!1104)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1104)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1104)
                       ((_ to_fp 11 53) x1_ack!1103)))
       ((_ to_fp 11 53) x1_ack!1103)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1103)
                    ((_ to_fp 11 53) x0_ack!1107))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1104)
                    ((_ to_fp 11 53) x1_ack!1103))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1105) ((_ to_fp 11 53) b_ack!1106))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1105) ((_ to_fp 11 53) x0_ack!1107))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1106) ((_ to_fp 11 53) x2_ack!1104))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1105) ((_ to_fp 11 53) b_ack!1106))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1105) ((_ to_fp 11 53) x0_ack!1107))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1105) ((_ to_fp 11 53) x1_ack!1103))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1106) ((_ to_fp 11 53) x0_ack!1107))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1106) ((_ to_fp 11 53) x1_ack!1103)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1103) ((_ to_fp 11 53) b_ack!1106))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1103)
                    ((_ to_fp 11 53) x0_ack!1107))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1105)
          ((_ to_fp 11 53) x0_ack!1107))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1105)
          ((_ to_fp 11 53) x0_ack!1107))))

(check-sat)
(exit)
