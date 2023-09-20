(declare-fun a_ack!106 () (_ BitVec 32))
(declare-fun b_ack!105 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!106 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!106)))
(assert (= #x00000001 a_ack!106))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!105) ((_ to_fp 11 53) #x1fff5de25335c4ee))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x400921fb54442d18)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!105)))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) b_ack!105)))))

(check-sat)
(exit)
