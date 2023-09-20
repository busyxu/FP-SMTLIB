(declare-fun x1_ack!2797 () (_ BitVec 64))
(declare-fun x0_ack!2801 () (_ BitVec 64))
(declare-fun y0_ack!2798 () (_ BitVec 64))
(declare-fun x_ack!2799 () (_ BitVec 64))
(declare-fun y_ack!2800 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2801) ((_ to_fp 11 53) x1_ack!2797))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2798) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2799) ((_ to_fp 11 53) x0_ack!2801))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2799) ((_ to_fp 11 53) x1_ack!2797))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2800) ((_ to_fp 11 53) y0_ack!2798))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2800) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2797)
                       ((_ to_fp 11 53) x0_ack!2801))
               ((_ to_fp 11 53) x0_ack!2801))
       ((_ to_fp 11 53) x1_ack!2797)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2797)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2797)
                       ((_ to_fp 11 53) x0_ack!2801)))
       ((_ to_fp 11 53) x0_ack!2801)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2798))
               ((_ to_fp 11 53) y0_ack!2798))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2798)))
       ((_ to_fp 11 53) y0_ack!2798)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2800)
                  ((_ to_fp 11 53) y0_ack!2798))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2798)))))

(check-sat)
(exit)
