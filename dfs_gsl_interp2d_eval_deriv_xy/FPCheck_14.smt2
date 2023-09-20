(declare-fun x1_ack!122 () (_ BitVec 64))
(declare-fun x0_ack!126 () (_ BitVec 64))
(declare-fun y0_ack!123 () (_ BitVec 64))
(declare-fun x_ack!124 () (_ BitVec 64))
(declare-fun y_ack!125 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!126) ((_ to_fp 11 53) x1_ack!122))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!123) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!124) ((_ to_fp 11 53) x0_ack!126))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!124) ((_ to_fp 11 53) x1_ack!122))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!125) ((_ to_fp 11 53) y0_ack!123))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!125) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!124) ((_ to_fp 11 53) x0_ack!126))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!124) ((_ to_fp 11 53) x1_ack!122))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!125) ((_ to_fp 11 53) y0_ack!123))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!125) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!122)
                       ((_ to_fp 11 53) x0_ack!126))
               ((_ to_fp 11 53) x0_ack!126))
       ((_ to_fp 11 53) x1_ack!122)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!122)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!122)
                       ((_ to_fp 11 53) x0_ack!126)))
       ((_ to_fp 11 53) x0_ack!126)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!123))
               ((_ to_fp 11 53) y0_ack!123))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!123)))
       ((_ to_fp 11 53) y0_ack!123)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!122)
                  ((_ to_fp 11 53) x0_ack!126)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!123)))))

(check-sat)
(exit)
