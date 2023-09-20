(declare-fun x1_ack!1366 () (_ BitVec 64))
(declare-fun x0_ack!1372 () (_ BitVec 64))
(declare-fun x2_ack!1367 () (_ BitVec 64))
(declare-fun b_ack!1371 () (_ BitVec 64))
(declare-fun a_ack!1370 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1368 () (_ BitVec 64))
(declare-fun y2_ack!1369 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1372) ((_ to_fp 11 53) x1_ack!1366)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1366) ((_ to_fp 11 53) x2_ack!1367)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1366)
                       ((_ to_fp 11 53) x0_ack!1372))
               ((_ to_fp 11 53) x0_ack!1372))
       ((_ to_fp 11 53) x1_ack!1366)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1366)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1366)
                       ((_ to_fp 11 53) x0_ack!1372)))
       ((_ to_fp 11 53) x0_ack!1372)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1367)
                       ((_ to_fp 11 53) x1_ack!1366))
               ((_ to_fp 11 53) x1_ack!1366))
       ((_ to_fp 11 53) x2_ack!1367)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1367)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1367)
                       ((_ to_fp 11 53) x1_ack!1366)))
       ((_ to_fp 11 53) x1_ack!1366)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1366)
                    ((_ to_fp 11 53) x0_ack!1372))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1367)
                    ((_ to_fp 11 53) x1_ack!1366))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) b_ack!1371))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) x0_ack!1372))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1371) ((_ to_fp 11 53) x2_ack!1367))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) b_ack!1371))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) x0_ack!1372))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) x1_ack!1366)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1366) ((_ to_fp 11 53) a_ack!1370))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1371) ((_ to_fp 11 53) x1_ack!1366))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1371) ((_ to_fp 11 53) x2_ack!1367)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1367)
                    ((_ to_fp 11 53) x1_ack!1366))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1369)
          ((_ to_fp 11 53) y1_ack!1368))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1367)
          ((_ to_fp 11 53) x1_ack!1366))))

(check-sat)
(exit)
