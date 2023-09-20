(declare-fun x1_ack!2798 () (_ BitVec 64))
(declare-fun x0_ack!2802 () (_ BitVec 64))
(declare-fun x2_ack!2799 () (_ BitVec 64))
(declare-fun b_ack!2801 () (_ BitVec 64))
(declare-fun a_ack!2800 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2802) ((_ to_fp 11 53) x1_ack!2798)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2798) ((_ to_fp 11 53) x2_ack!2799)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2798)
                       ((_ to_fp 11 53) x0_ack!2802))
               ((_ to_fp 11 53) x0_ack!2802))
       ((_ to_fp 11 53) x1_ack!2798)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2798)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2798)
                       ((_ to_fp 11 53) x0_ack!2802)))
       ((_ to_fp 11 53) x0_ack!2802)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2799)
                       ((_ to_fp 11 53) x1_ack!2798))
               ((_ to_fp 11 53) x1_ack!2798))
       ((_ to_fp 11 53) x2_ack!2799)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2799)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2799)
                       ((_ to_fp 11 53) x1_ack!2798)))
       ((_ to_fp 11 53) x1_ack!2798)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2798)
                    ((_ to_fp 11 53) x0_ack!2802))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2799)
                    ((_ to_fp 11 53) x1_ack!2798))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2800) ((_ to_fp 11 53) b_ack!2801))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2800) ((_ to_fp 11 53) x0_ack!2802))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2801) ((_ to_fp 11 53) x2_ack!2799))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2800) ((_ to_fp 11 53) b_ack!2801))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2800) ((_ to_fp 11 53) x0_ack!2802))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2800) ((_ to_fp 11 53) x1_ack!2798)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2798) ((_ to_fp 11 53) a_ack!2800))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2801) ((_ to_fp 11 53) x1_ack!2798))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2801) ((_ to_fp 11 53) x2_ack!2799))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2799)
                    ((_ to_fp 11 53) x1_ack!2798))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2800)
          ((_ to_fp 11 53) x1_ack!2798))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2801)
          ((_ to_fp 11 53) x1_ack!2798))))

(check-sat)
(exit)
