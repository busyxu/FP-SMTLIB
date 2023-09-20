(declare-fun x1_ack!2494 () (_ BitVec 64))
(declare-fun x0_ack!2498 () (_ BitVec 64))
(declare-fun x2_ack!2495 () (_ BitVec 64))
(declare-fun b_ack!2497 () (_ BitVec 64))
(declare-fun a_ack!2496 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2498) ((_ to_fp 11 53) x1_ack!2494)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2494) ((_ to_fp 11 53) x2_ack!2495)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2494)
                       ((_ to_fp 11 53) x0_ack!2498))
               ((_ to_fp 11 53) x0_ack!2498))
       ((_ to_fp 11 53) x1_ack!2494)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2494)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2494)
                       ((_ to_fp 11 53) x0_ack!2498)))
       ((_ to_fp 11 53) x0_ack!2498)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2495)
                       ((_ to_fp 11 53) x1_ack!2494))
               ((_ to_fp 11 53) x1_ack!2494))
       ((_ to_fp 11 53) x2_ack!2495)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2495)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2495)
                       ((_ to_fp 11 53) x1_ack!2494)))
       ((_ to_fp 11 53) x1_ack!2494)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2494)
                    ((_ to_fp 11 53) x0_ack!2498))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2495)
                    ((_ to_fp 11 53) x1_ack!2494))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2496) ((_ to_fp 11 53) b_ack!2497))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2496) ((_ to_fp 11 53) x0_ack!2498))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2497) ((_ to_fp 11 53) x2_ack!2495))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2496) ((_ to_fp 11 53) b_ack!2497))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2496) ((_ to_fp 11 53) x0_ack!2498))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2496) ((_ to_fp 11 53) x1_ack!2494)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2494) ((_ to_fp 11 53) a_ack!2496))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2497) ((_ to_fp 11 53) x1_ack!2494))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2497) ((_ to_fp 11 53) x2_ack!2495))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2495)
                    ((_ to_fp 11 53) x1_ack!2494))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!2497 x1_ack!2494))

(check-sat)
(exit)
