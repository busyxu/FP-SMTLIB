(declare-fun a_ack!3040 () (_ BitVec 32))
(declare-fun b_ack!3038 () (_ BitVec 32))
(declare-fun c_ack!3039 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!3040 #x00000000)))
(assert (not (bvslt b_ack!3038 a_ack!3040)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3039) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!3038))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3039) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3039) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!3039) ((_ to_fp 11 53) #x4020000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) c_ack!3039))
                           ((_ to_fp 11 53) #x4022000000000000))
                   ((_ to_fp 11 53) #x401c000000000000))))
  (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 a!1)))

(check-sat)
(exit)
