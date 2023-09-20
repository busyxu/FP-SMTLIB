(declare-fun a_ack!578 () (_ BitVec 32))
(declare-fun b_ack!577 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!578 #x00000000)))
(assert (not (= #x00000000 a_ack!578)))
(assert (not (= #x00000001 a_ack!578)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!577) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!577) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (bvule (bvadd #xffffffff a_ack!578) #x000000aa)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53)
            roundNearestTiesToEven
            (bvadd #xffffffff a_ack!578))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
