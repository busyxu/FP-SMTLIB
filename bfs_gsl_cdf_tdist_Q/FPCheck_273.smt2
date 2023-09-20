(declare-fun mu_ack!691 () (_ BitVec 64))
(declare-fun x_ack!692 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!691) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!692)
                    ((_ to_fp 11 53) x_ack!692))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!691)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!692)
                    ((_ to_fp 11 53) x_ack!692))
            ((_ to_fp 11 53) mu_ack!691))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!692))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!692)
                       ((_ to_fp 11 53) x_ack!692))
               ((_ to_fp 11 53) x_ack!692))
       ((_ to_fp 11 53) x_ack!692)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!692))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!692)
                       ((_ to_fp 11 53) x_ack!692))
               ((_ to_fp 11 53) x_ack!692))
       ((_ to_fp 11 53) x_ack!692)))
(assert (FPCHECK_FADD_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) mu_ack!691)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!692)
                  ((_ to_fp 11 53) x_ack!692)))))

(check-sat)
(exit)
