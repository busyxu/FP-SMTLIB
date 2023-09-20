(declare-fun a_ack!79 () (_ BitVec 32))
(declare-fun b_ack!78 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!79 #x00000000)))
(assert (not (= #x00000000 a_ack!79)))
(assert (not (= #x00000001 a_ack!79)))
(assert (not (= #x00000002 a_ack!79)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!78) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!78) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!79)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 (fp.abs a!1))))

(check-sat)
(exit)
