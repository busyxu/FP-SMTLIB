(declare-fun x1_ack!1202 () (_ BitVec 64))
(declare-fun x0_ack!1205 () (_ BitVec 64))
(declare-fun x2_ack!1203 () (_ BitVec 64))
(declare-fun xx_ack!1204 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1205) ((_ to_fp 11 53) x1_ack!1202)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1202) ((_ to_fp 11 53) x2_ack!1203)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1202)
                       ((_ to_fp 11 53) x0_ack!1205))
               ((_ to_fp 11 53) x0_ack!1205))
       ((_ to_fp 11 53) x1_ack!1202)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1202)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1202)
                       ((_ to_fp 11 53) x0_ack!1205)))
       ((_ to_fp 11 53) x0_ack!1205)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1203)
                       ((_ to_fp 11 53) x1_ack!1202))
               ((_ to_fp 11 53) x1_ack!1202))
       ((_ to_fp 11 53) x2_ack!1203)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1203)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1203)
                       ((_ to_fp 11 53) x1_ack!1202)))
       ((_ to_fp 11 53) x1_ack!1202)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1202)
                    ((_ to_fp 11 53) x0_ack!1205))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1203)
                    ((_ to_fp 11 53) x1_ack!1202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1204) ((_ to_fp 11 53) x0_ack!1205))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1204) ((_ to_fp 11 53) x2_ack!1203))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1204) ((_ to_fp 11 53) x0_ack!1205))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1204) ((_ to_fp 11 53) x1_ack!1202))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1202)
               ((_ to_fp 11 53) x0_ack!1205))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY xx_ack!1204 x0_ack!1205))

(check-sat)
(exit)
