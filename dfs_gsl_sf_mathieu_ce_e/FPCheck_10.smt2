(declare-fun n_ack!71 () (_ BitVec 32))
(declare-fun a_ack!72 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun z_ack!70 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!71 #x00000002)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!72) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 n_ack!71)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (CF_cos (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!71)
                  ((_ to_fp 11 53) z_ack!70)))
  #x3ff0000000000000))

(check-sat)
(exit)
