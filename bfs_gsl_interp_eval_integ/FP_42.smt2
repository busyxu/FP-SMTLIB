(declare-fun x1_ack!1380 () (_ BitVec 64))
(declare-fun x0_ack!1384 () (_ BitVec 64))
(declare-fun x2_ack!1381 () (_ BitVec 64))
(declare-fun b_ack!1383 () (_ BitVec 64))
(declare-fun a_ack!1382 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1384) ((_ to_fp 11 53) x1_ack!1380)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1380) ((_ to_fp 11 53) x2_ack!1381)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1380)
                       ((_ to_fp 11 53) x0_ack!1384))
               ((_ to_fp 11 53) x0_ack!1384))
       ((_ to_fp 11 53) x1_ack!1380)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1380)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1380)
                       ((_ to_fp 11 53) x0_ack!1384)))
       ((_ to_fp 11 53) x0_ack!1384)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1381)
                       ((_ to_fp 11 53) x1_ack!1380))
               ((_ to_fp 11 53) x1_ack!1380))
       ((_ to_fp 11 53) x2_ack!1381)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1381)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1381)
                       ((_ to_fp 11 53) x1_ack!1380)))
       ((_ to_fp 11 53) x1_ack!1380)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1380)
                    ((_ to_fp 11 53) x0_ack!1384))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1381)
                    ((_ to_fp 11 53) x1_ack!1380))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1382) ((_ to_fp 11 53) b_ack!1383))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1382) ((_ to_fp 11 53) x0_ack!1384))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1383) ((_ to_fp 11 53) x2_ack!1381))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1382) ((_ to_fp 11 53) b_ack!1383))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1382) ((_ to_fp 11 53) x0_ack!1384))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1382) ((_ to_fp 11 53) x1_ack!1380))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1383) ((_ to_fp 11 53) x0_ack!1384))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1383) ((_ to_fp 11 53) x1_ack!1380))))

(check-sat)
(exit)
