(declare-fun c_ack!73 () (_ BitVec 64))
(declare-fun a_ack!74 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!72 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!74 #xffffffff)))
(assert (not (= #xffffffff a_ack!74)))
(assert (= #x00000000 a_ack!74))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  b_ack!72
  (CF_log (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!73)
                  ((_ to_fp 11 53) #x3ffbb67ae8584caa)))))

(check-sat)
(exit)
