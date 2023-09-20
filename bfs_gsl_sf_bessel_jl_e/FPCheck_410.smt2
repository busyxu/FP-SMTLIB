(declare-fun a_ack!1312 () (_ BitVec 32))
(declare-fun b_ack!1311 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!1312 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1311) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1311) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1312)))
(assert (not (= #x00000001 a_ack!1312)))
(assert (not (= #x00000002 a_ack!1312)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1312)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1311)
                 ((_ to_fp 11 53) b_ack!1311))
         a!1)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1312)
                    ((_ to_fp 11 53) #x3fe0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1311) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1311) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1312)
                    ((_ to_fp 11 53) #x3fe0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1312)
                    ((_ to_fp 11 53) #x3fe0000000000000))
            ((_ to_fp 11 53) #x41dfffffff800000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1312)
          ((_ to_fp 11 53) #x3fe0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
