(declare-fun x1_ack!2706 () (_ BitVec 64))
(declare-fun x0_ack!2710 () (_ BitVec 64))
(declare-fun y0_ack!2707 () (_ BitVec 64))
(declare-fun x_ack!2708 () (_ BitVec 64))
(declare-fun y_ack!2709 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2710) ((_ to_fp 11 53) x1_ack!2706))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2707) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2708) ((_ to_fp 11 53) x0_ack!2710))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2708) ((_ to_fp 11 53) x1_ack!2706))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2709) ((_ to_fp 11 53) y0_ack!2707))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2709) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2706)
                       ((_ to_fp 11 53) x0_ack!2710))
               ((_ to_fp 11 53) x0_ack!2710))
       ((_ to_fp 11 53) x1_ack!2706)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2706)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2706)
                       ((_ to_fp 11 53) x0_ack!2710)))
       ((_ to_fp 11 53) x0_ack!2710)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2707))
               ((_ to_fp 11 53) y0_ack!2707))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2707)))
       ((_ to_fp 11 53) y0_ack!2707)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2709)
                  ((_ to_fp 11 53) y0_ack!2707))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2707)))))

(check-sat)
(exit)
