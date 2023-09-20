(declare-fun x1_ack!1176 () (_ BitVec 64))
(declare-fun x0_ack!1182 () (_ BitVec 64))
(declare-fun x2_ack!1177 () (_ BitVec 64))
(declare-fun b_ack!1181 () (_ BitVec 64))
(declare-fun a_ack!1180 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1178 () (_ BitVec 64))
(declare-fun y2_ack!1179 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1182) ((_ to_fp 11 53) x1_ack!1176)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1176) ((_ to_fp 11 53) x2_ack!1177)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1176)
                       ((_ to_fp 11 53) x0_ack!1182))
               ((_ to_fp 11 53) x0_ack!1182))
       ((_ to_fp 11 53) x1_ack!1176)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1176)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1176)
                       ((_ to_fp 11 53) x0_ack!1182)))
       ((_ to_fp 11 53) x0_ack!1182)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1177)
                       ((_ to_fp 11 53) x1_ack!1176))
               ((_ to_fp 11 53) x1_ack!1176))
       ((_ to_fp 11 53) x2_ack!1177)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1177)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1177)
                       ((_ to_fp 11 53) x1_ack!1176)))
       ((_ to_fp 11 53) x1_ack!1176)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1176)
                    ((_ to_fp 11 53) x0_ack!1182))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1177)
                    ((_ to_fp 11 53) x1_ack!1176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1180) ((_ to_fp 11 53) b_ack!1181))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1180) ((_ to_fp 11 53) x0_ack!1182))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1181) ((_ to_fp 11 53) x2_ack!1177))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1180) ((_ to_fp 11 53) b_ack!1181))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1180) ((_ to_fp 11 53) x0_ack!1182))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1180) ((_ to_fp 11 53) x1_ack!1176)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1176) ((_ to_fp 11 53) a_ack!1180))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1181) ((_ to_fp 11 53) x1_ack!1176))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1181) ((_ to_fp 11 53) x2_ack!1177))))
(assert (FPCHECK_FSUB_ACCURACY y2_ack!1179 y1_ack!1178))

(check-sat)
(exit)
