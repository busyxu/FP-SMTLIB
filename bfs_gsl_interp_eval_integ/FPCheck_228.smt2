(declare-fun x1_ack!2728 () (_ BitVec 64))
(declare-fun x0_ack!2732 () (_ BitVec 64))
(declare-fun x2_ack!2729 () (_ BitVec 64))
(declare-fun b_ack!2731 () (_ BitVec 64))
(declare-fun a_ack!2730 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2732) ((_ to_fp 11 53) x1_ack!2728)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2728) ((_ to_fp 11 53) x2_ack!2729)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2728)
                       ((_ to_fp 11 53) x0_ack!2732))
               ((_ to_fp 11 53) x0_ack!2732))
       ((_ to_fp 11 53) x1_ack!2728)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2728)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2728)
                       ((_ to_fp 11 53) x0_ack!2732)))
       ((_ to_fp 11 53) x0_ack!2732)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2729)
                       ((_ to_fp 11 53) x1_ack!2728))
               ((_ to_fp 11 53) x1_ack!2728))
       ((_ to_fp 11 53) x2_ack!2729)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2729)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2729)
                       ((_ to_fp 11 53) x1_ack!2728)))
       ((_ to_fp 11 53) x1_ack!2728)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2728)
                    ((_ to_fp 11 53) x0_ack!2732))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2729)
                    ((_ to_fp 11 53) x1_ack!2728))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2730) ((_ to_fp 11 53) b_ack!2731))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2730) ((_ to_fp 11 53) x0_ack!2732))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2731) ((_ to_fp 11 53) x2_ack!2729))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2730) ((_ to_fp 11 53) b_ack!2731))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2730) ((_ to_fp 11 53) x0_ack!2732))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2730) ((_ to_fp 11 53) x1_ack!2728)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2728) ((_ to_fp 11 53) a_ack!2730))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2731) ((_ to_fp 11 53) x1_ack!2728))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2731) ((_ to_fp 11 53) x2_ack!2729))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2729)
                    ((_ to_fp 11 53) x1_ack!2728))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2731)
          ((_ to_fp 11 53) x1_ack!2728))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2731)
          ((_ to_fp 11 53) x1_ack!2728))))

(check-sat)
(exit)
