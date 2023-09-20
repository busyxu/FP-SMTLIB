(declare-fun c_ack!526 () (_ BitVec 64))
(declare-fun a_ack!527 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!526) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!527 #xffffffff)))
(assert (not (= #xffffffff a_ack!527)))
(assert (= #x00000000 a_ack!527))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!526) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!526) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!526) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FINVALID_LOG
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!526)
          ((_ to_fp 11 53) #x3ffbb67ae8584caa))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!526)
          ((_ to_fp 11 53) #x3ffbb67ae8584caa))))

(check-sat)
(exit)
