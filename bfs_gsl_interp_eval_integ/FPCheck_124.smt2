(declare-fun x1_ack!1399 () (_ BitVec 64))
(declare-fun x0_ack!1405 () (_ BitVec 64))
(declare-fun x2_ack!1400 () (_ BitVec 64))
(declare-fun b_ack!1404 () (_ BitVec 64))
(declare-fun a_ack!1403 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1401 () (_ BitVec 64))
(declare-fun y1_ack!1402 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1405) ((_ to_fp 11 53) x1_ack!1399)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1399) ((_ to_fp 11 53) x2_ack!1400)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1399)
                       ((_ to_fp 11 53) x0_ack!1405))
               ((_ to_fp 11 53) x0_ack!1405))
       ((_ to_fp 11 53) x1_ack!1399)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1399)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1399)
                       ((_ to_fp 11 53) x0_ack!1405)))
       ((_ to_fp 11 53) x0_ack!1405)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1400)
                       ((_ to_fp 11 53) x1_ack!1399))
               ((_ to_fp 11 53) x1_ack!1399))
       ((_ to_fp 11 53) x2_ack!1400)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1400)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1400)
                       ((_ to_fp 11 53) x1_ack!1399)))
       ((_ to_fp 11 53) x1_ack!1399)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1399)
                    ((_ to_fp 11 53) x0_ack!1405))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1400)
                    ((_ to_fp 11 53) x1_ack!1399))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1403) ((_ to_fp 11 53) b_ack!1404))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1403) ((_ to_fp 11 53) x0_ack!1405))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1404) ((_ to_fp 11 53) x2_ack!1400))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1403) ((_ to_fp 11 53) b_ack!1404))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1403) ((_ to_fp 11 53) x0_ack!1405))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1403) ((_ to_fp 11 53) x1_ack!1399))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1404) ((_ to_fp 11 53) x0_ack!1405))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1404) ((_ to_fp 11 53) x1_ack!1399))))
(assert (FPCHECK_FSUB_UNDERFLOW y1_ack!1402 y0_ack!1401))

(check-sat)
(exit)
