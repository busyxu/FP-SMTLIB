(declare-fun x1_ack!1486 () (_ BitVec 64))
(declare-fun x0_ack!1490 () (_ BitVec 64))
(declare-fun x2_ack!1487 () (_ BitVec 64))
(declare-fun b_ack!1489 () (_ BitVec 64))
(declare-fun a_ack!1488 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1490) ((_ to_fp 11 53) x1_ack!1486)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1486) ((_ to_fp 11 53) x2_ack!1487)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1486)
                       ((_ to_fp 11 53) x0_ack!1490))
               ((_ to_fp 11 53) x0_ack!1490))
       ((_ to_fp 11 53) x1_ack!1486)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1486)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1486)
                       ((_ to_fp 11 53) x0_ack!1490)))
       ((_ to_fp 11 53) x0_ack!1490)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1487)
                       ((_ to_fp 11 53) x1_ack!1486))
               ((_ to_fp 11 53) x1_ack!1486))
       ((_ to_fp 11 53) x2_ack!1487)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1487)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1487)
                       ((_ to_fp 11 53) x1_ack!1486)))
       ((_ to_fp 11 53) x1_ack!1486)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1486)
                    ((_ to_fp 11 53) x0_ack!1490))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1487)
                    ((_ to_fp 11 53) x1_ack!1486))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1488) ((_ to_fp 11 53) b_ack!1489))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1488) ((_ to_fp 11 53) x0_ack!1490))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1489) ((_ to_fp 11 53) x2_ack!1487))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1488) ((_ to_fp 11 53) b_ack!1489))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1488) ((_ to_fp 11 53) x0_ack!1490))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1488) ((_ to_fp 11 53) x1_ack!1486))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1489) ((_ to_fp 11 53) x0_ack!1490))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1489) ((_ to_fp 11 53) x1_ack!1486)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1486) ((_ to_fp 11 53) b_ack!1489))))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!1486 x0_ack!1490))

(check-sat)
(exit)
