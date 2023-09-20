(declare-fun x1_ack!102 () (_ BitVec 64))
(declare-fun x0_ack!106 () (_ BitVec 64))
(declare-fun y0_ack!103 () (_ BitVec 64))
(declare-fun x_ack!104 () (_ BitVec 64))
(declare-fun y_ack!105 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!106) ((_ to_fp 11 53) x1_ack!102))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!103) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) x0_ack!106))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) x1_ack!102))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!105) ((_ to_fp 11 53) y0_ack!103))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!105) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) x0_ack!106))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) x1_ack!102))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!105) ((_ to_fp 11 53) y0_ack!103))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!105) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!102)
                       ((_ to_fp 11 53) x0_ack!106))
               ((_ to_fp 11 53) x0_ack!106))
       ((_ to_fp 11 53) x1_ack!102)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!102)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!102)
                       ((_ to_fp 11 53) x0_ack!106)))
       ((_ to_fp 11 53) x0_ack!106)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!103))
               ((_ to_fp 11 53) y0_ack!103))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!103)))
       ((_ to_fp 11 53) y0_ack!103)))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!103))))

(check-sat)
(exit)
