(declare-fun x1_ack!2807 () (_ BitVec 64))
(declare-fun x0_ack!2811 () (_ BitVec 64))
(declare-fun y0_ack!2808 () (_ BitVec 64))
(declare-fun x_ack!2809 () (_ BitVec 64))
(declare-fun y_ack!2810 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2811) ((_ to_fp 11 53) x1_ack!2807))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2808) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2809) ((_ to_fp 11 53) x0_ack!2811))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2809) ((_ to_fp 11 53) x1_ack!2807))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2810) ((_ to_fp 11 53) y0_ack!2808))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2810) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2807)
                       ((_ to_fp 11 53) x0_ack!2811))
               ((_ to_fp 11 53) x0_ack!2811))
       ((_ to_fp 11 53) x1_ack!2807)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2807)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2807)
                       ((_ to_fp 11 53) x0_ack!2811)))
       ((_ to_fp 11 53) x0_ack!2811)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2808))
               ((_ to_fp 11 53) y0_ack!2808))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2808)))
       ((_ to_fp 11 53) y0_ack!2808)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2810)
                  ((_ to_fp 11 53) y0_ack!2808))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2808)))))

(check-sat)
(exit)
