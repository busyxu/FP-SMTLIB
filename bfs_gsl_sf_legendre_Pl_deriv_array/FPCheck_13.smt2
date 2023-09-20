(declare-fun a_ack!33 () (_ BitVec 32))
(declare-fun b_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!33 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!32) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!32) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!33))
(assert (bvsle #x00000000 a_ack!33))
(assert (not (bvsle #x00000001 a_ack!33)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!32)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!33)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!33)
            ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
