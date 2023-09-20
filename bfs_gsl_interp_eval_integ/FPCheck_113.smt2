(declare-fun x1_ack!1269 () (_ BitVec 64))
(declare-fun x0_ack!1273 () (_ BitVec 64))
(declare-fun x2_ack!1270 () (_ BitVec 64))
(declare-fun b_ack!1272 () (_ BitVec 64))
(declare-fun a_ack!1271 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1273) ((_ to_fp 11 53) x1_ack!1269)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1269) ((_ to_fp 11 53) x2_ack!1270)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1269)
                       ((_ to_fp 11 53) x0_ack!1273))
               ((_ to_fp 11 53) x0_ack!1273))
       ((_ to_fp 11 53) x1_ack!1269)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1269)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1269)
                       ((_ to_fp 11 53) x0_ack!1273)))
       ((_ to_fp 11 53) x0_ack!1273)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1270)
                       ((_ to_fp 11 53) x1_ack!1269))
               ((_ to_fp 11 53) x1_ack!1269))
       ((_ to_fp 11 53) x2_ack!1270)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1270)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1270)
                       ((_ to_fp 11 53) x1_ack!1269)))
       ((_ to_fp 11 53) x1_ack!1269)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1269)
                    ((_ to_fp 11 53) x0_ack!1273))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1270)
                    ((_ to_fp 11 53) x1_ack!1269))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1271) ((_ to_fp 11 53) b_ack!1272))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1271) ((_ to_fp 11 53) x0_ack!1273))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1272) ((_ to_fp 11 53) x2_ack!1270))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1271) ((_ to_fp 11 53) b_ack!1272))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1271) ((_ to_fp 11 53) x0_ack!1273))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1271) ((_ to_fp 11 53) x1_ack!1269)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1269) ((_ to_fp 11 53) a_ack!1271))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1272) ((_ to_fp 11 53) x1_ack!1269))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1272) ((_ to_fp 11 53) x2_ack!1270)))
(assert (FPCHECK_FSUB_UNDERFLOW x2_ack!1270 x1_ack!1269))

(check-sat)
(exit)
