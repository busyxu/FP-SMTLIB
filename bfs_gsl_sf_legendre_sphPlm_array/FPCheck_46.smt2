(declare-fun b_ack!207 () (_ BitVec 32))
(declare-fun a_ack!209 () (_ BitVec 32))
(declare-fun c_ack!208 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!207 #x00000000)))
(assert (not (bvslt a_ack!209 b_ack!207)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!208) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!208) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!207)))
(assert (= #x00000000 b_ack!207))
(assert (not (= a_ack!209 b_ack!207)))
(assert (not (= a_ack!209 (bvadd #x00000001 b_ack!207))))
(assert (bvsle (bvadd #x00000002 b_ack!207) a_ack!209))
(assert (FPCHECK_FMUL_UNDERFLOW
  c_ack!208
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!208)
                  ((_ to_fp 11 53) #x3ffbb67ae8584caa))
          ((_ to_fp 11 53) #x3fd20dd750429b6d))))

(check-sat)
(exit)
