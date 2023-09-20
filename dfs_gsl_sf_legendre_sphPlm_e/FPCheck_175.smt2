(declare-fun b_ack!897 () (_ BitVec 32))
(declare-fun a_ack!899 () (_ BitVec 32))
(declare-fun c_ack!898 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!897 #x00000000)))
(assert (not (bvslt a_ack!899 b_ack!897)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!898) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!898) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!897))
(assert (not (bvslt a_ack!899 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!898) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!898) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!899)))
(assert (not (= #x00000001 a_ack!899)))
(assert (= #x00000002 a_ack!899))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!898))
                           ((_ to_fp 11 53) c_ack!898))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe42f601a8c679b)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 a!2))))

(check-sat)
(exit)
