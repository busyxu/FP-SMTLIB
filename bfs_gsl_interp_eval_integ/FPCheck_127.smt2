(declare-fun x1_ack!1439 () (_ BitVec 64))
(declare-fun x0_ack!1445 () (_ BitVec 64))
(declare-fun x2_ack!1440 () (_ BitVec 64))
(declare-fun b_ack!1444 () (_ BitVec 64))
(declare-fun a_ack!1443 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1441 () (_ BitVec 64))
(declare-fun y1_ack!1442 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1445) ((_ to_fp 11 53) x1_ack!1439)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1439) ((_ to_fp 11 53) x2_ack!1440)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1439)
                       ((_ to_fp 11 53) x0_ack!1445))
               ((_ to_fp 11 53) x0_ack!1445))
       ((_ to_fp 11 53) x1_ack!1439)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1439)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1439)
                       ((_ to_fp 11 53) x0_ack!1445)))
       ((_ to_fp 11 53) x0_ack!1445)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1440)
                       ((_ to_fp 11 53) x1_ack!1439))
               ((_ to_fp 11 53) x1_ack!1439))
       ((_ to_fp 11 53) x2_ack!1440)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1440)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1440)
                       ((_ to_fp 11 53) x1_ack!1439)))
       ((_ to_fp 11 53) x1_ack!1439)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1439)
                    ((_ to_fp 11 53) x0_ack!1445))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1440)
                    ((_ to_fp 11 53) x1_ack!1439))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1443) ((_ to_fp 11 53) b_ack!1444))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1443) ((_ to_fp 11 53) x0_ack!1445))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1444) ((_ to_fp 11 53) x2_ack!1440))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1443) ((_ to_fp 11 53) b_ack!1444))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1443) ((_ to_fp 11 53) x0_ack!1445))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1443) ((_ to_fp 11 53) x1_ack!1439))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1444) ((_ to_fp 11 53) x0_ack!1445))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1444) ((_ to_fp 11 53) x1_ack!1439))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1439)
                    ((_ to_fp 11 53) x0_ack!1445))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!1442)
          ((_ to_fp 11 53) y0_ack!1441))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1439)
          ((_ to_fp 11 53) x0_ack!1445))))

(check-sat)
(exit)
