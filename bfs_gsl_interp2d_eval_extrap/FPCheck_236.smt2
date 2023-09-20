(declare-fun x1_ack!2456 () (_ BitVec 64))
(declare-fun x0_ack!2460 () (_ BitVec 64))
(declare-fun y0_ack!2457 () (_ BitVec 64))
(declare-fun x_ack!2458 () (_ BitVec 64))
(declare-fun y_ack!2459 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2460) ((_ to_fp 11 53) x1_ack!2456))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2457) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2458) ((_ to_fp 11 53) x0_ack!2460))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2458) ((_ to_fp 11 53) x1_ack!2456))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2459) ((_ to_fp 11 53) y0_ack!2457)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2456)
                       ((_ to_fp 11 53) x0_ack!2460))
               ((_ to_fp 11 53) x0_ack!2460))
       ((_ to_fp 11 53) x1_ack!2456)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2456)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2456)
                       ((_ to_fp 11 53) x0_ack!2460)))
       ((_ to_fp 11 53) x0_ack!2460)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2457))
               ((_ to_fp 11 53) y0_ack!2457))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2457)))
       ((_ to_fp 11 53) y0_ack!2457)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2458)
                  ((_ to_fp 11 53) x0_ack!2460))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2456)
                  ((_ to_fp 11 53) x0_ack!2460)))))

(check-sat)
(exit)
