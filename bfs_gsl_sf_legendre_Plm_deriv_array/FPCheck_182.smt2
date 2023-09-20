(declare-fun b_ack!819 () (_ BitVec 32))
(declare-fun a_ack!821 () (_ BitVec 32))
(declare-fun c_ack!820 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!819 #x00000000)))
(assert (not (bvslt a_ack!821 b_ack!819)))
(assert (= #x00000000 b_ack!819))
(assert (not (bvslt a_ack!821 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!820) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!820) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!821)))
(assert (not (= #x00000001 a_ack!821)))
(assert (bvsle #x00000002 a_ack!821))
(assert (bvsle #x00000003 a_ack!821))
(assert (bvsle #x00000004 a_ack!821))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!820)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) c_ack!820))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    #x4008000000000000
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
