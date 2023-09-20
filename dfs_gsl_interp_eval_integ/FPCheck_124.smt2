(declare-fun x1_ack!1369 () (_ BitVec 64))
(declare-fun x0_ack!1373 () (_ BitVec 64))
(declare-fun x2_ack!1370 () (_ BitVec 64))
(declare-fun b_ack!1372 () (_ BitVec 64))
(declare-fun a_ack!1371 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1373) ((_ to_fp 11 53) x1_ack!1369)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1369) ((_ to_fp 11 53) x2_ack!1370)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1369)
                       ((_ to_fp 11 53) x0_ack!1373))
               ((_ to_fp 11 53) x0_ack!1373))
       ((_ to_fp 11 53) x1_ack!1369)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1369)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1369)
                       ((_ to_fp 11 53) x0_ack!1373)))
       ((_ to_fp 11 53) x0_ack!1373)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1370)
                       ((_ to_fp 11 53) x1_ack!1369))
               ((_ to_fp 11 53) x1_ack!1369))
       ((_ to_fp 11 53) x2_ack!1370)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1370)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1370)
                       ((_ to_fp 11 53) x1_ack!1369)))
       ((_ to_fp 11 53) x1_ack!1369)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1369)
                    ((_ to_fp 11 53) x0_ack!1373))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1370)
                    ((_ to_fp 11 53) x1_ack!1369))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1371) ((_ to_fp 11 53) b_ack!1372))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1371) ((_ to_fp 11 53) x0_ack!1373))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1372) ((_ to_fp 11 53) x2_ack!1370))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1371) ((_ to_fp 11 53) b_ack!1372))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1371) ((_ to_fp 11 53) x0_ack!1373))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1371) ((_ to_fp 11 53) x1_ack!1369))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1372) ((_ to_fp 11 53) x0_ack!1373))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1372) ((_ to_fp 11 53) x1_ack!1369)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1369) ((_ to_fp 11 53) b_ack!1372))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1369)
                    ((_ to_fp 11 53) x0_ack!1373))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1369)
          ((_ to_fp 11 53) x0_ack!1373))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1369)
          ((_ to_fp 11 53) x0_ack!1373))))

(check-sat)
(exit)
