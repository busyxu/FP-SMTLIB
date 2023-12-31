(declare-fun c_ack!578 () (_ BitVec 64))
(declare-fun a_ack!579 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!577 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!578) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!579 #xffffffff)))
(assert (not (= #xffffffff a_ack!579)))
(assert (= #x00000000 a_ack!579))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!578) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!578) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!578) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!577)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!578)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3e50000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe3667dcf21247e
  (CF_log (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!578)
                  ((_ to_fp 11 53) #x3ffbb67ae8584caa)))))

(check-sat)
(exit)
