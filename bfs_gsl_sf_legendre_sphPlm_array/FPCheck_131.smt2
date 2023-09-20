(declare-fun b_ack!606 () (_ BitVec 32))
(declare-fun a_ack!608 () (_ BitVec 32))
(declare-fun c_ack!607 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!606 #x00000000)))
(assert (not (bvslt a_ack!608 b_ack!606)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!607) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!607) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!606)))
(assert (= #x00000000 b_ack!606))
(assert (not (= a_ack!608 b_ack!606)))
(assert (not (= a_ack!608 (bvadd #x00000001 b_ack!606))))
(assert (bvsle (bvadd #x00000002 b_ack!606) a_ack!608))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53)
            roundNearestTiesToEven
            (bvadd #x00000001 b_ack!606 b_ack!606))
          ((_ to_fp 11 53) #x3fd20dd750429b6d))
  #x4001e3779b97f4a8))

(check-sat)
(exit)
