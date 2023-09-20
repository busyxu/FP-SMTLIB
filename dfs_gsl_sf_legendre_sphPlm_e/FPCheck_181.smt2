(declare-fun b_ack!924 () (_ BitVec 32))
(declare-fun a_ack!926 () (_ BitVec 32))
(declare-fun c_ack!925 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!924 #x00000000)))
(assert (not (bvslt a_ack!926 b_ack!924)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!925) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!925) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!924))
(assert (not (bvslt a_ack!926 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!925) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!925) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!926)))
(assert (= #x00000001 a_ack!926))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fdf45437857749a)
                  ((_ to_fp 11 53) c_ack!925)))))

(check-sat)
(exit)
