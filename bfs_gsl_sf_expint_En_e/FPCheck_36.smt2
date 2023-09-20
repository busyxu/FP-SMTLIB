(declare-fun a_ack!135 () (_ BitVec 32))
(declare-fun b_ack!134 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!135 #x00000000)))
(assert (not (= #x00000000 a_ack!135)))
(assert (= #x00000001 a_ack!135))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!134) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!134) ((_ to_fp 11 53) #xc024000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!134))
  (CF_exp (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!134)))))

(check-sat)
(exit)
