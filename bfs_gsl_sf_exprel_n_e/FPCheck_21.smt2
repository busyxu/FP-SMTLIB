(declare-fun a_ack!80 () (_ BitVec 32))
(declare-fun b_ack!79 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!80 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!79) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!79))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!80))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!79)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 a_ack!80))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!79)
            ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!80)))
    a!1)))

(check-sat)
(exit)
