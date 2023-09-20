(declare-fun x1_ack!1102 () (_ BitVec 64))
(declare-fun x0_ack!1107 () (_ BitVec 64))
(declare-fun x2_ack!1103 () (_ BitVec 64))
(declare-fun xx_ack!1106 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1104 () (_ BitVec 64))
(declare-fun y2_ack!1105 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1107) ((_ to_fp 11 53) x1_ack!1102)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1102) ((_ to_fp 11 53) x2_ack!1103)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1102)
                       ((_ to_fp 11 53) x0_ack!1107))
               ((_ to_fp 11 53) x0_ack!1107))
       ((_ to_fp 11 53) x1_ack!1102)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1102)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1102)
                       ((_ to_fp 11 53) x0_ack!1107)))
       ((_ to_fp 11 53) x0_ack!1107)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1103)
                       ((_ to_fp 11 53) x1_ack!1102))
               ((_ to_fp 11 53) x1_ack!1102))
       ((_ to_fp 11 53) x2_ack!1103)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1103)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1103)
                       ((_ to_fp 11 53) x1_ack!1102)))
       ((_ to_fp 11 53) x1_ack!1102)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1102)
                    ((_ to_fp 11 53) x0_ack!1107))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1103)
                    ((_ to_fp 11 53) x1_ack!1102))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1106) ((_ to_fp 11 53) x0_ack!1107))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1106) ((_ to_fp 11 53) x2_ack!1103))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1106) ((_ to_fp 11 53) x0_ack!1107))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1106) ((_ to_fp 11 53) x1_ack!1102)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1102) ((_ to_fp 11 53) xx_ack!1106))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1103)
               ((_ to_fp 11 53) x1_ack!1102))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY y2_ack!1105 y1_ack!1104))

(check-sat)
(exit)
