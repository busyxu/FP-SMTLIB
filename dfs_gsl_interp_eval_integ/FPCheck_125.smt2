(declare-fun x1_ack!1379 () (_ BitVec 64))
(declare-fun x0_ack!1383 () (_ BitVec 64))
(declare-fun x2_ack!1380 () (_ BitVec 64))
(declare-fun b_ack!1382 () (_ BitVec 64))
(declare-fun a_ack!1381 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1383) ((_ to_fp 11 53) x1_ack!1379)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1379) ((_ to_fp 11 53) x2_ack!1380)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1379)
                       ((_ to_fp 11 53) x0_ack!1383))
               ((_ to_fp 11 53) x0_ack!1383))
       ((_ to_fp 11 53) x1_ack!1379)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1379)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1379)
                       ((_ to_fp 11 53) x0_ack!1383)))
       ((_ to_fp 11 53) x0_ack!1383)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1380)
                       ((_ to_fp 11 53) x1_ack!1379))
               ((_ to_fp 11 53) x1_ack!1379))
       ((_ to_fp 11 53) x2_ack!1380)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1380)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1380)
                       ((_ to_fp 11 53) x1_ack!1379)))
       ((_ to_fp 11 53) x1_ack!1379)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1379)
                    ((_ to_fp 11 53) x0_ack!1383))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1380)
                    ((_ to_fp 11 53) x1_ack!1379))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1381) ((_ to_fp 11 53) b_ack!1382))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1381) ((_ to_fp 11 53) x0_ack!1383))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1382) ((_ to_fp 11 53) x2_ack!1380))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1381) ((_ to_fp 11 53) b_ack!1382))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1381) ((_ to_fp 11 53) x0_ack!1383))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1381) ((_ to_fp 11 53) x1_ack!1379))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1382) ((_ to_fp 11 53) x0_ack!1383))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1382) ((_ to_fp 11 53) x1_ack!1379)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1379) ((_ to_fp 11 53) b_ack!1382))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1379)
                    ((_ to_fp 11 53) x0_ack!1383))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1379)
          ((_ to_fp 11 53) x0_ack!1383))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1379)
          ((_ to_fp 11 53) x0_ack!1383))))

(check-sat)
(exit)
