(declare-fun x1_ack!1384 () (_ BitVec 64))
(declare-fun x0_ack!1388 () (_ BitVec 64))
(declare-fun x2_ack!1385 () (_ BitVec 64))
(declare-fun b_ack!1387 () (_ BitVec 64))
(declare-fun a_ack!1386 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1388) ((_ to_fp 11 53) x1_ack!1384)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1384) ((_ to_fp 11 53) x2_ack!1385)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1384)
                       ((_ to_fp 11 53) x0_ack!1388))
               ((_ to_fp 11 53) x0_ack!1388))
       ((_ to_fp 11 53) x1_ack!1384)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1384)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1384)
                       ((_ to_fp 11 53) x0_ack!1388)))
       ((_ to_fp 11 53) x0_ack!1388)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1385)
                       ((_ to_fp 11 53) x1_ack!1384))
               ((_ to_fp 11 53) x1_ack!1384))
       ((_ to_fp 11 53) x2_ack!1385)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1385)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1385)
                       ((_ to_fp 11 53) x1_ack!1384)))
       ((_ to_fp 11 53) x1_ack!1384)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1384)
                    ((_ to_fp 11 53) x0_ack!1388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1385)
                    ((_ to_fp 11 53) x1_ack!1384))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1386) ((_ to_fp 11 53) b_ack!1387))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1386) ((_ to_fp 11 53) x0_ack!1388))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1387) ((_ to_fp 11 53) x2_ack!1385))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1386) ((_ to_fp 11 53) b_ack!1387))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1386) ((_ to_fp 11 53) x0_ack!1388))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1386) ((_ to_fp 11 53) x1_ack!1384))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1387) ((_ to_fp 11 53) x0_ack!1388))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1387) ((_ to_fp 11 53) x1_ack!1384)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1384) ((_ to_fp 11 53) b_ack!1387))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1384)
                    ((_ to_fp 11 53) x0_ack!1388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1384)
          ((_ to_fp 11 53) x0_ack!1388))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1384)
          ((_ to_fp 11 53) x0_ack!1388))))

(check-sat)
(exit)
