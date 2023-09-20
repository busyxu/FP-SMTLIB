(declare-fun n_ack!65 () (_ BitVec 32))
(declare-fun a_ack!66 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun z_ack!64 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!65 #x00000002)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 n_ack!65)))
(assert (FPCHECK_FDIV_OVERFLOW
  (CF_cos (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!65)
                  ((_ to_fp 11 53) z_ack!64)))
  #x3ff0000000000000))

(check-sat)
(exit)
