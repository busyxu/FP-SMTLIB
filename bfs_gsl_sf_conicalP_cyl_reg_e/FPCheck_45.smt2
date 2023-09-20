(declare-fun c_ack!198 () (_ BitVec 64))
(declare-fun a_ack!199 () (_ BitVec 32))
(declare-fun b_ack!197 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!198) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!199 #xffffffff)))
(assert (= #xffffffff a_ack!199))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!198) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!197) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!198) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!198) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) c_ack!198))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (CF_sin (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  (CF_acos c_ack!198)))
  (CF_sin (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  (CF_acos c_ack!198)))))

(check-sat)
(exit)
