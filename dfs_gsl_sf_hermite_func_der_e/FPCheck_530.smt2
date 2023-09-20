(declare-fun a_ack!3174 () (_ BitVec 32))
(declare-fun b_ack!3172 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun c_ack!3173 () (_ BitVec 64))
(assert (not (bvslt a_ack!3174 #x00000000)))
(assert (not (bvslt b_ack!3172 #x00000000)))
(assert (not (= #x00000000 a_ack!3174)))
(assert (= #x00000001 a_ack!3174))
(assert (not (bvsle #x00000002 b_ack!3172)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!3173))
                           ((_ to_fp 11 53) c_ack!3173))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x0000000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!3173)
                    ((_ to_fp 11 53) #x0000000000000000)))
    (CF_exp a!1))))

(check-sat)
(exit)
