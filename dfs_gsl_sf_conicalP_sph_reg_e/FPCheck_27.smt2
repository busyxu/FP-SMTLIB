(declare-fun c_ack!99 () (_ BitVec 64))
(declare-fun a_ack!100 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!98 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!99) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!100 #xffffffff)))
(assert (not (= #xffffffff a_ack!100)))
(assert (= #x00000000 a_ack!100))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!99) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!99) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!99) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!98)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!99)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (FPCHECK_FMUL_UNDERFLOW #x3cc0000000000000 (fp.abs a!1))))

(check-sat)
(exit)
