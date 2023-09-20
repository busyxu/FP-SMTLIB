(declare-fun b_ack!204 () (_ BitVec 32))
(declare-fun a_ack!206 () (_ BitVec 32))
(declare-fun c_ack!205 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!204 #x00000000)))
(assert (not (bvslt a_ack!206 b_ack!204)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!205) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!205) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!204)))
(assert (= #x00000000 b_ack!204))
(assert (not (= a_ack!206 b_ack!204)))
(assert (not (= a_ack!206 (bvadd #x00000001 b_ack!204))))
(assert (bvsle (bvadd #x00000002 b_ack!204) a_ack!206))
(assert (FPCHECK_FMUL_OVERFLOW
  c_ack!205
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!205)
                  ((_ to_fp 11 53) #x3ffbb67ae8584caa))
          ((_ to_fp 11 53) #x3fd20dd750429b6d))))

(check-sat)
(exit)
