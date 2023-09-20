(declare-fun x1_ack!2681 () (_ BitVec 64))
(declare-fun x0_ack!2685 () (_ BitVec 64))
(declare-fun y0_ack!2682 () (_ BitVec 64))
(declare-fun x_ack!2683 () (_ BitVec 64))
(declare-fun y_ack!2684 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2685) ((_ to_fp 11 53) x1_ack!2681))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2682) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2683) ((_ to_fp 11 53) x0_ack!2685))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2683) ((_ to_fp 11 53) x1_ack!2681))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2684) ((_ to_fp 11 53) y0_ack!2682))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2684) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2681)
                       ((_ to_fp 11 53) x0_ack!2685))
               ((_ to_fp 11 53) x0_ack!2685))
       ((_ to_fp 11 53) x1_ack!2681)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2681)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2681)
                       ((_ to_fp 11 53) x0_ack!2685)))
       ((_ to_fp 11 53) x0_ack!2685)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2682))
               ((_ to_fp 11 53) y0_ack!2682))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2682)))
       ((_ to_fp 11 53) y0_ack!2682)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2683)
                  ((_ to_fp 11 53) x0_ack!2685))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2681)
                  ((_ to_fp 11 53) x0_ack!2685)))))

(check-sat)
(exit)
