(declare-fun x1_ack!1385 () (_ BitVec 64))
(declare-fun x0_ack!1391 () (_ BitVec 64))
(declare-fun x2_ack!1386 () (_ BitVec 64))
(declare-fun b_ack!1390 () (_ BitVec 64))
(declare-fun a_ack!1389 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1387 () (_ BitVec 64))
(declare-fun y1_ack!1388 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1391) ((_ to_fp 11 53) x1_ack!1385)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1385) ((_ to_fp 11 53) x2_ack!1386)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1385)
                       ((_ to_fp 11 53) x0_ack!1391))
               ((_ to_fp 11 53) x0_ack!1391))
       ((_ to_fp 11 53) x1_ack!1385)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1385)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1385)
                       ((_ to_fp 11 53) x0_ack!1391)))
       ((_ to_fp 11 53) x0_ack!1391)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1386)
                       ((_ to_fp 11 53) x1_ack!1385))
               ((_ to_fp 11 53) x1_ack!1385))
       ((_ to_fp 11 53) x2_ack!1386)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1386)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1386)
                       ((_ to_fp 11 53) x1_ack!1385)))
       ((_ to_fp 11 53) x1_ack!1385)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1385)
                    ((_ to_fp 11 53) x0_ack!1391))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1386)
                    ((_ to_fp 11 53) x1_ack!1385))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1389) ((_ to_fp 11 53) b_ack!1390))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1389) ((_ to_fp 11 53) x0_ack!1391))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1390) ((_ to_fp 11 53) x2_ack!1386))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1389) ((_ to_fp 11 53) b_ack!1390))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1389) ((_ to_fp 11 53) x0_ack!1391))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1389) ((_ to_fp 11 53) x1_ack!1385))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1390) ((_ to_fp 11 53) x0_ack!1391))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1390) ((_ to_fp 11 53) x1_ack!1385))))
(assert (FPCHECK_FSUB_OVERFLOW y1_ack!1388 y0_ack!1387))

(check-sat)
(exit)
