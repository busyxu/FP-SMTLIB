(declare-fun x1_ack!1338 () (_ BitVec 64))
(declare-fun x0_ack!1344 () (_ BitVec 64))
(declare-fun x2_ack!1339 () (_ BitVec 64))
(declare-fun b_ack!1343 () (_ BitVec 64))
(declare-fun a_ack!1342 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1340 () (_ BitVec 64))
(declare-fun y2_ack!1341 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1344) ((_ to_fp 11 53) x1_ack!1338)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1338) ((_ to_fp 11 53) x2_ack!1339)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1338)
                       ((_ to_fp 11 53) x0_ack!1344))
               ((_ to_fp 11 53) x0_ack!1344))
       ((_ to_fp 11 53) x1_ack!1338)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1338)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1338)
                       ((_ to_fp 11 53) x0_ack!1344)))
       ((_ to_fp 11 53) x0_ack!1344)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1339)
                       ((_ to_fp 11 53) x1_ack!1338))
               ((_ to_fp 11 53) x1_ack!1338))
       ((_ to_fp 11 53) x2_ack!1339)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1339)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1339)
                       ((_ to_fp 11 53) x1_ack!1338)))
       ((_ to_fp 11 53) x1_ack!1338)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1338)
                    ((_ to_fp 11 53) x0_ack!1344))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1339)
                    ((_ to_fp 11 53) x1_ack!1338))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1342) ((_ to_fp 11 53) b_ack!1343))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1342) ((_ to_fp 11 53) x0_ack!1344))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1343) ((_ to_fp 11 53) x2_ack!1339))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1342) ((_ to_fp 11 53) b_ack!1343))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1342) ((_ to_fp 11 53) x0_ack!1344))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1342) ((_ to_fp 11 53) x1_ack!1338)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1338) ((_ to_fp 11 53) a_ack!1342))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1343) ((_ to_fp 11 53) x1_ack!1338))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1343) ((_ to_fp 11 53) x2_ack!1339)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1339)
                    ((_ to_fp 11 53) x1_ack!1338))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1341)
          ((_ to_fp 11 53) y1_ack!1340))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1339)
          ((_ to_fp 11 53) x1_ack!1338))))

(check-sat)
(exit)
