(declare-fun x1_ack!2326 () (_ BitVec 64))
(declare-fun x0_ack!2330 () (_ BitVec 64))
(declare-fun y0_ack!2327 () (_ BitVec 64))
(declare-fun x_ack!2328 () (_ BitVec 64))
(declare-fun y_ack!2329 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2330) ((_ to_fp 11 53) x1_ack!2326))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2327) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2328) ((_ to_fp 11 53) x0_ack!2330))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2328) ((_ to_fp 11 53) x1_ack!2326))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2329) ((_ to_fp 11 53) y0_ack!2327)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2326)
                       ((_ to_fp 11 53) x0_ack!2330))
               ((_ to_fp 11 53) x0_ack!2330))
       ((_ to_fp 11 53) x1_ack!2326)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2326)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2326)
                       ((_ to_fp 11 53) x0_ack!2330)))
       ((_ to_fp 11 53) x0_ack!2330)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2327))
               ((_ to_fp 11 53) y0_ack!2327))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2327)))
       ((_ to_fp 11 53) y0_ack!2327)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!2328)
          ((_ to_fp 11 53) x0_ack!2330))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2326)
          ((_ to_fp 11 53) x0_ack!2330))))

(check-sat)
(exit)
