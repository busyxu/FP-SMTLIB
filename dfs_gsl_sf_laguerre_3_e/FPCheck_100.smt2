(declare-fun a_ack!300 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!299 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!300) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!300) ((_ to_fp 11 53) #xc008000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!300))))))
  (FPCHECK_FADD_OVERFLOW
    #x3ff0000000000000
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!299)))))

(check-sat)
(exit)
