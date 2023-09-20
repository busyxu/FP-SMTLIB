(declare-fun a_ack!27 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!27 #x00000000)))
(assert (not (= #x00000001 a_ack!27)))
(assert (not (bvsle a_ack!27 #x00000064)))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!27)
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!27)
            ((_ to_fp 11 53) #x402e000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (CF_pow #x4000000000000000
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!27)))
  (CF_pow #x4008000000000000
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!27)))))

(check-sat)
(exit)
