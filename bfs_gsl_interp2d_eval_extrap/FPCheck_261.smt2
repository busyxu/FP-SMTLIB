(declare-fun x1_ack!2686 () (_ BitVec 64))
(declare-fun x0_ack!2690 () (_ BitVec 64))
(declare-fun y0_ack!2687 () (_ BitVec 64))
(declare-fun x_ack!2688 () (_ BitVec 64))
(declare-fun y_ack!2689 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2690) ((_ to_fp 11 53) x1_ack!2686))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2687) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2688) ((_ to_fp 11 53) x0_ack!2690))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2688) ((_ to_fp 11 53) x1_ack!2686))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2689) ((_ to_fp 11 53) y0_ack!2687))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2689) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2686)
                       ((_ to_fp 11 53) x0_ack!2690))
               ((_ to_fp 11 53) x0_ack!2690))
       ((_ to_fp 11 53) x1_ack!2686)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2686)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2686)
                       ((_ to_fp 11 53) x0_ack!2690)))
       ((_ to_fp 11 53) x0_ack!2690)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2687))
               ((_ to_fp 11 53) y0_ack!2687))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2687)))
       ((_ to_fp 11 53) y0_ack!2687)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2689)
                  ((_ to_fp 11 53) y0_ack!2687))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2687)))))

(check-sat)
(exit)
