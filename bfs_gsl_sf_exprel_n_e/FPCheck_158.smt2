(declare-fun a_ack!512 () (_ BitVec 32))
(declare-fun b_ack!511 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!512 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!511) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!511))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!512)))))
(assert (not (= #x00000000 a_ack!512)))
(assert (not (= #x00000001 a_ack!512)))
(assert (not (= #x00000002 a_ack!512)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!511)
       ((_ to_fp 11 53) roundNearestTiesToEven a_ack!512)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!511)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!512))))))
  (FPCHECK_FMUL_OVERFLOW ((_ to_fp 11 53) roundNearestTiesToEven a_ack!512) a!1)))

(check-sat)
(exit)
