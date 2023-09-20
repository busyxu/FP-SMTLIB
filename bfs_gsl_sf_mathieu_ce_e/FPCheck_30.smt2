(declare-fun n_ack!170 () (_ BitVec 32))
(declare-fun a_ack!171 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun z_ack!169 () (_ BitVec 64))
(assert (not (= #x00000000 (bvsrem n_ack!170 #x00000002))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!171) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 n_ack!170)))
(assert (FPCHECK_FDIV_ACCURACY
  (CF_cos (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!170)
                  ((_ to_fp 11 53) z_ack!169)))
  #x3ff0000000000000))

(check-sat)
(exit)
