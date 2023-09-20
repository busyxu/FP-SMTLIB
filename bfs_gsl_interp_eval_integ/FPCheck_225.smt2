(declare-fun x1_ack!2693 () (_ BitVec 64))
(declare-fun x0_ack!2697 () (_ BitVec 64))
(declare-fun x2_ack!2694 () (_ BitVec 64))
(declare-fun b_ack!2696 () (_ BitVec 64))
(declare-fun a_ack!2695 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2697) ((_ to_fp 11 53) x1_ack!2693)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2693) ((_ to_fp 11 53) x2_ack!2694)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2693)
                       ((_ to_fp 11 53) x0_ack!2697))
               ((_ to_fp 11 53) x0_ack!2697))
       ((_ to_fp 11 53) x1_ack!2693)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2693)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2693)
                       ((_ to_fp 11 53) x0_ack!2697)))
       ((_ to_fp 11 53) x0_ack!2697)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2694)
                       ((_ to_fp 11 53) x1_ack!2693))
               ((_ to_fp 11 53) x1_ack!2693))
       ((_ to_fp 11 53) x2_ack!2694)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2694)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2694)
                       ((_ to_fp 11 53) x1_ack!2693)))
       ((_ to_fp 11 53) x1_ack!2693)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2693)
                    ((_ to_fp 11 53) x0_ack!2697))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2694)
                    ((_ to_fp 11 53) x1_ack!2693))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2695) ((_ to_fp 11 53) b_ack!2696))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2695) ((_ to_fp 11 53) x0_ack!2697))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2696) ((_ to_fp 11 53) x2_ack!2694))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2695) ((_ to_fp 11 53) b_ack!2696))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2695) ((_ to_fp 11 53) x0_ack!2697))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2695) ((_ to_fp 11 53) x1_ack!2693)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2693) ((_ to_fp 11 53) a_ack!2695))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2696) ((_ to_fp 11 53) x1_ack!2693))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2696) ((_ to_fp 11 53) x2_ack!2694))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2694)
                    ((_ to_fp 11 53) x1_ack!2693))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2695)
          ((_ to_fp 11 53) x1_ack!2693))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2695)
          ((_ to_fp 11 53) x1_ack!2693))))

(check-sat)
(exit)
