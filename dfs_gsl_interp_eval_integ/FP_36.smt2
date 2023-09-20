(declare-fun x1_ack!1364 () (_ BitVec 64))
(declare-fun x0_ack!1368 () (_ BitVec 64))
(declare-fun x2_ack!1365 () (_ BitVec 64))
(declare-fun b_ack!1367 () (_ BitVec 64))
(declare-fun a_ack!1366 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1368) ((_ to_fp 11 53) x1_ack!1364)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1364) ((_ to_fp 11 53) x2_ack!1365)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1364)
                       ((_ to_fp 11 53) x0_ack!1368))
               ((_ to_fp 11 53) x0_ack!1368))
       ((_ to_fp 11 53) x1_ack!1364)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1364)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1364)
                       ((_ to_fp 11 53) x0_ack!1368)))
       ((_ to_fp 11 53) x0_ack!1368)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1365)
                       ((_ to_fp 11 53) x1_ack!1364))
               ((_ to_fp 11 53) x1_ack!1364))
       ((_ to_fp 11 53) x2_ack!1365)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1365)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1365)
                       ((_ to_fp 11 53) x1_ack!1364)))
       ((_ to_fp 11 53) x1_ack!1364)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1364)
                    ((_ to_fp 11 53) x0_ack!1368))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1365)
                    ((_ to_fp 11 53) x1_ack!1364))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) b_ack!1367))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) x0_ack!1368))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1367) ((_ to_fp 11 53) x2_ack!1365))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) b_ack!1367))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) x0_ack!1368))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) x1_ack!1364))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1367) ((_ to_fp 11 53) x0_ack!1368))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1367) ((_ to_fp 11 53) x1_ack!1364)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1364) ((_ to_fp 11 53) b_ack!1367))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1364)
                    ((_ to_fp 11 53) x0_ack!1368))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
