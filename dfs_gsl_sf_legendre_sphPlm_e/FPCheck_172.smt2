(declare-fun b_ack!882 () (_ BitVec 32))
(declare-fun a_ack!884 () (_ BitVec 32))
(declare-fun c_ack!883 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!882 #x00000000)))
(assert (not (bvslt a_ack!884 b_ack!882)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!883) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!883) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!882))
(assert (not (bvslt a_ack!884 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!883) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!883) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!884)))
(assert (not (= #x00000001 a_ack!884)))
(assert (= #x00000002 a_ack!884))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!883))
                           ((_ to_fp 11 53) c_ack!883)))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fe42f601a8c679b
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cb0000000000000)
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000))))))

(check-sat)
(exit)
