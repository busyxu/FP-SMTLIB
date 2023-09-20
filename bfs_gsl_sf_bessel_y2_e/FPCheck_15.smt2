(declare-fun a_ack!29 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!29) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!29) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!29) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!29)
                                  ((_ to_fp 11 53) a_ack!29)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!29)
                                   ((_ to_fp 11 53) a_ack!29))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!29)
                           ((_ to_fp 11 53) a_ack!29)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!29)
                                   ((_ to_fp 11 53) a_ack!29))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!29)
                 ((_ to_fp 11 53) a_ack!29)))))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3e727e4fb7789f5c
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!29)
                  ((_ to_fp 11 53) a_ack!29))
          ((_ to_fp 11 53) #xbe02c9758daf5cd0))))

(check-sat)
(exit)
